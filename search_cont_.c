// List Operations (Search)

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

struct Node *search(struct Node *p, int key,int *cn){
    int found = 0;

    struct Node *loc;
    while(p != NULL){


        if(key == p->data){
            found = 1;
            loc = p;
            return loc;
        }
        p = p->next;
        *cn = *cn + 1;
    }
    loc = NULL;
    return loc;
}


int main(void){

    struct Node *c;
    int  key=10;
    int *cn,cou=0;

    cn = &cou;

    create(10);
    create(20);
    create(30);
    create(40);
    create(50);

    display(first);


    c = search(first,key,cn);

    if(c != NULL){
        printf("Key element %d found at %p which is location no: %d\n",key,c,*cn);
    }
    else{
            printf("Not Found]n");
    }

    return 0;
}
