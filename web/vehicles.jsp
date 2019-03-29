<%-- 
    Document   : vehicles
    Created on : Mar 28, 2019, 10:00:02 PM
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
        <title></title>
        <%@page session="true" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            <%                try {
                    dbConnect dbConnect = new dbConnect();
                    Connection currentCon = dbConnect.Connect();
                    String sql = "SELECT * FROM vehicle";
                    PreparedStatement ps = currentCon.prepareStatement(sql);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
            <div class="col-lg-4" style="float: left;margin-top: 3%;padding: 1%">
                <form action="viewVehicle" method="POST">
                    <h2>Name:<%=rs.getString("vehicle_name")%></h2>
                    <h2>Price: <%=rs.getString("price")%> </h2>
                    <p>Image should be placed here</p>
                    <input type="text" name="id" value="<%=rs.getInt("product_id") %>" hidden="true">
                    <input type="submit" value="MORE" class="btn btn-primary form-control">
                </form>
            </div>
            <%
                    }
                } catch (Exception e) {
                    System.out.println("Error loading vehicles: " + e);
                }

            %>
        </div>
    </body>
</html>
