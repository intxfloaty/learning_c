/*Exercise 2-1. Write a program to determine the ranges of char, short, int, and long
variables, both signed and unsigned, by printing appropriate values from standard headers
and by direct computation. Harder if you compute them: determine the ranges of the various
floating-point types. */

#include <stdio.h>
#include <limits.h>
#include <float.h>

int main()
{
  printf("Range of an unsigned char is: %d to %d\n", 0, UCHAR_MAX );
  printf("Range of an unsigned int is %u to %u\n", 0, UINT_MAX);
  printf("Range of an unsigned short is %d to %d\n", 0, USHRT_MAX);
  printf("Range of an unsigned long is %d to %lu\n", 0, ULONG_MAX);
  printf("Range of a signed char is %d to %d\n", SCHAR_MIN, SCHAR_MAX);
  printf("Range of a signed short is %d to %d\n", SHRT_MIN, SHRT_MAX);
  printf("Range of a signed int is %d to %d\n", INT_MIN, INT_MAX);
  printf("Range of a signed long is %ld to %ld\n", LONG_MIN, LONG_MAX);
}