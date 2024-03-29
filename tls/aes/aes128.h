#ifndef AES128_H
#define AES128_H

#include "basic-block-cipher.h"
#include <array>

#ifdef HAVE_AESNI
#include <wmmintrin.h>
#endif

/// AES with 128 bit keys.
class alignas(16) aes128 : private basic_block_cipher<16, 16>
{
public:
  typedef basic_block_cipher<16, 16> base;
  typedef typename base::block_storage block_storage;

  using base::block_size;
  using base::key_size;

  static constexpr std::size_t rounds = 10;

  union key_storage
  {
#ifdef HAVE_AESNI
    alignas(16) __m128i m128is[rounds + 1];
#endif
    std::array<uint32_t, 4 * (rounds + 1)> u32s;
  };

private:
  key_storage encryption_key_, decryption_key_;

  typedef void (*set_key_fn)(key_storage&, key_storage&, const uint8_t*);
  typedef void (*encrypt_fn)(const key_storage&, uint8_t*, const uint8_t*);
  typedef void (*decrypt_fn)(const key_storage&, uint8_t*, const uint8_t*);

  static set_key_fn set_key_impl;
  static encrypt_fn encrypt_impl;
  static decrypt_fn decrypt_impl;

public:
  /// Initialize
  aes128();
  /// Initialize with given key.
  ///
  /// \param key 128 bit key
  aes128(const uint8_t* key);

  /// Set up key for encryption and decryption.
  ///
  /// \param key 128 bit key
  void set_key(const uint8_t* key);
  /// Encrypt one block.
  ///
  /// \param dst output block
  /// \param src input block
  void encrypt(uint8_t* dst, const uint8_t* src) const;
  /// Decrypt one block.
  ///
  /// \param dst output block
  /// \param src input block
  void decrypt(uint8_t* dst, const uint8_t* src) const;

  void encrypt(block_storage& storage) const
  {
    encrypt(storage.data(), storage.data());
  }

  void decrypt(block_storage& storage) const
  {
    decrypt(storage.data(), storage.data());
  }
};

#endif
