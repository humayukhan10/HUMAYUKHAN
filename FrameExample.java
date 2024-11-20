import java.awt.FlowLayout;
import javax.swing.*;
public class FrameExample {
 public static void main(String s[]) {
 JFrame frame = new JFrame("JFrame Example");
 frame.setLayout(new FlowLayout());
 JLabel label = new JLabel("This is a label!");
 JButton button = new JButton();
 button.setText("Press me");
 frame.add(label);
 frame.add(button);
 frame.setSize(300,300);
 frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
 frame.setVisible(true);
}
}
