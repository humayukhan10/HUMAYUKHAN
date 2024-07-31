#include <stdio.h>
#include <math.h>

double maclaurin_series(double x, int n) {
    double result = 0.0;
    for (int i = 0; i <= n; i++) {
        result += pow(x, i) / tgamma(i + 1);
    }
    return result;
}

int main() {
    double x = 2.0;
    int n = 10;
    double sum = maclaurin_series(x, n);
    printf("The sum of the Maclaurin series for x = %lf is %lf\n", x, sum);
    return 0;
}
