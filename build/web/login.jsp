<%-- 
    Document   : login
    Created on : Mar 1, 2019, 8:11:22 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <!-- STYLESHEETS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        
        <style>
            div.cont {
                margin-top: 8%;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container cont">
            <div class="col-4" style="float: left"></div>
            <div class="col-4" style="float: left">
                <form class="form-inline" action="login" method="POST">
                    <table class="table">
                        <tr>
                            <td colspan="2">
                                <p style="color: red; text-transform: capitalize;">**email or password incorrect!! Please try again. Else reset the password.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input class="form-control" type="email" name="mail" required /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input class="form-control" type="password" name="pass" required /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button class="btn btn-success form-control" type="submit" value="Login">Login</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
