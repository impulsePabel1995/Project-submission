<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Rahat
  Date: 5/11/2018
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dlete page</title>
</head>
<body>
<%!
    Connection con;
    Statement stmt;
    ResultSet res;

%>

<%

            con = connect.OracleConnection.ConnectTo();
            stmt = con.createStatement();
            int i=stmt.executeUpdate("delete from sample where username='"+request.getParameter("id")+"'");
            if(i>0){
             response.sendRedirect("../Addmin.jsp");

            }
            else {
            System.out.print("something is wrong");
        }
            %>
</body>
</html>
