import java.util.*;
public class op {
    public static void main(String[] args) {
    Scanner hk=new Scanner(System.in);     
    System.out.print("enter a number");
     int n=hk.nextInt();
     int j;
     for(int i=2;i<n;i++)
     {
        for(j=2;j<=i;j++){
            if(i%j==0){
                break;
            }
        }
        if(i==j){
            System.out.println("THIS NUMBER IS PRIME NUMBER"+i);
        }
        else
        {
            System.out.println("This Number is Composite"+i);
        }
     }
   
}
}

