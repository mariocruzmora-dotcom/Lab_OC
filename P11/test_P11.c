#include <stdio.h>
#include <stdint.h>

void pBin8b(uint8_t dato);
void pBin16b(uint16_t dato);
void pBin32b(uint32_t dato);

int main(){

    printf("8 bits: ");
    fflush(stdout);
    pBin8b(10);

    printf("\n16 bits: ");
    fflush(stdout);
    pBin16b(10);

    printf("\n32 bits: ");
    fflush(stdout);
    pBin32b(10);

    printf("\n");

    return 0;
}