<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: masum
  Date: 5/11/2018
  Time: 4:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Addmin</title>
</head>
<body align="center" bgcolor="#8fbc8f">
<h1> This is Admin Page</h1>
<table border="2" bgcolor="#adff2f" cellpadding="4" cellspacing="4" width="100%">
<%!
    Connection con;
    Statement stmt;
    ResultSet res;

%>

<%
try{
    con = connect.OracleConnection.ConnectTo();
    stmt = con.createStatement();
    res = stmt.executeQuery("select * from sample");
    while(res.next())
    {
        %>
        <tr>
            <td><%= res.getString("name")%></td>
            <td><%= res.getString("info")%></td>
            <td><%= res.getString("username")%></td>
            <td><%= res.getString("password")%></td>
            <td><%= res.getString("type")%></td>
            <td><a href="controller/update.jsp?id=<%=res.getString("username")%>">Update</a> </td>
            <td><a href="controller/delete.jsp?id=<%=res.getString("username")%>">Delete</a> </td>

        </tr>

<%
}
con.close();
}
catch(Exception e)
{
    System.out.println(e);
}

%>

</table>
</body>
</html>
