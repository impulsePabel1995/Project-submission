package connect;
import java.sql.*;

public class OracleConnection {

    public static Connection ConnectTo() {
        Connection con = null;
        try {
//step1 load the driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");

//step2 create  the connection object
             con = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:orcl", "masum", "Oracle_1");

//step3 create the statement object
            Statement stmt = con.createStatement();


        } catch (Exception e) {
            System.out.println(e);
        }

        return con;
    }
}


