#include "rand.h"
#include "../bi/bi.h"

#include <assert.h>
#include <stdlib.h>

rand_t rand_f = NULL;

/**
 * Use the deterministic rand() function to initialize dest with random data
 * @param dest
 * @param length the number of words to generate
 */
static void bigint_rand_insecure_var(uint_t* dest, int length)
{
  assert(rand_f != NULL);

  while (length--)
  {
    *dest++ = rand_f();
  }
}

/**
 * Generate a number that is *smaller* than the given prime and larger than 0
 * @param dest       the number to generate
 * @param prime_data the upper bound
 */
void gfp_rand(gfp_t dest, const gfp_prime_data_t* prime_data)
{
  uint_t mask;
  const int msb = prime_data->bits & (BITS_PER_WORD - 1);
  if (msb == 0)
    mask = UINT_T_MAX;
  else
    mask = (1 << msb) - 1;
  do
  {
    // TODO: to be replaced with an external library or something more secure
    bigint_rand_insecure_var(dest, prime_data->words);
    /* speedup of this loop */
    dest[prime_data->words - 1] &= mask;
  } while ((bigint_compare_var(dest, prime_data->prime, prime_data->words) >= 0) &&
           (bigint_is_zero_var(dest, prime_data->words) == 0));
}
