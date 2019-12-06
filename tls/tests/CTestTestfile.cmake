# CMake generated Testfile for 
# Source directory: /home/its2019/its2019g25/tls/tests
# Build directory: /home/its2019/its2019g25/tls/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(hkdf "/home/its2019/its2019g25/tls/tests/test_hkdf" "/home/its2019/its2019g25/tls/tests/hkdf.xml")
set_tests_properties(hkdf PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(nonce "/home/its2019/its2019g25/tls/tests/test_nonce" "/home/its2019/its2019g25/tls/tests/nonce.xml")
set_tests_properties(nonce PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(sha2 "/home/its2019/its2019g25/tls/tests/test_sha2" "/home/its2019/its2019g25/tls/tests/sha2.xml")
set_tests_properties(sha2 PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(hmac_sha2 "/home/its2019/its2019g25/tls/tests/test_hmac_sha2" "/home/its2019/its2019g25/tls/tests/hmac_sha2.xml")
set_tests_properties(hmac_sha2 PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(ascon "/home/its2019/its2019g25/tls/tests/test_ascon" "/home/its2019/its2019g25/tls/tests/ascon.xml")
set_tests_properties(ascon PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(aesgcm "/home/its2019/its2019g25/tls/tests/test_aesgcm" "/home/its2019/its2019g25/tls/tests/aesgcm.xml")
set_tests_properties(aesgcm PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(random "/home/its2019/its2019g25/tls/tests/test_random" "/home/its2019/its2019g25/tls/tests/random.xml")
set_tests_properties(random PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(task1_custom "/home/its2019/its2019g25/tls/tests/test_task1_custom" "/home/its2019/its2019g25/tls/tests/task1_custom.xml")
set_tests_properties(task1_custom PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(tls_ascon_1 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-1.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-1.sol")
set_tests_properties(tls_ascon_1 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_1 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-1.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-1.sol")
set_tests_properties(tls_aes128gcm_1 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_1 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-1.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-1.sol")
set_tests_properties(tls_isap_1 PROPERTIES  TIMEOUT "10")
add_test(tls_ascon_2 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-2.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-2.sol")
set_tests_properties(tls_ascon_2 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_2 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-2.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-2.sol")
set_tests_properties(tls_aes128gcm_2 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_2 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-2.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-2.sol")
set_tests_properties(tls_isap_2 PROPERTIES  TIMEOUT "10")
add_test(tls_ascon_3 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-3.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-3.sol")
set_tests_properties(tls_ascon_3 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_3 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-3.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-3.sol")
set_tests_properties(tls_aes128gcm_3 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_3 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-3.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-3.sol")
set_tests_properties(tls_isap_3 PROPERTIES  TIMEOUT "10")
add_test(tls_ascon_4 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-4.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-4.sol")
set_tests_properties(tls_ascon_4 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_4 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-4.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-4.sol")
set_tests_properties(tls_aes128gcm_4 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_4 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-4.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-4.sol")
set_tests_properties(tls_isap_4 PROPERTIES  TIMEOUT "10")
add_test(tls_ascon_5 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-5.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-5.sol")
set_tests_properties(tls_ascon_5 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_5 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-5.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-5.sol")
set_tests_properties(tls_aes128gcm_5 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_5 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-5.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-5.sol")
set_tests_properties(tls_isap_5 PROPERTIES  TIMEOUT "10")
add_test(tls_ascon_6 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "ascon" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-6.chal" "/home/its2019/its2019g25/tls/tests/data/ascon-testcase-6.sol")
set_tests_properties(tls_ascon_6 PROPERTIES  TIMEOUT "10")
add_test(tls_aes128gcm_6 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "aes128gcm" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-6.chal" "/home/its2019/its2019g25/tls/tests/data/aes128gcm-testcase-6.sol")
set_tests_properties(tls_aes128gcm_6 PROPERTIES  TIMEOUT "10")
add_test(tls_isap_6 "/home/its2019/its2019g25/tls/tests/test_tls_encrypted_record" "isap" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-6.chal" "/home/its2019/its2019g25/tls/tests/data/isap-testcase-6.sol")
set_tests_properties(tls_isap_6 PROPERTIES  TIMEOUT "10")
add_test(ecdh "/home/its2019/its2019g25/tls/tests/test_ecdh" "/home/its2019/its2019g25/tls/tests/ecdh.xml")
set_tests_properties(ecdh PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(tls_record_layer "/home/its2019/its2019g25/tls/tests/test_tls_record_layer" "/home/its2019/its2019g25/tls/tests/tls_record_layer.xml")
set_tests_properties(tls_record_layer PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(tls_handshake "/home/its2019/its2019g25/tls/tests/test_tls_handshake" "/home/its2019/its2019g25/tls/tests/tls_handshake.xml")
set_tests_properties(tls_handshake PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")
add_test(task2_custom "/home/its2019/its2019g25/tls/tests/test_task2_custom" "/home/its2019/its2019g25/tls/tests/task2_custom.xml")
set_tests_properties(task2_custom PROPERTIES  WORKING_DIRECTORY "/home/its2019/its2019g25/tls/tests")