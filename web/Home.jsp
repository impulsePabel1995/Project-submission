<%--
  Created by IntelliJ IDEA.
  User: masum
  Date: 5/10/2018
  Time: 3:37 PM
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
            font-size: 50px;

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
         <td><a href="MainAddmin.jsp">Addmin</a> </td>
     </tr>
     </table>
   </span>


</header>
<main  align="center" s="first_choice_plane_take_off_206330.jpg">

    <marquee behavior="" direction="left"><a href="Home.jsp" > Welcome to AirTripBD</a></marquee>
              <br> <br>
            <a href="flightsh.jsp">Flight schedule</a><br>
    <a href="userlogin.jsp">Book a Flight</a><br>
    <a href="userlogin.jsp">Manage my Book</a><br>
</main>
<footer>

</footer>
<a href="/Air">click here</a>
</body>
</html>
