
import java.util.Scanner;
public class Mat{
public static void main (String...args){
Scanner hk = new Scanner(System.in);
int i,j,size;
size=hk.nextInt();

int a [][]=new int[size][size];
int b [][]=new int[size][size];
float sum=0;

    for(i=0;i<size;i++){
    for(j=0;j<size;j++){

     a[i][j]=hk.nextInt();


   }
    System.out.println();
   }
    for(i=0;i<size;i++){
    for(j=0;j<size;j++){

     System.out.print(a[i][j] + " ");


   }
   
System.out.println();
}
    for(i=0;i<size;i++){
    for(j=0;j<size;j++){

     b[i][j]=hk.nextInt();


   }
    System.out.println();
   }
    for(i=0;i<size;i++){
    for(j=0;j<size;j++){

     System.out.print(b[i][j] + " ");


   }
System.out.println();

}
    for(i=0;i<size;i++){
    for(j=0;j<size;j++){

     sum=(a[i][j]+b[i][j])/2f;
System.out.print(sum+" ");
sum=0;
   }
   
    System.out.println();
   }




}
}

