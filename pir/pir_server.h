//
// Created by Edi Muskardin on 03/12/2019.
//

#ifndef ITS2018_PIR_SERVER_H
#define ITS2018_PIR_SERVER_H

#include <cstdint>
#include <vector>
#include "utils.h"
#ifdef PROTOCOLS
#include "bigint_ref/BigInteger1024.h"
#include "bigint_ref/BigInteger2048.h"
#else
#include "bigint/BigInteger1024.h"
#include "bigint/BigInteger2048.h"
#endif

class pir_server {
private:
    uint8_t numImages;
    uint16_t blocksPerImage;
    const std::vector<std::vector<BigInteger1024>> database = utils::getAllImages(DATABASE_DIR, numImages, blocksPerImage);

public:
    pir_server(uint8_t nImages, uint16_t blockPerImg) : numImages(nImages), blocksPerImage(blockPerImg) {}
    std::vector<BigInteger2048> serverResponse(const std::vector<BigInteger2048>& encPi);

};


#endif //ITS2018_PIR_SERVER_H
