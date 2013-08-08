/*
 * This example comes from [Patience Diff, a brief summary][1]. To
 * demonstrate, diff this file with its previous revision:
 *
 *     $ git log --oneline -- patience-example.c
 *     $ git diff <previous> patience-example.c
 *     $ git diff --patience <previous> patience-example.c
 *
 * [1]: http://alfedenzo.livejournal.com/170301.html
 */
#include <stdio.h>

int fib(int n)
{
    if (n > 2)
    {
        return fib(n-1) + fib(n-2);
    }
    return 1;
}

// Frobs foo heartily
int frobnitz(int foo)
{
    int i;
    for (i = 0; i < 10; i++)
    {
        printf("%d\n", foo);
    }
}

int main(int argc, char **argv)
{
    frobnitz(fib(10));
}
