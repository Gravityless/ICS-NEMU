#include "trap.h"

int a = 1;
int b = 2;

int main()
{
    BREAK_POINT;
    int c = a;
    BREAK_POINT;
    c = b;
    
    HIT_GOOD_TRAP;
    return 0;
}