import javax.swing.*;
import java.awt.*;
  class ListBoxExample extends JFrame{
   ListBoxExample(){
   setLayout(new FlowLayout());
   String[] language ={"Cobol","Fortran","Pascal","C","C++","Java","C#"};
   JLabel lblLanguage = new JLabel("Choose the Language");
   JList LstMonth = new JList(language);
   add(lblLanguage); add(LstMonth);
   }
}
class ListBoxJavaExample{
   public static void main(String args[]){
   ListBoxExample frame = new ListBoxExample();
   frame.setTitle("ListBox Java Example");
   frame.setBounds(200,250,150,200);
   frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
   frame.setVisible(true);
 }}
 
