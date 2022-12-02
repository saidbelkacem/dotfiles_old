#include <stdio.h>

int main (int argc, char *argv[])
{
  float fahr, celsius;
  float upper, step;

  step = 20;
  upper = 400;
  fahr = 0;
  // lower = 0;
  while (fahr <= upper) { 
    celsius = (5.0/9.0) * (fahr -32);
    printf("%3.0f %6.1f\n", celsius, fahr);
    printf("Said\n");
    fahr = fahr + step;
  }
  return 0;
}
