<%-- 
    Document   : myCart
    Created on : Mar 1, 2019, 11:28:14 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My cart</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="navbar.jsp" %>
        <div class="container">
            summary of the shopping cart
            <form class="form-inline">
                <input type="submit" name="checkout" value="Checkout" >
            </form>
        </div>
    </body>
</html>
