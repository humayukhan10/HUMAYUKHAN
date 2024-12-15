#include<stdio.h>
#include<stdlib.h>

int main(int argc, char const *argv[])
{
   if(argc!=2){

    printf("ENTER A ONLY ONE DIGIT");

   }
   int num=atoi(argv[1]);

   if (prime(num)){

    printf("%d this is prime number\n",num);

   }
   else{


    printf("%d this is not a prime number\n",num);

   }

   }
   int prime(num){
    int i;
   if(num<=1){

    return 0;

   }
   for(i=2; i*i<=num;i++){


    if(num%i==0){

        return 0;
    }



   }
   return 1;
   }








