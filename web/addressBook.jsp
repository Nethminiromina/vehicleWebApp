<%-- 
    Document   : addressBook
    Created on : Mar 28, 2019, 6:48:30 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container" style="margin-top: 5%">
            <h3>My account</h3><br>
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item">
                    <a class="nav-link" href="myAccount.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Address Book</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Saved Credit cards</a>
                </li>
            </ul>
            <br>
            <button class="btn btn-outline-primary" data-toggle="modal" data-target="#addAddress" >Add Product</button>
            <!-- The Modal -->
            <div class="modal fade" id="addAddress">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Add address</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="" method="POST">
                                <table class="table">
                                    <tr>
                                        <td>First Name:</td>
                                        <td><input type="text" class="form-control" name="fname" required></td>
                                    </tr>
                                    <tr>
                                        <td>Last Name:</td>
                                        <td><input type="text" class="form-control" name="lname" required</td>
                                    </tr>
                                    <tr>
                                        <td>Address:</td>
                                        <td><input type="text" class="form-control" name="address" required></td>
                                    </tr>
                                    <tr>
                                        <td>City:</td>
                                        <td><input type="text" class="form-control" name="city" required></td>
                                    </tr>
                                    <tr>
                                        <td>Country</td>
                                        <td><input type="text" class="form-control" name="country"></td>
                                    </tr>
                                    <tr>
                                        <td>Zip code:</td>
                                        <td><input type="text" class="form-control" name="zip"</td>
                                    </tr>
                                    <tr>
                                        <td>Contact number:</td>
                                        <td><input type="text" class="form-control" name="phone"</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="submit" class="btn btn-success form-control" value="ADD">
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <p>Need to create an address table and connect here</p>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
