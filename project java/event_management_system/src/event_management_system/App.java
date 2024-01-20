package event_management_system;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class App {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cv", "root", "12345");
            Statement stmt = con.createStatement();

            // Insert query
            String insertQuery = "INSERT INTO rojal (id, name) VALUES (02, 'John')";
            int rowsAffected = stmt.executeUpdate(insertQuery);

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully!");
            } else {
                System.out.println("Failed to insert data.");
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
