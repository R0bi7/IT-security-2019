#ifndef TLS_HANDSHAKE_SERVER_H
#define TLS_HANDSHAKE_SERVER_H

#include <map>
#include <vector>

#include "ecdh.h"
#include "tls-record-layer.h"
#include "tls.h"

/// Server side of the handshake
class tls_handshake_server
{
public:
  /// Instantiate new server-side handshake.
  tls_handshake_server(tls_record_layer& layer, const psk_map& psks);
  /// Instantiate new server-side handshake with fixed randomness and fixed ECDH private key.
  tls_handshake_server(tls_record_layer& layer, const psk_map& psks,
                       const random_struct& fixed_randomness, const gfp_t& ecdh_private);

  /// Run the server side of the handshake.
  alert_location answer_handshake();

  //-----helper
  //currentALert
  alert_location currentAlert;
  alert_location setCurrentAlert(alert_location currentAlert_);
    alert_location checkError();
    handshake_message_header returnClientHeader();
    std::vector<uint8_t> getClientPayload(size_t payload_length_);
    int num_32 = 32;

    Extension getKeyShare(std::vector<uint8_t> clientPayload);
    KeyShareEntry getKeyShareEntry(std::vector<uint8_t> clientPayload);

private:
  alert_location read_client_hello();
  void send_server_hello();
  alert_location read_finished();
  void send_finished();

  tls_record_layer& layer_;
  const psk_map psks_;

  ecdh ecdh_;
  const random_struct fixed_randomness_;
  const bool have_fixed_randomness_;

};

#endif // TLS_HANDSHAKE_SERVER_H
