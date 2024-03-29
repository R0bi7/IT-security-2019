// Some functions here (e.g., the additions with the if clauses) are not constant-time. However, they can easily be made constant-time with small modifications.
// Compile with g++ -std=c++0x -g -O2 -march=native -mtune=native <...> -lcrypto

#include "BigInteger2048.h"
#include "BigInteger.h"
#include "../random.h"
#include <sstream>
#include <iomanip>
#include <cstring>
#include <iostream>
#include <fstream>

BigInteger2048::BigInteger2048(uint64 init_value) {
  // ASSUME num_bits mod WORD_SIZE = 0
  this->num_bytes_ = NUM_BYTES_2048;
  this->data_ = new uchar[NUM_BYTES_2048];
  this->modulus_ = new uchar[NUM_BYTES_2048];
  memset(this->data_, 0x0, this->num_bytes_);

  // Fix modulus here
  uint64* modulus_words = (uint64*)(this->modulus_);
  modulus_words[0] = 0x75296ac53c53ae1;
  modulus_words[1] = 0x46701297c8de7ebc;
  modulus_words[2] = 0xb598a549203ae378;
  modulus_words[3] = 0x616feebdfdf4b6de;
  modulus_words[4] = 0xea185fa3844c02;
  modulus_words[5] = 0x341d390b6ada1fc6;
  modulus_words[6] = 0x10b9100f7266d8c;
  modulus_words[7] = 0x4d9c4837b84b9145;
  modulus_words[8] = 0xfe15b8ab1b05e931;
  modulus_words[9] = 0x2434cba0917155f6;
  modulus_words[10] = 0x504d20e26a611fa1;
  modulus_words[11] = 0x276d6845cb37cb80;
  modulus_words[12] = 0x9b19566103aa2762;
  modulus_words[13] = 0x895b1e2f44b061bf;
  modulus_words[14] = 0x571824ca4ee41de0;
  modulus_words[15] = 0xd7e60482d5fe8f6e;
  modulus_words[16] = 0x92a4ecfde2db6b70;
  modulus_words[17] = 0x99f4ede4412fe689;
  modulus_words[18] = 0x2deaefd299f6b976;
  modulus_words[19] = 0x8a199092b58de46a;
  modulus_words[20] = 0xe02a23b61e51e051;
  modulus_words[21] = 0x2a623ba0687dbb2c;
  modulus_words[22] = 0xd8b121d4ee4d8f50;
  modulus_words[23] = 0xe4ae0aedd8581b78;
  modulus_words[24] = 0x42a4a62df1a251ac;
  modulus_words[25] = 0x26be94842182343c;
  modulus_words[26] = 0x6bba1151de400381;
  modulus_words[27] = 0xae77c0651979613f;
  modulus_words[28] = 0xb4ff4b98422893c5;
  modulus_words[29] = 0xa192847d80275c26;
  modulus_words[30] = 0xee2fc3cc02ef1f95;
  modulus_words[31] = 0x75946a0193644171;

  // Init
  memcpy(this->data_, &init_value, 8);
}

BigInteger2048::BigInteger2048(const BigInteger1024& bigint) {
  this->num_bytes_ = NUM_BYTES_2048;
  this->data_ = new uchar[this->num_bytes_];
  this->modulus_ = new uchar[this->num_bytes_];
  memset(this->data_, 0x0, this->num_bytes_);
  memcpy(this->data_, bigint.GetData(), bigint.GetNumBytes());
  // Fix modulus here
  uint64* modulus_words = (uint64*)(this->modulus_);
  modulus_words[0] = 0x75296ac53c53ae1;
  modulus_words[1] = 0x46701297c8de7ebc;
  modulus_words[2] = 0xb598a549203ae378;
  modulus_words[3] = 0x616feebdfdf4b6de;
  modulus_words[4] = 0xea185fa3844c02;
  modulus_words[5] = 0x341d390b6ada1fc6;
  modulus_words[6] = 0x10b9100f7266d8c;
  modulus_words[7] = 0x4d9c4837b84b9145;
  modulus_words[8] = 0xfe15b8ab1b05e931;
  modulus_words[9] = 0x2434cba0917155f6;
  modulus_words[10] = 0x504d20e26a611fa1;
  modulus_words[11] = 0x276d6845cb37cb80;
  modulus_words[12] = 0x9b19566103aa2762;
  modulus_words[13] = 0x895b1e2f44b061bf;
  modulus_words[14] = 0x571824ca4ee41de0;
  modulus_words[15] = 0xd7e60482d5fe8f6e;
  modulus_words[16] = 0x92a4ecfde2db6b70;
  modulus_words[17] = 0x99f4ede4412fe689;
  modulus_words[18] = 0x2deaefd299f6b976;
  modulus_words[19] = 0x8a199092b58de46a;
  modulus_words[20] = 0xe02a23b61e51e051;
  modulus_words[21] = 0x2a623ba0687dbb2c;
  modulus_words[22] = 0xd8b121d4ee4d8f50;
  modulus_words[23] = 0xe4ae0aedd8581b78;
  modulus_words[24] = 0x42a4a62df1a251ac;
  modulus_words[25] = 0x26be94842182343c;
  modulus_words[26] = 0x6bba1151de400381;
  modulus_words[27] = 0xae77c0651979613f;
  modulus_words[28] = 0xb4ff4b98422893c5;
  modulus_words[29] = 0xa192847d80275c26;
  modulus_words[30] = 0xee2fc3cc02ef1f95;
  modulus_words[31] = 0x75946a0193644171;
}

BigInteger2048::BigInteger2048(const std::string hex_string){

    //std::cout << "hex is " << hex_string <<std::endl;
  this->num_bytes_ = NUM_BYTES_2048;
  this->data_ = new uchar[NUM_BYTES_2048];
  this->modulus_ = new uchar[NUM_BYTES_2048];

  memset(this->data_, 0x0, this->num_bytes_);

  // Fix modulus here
  uint64* modulus_words = (uint64*)(this->modulus_);
  modulus_words[0] = 0x75296ac53c53ae1;
  modulus_words[1] = 0x46701297c8de7ebc;
  modulus_words[2] = 0xb598a549203ae378;
  modulus_words[3] = 0x616feebdfdf4b6de;
  modulus_words[4] = 0xea185fa3844c02;
  modulus_words[5] = 0x341d390b6ada1fc6;
  modulus_words[6] = 0x10b9100f7266d8c;
  modulus_words[7] = 0x4d9c4837b84b9145;
  modulus_words[8] = 0xfe15b8ab1b05e931;
  modulus_words[9] = 0x2434cba0917155f6;
  modulus_words[10] = 0x504d20e26a611fa1;
  modulus_words[11] = 0x276d6845cb37cb80;
  modulus_words[12] = 0x9b19566103aa2762;
  modulus_words[13] = 0x895b1e2f44b061bf;
  modulus_words[14] = 0x571824ca4ee41de0;
  modulus_words[15] = 0xd7e60482d5fe8f6e;
  modulus_words[16] = 0x92a4ecfde2db6b70;
  modulus_words[17] = 0x99f4ede4412fe689;
  modulus_words[18] = 0x2deaefd299f6b976;
  modulus_words[19] = 0x8a199092b58de46a;
  modulus_words[20] = 0xe02a23b61e51e051;
  modulus_words[21] = 0x2a623ba0687dbb2c;
  modulus_words[22] = 0xd8b121d4ee4d8f50;
  modulus_words[23] = 0xe4ae0aedd8581b78;
  modulus_words[24] = 0x42a4a62df1a251ac;
  modulus_words[25] = 0x26be94842182343c;
  modulus_words[26] = 0x6bba1151de400381;
  modulus_words[27] = 0xae77c0651979613f;
  modulus_words[28] = 0xb4ff4b98422893c5;
  modulus_words[29] = 0xa192847d80275c26;
  modulus_words[30] = 0xee2fc3cc02ef1f95;
  modulus_words[31] = 0x75946a0193644171;

  //init from hex
  std::stringstream ss;
  word* data = (word*) this->data_;

  if(hex_string.size() / 2 != NUM_BYTES_2048)
    throw std::invalid_argument("String must represent a 2048 bit integer!");

  //printf("%d\n", NUM_WORDS_2048);
  for(size_t i = 0; i < NUM_WORDS_2048; i++){
    ss.clear();

    //printf("%d %d\n", i * sizeof(word) * 2, sizeof(word) * 2);
    //std::cout << hex_string.substr(i * sizeof(word) * 2, sizeof(word) * 2) << std::endl;
    ss << std::hex << std::setfill('0') << std::setw(2) << hex_string.substr(i * sizeof(word) * 2, sizeof(word) * 2);

    word current;
    ss >> current;
    size_t index = (NUM_WORDS_2048 - 1) - i;

    //printf("%x\n", current);
    data[index] = current;
  }

//     printf("data is \n");
// for(size_t i = 0; i < 256; i++)
//    printf("%x", this->GetData()[i]);

  printf("\n");
}

BigInteger2048::BigInteger2048(const BigInteger2048& bigint) {
    this->num_bytes_ = bigint.GetNumBytes();
    this->data_ = new uchar[this->num_bytes_];
    this->modulus_ = new uchar[this->num_bytes_];
    memcpy(this->data_, bigint.GetData(), this->num_bytes_);
    memcpy(this->modulus_, bigint.GetModulus(), this->num_bytes_);
}

BigInteger2048::~BigInteger2048() {
    delete[] this->data_;
    delete[] this->modulus_;
}

void BigInteger2048::Randomize() {
  // AES CTR
  uint32 num_blocks = (this->num_bytes_ >> 4);
  Random::WriteRandomBytes(this->data_, num_blocks);
  while(!(BigInteger::SmallerThan((word*)(this->data_), (word*)(this->modulus_), NUM_WORDS_2048, NUM_WORDS_2048))) {
    Random::WriteRandomBytes(this->data_, num_blocks);
  }
}

uchar* BigInteger2048::GetData() const {
  return this->data_;
}

uchar* BigInteger2048::GetModulus() const {
  return this->modulus_;
}

uint32 BigInteger2048::GetNumBytes() const {
  return this->num_bytes_;
}


BigInteger2048 operator+(const BigInteger2048& a, const BigInteger2048& b) {
  // TODO: To implement
    BigInteger2048  c;
    BigInteger2048 modulus;
    BigInteger::AddIntegers((word*)c.GetData(), (word*)a.GetData(), (word*)b.GetData(), (word*)(c.GetData() + NUM_BYTES_2048), NUM_WORDS_2048);

    word *carry = (word*)(c.GetData() + NUM_BYTES_2048);
    if(*carry == 1
       || BigInteger::GreaterThan((word*)c.GetData(), (word*)modulus.GetModulus(), NUM_WORDS_2048, NUM_WORDS_2048)
       || ((BigInteger::GreaterThan((word*)c.GetData(), (word*)modulus.GetModulus(), NUM_WORDS_2048, NUM_WORDS_2048)) == false &&
           (BigInteger::SmallerThan((word*)c.GetData(), (word*)modulus.GetModulus(), NUM_WORDS_2048, NUM_WORDS_2048)) == false))
    {
        printf("oduzmi sa modulus2048\n");
        BigInteger::SubtractIntegers((word*)c.GetData(), (word*)c.GetData(), (word*)modulus.GetModulus(), (word*)(c.GetData() + NUM_BYTES_2048), NUM_WORDS_2048);
    }

    return c;
}

BigInteger2048 operator-(const BigInteger2048& a, const BigInteger2048& b) {
  // TODO: To implement
    BigInteger2048  c;
    BigInteger2048 modulus;
    BigInteger::SubtractIntegers((word*)c.GetData(), (word*)a.GetData(), (word*)b.GetData(), (word*)(c.GetData() + NUM_BYTES_2048), NUM_WORDS_2048);

    word *borrow = (word*)(c.GetData() + NUM_BYTES_2048);
    if(*borrow == 1)
    {
        printf("oduzmi sa modulus2048\n");
        BigInteger::AddIntegers((word*)c.GetData(), (word*)c.GetData(), (word*)modulus.GetModulus(), (word*)(c.GetData() + NUM_BYTES_2048), NUM_WORDS_2048);
    }

    return c;
}

BigInteger2048 operator*(const BigInteger2048& a, const BigInteger2048& b) {
  // TODO: To implement
  return BigInteger2048(0);
}

BigInteger1024 operator/(const BigInteger2048& a, const BigInteger1024& b) {
  // TODO: To implement
    BigInteger1024 result = BigInteger1024(0);

    word result_array[129];
    memset(result_array, 0, 129 * sizeof(word));

    int index = 0;
    BigInteger2048 dividend_n = BigInteger2048(a);
    BigInteger1024 divisor_d = BigInteger1024(b);


    word div_array[257];
    memset(div_array, 0, 257*sizeof(word));
    memcpy(div_array, a.GetData(), NUM_BYTES_2048);


    printf("div_array is: ");
    for(int i = 0; i < 257; i++)
    {
        printf("%x", div_array[i]);
    }
    printf("\n");

    word shift_array[129];
    memset(shift_array, 0, 129 * sizeof(word));
    memcpy(shift_array, b.GetData(), NUM_BYTES_1024);

    printf("before shifting is: ");
    for(int i = 128; i >= 0; i--)
    {
        printf("%x", shift_array[i]);
    }
    printf("\n");

    while(!BigInteger::GreaterThan((word*)shift_array, (word*)div_array, NUM_WORDS_1024 + 1, NUM_WORDS_2048 + 1))
    {
        /*int carry = 0;
        for(int i = 0; i < 129; i++)
        {

            uint32 temp_result = ( uint32 (shift_array[i])  << 1) +  carry;
            carry = temp_result >> 16;
            shift_array[i] = temp_result;
        }*/

        shift_array[128] = shift_array[128] << 1;
        for(int i = 127; i >= 0; i--)
        {
            shift_array[i + 1] = shift_array[i + 1] | ((shift_array[i] & (0x1 << 15)) >> 15);
            shift_array[i] = shift_array[i] << 1;

        }


//        printf("after shifting in for loop is: ");
//        for(int i = 128; i >= 0; i--)
//        {
//            printf("%x", shift_array[i]);
//        }
//        printf("\n");
        index++;

    }
    printf("Index is %d\n", index);
//
//    printf("after shifting is: ");
//    for(int i = 0; i < 129; i++)
//    {
//        printf("%x", shift_array[i]);
//    }
//    printf("\n");


    while(index > 0)
    {
        //carry = 0;
        shift_array[0] = shift_array[0] >> 1;
        for(int i = 1; i < 129; i++)
        {
            shift_array[i - 1] = (shift_array[i - 1]) | ((shift_array[i] & 0x1) << 15);
            shift_array[i] = shift_array[i] >> 1;

//          carry = (shift_array[i] & 0x1);
//          uint32 temp_result = ( uint32 (shift_array[i])  >> 1) |  (carry << 15);
//
//          shift_array[i] = temp_result;

        }

        /*carry_ = 0;
        for(int i = 0; i < 129; i++)
        {

            uint32 temp_result_ = ( uint32 (result_array[i]) << 1) + carry_;
            carry_ = temp_result_ >> 16;
            result_array[i] = temp_result_;
        }*/
        result_array[128] = result_array[128] << 1;
        for(int i = 127; i >= 0; i--)
        {
            result_array[i + 1] = (result_array[i + 1]) | ((result_array[i] & (0x1 << 15)) >> 15);
            result_array[i] = result_array[i] << 1;

        }


        if(!BigInteger::GreaterThan((word*)shift_array, (word*)div_array, NUM_WORDS_1024 + 1, NUM_WORDS_2048 + 1))
        {

//            printf("Result2 is: ");
//            for(int i=0; i<257; i++)
//                printf("%x", div_array[i]);
//            printf("\n");
//
//            printf("- \n");
//
//                    printf("Result1 is: ");
//        for(int i=0; i<129; i++)
//            printf("%x", shift_array[i]);
//        printf("\n");



            BigInteger::SubtractIntegers(div_array, div_array, shift_array, div_array + NUM_BYTES_1024 + 1, NUM_WORDS_2048 + 1);


//        printf("Result2 is: ");
//
//        for(int i=0; i<257; i++)
//
//            printf("%x", div_array[i]);
//
//        printf("\n");

            //break;
            result_array[0]= result_array[0] + 1;
        }
        index--;
    }


    printf("after shifting is: ");
    for(int i = 128; i >= 0; i--)
    {
        printf("%x", shift_array[i]);
    }
    printf("\n");
    BigInteger1024 temp;
    memcpy(temp.GetData(), result_array, NUM_BYTES_1024);

    return temp;
}


BigInteger2048 BigInteger2048::PowerMod(const BigInteger2048& a, const BigInteger2048& b) {
  // TODO: To implement
  return BigInteger2048(0);
}


std::vector<BigInteger2048> BigInteger2048::FromFile(const std::string &filename) {
  std::string line;
  std::ifstream file;
  file.open(filename);
  std::vector<BigInteger2048> result;

  while(std::getline(file, line))
  {
    result.emplace_back(BigInteger2048(line));
  }

  file.close();
  return result;
}
