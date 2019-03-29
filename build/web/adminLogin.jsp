<%-- 
    Document   : adminLogin
    Created on : Mar 20, 2019, 2:07:37 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <%@include file="header.jsp" %>
        <%@include file="navbar.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="container">
                <form action="adminLogin" method="POST">
                    <table class="table">
                        <tr>
                            <td class="form-inline">Email:</td>
                            <td><input type="email" name="email" class="form-control"></td>
                        </tr>
                        <tr>
                            <td class="form-inline">Password:</td>
                            <td><input type="password" name="password" class="form-control"></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="login" value="Login" class="btn btn-success form-control"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
