// To create  pointer to strucutre

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct student
    {
        int rollno;
        char name[20];
        float gpa;
    };

int main(int argc, char *argv[]){

    struct student s1, *ptr;

    s1.rollno = 1;
    strcpy(s1.name,"John Conor");
    s1.gpa = 5.5;

    ptr = &s1;


    printf("Address of s1 = %p, ptr points to %p\n",&s1,ptr);

    printf("%d %s %.2f\n\n",s1.rollno,s1.name,s1.gpa);
    printf("%d %s %.2f\n\n",ptr->rollno,ptr->name,ptr->gpa);


    ptr->rollno = 2;
    strcpy(ptr->name,"Sarah");
    ptr->gpa=8.5;

    printf("%d %s %.2f\n\n",s1.rollno,s1.name,s1.gpa);
    printf("%d %s %.2f\n\n",(*ptr).rollno,(*ptr).name,(*ptr).gpa);
    printf("%d %s %.2f\n\n",ptr->rollno,ptr->name,ptr->gpa);

    return 0;
}
