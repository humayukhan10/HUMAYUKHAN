#include<stdio.h>

void PUSH();
void PEEP();
void POP();
void CHANGE();
void DISPLAY();

struct rec {

int data;
struct rec *next;

}*TOP=NULL;

void main(){

  int choice;

  do{
    printf("\n M E N U");
    printf("\n1.PUSH");
    printf("\n2.PEEP");
    printf("\n3.POP");
    printf("\n4.DISPLAY");
    printf("\n5.CHANGE");
    printf("\n6.EXIT");

    scanf("%d",&choice);


    switch(choice){
    case 1:PUSH();
          break;
    case 2:PEEP();
          break;
    case 3:POP();
          break;
    case 4:DISPLAY();
          break;
    case 5:CHANGE();
          break;
    case 6:exit(0);
          break;
    default:printf("invalid choice.\n");
    }
    getch();+

    }while(choice!=6);

    return(0);
 }

void PUSH(){
 struct rec *temp;
 int no;
 temp=(struct rec *)malloc(sizeof(struct rec));
 printf("\nEnter the value=");
 scanf("%d",&no);
 temp->data=no;
 temp->next=NULL;
 temp->next=TOP;
 TOP=temp;
}
