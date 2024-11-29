class Cons1{
  public static void main (String args[]){
     
	   Contact c1 = new Contact("Hrishi",3205);
	   System.out.println(c1.name);
	   System.out.println(c1.id);
	 
  }
}

class Contact{
	
  String name;
  int id;
	
	//Constructor with multiple parameters
	
  Contact(String s, int i){
	   name=s;
    id=i;
		}

}
