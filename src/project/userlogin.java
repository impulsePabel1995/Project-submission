package project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "userlogin",urlPatterns = "/userlogin")
public class userlogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        PrintWriter out=response.getWriter();
        try {
//step1 load the driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");

//step2 create  the connection object
            con = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:orcl", "masum", "Oracle_1");

//step3 create the statement object
            Statement stmt = con.createStatement();
            String sql="SELECT username,password from sample where username='"+username+"' AND password='"+password+"'";
            ResultSet res=stmt.executeQuery(sql);

           if(res.next()) {
               HttpSession httpSession = request.getSession();
               httpSession.setAttribute("username", username);
               httpSession.setAttribute("password", password);
               response.sendRedirect("book.jsp");
           }
               else{
                out.print("your password is incorrect");
               }
        } catch (Exception e) {
            System.out.println(e);
        }

    }
}
