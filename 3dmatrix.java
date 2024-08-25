import java.util.Scanner;
public class mat {
    public static void main(String[] args) {
        Scanner op=new Scanner(System.in);
        System.out.println("ENTER A 3 BY 3 MATRIX:");
        int[][] num = new int[3][3];
		int i, j;
            for( i=0;i<3;i++){
            for( j=0;j<3;j++){
               
                  
                System.out.print(num[i][j]+ i+" "+j+"=");
                num[i][j]=op.nextInt();
            
            }

           }
            for(i=0;i<3;i++){
            for(  j=0;j<3;j++){
                System.out.println("your matrix is");
                     System.out.print(num[i][j]+" ");
            
            }

            System.out.println();


    }
    
}
}
