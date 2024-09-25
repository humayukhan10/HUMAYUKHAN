import java.util.Scanner;
public class asum{
public static void main (String...args){
   Scanner hk=new Scanner(System.in);
   int sum=0,num,a=0;
      System.out.print("Enter the terms");
      num=hk.nextInt();
         int arr[]=new int[num];
       for(int i=0;i<num;i++){

             System.out.print("Enter "+i+ " Element=");
             arr[a]=hk.nextInt();
             sum=sum+arr[a];

         }

           System.out.println("Total element array:="+arr[a]);
           System.out.println("The sum of Array:="+sum);

       }
  }
