public class HPAT {
    public static void main(String[] args) {
        int i,j,n=7;
        for(i=1;i<=7;i++)
        {
            for(j=1;j<=7;j++)
            {
              if(i==4||j==7||j==1)
              {
                System.out.print("*");
              }  
              else{
                System.out.print(" ");
              }
            }
            System.out.println();
        }
    }
}
