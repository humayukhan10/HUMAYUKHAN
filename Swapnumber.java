import java.util.Scanner;

class DBMS{

public static void main(String[] args){

Scanner reader=new Scanner(System.in);

System.out.println("ENTER VALUE OF a:-");
int a=reader.nextInt();
System.out.println("ENTER VALUE OF b:-");
int b=reader.nextInt();

System.out.println("USE ARETHMETHIC SOLUTION:-");
a=a+b;
b=a-b;
a=a-b;
System.out.println("value of a:-"+a);
System.out.println("value of b:-"+b);



System.out.println("*****************************");
System.out.println("USE logical gets SOLUTION:-");

a=a^b;
b=a^b;
a=a^b;

System.out.println("value of a:-"+a);
System.out.println("value of b:-"+b);
System.out.println("*****************************");
System.out.println("USE THIRD VARIABLE SOLUTION:-");

int c=a;
a=b;
b=c;

System.out.println("value of a:-"+a);
System.out.println("value of b:-"+b);

}



}
