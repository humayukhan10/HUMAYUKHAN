#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    // Check if a command line argument is provided
    if (argc < 2) {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }

    // Convert the command line argument to an integer
    int num = atoi(argv[1]);

    // Print the multiplication table for the number
    printf("Multiplication table for %d:\n", num);
    for (int i = 1; i <= 10; ++i) {
        printf("%d * %d = %d\n", num, i, num * i);
    }

    return 0;
}
