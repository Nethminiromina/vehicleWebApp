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
        <title>Categories</title>

        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>
        <div class="wrapper">
            <%@include file="adminPanelSidebar.jsp" %>
            <div class="container">
                <button class="btn btn-outline-primary" data-toggle="modal" data-target="#addCategory" >Add Category</button>
                <!-- The Modal -->
                <div class="modal fade" id="addCategory">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Add new category</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <form action="AddCategory" method="POST">
                                    <table class="table">
                                        <tr>
                                            <td>Category Name:</td>
                                            <td><input type="text" class="form-control" name="categoryName" required></td>
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
                <h2>Categories</h2>
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
                            sql = "SELECT * FROM categories WHERE category_id LIKE '%" + search + "%'";
                        } else {
                            sql = "SELECT * FROM categories";
                        }

                        PreparedStatement ps = currentCon.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery();
                %>
                <table id="proTable" class="table table-striped">
                    <tr class="table-info">
                        <td>Category ID</td>
                        <td>Category name</td>
                        <td></td>
                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <form action="deleteCatergory" method="POST">
                        <tr>
                            <td><%= rs.getInt("category_id")%><input type="text" name="id" hidden="true" value="<%= rs.getInt("category_id")%>"></td>
                            <td><%= rs.getString("category_name")%></td>
                            <td>
                                <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteCategory" type="button">Delete</button>
                            </td> 
                        </tr>
                        <!-- The Modal -->
                        <div class="modal fade" id="deleteCategory">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">WARNING !!</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <P>Are you sure you want to delete Category <%= rs.getInt("category_id")%> ?</P>
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

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

        <script>
                                                $(document).ready(function () {
                                                    $('#sidebarCollapse').on('click', function () {
                                                        $('#sidebar').toggleClass('active');
                                                    });
                                                }
                                                );
        </script>


        <script>
            $(document).ready(function () {
                $('#proTable').DataTable();
            });
        </script>
    </body>
</html>
