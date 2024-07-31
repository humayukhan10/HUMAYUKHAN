#include<stdio.h>
#include<stdlib.h>


struct node
{
    int data;
    struct node *next;
};


struct node *first=NULL;

int create (int val)
{

    struct  node *tmp,*last;

    if(first==NULL){
    first=(struct node*)malloc(sizeof(struct node));
    first->data=val;
    first->next=NULL;
    last=first;
}
else{

    tmp=(struct node*)malloc(sizeof(struct node));
    tmp->data=val;
    tmp->next=NULL;

     last->next = tmp;
     last = tmp;
}
}

void display(struct node *p)
{


    while(p!=NULL)


    {
        printf("ADDRESS OF NODE=%p\t\n  VALUE OF NODE=%d\t\n ADDRESS OF NEXT NODE=%p\t\n   ",p,p->data,p->next);
        p=p->next;
    }


}

int cou(struct node *p)
{
    int c=0;

    while(p!=NULL)
    {
        c++;
        p=p->next;
    }
    return c;
}

int sum(struct node *p)
{
    int s=0;

    while(p!=NULL)
    {
        s +=p->data;
        p =p->next;
    }
    return s;
}







int main(void)
{

 int s1,count;
 float avg=0;
 
    create(11);
    create(22);
    create(30);
    create(45);
    create(50);


    display(first);

    count= cou(first);
    printf("THE COUNT =%d\n",count);

    s1= sum(first);
    printf("THE SUM OF LL =%d\n",s1);

    avg = (float)s1/count;
    printf("THE AVERAGE =%.3f\n",avg);


    return 0;



}

