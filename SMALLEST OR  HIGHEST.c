#include<stdio.h>
void main (void){


    int arr[10];
    int i,j,b,k,n;
    for(k=0;k<10;k++){

        printf("ENTER ELEMENT NO. %d:",k+1);
        scanf("%d",&arr[k]);
    }
    for(j=0;j<10;j++){

            b=0;

            for(i=0;i<10;i++){

    if(arr[j]>arr[i]){

        b++;
    }

    if(b==9){
        printf("%d is largest element\n",arr[j]);

    }
    if(b==0){


        printf("%d is  smallest elment\n",arr[j]);

    }
    }
    }

}
