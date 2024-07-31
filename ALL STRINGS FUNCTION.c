#include <stdio.h>
#include <string.h>

int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";
    char str3[20];
    int length;
    int compare;
    char *position;

    // strlen()
    length = strlen(str1);
    printf("Length of str1: %d\n", length);

    // strcpy()
    strcpy(str3, str1);
    printf("Copied string: %s\n", str3);

    // strcat()
    strcat(str1, " ");
    strcat(str1, str2);
    printf("Concatenated string: %s\n", str1);

    // strcmp()
    compare = strcmp(str1, str2);
    printf("Comparison result: %d\n", compare);

    // strchr()
    position = strchr(str1, 'o');
    printf("Position of 'o': %s\n", position);

    // strstr()
    position = strstr(str1, "World");
    printf("Position of 'World': %s\n", position);

    return 0;
}

