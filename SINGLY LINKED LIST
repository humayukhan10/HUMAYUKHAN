#include<stdio.h>
#include<stdlib.h>


struct node
{
    int data;
    struct node *next;
};

struct node *first= NULL;


void create(int val)
{
 struct node *tmp,*last;


    if(first==NULL)
    {
        first=(struct node*)malloc(sizeof(struct node));
        first->data=val;
        first->next=NULL;
        last=first;
    }
    else
    {
        printf("\nLIST IS ALREADY CREATED");
    }

}
void insertfirst(struct node *p,int val)
{
  struct node *tmp,*last;
    if(p==NULL)
    {
        printf("\nLIST BANAY PELA\n");
    }
        tmp=(struct node*)malloc(sizeof(struct node));
        tmp->data=val;
        tmp->next=first;
        first=tmp;
         return ;
}
void insertlast(struct node *p,int val)
{
  struct node *tmp,*last;
    if(p==NULL)
    {
        printf("\nLIST BANAY PELA\n");
    }
        while(p->next!=NULL)
        {
            p=p->next;
        }
        tmp=(struct node*)malloc(sizeof(struct node));
        tmp->data=val;
        p->next=tmp;
        tmp->next=NULL;
        last=tmp;
}
void insertat(struct node *p,int val,int pos)
{
    int loc=1;

    if(p==NULL)
    {
        printf("\nLIST BANAY PELA\n");
    }
    while(p->next!=NULL && loc<pos)
    {
        loc++;
        p=p->next;
    }
    struct node *tmp;
    tmp=(struct node*)malloc(sizeof(struct node));
    tmp->data=val;
    tmp->next=p->next;
    p->next=tmp;

}

int sum(struct node *p)
{
    int s=0;
    if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }
    while(p!=NULL)
    {
        s += p->data;
        p=p->next;
    }
    return s;
}







void display(struct node *p)
{


    if(p==NULL)
    {
        printf("\nLIST BANAY PELA\n");
    }
    while(p!=NULL)
    {
        printf("\nADRESS OF NODE=%p VALUE OF NODE=%d ADDRESS OF NEXT NODE=%p\n",p,p->data,p->next);
        p=p->next;

    }
}
int main (void)
{


    int choice=-1,value=-1;

    while(choice !=0)

    {
     printf("\n PRESS 1 FOR CREATE EMPTY LIST");
     printf("\n PRESS 2 FOR INSERT FIRST LIST");
     printf("\n PRESS 3 FOR INSERT LAST LIST");
     printf("\n PRESS 4 FOR INSERT ANY LOCTAION LIST");
     printf("\n PRESS 5 FOR SUM OF LIST");
     printf("\n PRESS 6 FOR DISPLAY LIST");
     printf("\n PRESS 7 FOR  EXIT! LIST");


     printf("\nENTER A CHOICE:");
     scanf("%d",&choice);

     if(choice==1)
     {
         printf("\nENTER VALUE :");
         scanf("%d",&value);

         create(first);
     }
     else if (choice==2)
     {
       printf("\nENTER VALUE :");
         scanf("%d",&value);

         insertfirst(first,value);


     }
     else if (choice==3)
     {
       printf("\nENTER VALUE :");
         scanf("%d",&value);

         insertlast(first,value);

     }
      else if (choice==4)
     {
         int pos;
        printf("\nENTER VALUE :");
         scanf("%d",&value);

         printf("\nENTER postion :");
         scanf("%d",&pos);

         insertat(first,value,pos);

     }
     else if(choice==5)
     {
         int tot;
         tot=sum(first);
         printf("% \nSUM OF LINKED LIST=%d",tot);
     }
     else
     {
         display(first);
     }

     printf("\n THANK YOU");
    }

    }






