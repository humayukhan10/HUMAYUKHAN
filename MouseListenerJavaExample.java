import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
class MouseListenerExample extends JFrame implements
MouseListener{
JLabel lblData;
JTextArea txtData;
MouseListenerExample(){
 JPanel panel1 = new JPanel(new FlowLayout());
 JPanel panel2 = new JPanel(new FlowLayout());
 lblData = new JLabel("Press,Release or Click the Mouse on the txtArea to see x,y Coordinates");
 txtData = new JTextArea(20,30);
 txtData.addMouseListener(this);
 panel1.add(lblData);
 panel2.add(txtData);
 add(panel1,BorderLayout.NORTH);
 add(panel2,BorderLayout.CENTER);
}
public void mousePressed(MouseEvent e){
 String s= "x-Corrdinate = " + e.getX() + "y-Coordinate = "
 + e.getY();
System.out.println("Mouse Pressed");
txtData.setText(s);
 }
public void mouseReleased(MouseEvent e){
String s = "x-Coordinate = " + e.getX() + "y-Coordinate =" + e.getY();
System.out.println("Mouse Released");
txtData.setText(s);
}
public void mouseClicked(MouseEvent e){
String s= "X-Corrdinate = " + e.getX() + " y-Coordinate =" + e.getY();
System.out.println("Mouse Clicked");
 txtData.setText(s);
}
public void mouseEntered(MouseEvent e){
System.out.println("Mouse Entered");
}
public void mouseExited(MouseEvent e){
System.out.println("Mouse Exited");
}
}
class MouseListenerJavaExample{
public static void main(String[] args){
 MouseListenerExample frame = new MouseListenerExample();
 frame.setTitle(" Mouse Listener Java Swing Example");
 frame.setBounds(100,200,500,300);
 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
 frame.setVisible(true);
}
}
