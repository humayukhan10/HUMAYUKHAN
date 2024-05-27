// Stack Demo

#include <stdio.h>
#include <stdlib.h>

struct Node{
    int data;
    struct Node *next;
};

struct Node *top = NULL;

int isEmpty(){

	if(top==NULL){
		return 1;
	}
	else{
		return 0;
	}
}

int isFull(){

	int status;
	struct Node *tmp = (struct Node *) malloc(sizeof(struct Node));

	if(tmp==NULL){

	status = 1;
    }

	else{
	status = 0;
    }

	return status;
}


void push(int d){
struct Node *tmp = (struct Node *) malloc(sizeof(struct Node));

if(tmp == NULL){
printf("Stack Overflow!\n");
}
else{

tmp->data = d;
tmp->next = top;
top = tmp;
	}
}

int pop(){

	struct Node *tmp;
	int removed = -1;

	if(top == NULL){

	printf("Stack Underflow!\n");
	return removed;

	}

	else{
	tmp = top;
	removed = tmp -> data;
	top = top -> next;

	free(tmp);

	return removed;
	}
}

int peek(int pos){

	int t = -1, status;
	struct Node *p;

	p  = top;

    status = isEmpty();

    if(status == 1){
        printf("Stack Underflow\n");
    }

    else{
	for(int i=0; i<pos-1;i++){

	if(p==NULL){
		break;
	}

	p = p->next;
    }
    }

	if(p==NULL){
	return t;
}
	else{
	t = p->data;
	return t;
}
}

void display(struct Node *p){
    int n=1;
    int t;

    t = isEmpty();

    if (t==1){
        printf("Stack empty!\n");

        return;
    }

    else{

        while(p!= NULL){

        printf("\nNode no = %d Address of  the node = %p Value of  the node = %d Address of  the next node = %p\n",n++,p,p->data,p->next);
        p = p->next;
    }
}
}


int main(int argc, char* argv[]){

     int c=0;
    int choice=-1, value=-1, pos;

    display(top);

    while(choice != 0){
        printf("\nStack demo\n");
        printf("\nPress 1 to PUSH an element to the Stack\n");
        printf("Press 2 to POP an element from the Stack\n");
        printf("Press 3 to PEEK an element from the Stack\n");
        printf("Press 4 to display the list\n");
        printf("Press 0 to exit\n");

        printf("\nEnter your Choice: ");
        scanf("%d",&choice);

        if (choice == 1){
            printf("Enter the value: ");
            scanf("%d",&value);

            push(value);
        }

        else if(choice == 2){
           int item;
           item = pop();

           printf("%d removed\n",item);
        }

        else if(choice == 3){
            int item;
            printf("Enter the position: ");
            scanf("%d",&pos);

            item = peek(pos);

            printf("%d is located at %d\n",item, pos);
        }

        else if(choice == 4){
            display(top);
        }

    }

    printf("\nThank you!\n");

    return 0;

}
