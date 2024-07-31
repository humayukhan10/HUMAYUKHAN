#include<stdio.h>
void main (void){

    float x;
    printf("ENTER THE POWER OF E:");
    scanf("%f",&x);

    int a=30;
    float ans=1;
    float temp=1;
    int i;

    for(i=1;i<=a;i++){  //main logic of macleron series

        temp=(temp*x)/i;
        ans=ans+temp;

    }
    printf("%f",ans);









}
