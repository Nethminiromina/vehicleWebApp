<%-- 
    Document   : vehicleProfile
    Created on : Mar 1, 2019, 8:45:36 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle profile < vehicle name > </title>

        <!-- STYLESHEETS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="navbar.jsp" %>

        <div class="container">
            <h1>Vehicle name here</h1>
            <h3>vehicle image come here</h3>
            <div class="container justify-content-center" style="background-color: pink;float: left;">
                <div class="col-lg-5 justify-content-center" style="background-color: yellow;float: left;margin: 1%;padding: 1%">
                    <h4>Parts</h4>
                    <form class="form-inline" action="shoppingCart" method="POST">
                        <table class="table">
                            <!-- paint -->
                            <tr>
                                <td>
                                    Paint
                                </td>
<!--                                <td>
                                    <input type="text" name="paint">
                                </td>-->
                                <td>
                                    <input type="checkbox" name="addPaint">
                                </td>
                                <td><input type="hidden" name="action" value="show"></td>
                            </tr>
                            <!-- part 02 -->
                            <tr>
                                <td>
                                    Part 02
                                </td>
<!--                                <td>
                                    <input type="text" name="part2">
                                </td>-->
                                <td>
                                    <input type="checkbox" name="addPart2">
                                </td>
                                <td><div id="price2"></div></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: right">
                                    <input class="btn btn-success" type="submit" name="add" value="Add to the cart">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="col-lg-5 justify-content-center" style="background-color: #007bff;float: left;margin: 1%;padding: 1%;">
                    <h3>Summary</h3>
                    <p>Here the summary of the customized vehicle</p>
                </div>
            </div>
        </div>
    </body>
</html>
