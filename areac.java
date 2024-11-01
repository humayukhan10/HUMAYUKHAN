class circle{
    float a;
    public void area(float r){
        a=3.14f*(r*r);
    }
    public void printdetails(){
        System.out.println(a);
    }
}


public class areac {
    public static void main(String[] args) {
        circle hk=new circle();
        hk.area(5);
        hk.printdetails();
        
    }
}
