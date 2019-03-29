<%-- 
    Document   : vehicleProfile
    Created on : Mar 1, 2019, 8:45:36 AM
    Author     : ASUS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.dbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle profile</title>

        <!-- STYLESHEETS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>        
        <%@include file="navbar.jsp" %>

        <div class="container" style="margin-top: 3%;">
            <a href="vehicles.jsp">< Back </a>
            <%                try {
                    String id = request.getParameter("id");
                    dbConnect dbConnect = new dbConnect();
                    Connection currentCon = dbConnect.Connect();
                    String sql = "SELECT * FROM vehicle WHERE product_id=?";
                    PreparedStatement ps = currentCon.prepareStatement(sql);
                    ps.setString(1, id);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
            <h1><%=rs.getString("vehicle_name")%></h1>
            <h3>USD <%=rs.getString("price")%></h3>
            <p>Image should here</p>
            <%}
                } catch (Exception e) {
                }
            %>
            <div class="container justify-content-center">
                <div class="col-lg-5 justify-content-center">
                    <h4>Parts</h4>
                    <form class="form-inline" action="shoppingCart" method="POST">
                        <table class="table">
                            <!-- paint -->
                            <tr>
                                <td>
                                    Paint
                                </td>
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
                <div class="col-lg-5 justify-content-center">
                    <h3>Summary</h3>
                    <p>Here the summary of the customized vehicle</p>
                </div>
            </div>
        </div>
    </body>
</html>
