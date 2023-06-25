import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Helpclass {
    public static boolean insertNewUser(String firstname, String lastname, String email, String passcode, String mobile,
                                        String country, String state, String address, String pincode) {
        boolean result = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "root", "Raghul@00");
            PreparedStatement pst = con.prepareStatement(
                    "INSERT INTO project (firstname, lastname, email, passcode, mobile, country, state, address, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, firstname);
            pst.setString(2, lastname);
            pst.setString(3, email);
            pst.setString(4, passcode);
            pst.setString(5, mobile);
            pst.setString(6, country);
            pst.setString(7, state);
            pst.setString(8, address);
            pst.setString(9, pincode);

            int i = pst.executeUpdate();
            if (i > 0)
                result = true;

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
        public static String checkUserExistence(String email, String passcode) {
            String firstname=null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1",
                        "root", "Raghul@00");
                PreparedStatement pst = con.prepareStatement(
                        "SELECT firstname FROM project WHERE email=? AND passcode = ?");
                pst.setString(1, email);
                pst.setString(2, passcode);
                ResultSet rs = pst.executeQuery();

                if (rs.next()) {
                    // User exists, set the flag to true
                    firstname=rs.getNString(1);
                }

                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }

            // Return the flag indicating if the user exists
            return firstname;
        }
    }



