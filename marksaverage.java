import java.util.Scanner;
public class PERCENTAGE {
    public static void main(String[] args) {
        System.out.println("ENTER A MARKS RANGE OF 0 TO 100");
        Scanner sc =new Scanner(System.in);

        System.out.print("ENTER A MATHS MARKS");
        int maths=sc.nextInt();

        System.out.print("ENTER A HINDI MARKS");
        int hindi=sc.nextInt();

        System.out.print("ENTER A GUJRATI MARKS");
        int Gujrati=sc.nextInt();

        System.out.print("ENTER A SCIENCE MARKS");
        int science=sc.nextInt();

        System.out.print("ENTER A ZOLOGY MARKS");
        int zology=sc.nextInt();
        float total=maths+hindi+Gujrati+science+zology;
        float percentage=(total*100)/500;
        float GPA=(percentage/10);

        System.out.print("THE TOTAL OF MARKS=");
        System.out.println(total);

        System.out.print("THE PERCENTAGE OF THE TOTAL OF MARKS=");
        System.out.println(percentage);
        System.out.print( "THE GPA OF THE TOTAL OF MARKS=");
        System.out.println(GPA);
    }
}
