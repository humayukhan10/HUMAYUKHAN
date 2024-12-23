#include<stdio.h>
int main ()
{
   int p,r,n;
   float  ans;
   printf("ENTER A PRINCIPLE=");
   scanf("%d",&p);
   printf("ENTER A RATE OF INTREST=");
   scanf("%d",&r);
   printf("ENTER A NUMBER OF YEAR=");
   scanf("%d",&n);
   ans=(p*r*n)/100;
   printf("simple intrest is ..%2f",ans);


}
