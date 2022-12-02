#include <stdio.h>

int main(int argc, const char *argv[])
{
    int i = 17;
    float j = 3.14159;
    int *addressOfI = &i; //addressOfI is pointer
    float *addressOfJ = &j;
    printf(“i(int) stores its value at % p\n”, addressOfI);
    printf(“j(float) stores its value at % p\n”, addressOfJ);
    printf(“this function starts at % p\n”, main);
    printf(“the int stored at addressOfI is % d\n”, *addressOfI); //dereferencing pointer
    *addressOfI = 89;                                             //change value at i’s address to 89
    printf(“Now i is % d\n”, i);
    printf(“An int is % zu bytes\n”, sizeof(int));
    printf(“A pointer is % zu bytes\n”, sizeof(int *));
    printf(“An int is % zu bytes\n”, sizeof(i));
    printf(“A pointer is % zu bytes\n”, sizeof(addressOfI));
    printf(“A float is % zu bytes\n”, sizeof(j));
    return 0;
}