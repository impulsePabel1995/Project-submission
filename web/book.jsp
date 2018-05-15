<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Rahat
  Date: 5/15/2018
  Time: 4:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
</head>
<body align="center">
<h1>Flight_schedule</h1>
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
            res = stmt.executeQuery("select * from FLIGHTSH");
            while(res.next())
            {
    %>
    <tr><th>Flight_no</th><th>Destination</th>
        <th>Travelling_date</th><th>Departure_Time</th>
        <th>Arival_time</th><th>Available_seat</th></tr>
    <tr>
        <td><%= res.getString("FLIGHT_NO")%></td>
        <td><%= res.getString("DESTINATION")%></td>
        <td><%= res.getString("TRAVELLING_DATE")%></td>
        <td><%= res.getString("DEPARTURE_TIME")%></td>
        <td><%= res.getString("ARIVAL_TIME")%></td>
        <td><%= res.getString("AVAILABLE_SEAT")%></td>
        <td><a href="controller/book'.jsp?id=<%=res.getString("FLIGHT_NO")%>">BOOK</a> </td>
      

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
