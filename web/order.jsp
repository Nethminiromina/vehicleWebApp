<%-- 
    Document   : order
    Created on : Mar 21, 2019, 11:34:10 AM
    Author     : ASUS
--%>

<%@page import="database.dbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Orders</title>

        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>
        <div class="wrapper">
            <%@include file="adminPanelSidebar.jsp" %>
            <div class="container">                
                <h2>Orders</h2>
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
                            sql = "SELECT * FROM orders WHERE order_id LIKE '%" + search + "%'";
                        } else {
                            sql = "SELECT * FROM orders";
                        }
                        PreparedStatement ps = currentCon.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery();
                %>
                <table id="orderTable" class="table table-striped">
                    <tr class="table-info">
                        <td>Order ID</td>
                        <td>Customer ID</td>
                        <td>Product ID</td>
                        <td>Payment Status</td>
                        <td>Shipment Status</td>
                        <td>Shipment ID</td>
                        <td>Notes</td>
                        <td>Total</td>
                        <td></td>

                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <form action="deleteOrder" method="POST">
                        <tr>
                            <td><%= rs.getInt("order_id")%><input type="text" name="id" hidden="true" value="<%= rs.getInt("order_id")%>"></td>
                            <td><%= rs.getString("profile_id")%></td>
                            <td><%= rs.getString("product_id")%></td>
                            <td><%= rs.getString("payment_status_id")%></td>
                            <td><%= rs.getString("shipment_status_id")%></td>
                            <td><%= rs.getString("shipping_id")%></td> 
                            <td><%= rs.getString("notes")%></td> 
                            <td><%= rs.getString("total")%></td> 
                            <td>
                                <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteOrder" type="button">Delete</button>
                            </td>                
                        </tr>
                        <!-- The Modal -->
                        <div class="modal fade" id="deleteOrder">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">WARNING !!</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <P>Are you sure you want to delete Product <%= rs.getInt("order_id")%> ?</P>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" value="Yes"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% }
                        %>
                </table>
                <%                    } catch (SQLException e) {
                        System.out.println("Error " + e);
                    }
                %>
            </div>
            <!-- END SEARCH --> 
            <p>ation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            }
            );
        </script>

        <script>
            $.fn.dataTable.ext.type.detect.unshift(
                    function (d) {
                        return d === 'Low' || d === 'Medium' || d === 'High' ?
                                'salary-grade' :
                                null;
                    }
            );

            $.fn.dataTable.ext.type.order['salary-grade-pre'] = function (d) {
                switch (d) {
                    case 'Low':
                        return 1;
                    case 'Medium':
                        return 2;
                    case 'High':
                        return 3;
                }
                return 0;
            };
            $(document).ready(function () {
                $('#orderTable').DataTable();
            });
        </script>
    </body>
</html>
