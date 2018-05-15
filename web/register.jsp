<%--
  Created by IntelliJ IDEA.
  User: masum
  Date: 5/10/2018
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AirTripBD</title>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="300">
    <meta name="description" content="Project">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">

    <meta  name="devloper" content="MJR" >
    <style>
        header{
            height: 100px;
            background-color: beige;
        }
        main{
            height: 500px;

        }
        main iframe{
            width: 100%;
            height: 500px;

        }
        footer {
            height: 100px;
        }
        img {

        }
        table td{
            background-color: green;
            border-redius: 10px;
            padding: 3px;
            font-size: 20px;
        }
        table td:hover{
            background-color: indigo;
            border-redius: 10px;
        }
        table td a { text-decoration: none;
            color: white;

        }
    </style>
</head>





<body style="" align="center">
<header>
    <img src="universe-2742113__340.jpg" alt="no found"  height="100" width="75%" style="float: right">
    <span style="font-size: 50px;font-weight: bold"> <i>AirTripBD</i></span>
    <span>
      <table>
     <tr>
       <td><a href="Home.jsp" terget="ifr">Home</a></td>
       <td><a href="about.html" terget="ifr">About</a> </td>
       <td><a href="login.jsp"> Login</a></td>
       <td><a href="register.jsp"> Register</a></td>
         <td><a href="Addmin.jsp">Addmin</a> </td>
     </tr>
     </table>
   </span>


</header>

<main>
        <form action="Register" method="get">
    <pre>
         Name:
        <input type="text" name="name">

        Description:
        <textarea  name="info" style="height: 100px ; width: 50%;"></textarea>

        Username:
        <input type="text" name="username">
        Password:
        <input type="password" name="password">

        User type:
        <input type="radio" name="type" value="user" checked>User
        <input type="radio" name="type" value="admin">Admin

        <input type="submit">

    </pre>
        </form>
</main>
</body>
</html>
