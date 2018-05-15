package project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.*;

@WebServlet(name = "Register")
public class Register extends HttpServlet {

    Connection con;
    Statement stmt;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        con = connect.OracleConnection.ConnectTo();
        try {
            stmt = con.createStatement();
            String str="insert into sample values('"+request.getParameter("name")+"','"+request.getParameter("info")+"','"+request.getParameter("username")+"','"+request.getParameter("password")+"',' "+request.getParameter("type")+"')";
        int i= stmt.executeUpdate(str);
        if(i>10){
            response.sendRedirect("successful.html");
        }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
