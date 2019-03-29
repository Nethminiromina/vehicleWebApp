<%-- 
    Document   : adminPanelSidebar
    Created on : Mar 20, 2019, 3:08:40 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/sidebar.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    </head>
    <body>
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>


            <ul class="list-unstyled components">
                <li  data-toggle="collapse" aria-expanded="false">
                    <a href="dashboard.jsp">Overview</a>
                </li>
                <li data-toggle="collapse" aria-expanded="false">
                    <a href="categories.jsp">Categories</a>
                </li>
                <li data-toggle="collapse" aria-expanded="false">
                    <a href="products.jsp">Products</a>
                </li>
                <li data-toggle="collapse" aria-expanded="false">
                    <a href="order.jsp">Orders</a>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" aria-expanded="false">Payment Transactions</a>
                </li> 
                <li>
                    <a href="#" data-toggle="collapse" aria-expanded="false">Shipments</a>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" aria-expanded="false">Users</a>
                </li>
                <li>
                    <form action="Logout" method="POST"
                          <a href="#" data-toggle="collapse" aria-expanded="false">
                            <button class="btn btn-light form-control">Logout</button>
                        </a>
                    </form>
                </li>
            </ul>
        </nav>

        <div class="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fa fa-align-justify"></i> <span></span>
                </button>

                <!--<a class="navbar-brand" href="#">Navbar</a> -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>                    
            </nav>
    </body>
</html>
