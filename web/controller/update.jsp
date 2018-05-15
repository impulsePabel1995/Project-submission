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
    <title>Title</title>
</head>
<body>
<%!
    Connection con;
    Statement stmt;
    ResultSet res;

%>
<% try{

    con=connect.OracleConnection.ConnectTo();
String uname=request.getParameter("id");
    String sql="select * from  sample where username='"+uname+"'";
    stmt=con.createStatement();
    res=stmt.executeQuery(sql);
    while(res.next())
    {


%>
<form action="updatecontroller.jsp">
    <pre>
         Name:
        <input type="text" value="<%=res.getString("name")%>" name="name">

        Description:
        <textarea  name="info" style="height: 100px ; width: 50%;"><%=res.getString("info")%></textarea>

        Username:
        <input type="text" disabled="true" value="<%=res.getString("username")%>" name="username">
        Password:
        <input type="password" value="<%=res.getString("password")%>" name="password">

        User type:
        <input type="radio" name="type" value="user" checked>User
        <input type="radio" name="type" value="admin">Admin
        <input type="hidden"  value="<%=res.getString("username")%>" name="id">

        <input type="submit">

    </pre>
</form>
<%
    }
    }
    catch(Exception e){
        System.out.println(e);
        }
%>
</body>
</html>
