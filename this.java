
class cal {
   float a = 3.14F;
   float r;
   float cal;

   cal() {
   }

   public void area() {
      this.cal = this.a * this.r * this.r;
   }

   public void printdetails() {
      System.out.println("Area Of Circle" + this.cal);
   }
}
