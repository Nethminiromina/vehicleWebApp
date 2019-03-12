<%-- 
    Document   : index.jsp
    Created on : Feb 28, 2019, 8:26:57 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <%@include file="header.jsp" %>
    <%@include file="navbar.jsp" %>
</head>
<body>

    <!-- SEARCH -->
    <ul class="nav justify-content-center navbar-dark align-content-center" style="padding: 0.5%">
        <form class="form-inline justify-content-center col-md-9" action="">
            <input class="form-control col-md-9" type="text" placeholder="Search">
            <button class="btn btn-success" type="submit">Search</button>
        </form>
    </ul>
    <!-- END SEARCH --> 

    <!-- DIV BODY-->
    <div class="container-fluid">
        <!-- VEHICLES -->
        <h3>Top Saled Vehicles</h3>
        <div class="row col-lg-12 align-content-center justify-content-center">
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img/kia_canada.jpg" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">KIA Canada</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="vehicleProfile.jsp" class="btn btn-primary">See Profile</a>
                </div>
            </div>
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img/lamborgini.png" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">John Doe</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">See Profile</a>
                </div>
            </div>
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img_avatar1.png" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">John Doe</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">See Profile</a>
                </div>
            </div>
        </div>

        <!-- SELLERS -->
        <h3>Top Sellers</h3>
        <div class="row col-lg-12 align-content-center justify-content-center">
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img/kia_canada.jpg" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">KIA Canada</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">See Profile</a>
                </div>
            </div>
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img/lamborgini.png" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">John Doe</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">See Profile</a>
                </div>
            </div>
            <div class="card align-content-center justify-content-center" style="width:400px">
                <img class="card-img-top align-content-center justify-content-center" src="img_avatar1.png" alt="Card image" style="width: 300px;">
                <div class="card-body align-content-center justify-content-center">
                    <h4 class="card-title">John Doe</h4>
                    <p class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">See Profile</a>
                </div>
            </div>
        </div>
    </div>
    <!-- END DIV BODY-->
</body>
