<%-- 
    Document   : navbar
    Created on : Mar 1, 2019, 8:51:19 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- STYLESHEETS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <%@ page session = "true" %>
        <style>
            .bg-dark{
                /*background: linear-gradient(#000 65%, #0000) !important;*/
                /*background-color: transparent !important;*/
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark justify-content-between">
            <a class="navbar-brand" href="#">Brand</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="container collapse navbar-collapse" id="navigation">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>                    
                </ul>

                <span class="navbar-text">
                    <%if (session.getAttribute("name") == null) {%>
                    <button class="btn btn-outline-light" type="button" data-toggle="modal" data-target="#login">Login</button>
                    <%} else {
                    %>
                    <form action="Logout" method="POST">
                        <button class="btn btn-outline-light" value="Logout" type="submit" >Logout</button>
                    </form>
                    <%
                        }
                    %>

                </span>
            </div>
        </nav>                     
        <!-- NAV BAR -->

        <!-- Modal -->
        <div class="modal fade" id="login" style="text-align: center;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Login</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>                    
                    <div class="modal-body">
                        <form action="login" method="POST">
                            <table class="table">
                                <tr>
                                    <td>Email:</td> 
                                    <td><input class="form-control" type="email" name="mail" required/></td>
                                </tr>
                                <tr>
                                    <td>Password:</td> 
                                    <td><input class="form-control" type="password" name="pass" required/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit" class="btn btn-success form-control">Login</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p><a href="#">Forget Password</a></p>
                                        <p>New User? Click <a href="register.jsp">here</a></p>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
