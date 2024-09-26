class Main{
  public static void main(String args[]){

    int first = 5, second = 10;
    System.out.println("--Before swap--");
    System.out.println("First number = " + first);
    System.out.println("Second number = " + second);

    int temporary = first;
    first = second;
    second = temporary;

    System.out.println("--After swap--");
    System.out.println("First number = " + first);
    System.out.println("Second number = " + second);
  
  }
}
