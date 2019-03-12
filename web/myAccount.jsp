<%-- 
    Document   : myAccount
    Created on : Feb 28, 2019, 9:27:49 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
    </head>
    <body>
        <%@page session="true"%>
        <%@include file="header.jsp" %>
        <%@include file="navbar.jsp" %>
        <h1>My Account</h1>
        <h1>Welcome <%=session.getAttribute("name") %></h1>
    </body>
</html>
