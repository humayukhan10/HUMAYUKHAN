// To access command line arguments

#include <stdio.h>


int main(int argc, char *argv[]){
int a;
    printf("The programe name.\n",argv[0]);
    printf("Total %d arguments are provided.\n",argc);


    for(int c=0;c<argc;c++){
        printf("\n argv[%d]:%s\n",c,argv[c]);
    }
getch();
}
