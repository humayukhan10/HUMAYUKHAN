
import java.util.*;

public class logic {
      public static void main(String args[])
    {
	Scanner hk=new Scanner(System.in);

   System.out.print("ENTER A NUMBER");
         int n=hk.nextInt();
        int i, j;
     
        for (i = 0; i < n; i++) {
            
            for (j = n - i; j > 1; j--) {
                System.out.print(" ");
            }

           
            for (j = 0; j <= i; j++) {
                System.out.print("* ");
            }

            
            System.out.println();
        }
    }

    
    }
