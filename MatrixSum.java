import java.util.*;
public class MAATRIXSUM {
        public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        int i,j;
        float avg=0;
        int [][]MAT=new int[3][3];
        int [][]mat=new int[3][3];
        int [][]sum=new int [3][3];

        System.out.println("enter a first matrix");
        for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            System.out.print("["+i+"]" +"["+j+"]"+"=");
             MAT[i][j]=in.nextInt();
        }
        System.out.println();
    }
         for(i=0;i<3;i++){
         for(j=0;j<3;j++){

            System.out.print("["+MAT[i][j]+"]"); 

         }
         System.out.println();
     }
           //SECOND MATRIX  
          
      
          
        System.out.println("enter a second matrix");

        
            for(i=0;i<3;i++){
            for(j=0;j<3;j++){
                System.out.print("["+i+"]" +"["+j+"]"+"=");
                mat[i][j]=in.nextInt();
           }
           System.out.println();
        }
      
            for(i=0;i<3;i++){
            for(j=0;j<3;j++){
                System.out.print("["+mat[i][j]+"]"); 
                
           }
           System.out.println();
    }
    System.out.println("THE SUM OF MATRIX");
        for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            
          sum[i][j]=MAT[i][j]+mat[i][j];
       }
      
    }
       for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            
          
          System.out.print( "["+sum[i][j]+"]"+" ");
       }
       System.out.println();
    }


  
      
        
}
}

