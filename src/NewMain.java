
import java.sql.*;
import javax.swing.JOptionPane;

public class NewMain implements globalvariables {

    public static void main(String[] args) {

        Splash splash = new Splash();
        splash.setVisible(true);
        try {
            for (int i = 0; i <= 100; i++) {

                Thread.sleep(30);       //pausing for this much time
                splash.loadingnum.setText(Integer.toString(i) + "%");
                splash.loadingbar.setValue(i);
                if (i == 100) {
                    splash.setVisible(false);

                    try {
                        Connection myconnection;

                        myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
                        try {
                            String a = "select * from employee";
                            PreparedStatement mystatement = myconnection.prepareStatement(a);

                            ResultSet myresult = mystatement.executeQuery();

                            if (myresult.next()) {
                                Login obj = new Login();
                                obj.setVisible(true);

                            } else {
                                JOptionPane.showMessageDialog(null, "Running software for first time, create admin account first");
                                CreateAdmin obj = new CreateAdmin();
                                obj.setVisible(true);
                            }
                        } catch (Exception e) {
                            JOptionPane.showMessageDialog(null, "Error in Query " + e.getMessage());
                        } finally {
                            myconnection.close();
                        }

                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(null, "Error in Connection " + e.getMessage());
                    }

                }
            }
        } catch (Exception e) {
        }

    }
}
