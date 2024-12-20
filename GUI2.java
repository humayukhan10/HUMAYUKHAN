import javax.swing.ImageIcon;
import javax.swing.JFrame;
public class GUI2 {
    public static void main(String[] args) {
        JFrame frame=new JFrame();
        frame.setTitle("HK APP");
        frame.setResizable(false);
        frame.setSize(300,250);
        frame.setVisible(true);

        ImageIcon image =new ImageIcon("3D-Laptop-Images-Download-Free.jpg");
        frame.setIconImage(image.getImage());




    }
}
