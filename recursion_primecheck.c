#include <stdio.h>


int checkPrime(int number) {
    int count = 0;
    for (int i = 2; i <= number / 2; i++) {
        if (number % i == 0) {
            count = 1;
            break;
        }
    }
    if (number == 1)
        count = 1;
    return count;
}

int main() {
    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    if (checkPrime(number) == 0)
        printf("%d is a prime number.\n", number);
    else
        printf("%d is not a prime number.\n", number);

    return 0;
}
