import java.util.*;

class Main{
  public static void main(String[] args){

    int reversed = 0;
    
    Scanner scr = new Scanner(System.in);
    int num = scr.nextInt();

    while(num != 0) {
      
      int lastdigit = num % 10;
      reversed = reversed * 10 + lastdigit;
      num /= 10;
      
    }

    System.out.println("Reversed Number: " + reversed);
  
  }
}
