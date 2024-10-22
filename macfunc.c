#include <stdio.h>
#include <math.h>


double maclaurin_ln(double x, int n) {
    double result = 0.0;
    for (int i = 1; i <= n; i++) {
        result += pow(-1, i - 1) * pow(x - 1, i) / i;
    }
    return result;
}

int main() {
    double x, epsilon;
    int n;

    printf("Enter the value of x: ");
    scanf("%lf", &x);

    printf("Enter the number of terms (n): ");
    scanf("%d", &n);

    double ln_x = maclaurin_ln(x, n);

    printf("ln(%.2f) using %d terms in Maclaurin series: %.6f\n", x, n, ln_x);

    return 0;
}
