#include<stdio.h>
#include<stdlib.h>

struct node
{
    int data;
    struct node *next;
    struct node *prev;

};
struct node *first=NULL;
struct node *last=NULL;
void create(int val)

{
    if(first==NULL)

    {
        first=(struct node *)malloc(sizeof(struct node));
        first->data=val;
        first->next=NULL;
        first->prev=NULL;

    }
    else
    {
        printf("\nLIST IS ALREADY CREATED:");
    }
}
void inseartfirst(struct node *p,int val)
{
    struct node *tmp;

    if(p==NULL)

    {
        printf("\ncreate empty ll");
    }
    else
    {
        tmp=(struct node *)malloc(sizeof(struct node));
        tmp->data=val;
        tmp->next=first;
        tmp->prev=p;
        first=tmp;
    }
}
void deletfirst(struct node *p)

{
    first=p->next;
    if(first)
    {
        first->prev=NULL;

    }
    free(p);
}
void deleteAt(struct node *p,int pos)
{
    int loc=1;
    struct node *tmp,*tmp2;

    if(p==NULL)

    {
        printf("\ncreate empty ll");
    }
    else
    {
        while (p->next !=NULL && loc<pos-1)
        {
            loc++;
            p=p->next;
        }
        tmp=p->next;
        tmp2=tmp->next;
        tmp2->prev=p;
        p->next=tmp2;

        free(tmp);
    }
}
int backward(struct node *p)
{
    int n=1;
    if(last!=NULL)
    {
       printf("\n\nNO.NUM=%d ADRESS OF NODE=%p VALUE OF NODE=%d ADRESS OF NEXT NODE=%p",n++,p,p->data,p->prev);
       p=p->prev;
    }

}
void display (struct node *p)
{

    int n=1;
    if(p==NULL)

    {
        printf("\ncreate empty ll");
    }
    else
    {
        while(p!=NULL)

        {
            printf("\n\nNO.NUM=%d ADRESS OF NODE=%p VALUE OF NODE=%d ADRESS OF NEXT NODE=%p",n++,p,p->data,p->next);
            p=p->next;

        }
    }
}
int main ()
{
    int choice =-1,value=-1;
    display(first);

    while(choice !=NULL)
    {
        printf("\nPRESS 1 FOR CREATE EMPTY LINKED LIST");
        printf("\nPRESS 2 FOR INSEART LINKED LIST");
        printf("\nPRESS 3 FOR DELET FIRST ");
        printf("\nPRESS 4 FOR DELET AT LOC");
        printf("\nPRESS 5 FOR DISPLAY LINKED LIST");
        printf("\nPRESS 6 FOR BACKWARD A LIST");
        printf("\nPRESS 0 FOR EXIT !");

        printf("\nENTER A CHOICE");
        scanf("%d",&choice);

        if(choice==1)
        {
            printf("\nENTER A VALUE");
            scanf("%d",&value);

            create(value);
        }
        else if (choice==2)
        {
          printf("\nENTER A VALUE");
          scanf("%d",&value);

            inseartfirst(first,value);
        }
        else if (choice==3)
        {
        deletfirst(first);
        }
        else if (choice==4){
         int pos;

          printf("\nENTER A POSITION");
          scanf("%d",&pos);

          deleteAt(first,pos);
        }
        else if(choice==5)
        {
            display(first);
        }
        else if(choice==6)
        {
            backward(first);
        }

    }
    printf("\nTHANK YOU!");

}
