#include <stdio.h>

int strlen(char *str);
void str_mid(char *str_out, char *str1_in, int start, int end);
int clrBit(int value, int nbit);

int main()
{
    char texto[] = "Hola Mundo";
    char salida[50];

    int len = strlen(texto);

    printf("Longitud: %d\n", len);

    str_mid(salida, texto, 0, 3);
    printf("Substring: %s\n", salida);

    int valor = 15; // 1111
    int resultado = clrBit(valor, 1);

    printf("clrBit(15,1) = %d\n", resultado);

    return 0;
}