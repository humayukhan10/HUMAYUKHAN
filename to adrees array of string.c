// To address array of strings

#include <stdio.h>
#include <string.h>

int main(void){

    char *str1[] = {"abc","def","ghi","jkl","mnop"};

    for (int i=0;i<5;i++){
        puts(str1[i]);
 
    }
}
