#include <stdio.h>


int tribonacci(int n) {
    if (n == 0) return 0;
    else if (n == 1 || n == 2) return 1;
    else {
        int a = 0, b = 1, c = 1, next_term;
        for (int i = 3; i <= n; ++i) {
            next_term = a + b + c;
            a = b;
            b = c;
            c = next_term;
        }
        return c;
    }
}

int main() {
    int n_terms;
    printf("Enter the number of terms for Tribonacci series: ");
    scanf("%d", &n_terms);

    printf("Tribonacci series up to %d terms:\n", n_terms);
    for (int i = 0; i < n_terms; ++i) {
        printf("%d ", tribonacci(i));
    }
    printf("\n");

    return 0;
}
