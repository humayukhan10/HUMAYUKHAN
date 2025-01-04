// Program to work with 2-D arrays
#include <stdio.h>
#define ROW 3
#define COLUMN 4

int main(void){

    int arr[ROW][COLUMN];

    for(int i=0;i<ROW;i++){
        for(int j=0;j<COLUMN;j++){
            arr[i][j] = (i+1)*(j+1);
        }
    }

    for(int i=0;i<ROW;i++){
        for(int j=0;j<COLUMN;j++){
             printf("%d\t",arr[i][j]);
        }
        printf("\n");
    }

    
    


    return 0;
}
