// To access strucutre members

#include <stdio.h>
#include <stdlib.h>

struct student
    {
        int rollno;
        char name[20];
        float gpa;
    };

int main(int argc, char *argv[]){

       

       struct student s1 = {1,"John",5.5};
       struct student s2 = {2,"Sarah",6.5};
       struct student s3 =  {3,"Vinod",7.0};

    printf("%d %s %.2f\n",s1.rollno,s1.name,s1.gpa);
    printf("%d %s %.2f\n",s2.rollno,s2.name,s2.gpa);
    printf("%d %s %.2f\n",s3.rollno,s3.name,s3.gpa);

    return 0;
}
