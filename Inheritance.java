class A{
    public int a1;
    public int a2;
        public void ma1(){
             System.out.println("ma1");
         }
        public void ma2(){
              System.out.println("ma2");
         }
}
 class B extends A{
         public int b1;
         public int b2;
public void b1(){
         System.out.println("mb1");
}
public void b2(){
          System.out.println("mb2");
}
}
public class Inheritance {
public static void main(String[] args) {
    A a=new A();
    B b=new B();
    a.ma1();
    a.ma2();
    b.ma1();
    b.ma2();
    b.b1();
    b.b2();
    
}    
}
