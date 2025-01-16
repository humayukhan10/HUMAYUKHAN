// Insert at the beginning, at end and in between, Deleting, Delete at given location

#include <stdio.h>
#include <stdlib.h>


struct Node{
    int data;
    struct Node *next;
};

struct Node *first = NULL;

void create(int val){

    struct Node *tmp,*last, *p;

    if(first == NULL){

    first = (struct Node*)malloc(sizeof(struct Node));
    first->data = val;
    first->next = NULL;
    last = first;
    }

    else{

        printf("List already created!\n");
    }

    return;
}

void insertFirst(struct Node *p, int val){
    struct Node *tmp;

     if (p == NULL){
        printf("List empty!\n");
        return;
    }

    tmp = (struct Node*)malloc(sizeof(struct Node));
    tmp->data = val;
    tmp->next = first;
    first = tmp;

}

void insertLast(struct Node *p, int val){

    struct Node *tmp, *last;

     if (p == NULL){
        printf("List empty!\n");
        return;
    }

    while (p->next != NULL)
    {
        p = p->next;
    }

    tmp = (struct Node*)malloc(sizeof(struct Node));
    tmp->data = val;
    p->next = tmp;
    tmp->next = NULL;
    last = p;

}

void insertAt(struct Node *p, int val, int pos){
    struct Node *tmp, *tmp2;
    int loc = 1;

     if (p == NULL){
        printf("List empty!\n");
        return;
    }

    while (p->next != NULL && loc < pos)
    {

        p = p->next;

        loc++;
    }
    // tmp2 = p->next;

    // for(int i=1;i<loc-1;i++){
    //     p = p->next;
    // }

    tmp = (struct Node*)malloc(sizeof(struct Node));
    tmp->data = val;
    tmp->next = p->next;
    p->next = tmp;
    // tmp->next = tmp2;
}

void deleteFirst(struct Node *p){
    struct Node *tmp = p;

    first = p->next;
    free(p);
}

void deleteAt(struct Node *p, int pos){
    struct Node *tmp, *tmp2;
    int loc = 1;

     if (p == NULL){
        printf("List empty!\n");
        return;
    }
    else if (p->next == NULL){
        printf("There is only one element left ; use delete first option!\n");
        return;
    }
    while (p->next != NULL && loc < pos-1)
    {

        p = p->next;

        loc++;
    }
    tmp = p->next;
    tmp2 = tmp->next;

    p->next = tmp2;
    free(tmp);

    return ;
}

void display(struct Node *p){
    int n=1;
    if (p == NULL){
        printf("List empty!\n");
    }

    while(p != NULL){

        printf("\nNode no = %d Address of  the node = %p Value of  the node = %d Address of  the next node = %p\n",n++,p,p->data,p->next);
        p = p->next;
    }
}

int main(void){

    int c=0;
    int choice=-1, value=-1;

    display(first);

    while(choice != 0){
        printf("\nPress 1 to create from an empty list\n");
        printf("Press 2 to insert at the beginning of the list\n");
        printf("Press 3 to insert at end of the list\n");
        printf("Press 4 to insert at the given position in the list\n");
        printf("Press 5 to delete the first node in the list\n");
        printf("Press 6 to delete the node at a given location in the list\n");
        printf("Press 9 to display the list\n");
        printf("Press 0 to exit\n");

        printf("\nEnter your Choice: ");
        scanf("%d",&choice);

        if (choice == 1){
            printf("Enter the value: ");
            scanf("%d",&value);

            create(value);
        }
        else if(choice == 2){
           printf("Enter the value: ");
            scanf("%d",&value);

            insertFirst(first, value);
        }
        else if(choice == 3){
           printf("Enter the value: ");
            scanf("%d",&value);

            insertLast(first, value);
        }
        else if(choice == 4){
            int pos;
            printf("Enter the value: ");
            scanf("%d",&value);

            printf("Enter the location: ");
            scanf("%d",&pos);


            insertAt(first, value,pos);
        }
        else if(choice == 5){
            deleteFirst(first);
        }
        else if(choice == 6){
            int pos;

            printf("Enter the location: ");
            scanf("%d",&pos);

            deleteAt(first,pos);
        }

        else if(choice == 9){
            display(first);
        }
    }
    printf("\nThank you!\n");
    return 0;
}
