#include <stdio.h>
int count=0;
void toh(int,int,int,int);

void toh(int n, int A, int B, int C){


    if(n>0){
        count++;
        toh(n-1,A,C,B);
        printf("%d --> %d\n",A,C);
        toh(n-1,B,A,C);
    }

}

void main(void){

    int n;

    while(1){
    printf("Enter the number of discs and 0 to exit: ");
    scanf("%d",&n);

    if(n == 0){
        break;
    }

    toh(n,1,2,3);

    printf("Total number of disc swap were %d. \n",count);
    count = 0;
    }

    printf("\nThank you..\n");
}
