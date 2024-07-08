import java.util.Scanner;
public class checkleap {
    public static void main(String[] args) {
        Scanner hk=new Scanner(System.in);
        System.out.print("ENTER A NUMBER=");
        int a=hk.nextInt();
        if(a%4==0)
        {
            System.out.println("LEAP");
        }
        else
        {
            System.out.println("NOT LEAP");
        }
    }
}
