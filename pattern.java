import java.util.Scanner;
public class pattern {

    public static void main(String[] args) {
        Scanner hk=new Scanner(System.in);
        System.out.print("ENTER A NUMBER=");
        int a=hk.nextInt();
        for(int i=1;i<=a;i++)
        {
            for(int j=1;j<=i;j++)
            {
                System.out.print("*");
            }
            System.out.print("\n");
        }
    }
}
