#include<stdio.h>
#include<stdlib.h>
int main ()
{
int m=-1;
while(m!=0){
printf("CHOOSE 1 FOR ADDITION\n");
printf("CHOOSE 2 FOR SUBSTRACTION\n");
printf("CHOOSE 3 FOR MULTIPICATION\n");
printf("CHOOSE 4 FOR DIVISSION\n");


int n;
printf("ENTER A NUMBER:");
scanf("%d",&n);
if(n==1){
int c,d;
printf("ENTER A 1 NUMBER");
scanf("%d",&c);

printf("ENTER A 2 NUMBER");
scanf("%d",&d);

printf("%d is sum\n",c+d);

}
else if (n==2)
{
int c,d;
printf("ENTER A 1 NUMBER");
scanf("%d",&c);

printf("ENTER A 2 NUMBER");
scanf("%d",&d);

printf("%d is answer\n",c-d);

}
else if(n==3)
{
int c,d;
printf("ENTER A 1 NUMBER");
scanf("%d",&c);

printf("ENTER A 2 NUMBER");
scanf("%d",&d);

printf("%d is answer\n",c*d);

}

else if(n==4)
{
float c,d;
printf("ENTER A 1 NUMBER");
scanf("%f",&c);

printf("ENTER A 2 NUMBER");
scanf("%f",&d);

printf("%..2f is answer\n",c/d);


}


}
printf("\nTHANK YOU...🤧");

}
    
