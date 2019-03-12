<%-- 
    Document   : register
    Created on : Mar 1, 2019, 8:33:43 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>

        <!-- STYLESHEETS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container justify-content-center">
            <form class="form-inline">
                <table class="loginbox justify-content-center table">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <h2>Register</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            First name:
                        </td>
                        <td>
                            <input class="form-control" type="text" name="fname" placeholder="Your first name here" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last name:
                        </td>
                        <td>
                            <input class="form-control" type="text" name="lname" placeholder="Your last name here" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Email:
                        </td>
                        <td>
                            <input class="form-control" type="email" name="email" placeholder="Your email here" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input class="form-control" type="password" name="pwd1" placeholder="Your password here" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm password:
                        </td>
                        <td>
                            <input class="form-control" type="password" name="pwd2" placeholder="Confirm your password" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <input type="submit" name="register" value="Register" class="btn btn-success">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            Already have an account? <a href="login.jsp">Click here to Login</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
