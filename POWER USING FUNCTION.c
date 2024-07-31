#include<stdio.h>
int ans=1;
int power(n1,n2)
{
    int i=1;
    if(i<=n2){

        ans=ans*n1;
        power(n1,n2-1);


    }
    return ans;
}

void main (void){


int a,b;

printf("ENTER BASE:");
scanf("%d",&a);

printf("ENTER BPOWER");
scanf("%d",&b);

power(a,b);

printf("POWER IS %d",ans);


}

