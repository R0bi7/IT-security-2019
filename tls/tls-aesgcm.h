#ifndef TLS_AESGCM_H
#define TLS_AESGCM_H

#include <array>
#include <cstddef>
#include <cstdint>
#include <vector>

#include "tls-cipher.h"
#include "aes128gcm.h"
#include "counter.h"

/// Oracle simulating application data record encryption and decryption for
/// TLS 1.3 using ASCON as cipher suite.
class tls13_aesgcm : public tls13_cipher
{
public:
  /// Instantiate with given Ascon key and nonce generator.
  tls13_aesgcm(const key_storage& key, const std::vector<uint8_t>& nonce_data);
  virtual ~tls13_aesgcm();

  record encrypt(content_type type, const std::vector<uint8_t>& plaintext);
  std::vector<uint8_t> initializeData(record newRecord, std::vector<uint8_t> &newPlaintext, content_type type);
  bool decrypt(const record& record, std::vector<uint8_t>& plaintext, content_type& type);

private:
  incrementing_nonce nonce_;
  aes128gcm aes_;
};

#endif
