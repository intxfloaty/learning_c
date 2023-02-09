#include <stdio.h>

int main()
{
    int a=1,b=1;
    for (int i = 0; i < 10; ++i) {
        // printf("%d %d ", a, b);
        a+=b;
        b+=a;
    }
    printf("%d %d\n", a, b);
    printf("hello world\n");
}