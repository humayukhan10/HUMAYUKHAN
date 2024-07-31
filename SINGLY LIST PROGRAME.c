#include<stdio.h>
#include<stdlib.h>


struct node
{
    int data;
    struct node *next;
};

struct node *first=NULL;

void create(int val)
{
 struct node *last;
    if(first==NULL)
    {
        first=(struct node *)malloc(sizeof(struct node));
        first->data=val;
        first->next=NULL;
        last=first;
    }
    else
    {
        printf("\n\n LIST IS ALREADY CREATED:");
    }
}
void insertfirst(struct node *p,int val)
{
    struct node *tmp;

    if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }
        tmp=(struct node *)malloc(sizeof(struct node));
        tmp->data=val;
        tmp->next=first;
        first=tmp;

}
void insertlast(struct node *p,int val)
{
    struct node *tmp,*last;

    if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }
        while(p->next !=NULL)
        {
           p=p->next;

        }
        tmp=(struct node *)malloc(sizeof(struct node));
        tmp->data=val;
        p->next=tmp;
        tmp->next=NULL;
        last=tmp;

}
void insertat(struct node *p,int val,int pos)
{
    struct node *tmp,last;
    int loc=1;

    if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }
        while(p!=NULL && loc<pos)
        {
           loc++;
           p=p->next;

        }
        tmp=(struct node *)malloc(sizeof(struct node));
        tmp->data=val;
        tmp->next=p->next;
        p->next=tmp;
}

void delfirst(struct node *p)
{

 if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }

   first=p->next;
    free(p);

}

void anydel(struct node *p,int pos)
{
    int loc;
    struct node *tmp,*tmp2;
    if(p==NULL)
    {
        printf("\n LIST BANAY:");
    }
    else if (p->next == NULL){
        printf("There is only one element left ; use delete first option!\n");
        return;
    }
    while(p!=NULL && loc<pos-1)
    {
        p = p->next;
        loc++;
    }
    tmp=p->next;
    tmp2=tmp->next;
    p->next=tmp2;
    free(tmp);
    }

int sum(struct node *p)
{

    int s=0;
    while(p!=NULL){
    s=s+p->data;
    p=p->next;
    }
    return s;

}
void search(struct node *p)
{
  if(p==NULL)
    {
        printf("\nList BANAY PELA\n");
    }
    int num,count=1;
    printf("WHICH ELMENT YOU SEARCHING:");
    scanf("%d",&num);

    while(p!=NULL){

    if(p->data==num)
    {
        printf("%YOUR ELMENT AT %d LOCATION",count);
        return;
    }

     else if(p->data !=num && p==NULL)
{
    printf("NOT FOUND");
}
    else if(p->data!=num)
{
    count++;
}
     p=p->next;

    if(p==NULL)
{
    printf("NOT FOUND");
}


}
}
int issorted(struct node *p)
{
int val=p->data,test;


while(p!=NULL){

    if(p->data < val)
    {
        printf("%d %d",val,p->data);
        return 0;
    }



    else  {
        val=p->data;
        p=p->next;
      }

}
  return 1;
}
int reverse (struct node *p)
{

    struct node *q,*r;
    q=NULL;
    r=NULL;

    while(p!=NULL)
    {
        r=q;
        q=p;
        p=p->next;
        q->next=r;

    }
    first=q;
}

void update(struct node *p)
{
    int n,val,loc=1;

     printf("ENTER A NEW VALUE:");
    scanf("%d",&val);

    printf("ENTER A NEW NODE:");
    scanf("%d",&n);
    if(p==NULL)
    {
        printf("\nList BANAY PELA\n");
    }
    while(p!=NULL && loc<n)
    {

        loc++;
        p=p->next;

    }
    p->data=val;

}


void display(struct node *p)
{
   if(p==NULL)
    {
        printf("\n LIST BANAY PELA");
    }
    while(p!=NULL)

    {
        printf("\n\nADDRESS OF NODE=%p VALUE OF NODE=%d ADDRESS OF NEXT NODE=%p",p,p->data,p->next);
        p=p->next;
    }

}
int main (void)
{
    int choice=-1,value=-1;


    display(first);

    while(choice!=0)
    {

        printf("\nPREES 1 FOR CREATE EMPTY LIST ");
        printf("\nPREES 2 FOR INSERT LIST ");
        printf("\nPREES 3 FOR INSERT LAST LIST ");
        printf("\nPREES 4 FOR INSERT ANYWHERE LIST ");
        printf("\nPREES 5 FOR SUM OF LIST ");
        printf("\nPREES 6 DELET FIRST NODE LIST ");
        printf("\nPREES 7 DELET ANY LOC NODE LIST ");
        printf("\nPREES 8 FOR SEARCHING A ELEMENT IN LIST ");
        printf("\nPREES 9 FOR  CHECK SORTED A LIST ");
        printf("\nPREES 10 FOR  REVERS A LIST A LIST ");
        printf("\nPREES 11 FOR  UPDATE LIST ");
        printf("\nPREES 12 FOR DISPLAY LIST ");
        printf("\nPREES 0 FOR EXIT ! LIST ");


        printf("\n ENTER A CHOICE:");
        scanf("%d",&choice);


        if(choice==1)
        {
         printf("\n ENTER A VALUE:");
        scanf("%d",&value);

        create(value);
        }
       else if(choice==2)
        {
         printf("\n ENTER A VALUE:");
        scanf("%d",&value);

        insertfirst(first,value);
        }
        else if(choice==3)
        {
         printf("\n ENTER A VALUE:");
        scanf("%d",&value);

        insertlast(first,value);
        }

        else if(choice==4)
        {
        int pos;
         printf("\n ENTER A VALUE:");
        scanf("%d",&value);

         printf("\n ENTER A POSITION:");
        scanf("%d",&pos);

        insertat(first,value,pos);
        }

         else if(choice==5)
        {
         int s1=0;
         s1= sum(first);
         printf("SUM OF LINKED LIST=%d",s1);
        }
         else if(choice==6)
        {

          delfirst(first);

        }
         else if(choice==7)
        {
        int pos;


         printf("\n ENTER A POSITION:");
         scanf("%d",&pos);

        anydel(first,pos);
        }
         else if(choice==8)
        {

           search(first);

        }
         else if(choice==9)
        {

          int test;
          test =issorted(first);
           printf("test = %d\n",test);

          if(test==0)
          {
              printf("\n\nlist is unsoreted:");
          }
          else
          {
               printf("\n\nlist is soreted:");
          }

        }
         else if(choice==10)
        {

           reverse(first);

        }
      else if(choice==11)
        {

            update(first);

        }

        else
        {
            display(first);

        }
        printf("\nTHANK YOU:");

    }

}





