// Dynamic Memory Example
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(int argc, char *argv[]){

    int n, *p, sum=0;
    
    printf("How many numbers you want to store?: ");
    scanf("%d",&n);

    p = (int *)malloc(sizeof(int)*n);

    for (int i=0;i<n;i++){
        printf("Enter number: ");
        scanf("%d",(p+i));
    }

    for (int i=0;i<n;i++){
        sum = sum + *(p+i);
    }

    printf("The sum of these number is %d\n",sum);
}

