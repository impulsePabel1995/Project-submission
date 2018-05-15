<%--
  Created by IntelliJ IDEA.
  User: Rahat
  Date: 5/15/2018
  Time: 1:50 AM
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
     </tr>
     </table>
   </span>


</header>

<main>
    <form action="/entry" method="get">
    <pre>
         Flight NO:
        <input type="text" name="A">
        Destination:
         <input type="text" name="B">
        Travelling_date:
        <input type="text" name="C">
        Departure_date:
        <input type="text" name="D">
        Arival_time:
        <input type="text" name="E">
        Available_seat:
        <input type="text" name="F">

        <input type="submit">

    </pre>
    </form>
</main>
</body>
</html>
