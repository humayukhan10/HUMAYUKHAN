#include<stdio.h>
void swap(int* a,int* b)
{
    int temp=*a;
    *a=*b;
    *b=temp;
}
int main ()
{
    
    int x=10;  int y=20;
    void (func_ptr)(int*,int*)= &swap;

    func_ptr(&x,&y);

    printf("X: %d Y: %d",x,y);

    return 0;
}
