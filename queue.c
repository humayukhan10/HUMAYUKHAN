// Queue Demo

#include <stdio.h>
#include <stdlib.h>

struct Node{
    int data;
    struct Node *next;
};

struct Node *front = NULL;
struct Node *rear = NULL;

int isEmpty(){

	if(front==NULL){
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
    free(tmp);
	return status;
}


void enqueue(int d){
struct Node *tmp ;
int status = isFull();

if(status == 1){
printf("Queue Overflow!\n");
}
else{
    tmp = (struct Node *) malloc(sizeof(struct Node));

    tmp->data = d;
    tmp->next = NULL;
    
    if(front == NULL){
        front = tmp;
        rear = tmp;
    }
    else{
        rear->next = tmp;
        rear = tmp;
	}
}
}

int dequeue(){

	struct Node *tmp;
	int removed = -1;
    int status = isEmpty();
    
	if(status == 1){
	
	printf("Queue Underflow!\n");
	return removed;
	}

	else{
	tmp = front;
	removed = tmp -> data; 
	front = front -> next;
	
	free(tmp);
	
	return removed;
	}	
}

void display(struct Node *p){
    int n=1;
    int t;
    
    t = isEmpty();
    
    if (t==1){
        printf("Queue empty!\n");

        return;
    }

    else{
    
        while(p!= NULL){

        printf("\nNode no = %d Address = %p Value  = %d Next Address = %p\n",n++,p,p->data,p->next);
        p = p->next;
    }
}
}


int main(int argc, char* argv[]){

     int c=0;
    int choice=-1, value=-1, pos;

    display(front);

    while(choice != 0){
        printf("\nStack demo\n");
        printf("\nPress 1 to ENQUEUE an element to the Queue\n");
        printf("Press 2 to DEQUEUE an element from the Queue\n");
        printf("Press 3 to display the list\n");
        printf("Press 0 to exit\n");
        
        printf("\nEnter your Choice: ");
        scanf("%d",&choice);

        if (choice == 1){
            printf("Enter the value: ");
            scanf("%d",&value);

            enqueue(value);
        }
    
        else if(choice == 2){
           int r;
           r = dequeue();

           printf("%d has been removed from the queue.\n",r);
        }

    
        else if(choice == 3){
            display(front);
        }

    }

    printf("\nThank you!\n");
    
    return 0;

}
