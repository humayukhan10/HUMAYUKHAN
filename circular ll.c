#include <stdio.h>
#include <stdlib.h>

// Define the structure for a node
struct Node {
    int data;               // Data of the node
    struct Node* next;      // Address of the next node
};

// Function to insert a new node at the end of the list
struct Node* insertAtEnd(struct Node* last, int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;

    if (last == NULL) {
        // If the list is empty, make the new node the only node in the list
        last = newNode;
        newNode->next = last;
    } else {
        // Add the new node to the end and update the last node's next pointer
        newNode->next = last->next;
        last->next = newNode;
        last = newNode; // Update the last pointer to the new node
    }
    return last; // Return the updated last pointer
}

// Function to display the circular linked list
void display(struct Node* last) {
    if (last == NULL) {
        printf("List is empty.\n");
        return;
    }

    struct Node* temp = last->next; // Start from the first node
    do {
        printf("%d -> ", temp->data); // Print the data of the current node
        temp = temp->next; // Move to the next node
    } while (temp != last->next);

    printf("NULL\n");
}

int main() {
    struct Node* last = NULL; // Initialize an empty circular linked list

    // Insert nodes at the end
    last = insertAtEnd(last, 10);
    last = insertAtEnd(last, 20);
    last = insertAtEnd(last, 30);

    // Display the circular linked list
    printf("Circular Linked List: ");
    display(last);

    return 0;
}
