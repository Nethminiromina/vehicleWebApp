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
    </head>
    <body>

        <%@include file="header.jsp" %>
        <%@include file="navbar.jsp" %>
        <div class="container justify-content-center">
            <form class="form-inline" action="login" method="POST">
                <table class="loginbox justify-content-center table">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <h2>Login</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email:
                        </td>
                        <td>
                            <input class="form-control" name="email" placeholder="Your email here" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input class="form-control" type="password" name="password" placeholder="Your password here" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <input type="submit" name="login" value="Login" class="btn btn-success">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            Forgot password? <a href="">Click here to reset</a>
                            <br>or<br>
                            Are you new? <a href="register.jsp">Click here to Register</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
