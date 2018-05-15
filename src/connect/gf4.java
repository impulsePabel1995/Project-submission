package connect;
import java.sql.*;

public class gf4 {

    public static void main (String args  []){

        Connection c = null;
        Statement st = null;
        ResultSet rs = null;

        try {

            c = OracleConnection.ConnectTo();
            st = c.createStatement();
            rs = st.executeQuery("select * from sample");
            while (rs.next()){

                System.out.println (rs.getString(1));
                System.out.println (rs.getString(2));
                System.out.println (rs.getString(3));
                System.out.println (rs.getString(4));
                System.out.println (rs.getString(5));
            }

        }
        catch (Exception e){

        }
    }
}
