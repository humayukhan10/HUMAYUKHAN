import java.util.Scanner;
public class forloop{
    public static void main(String[] args) {
        Scanner op=new Scanner(System.in);
        int x=0,y=1;
        int ans=0;
        System.out.println("\nEnter the  number");
        int n=op.nextInt();
        for(int i=0;i<=n;i++)
        {
            x=y;
            y=ans;
            ans=x+y;

            System.out.println(ans);
        }

    }
}
