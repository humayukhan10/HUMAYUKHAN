import java.util.Scanner;
public class primesum {
    public static void main(String[] args) {
        Scanner r1=new Scanner(System.in);
        int a=0,sum=0,psum=0;
        for(int i=1;i<=5;i++){
        System.out.print("ENTER A NUMBER "+  i+"=");
        a=r1.nextInt();
        if(a%2==0){
          
            System.out.println("THIS IS COMPOSITE NUMBER " + a);
            sum=sum+a; 
      }
        
         else{

            System.out.println("THIS IS prime NUMBER "+a);
            psum=psum+a;
          
        }
        
     }

     System.out.println("The Sum Of Composite Number "+sum);
     System.out.println("The Sum Of Prime Number "+ psum);
      
    }
}
