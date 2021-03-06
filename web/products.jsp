<%-- 
    Document   : products
    Created on : Mar 20, 2019, 3:14:17 PM
    Author     : ASUS
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.dbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Products</title>

        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <script type="text/javascript">
        function showImage() {
            if (this.files && this.files[0]) {
                var obj = new FileReader();
                obj.onload = function (data) {
                    var image = document.getElementById("image");
                    image.src = data.target.result;
                    image.style.display = "block";
                }
                obj.readAsDataURL(this.files[0]);
            }
        }
    </script>
    <body>
        <div class="wrapper">
            <%@include file="adminPanelSidebar.jsp" %>
            <div class="container">
                <button class="btn btn-outline-primary" data-toggle="modal" data-target="#addProduct" >Add Product</button>
                <!-- The Modal -->
                <div class="modal fade" id="addProduct">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Add new product</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="AddProduct" method="POST">
                                    <table class="table">
                                        <tr>
                                            <td>Product Name:</td>
                                            <td><input type="text" class="form-control" name="productName" required></td>
                                        </tr>
                                        <tr>
                                            <td>Category:</td>
                                            <%
                                                try {
                                                    dbConnect dbConnect = new dbConnect();
                                                    Connection currentCon = dbConnect.Connect();
                                                    //System.out.println("Connection sucess");
                                                    String sql = "SELECT * FROM categories";
                                                    PreparedStatement ps = currentCon.prepareStatement(sql);
                                                    ResultSet rs = ps.executeQuery();
                                                    String cname = null;
                                                    String id = null;
                                            %>
                                            <td><select name="category" class="form-control" required>
                                                    <option value="">Select the category</option>
                                                    <%
                                                        while (rs.next()) {
                                                            cname = rs.getString("category_name");
                                                            id = rs.getString("category_id");
                                                            System.out.println(id);
                                                    %>                                                    
                                                    <option value="<%= rs.getString("category_name")%>"><%= cname%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                                <%
                                                    } catch (SQLException sqe) {
                                                        out.println(sqe);
                                                    }
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Product price:</td>
                                            <td><input type="text" class="form-control" name="productPrice" placeholder="USD" required></td>
                                        </tr>
                                        <tr>
                                            <td>Product description:</td>
                                            <td>
                                                <textarea name="productDes" class="form-control" required>
                                                    
                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Product Image:</td>
                                            <td><input type="file" class="form-control-file" name="productImg" accept="image/*" onchange="showImage.call(this)">
                                                <div class="form-group"> 
                                                    <label class="form-control">preview</label>                                     
                                                    <img src="" class="img-responsive" alt=" Image" style="display: none;" height="200;" id="image"wp-the-post-thumbnail="large">
                                                </div>
                                            </td>
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
                <br><br>
                <h2>Products</h2>
                <!-- SEARCH -->
                <div class="row justify-content-center" >
                    <!-- SEARCH -->
                    <ul class="nav justify-content-center navbar-dark align-content-center">
                        <form class="form-inline justify-content-center" action="" method="GET">
                            <input class="form-control" type="number" placeholder="Search" name="search">
                            <button class="btn btn-success form-control" type="submit" name="sid">Search by ID</button>
                        </form>
                    </ul>
                    <!-- END SEARCH --> 
                </div>
                <!-- END SEARCH --> 
                <%
                    try {
                        dbConnect dbConnect = new dbConnect();
                        Connection currentCon = dbConnect.Connect();
                        String search = request.getParameter("search");
                        String sql;
                        if (search != null) {
                            sql = "SELECT * FROM vehicle WHERE product_id LIKE '%" + search + "%'";
                        } else {
                            sql = "SELECT * FROM vehicle";
                        }

                        PreparedStatement ps = currentCon.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery();
                %>
                <table id="proTable" class="table table-striped">
                    <tr class="table-info">
                        <td>Product ID</td>
                        <td>Category ID</td>
                        <td>Product name</td>
                        <td>Price</td>
                        <td>Notes</td>
                        <td></td>
                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <form action="deleteProduct" method="POST">
                        <tr>
                            <td><%= rs.getInt("product_id")%><input type="text" name="id" hidden="true" value="<%= rs.getInt("product_id")%>"></td>
                            <td><%= rs.getString("category_id")%></td>
                            <td><%= rs.getString("vehicle_name")%></td>
                            <td><%= rs.getString("price")%></td>
                            <td><%= rs.getString("vehicle_description")%></td>  
                            <td>
                                <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteProduct" type="button">Delete</button>
                            </td> 
                        </tr>
                        <!-- The Modal -->
                        <div class="modal fade" id="deleteProduct">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">WARNING !!</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <P>Are you sure you want to delete Product <%= rs.getInt("product_id")%> ?</P>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" value="Yes"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <% }
                    %>
                </table>
                <%                    } catch (SQLException e) {
                        System.out.println("Error " + e);
                    }
                %>
            </div>
            <p>ation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

        <script>
                                                $(document).ready(function () {
                                                    $('#sidebarCollapse').on('click', function () {
                                                        $('#sidebar').toggleClass('active');
                                                    });
                                                }
                                                );
        </script>
    </body>
</html>
