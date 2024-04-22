#include<stdio.h>
#include<stdlib.h>


struct Node{

    int data;
    struct Node *next;
};

void display(struct Node *p){

        while(p != NULL){

        printf("Address of  the node = %p Value of  the node = %d Address of  the next node = %p\n",  p,p->data,p->next);
        p = p->next;
    }
}



int main(void)

{


     struct Node *first = NULL;
     struct Node *second, *third;

    first = (struct Node *)malloc(sizeof(struct Node));
    second = (struct Node *)malloc(sizeof(struct Node));
    third = (struct Node *)malloc(sizeof(struct Node));


    first->data = 1;
    first->next = second;

    second->data = 2;
    second->next = third;

    third->data = 3;
    third->next = NULL;


    display(first);

    return 0;
}





