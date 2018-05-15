<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Rahat
  Date: 5/15/2018
  Time: 5:01 AM
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
<form action="/Home">
    <pre>
         Flight_no:
        <input type="text" value="<%=res.getString("FLIGHT_NO")%>" name="A">

        DESTINATION:
       <input type="text" value="<%=res.getString("DESTINATION")%>" name="B">
         TRAVELLING_DATE:
        <input type="text" value="<%=res.getString("TRAVELLING_DATE")%>" name="C">
        DEPARTURE_TIME:
       <input type="text" value="<%=res.getString("DEPARTURE_TIME")%>" name="D">\
        ARIVAL_TIME:
       <input type="text" value="<%=res.getString("ARIVAL_TIME")%>" name="E">
        AVAILABLE_SEAT:
      <input type="text" value="<%=res.getString("AVAILABLE_SEAT")%>" name="F">


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
