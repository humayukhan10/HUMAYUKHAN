#include<stdio.h>
void main (void)
{
    int x=1;
    np(x);
}
int np (int n)
{
    if(n<=10){

        printf("%d\n",n);
        np(n+1);
    }
}

