import java.util.*;
public class matrix {
    public static void main(String[] args) {
    Scanner hk=new Scanner(System.in);
    System.out.println("which types matrix you required");
      
    System.out.print("how many rows");
     int row=hk.nextInt();
     System.out.print("how many colum");
     int col=hk.nextInt();
     
         int [][] numbers= new int[row][col];

        for(int i=0;i<row;i++){
        for(int j=0;j<col;j++){

            System.out.print( "["+i+"]"+" "+"["+j+"]"+"=");

            numbers[i][j]=hk.nextInt();
        }

     }
     System.out.println("your matrix is ");
        for(int i=0;i<row;i++){
        for(int j=0;j<col;j++){

             System.out.print("["+numbers[i][j] + "]"+ " ");
              
        }
        System.out.println();


    }
    
}
}
