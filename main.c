#include "bee2/core/mem.h"
#include "bee2/core/hex.h"
#include "bee2/core/str.h"
#include "bee2/core/util.h"
#include "bee2/crypto/bash.h"
#include "bee2/crypto/belt.h"

int main(void) {
    octet hash[64];

    bash256Hash(hash, beltH(), 0);
    bash256Hash(hash, beltH(), 64);
    bash256Hash(hash, beltH(), 128);
    return 0;
}
