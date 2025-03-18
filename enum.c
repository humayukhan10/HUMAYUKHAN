#include <stdio.h>

enum Level {
  LOW,
  MEDIUM,
  HIGH
};
  
int main() {
  // Create an enum variable and assign a value to it
  enum Level myVar = HIGH;
 
  // Print the enum variable
  printf("%d", myVar);
  
  return 0;
}
