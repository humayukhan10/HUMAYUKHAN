#include<stdio.h>
  void  main (void){

  int a[3][3],b[3][3],c[3][3],i,j;


  printf("\nENTER A 1ST MATRIX:\n");
   for(i=0;i<3;i++){

       for(j=0;j<3;j++){

        printf("value of [%d] [%d]",i,j);
         scanf("%d",&a[i][j]);

       }

   }

    printf("\nENTER A 2ND MATRIX\n:");
    for(i=0;i<3;i++){

       for(j=0;j<3;j++){

        printf("value of [%d] [%d]",i,j);
         scanf("%d",&b[i][j]);

       }

   }

    printf("\naddition MATRIX\n:");
    for(i=0;i<3;i++){

       for(j=0;j<3;j++){

        c[i][j]=a[i][j]*b[i][j];

       }

   }

   for(i=0;i<3;i++){

       for(j=0;j<3;j++){

        printf("\t%d",c[i][j]);


       }
       printf("\n");

   }



}
