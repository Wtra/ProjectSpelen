<%-- 
    Document   : test
    Created on : Jan 13, 2015, 5:32:02 PM
    Author     : FxA
--%>
<%@page import="DAL.Spel"%>
<% Spel vm = (Spel)session.getAttribute("ViewModel"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p><%= vm.getOmschrijvingSpel() %></p>
        <p>COUNTER: <%= vm.getCounter() %></p>
    </body>
</html>
