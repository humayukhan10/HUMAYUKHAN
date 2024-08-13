public class ShortCircuit {
 public static void main(String[] args) {
 boolean a = true && true;
 boolean b = true && false;
 boolean c = false && false;
 boolean d = true || true;
 boolean e = true || false;
 boolean f = false || false;
 System.out.println("a = " + a );
 System.out.println("b = " + b );
 System.out.println("c = " + c );
 System.out.println("d = " + d );
 System.out.println("e = " + e );
 System.out.println("f = " + f );
 }
}

 
