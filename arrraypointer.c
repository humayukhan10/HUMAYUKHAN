#include <stdio.h>

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int *ptr = arr; // Pointer to the first element of the array

    // Accessing array elements through the pointer
    printf("%d\n", ptr[0]); // Outputs 1
    printf("%d\n", ptr[1]); // Outputs 2
    printf("%d\n", ptr[2]); // Outputs 3

    // You can also use the pointer to iterate through the array
    for(int i = 0; i < 5; i++) {
        printf("%d ", *(ptr + i)); // Outputs each element of the array
    }

    return 0;
}
