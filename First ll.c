#include <stdio.h>
#include <stdlib.h>


struct Node{
    int data;
    struct Node *next;
};

struct Node *first = NULL;

void create(int val){

    struct Node *tmp,*last;

    if(first == NULL){

    first = (struct Node*)malloc(sizeof(struct Node));
    first->data = val;
    first->next = NULL;
    last = first;
    }

    else{
        tmp = (struct Node*)malloc(sizeof(struct Node));
        tmp->data = val;
        tmp->next = NULL;
        last->next = tmp;
        last = tmp;
    }
}

void display(struct Node *p){
    while(p != NULL){

        printf("Address of  the node = %p Value of  the node = %d Address of  the next node = %p\n",p,p->data,p->next);
        p = p->next;
    }
}

int main(void){

    create(91);
    create(12312);
    create(5463);
    create(-4);

    create(400);

    create(14);

    display(first);

    return 0;
}

