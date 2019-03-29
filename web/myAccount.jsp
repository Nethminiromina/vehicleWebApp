<%-- 
    Document   : myAccount
    Created on : Mar 28, 2019, 8:39:45 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <%@page session="true"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container" style="margin-top: 5%">
            <h3>My account</h3><br>
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addressBook.jsp">Address Book</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Saved Credit cards</a>
                </li>
            </ul>
            <br>
            <p>Need to be connect with the orders</p>
        </div>
    </body>
</html>
