#include<stdio.h>
int main(){


  int mat[3][3],i,j;
  printf("ENTER A MATRIX");
  for(i=0;i<3;i++){

    for(j=0;j<3;j++){

        scanf("%d",&mat[i][j]);

    }
    }
    printf("this is MATRIX");
     for(i=0;i<3;i++){

    for(j=0;j<3;j++){

       printf("[%d]",mat[i][j]);

    }

    printf("\n");
     }

}
