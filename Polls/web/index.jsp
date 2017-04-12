<%@ page import="net.ukr.bekit.LoginServlet" %><%--
  Created by IntelliJ IDEA.
  User: Александр
  Date: 12.04.2017
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <% String name = (String)session.getAttribute("user_name");%>


  <% if (name == null) { %>
  <form action="/polls" method="POST">
    First name: <input type="text" name="name"><br>
    Last name: <input type="text" name="surname"><br>
    <p><b>Do you love Java?</b></p>
    <p><input name="love" type="radio" value="yes"> Yes</p>
    <p><input name="love" type="radio" value="no"> No</p>
    <p><b>How much do you wanna earn?</b></p>
    <p><input name="salary" type="radio" value="many"> 5000$</p>
    <p><input name="salary" type="radio" value="few"> 100$</p>
    <input type="submit"></input>
  </form>
  <% } else { %>
  <h1> Hello, Mister <%= name %>  </h1>
  <h2> The result of polls:</h2>
  <br>Number of people who love Java: <b><%=LoginServlet.loveYes %></b>
  <br>
  <br>Number of people who don`t love Java:<b> <%=LoginServlet.loveNo %> </b>
  <br>
  <br>Number of people who want salary at 5000$ dollars:<b> <%=LoginServlet.salaryMany %></b>
  <br>
  <br>Number of people who want salary at 100$ dollars:<b> <%=LoginServlet.salaryFew %></b>
  <br>
  <br>Click this link to <a href="/polls?a=exit">logout</a>
  <% } %>
  </body>
</html>
