#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct student
{
    int roll;
    char name[20];
    float gpa;
};

int main(int argc, char const *argv[])
{

 struct student s[5];

 for(int i=0;i<5;i++)
 {
     printf("ENTER A NUMBER:");
     scanf("%d",&s[i].roll);
 }
 for(int i=0;i<5;i++)
 {
     printf("ENTER A NAME:");
     scanf("%s",&s[i].name);
 }
 for(int i=0;i<5;i++)
 {
     printf("ENTER A GPA:");
     scanf("%f",&s[i].gpa);
 }

for(int i=0;i<5;i++){
 printf("%d %s %.2f\n\n",s[i].roll,s[i].name,s[i].gpa);
}

}
















