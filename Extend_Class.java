class Main{
  public static void main(String args[]){
    
    B obj = new B(); //Using Parent(Super Class) Method
	   obj.print();

  }
}

class A{
	
  //Super Class
  int A= 10;
  void print(){
  System.out.println(A);
  
  }
  
}

class B extends A{

	//Sub Class

}
