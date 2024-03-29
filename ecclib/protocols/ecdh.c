#include "ecdh.h"

#include "../eccp/eccp.h"
#include "../gfp/gfp.h"

/**
 * First phase of a diffie-hellman key exchange
 * @param res resulting point
 * @param scalar ephemeral or static private key (param->order_n_mont_data.prime_data.words large)
 * @param param elliptic curve parameters
 */
void ecdh_phase_one(eccp_point_affine_t* res, const gfp_t scalar, const eccp_parameters_t* param)
{

  // base_point is already in Montgomery domain
  eccp_jacobian_point_multiply_L2R_DA(res, &param->base_point, scalar, param);

  // convert to normal basis such that other party has no problem
  if (param->prime_data.montgomery_domain == 1)
  {
    gfp_montgomery_to_normal(res->x, res->x, &param->prime_data);
    gfp_montgomery_to_normal(res->y, res->y, &param->prime_data);
  }
}

/**
 * First phase of a diffie-hellman key exchange
 * @param res resulting point
 * @param scalar ephemeral or static private key (param->order_n_mont_data.prime_data.words large)
 * @param other_party_point the (ephemeral) public key of the other party
 * @param param elliptic curve parameters
 * @return 1 on success, 0 on failure
 */
int ecdh_phase_two(eccp_point_affine_t* res, const gfp_t scalar,
                    eccp_point_affine_t* other_party_point, const eccp_parameters_t* param)
{

  // assume that the other party does not use Montgomery domain
  if (param->prime_data.montgomery_domain == 1)
  {
    gfp_normal_to_montgomery(other_party_point->x, other_party_point->x, &param->prime_data);
    gfp_normal_to_montgomery(other_party_point->y, other_party_point->y, &param->prime_data);
  }

  if (eccp_affine_point_is_valid(other_party_point, param) == 0)
  {
    return 0;
  }

  eccp_jacobian_point_multiply_L2R_DA(res, other_party_point, scalar, param);

  // the commonly derived key shall not be in montgomery domain
  if (param->prime_data.montgomery_domain == 1)
  {
    gfp_montgomery_to_normal(res->x, res->x, &param->prime_data);
    gfp_montgomery_to_normal(res->y, res->y, &param->prime_data);
  }

  return 1;
}
