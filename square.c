#include<stdio.h>

int square(int num){

 int squ;

 squ=num*num;
 return(squ);

}
int main(){

int n,sq;
printf("ENTER A NUMBER:");
scanf("%d",&n);

sq=square(n);

printf(" \nTHIS IS SQUARE%d:",sq);

}

