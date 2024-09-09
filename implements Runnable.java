class T1 implements Runnable{ 
public void run(){ 
for(int i=1;i<=10;i++){
System.out.println(i);
} 
}
}
public class RunnableDemo{ 
public static void main(String args[]){ 
T1 t1=new T1(); 
Thread t=new Thread(t1);
t.start();
}
}
