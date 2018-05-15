<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Rahat
  Date: 5/11/2018
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Updated</title>
</head>
<body>
<%!
    Connection con;
    Statement stmt;


%>
<%
    con=connect.OracleConnection.ConnectTo();
    String uname=request.getParameter("id");
    stmt=con.createStatement();
   int i= stmt.executeUpdate("update sample set name='"+request.getParameter("name")+"',info='"+request.getParameter("info")+"',password='"+request.getParameter("password")+"',type='"+request.getParameter("type")+"',where username='"+request.getParameter("id")+"");
    if(i>0){
             response.sendRedirect("../Addmin.jsp");

            }
            else {
            System.out.print("something is wrong");
        }
            %>
</body>
</html>