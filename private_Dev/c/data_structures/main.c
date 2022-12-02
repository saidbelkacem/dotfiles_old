#include <stdio.h>

int main (int argc, char *argv[])
{
  int a[5] = {34,23,45,545,56,};
  int i; 
  for (i = 4; i > 0 ; i--) {
    printf("%i\n\n",a[i]);
    i = a[i] -1;
  }
  return 0;
}
