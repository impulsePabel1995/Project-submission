package project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "entry",urlPatterns = "/entry")
public class entry extends HttpServlet {
    Connection con;
    Statement stmt;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        con = connect.OracleConnection.ConnectTo();
        try {
            stmt = con.createStatement();
            String str="insert into FLIGHTSH values('"+request.getParameter("A")+"','"+request.getParameter("B")+"','"+request.getParameter("C")+"','"+request.getParameter("D")+"','"+request.getParameter("E")+",'"+request.getParameter("F")+"')";
            stmt.executeUpdate(str);

                response.sendRedirect("Home.jsp");

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
