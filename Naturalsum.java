import java.util.*;

class Naturalsum{
  public static void main(String[] args){

     int sum = 0;
     Scanner scr = new Scanner(System.in);
     int num = scr.nextInt();

        for(int i = 1; i <= num; ++i)
        {
            // sum = sum + i;
            sum += i;
        }

        System.out.println("Sum = " + sum);
        
  }
}
