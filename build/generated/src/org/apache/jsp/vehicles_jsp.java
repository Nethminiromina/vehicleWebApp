package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import database.dbConnect;

public final class vehicles_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/navbar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <!-- STYLESHEETS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .bg-dark{\n");
      out.write("                /*background: linear-gradient(#000 65%, #0000) !important;*/\n");
      out.write("                /*background-color: transparent !important;*/\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-md navbar-dark bg-dark justify-content-between\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Brand</a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navigation\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"container collapse navbar-collapse\" id=\"navigation\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Home</a>\n");
      out.write("                    </li>                    \n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <span class=\"navbar-text\">\n");
      out.write("                    ");
if (session.getAttribute("name") == null) {
      out.write("\n");
      out.write("                    <button class=\"btn btn-outline-light\" type=\"button\" data-toggle=\"modal\" data-target=\"#login\">Login</button>\n");
      out.write("                    ");
} else {
                    
      out.write("\n");
      out.write("                    <form action=\"Logout\" method=\"POST\">\n");
      out.write("                        <button class=\"btn btn-outline-light\" value=\"Logout\" type=\"submit\" >Logout</button>\n");
      out.write("                    </form>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                </span>\n");
      out.write("            </div>\n");
      out.write("        </nav>                     \n");
      out.write("        <!-- NAV BAR -->\n");
      out.write("\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div class=\"modal fade\" id=\"login\" style=\"text-align: center;\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\">Login</h5>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                    </div>                    \n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <form action=\"login\" method=\"POST\">\n");
      out.write("                            <table class=\"table\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Email:</td> \n");
      out.write("                                    <td><input class=\"form-control\" type=\"email\" name=\"mail\" required/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Password:</td> \n");
      out.write("                                    <td><input class=\"form-control\" type=\"password\" name=\"pass\" required/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-success form-control\">Login</button>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <p><a href=\"#\">Forget Password</a></p>\n");
      out.write("                                        <p>New User? Click <a href=\"register.jsp\">here</a></p>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");
                try {
                    dbConnect dbConnect = new dbConnect();
                    Connection currentCon = dbConnect.Connect();
                    String sql = "SELECT * FROM vehicle";
                    PreparedStatement ps = currentCon.prepareStatement(sql);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            
      out.write("\n");
      out.write("            <div class=\"col-4\" style=\"float: left;margin-top: 3%;padding: 1%\">\n");
      out.write("                <form action=\"viewVehicle\" method=\"POST\">\n");
      out.write("                    <h2>Name:");
      out.print(rs.getString("vehicle_name"));
      out.write("</h2>\n");
      out.write("                    <h2>Price: ");
      out.print(rs.getString("price"));
      out.write(" </h2>\n");
      out.write("                    <p>Image should be placed here</p>\n");
      out.write("                    <input type=\"text\" name=\"id\" value=\"");
      out.print(rs.getInt("product_id") );
      out.write("\" hidden=\"true\">\n");
      out.write("                    <input type=\"submit\" value=\"MORE\" class=\"btn btn-primary form-control\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            ");

                    }
                } catch (Exception e) {
                    System.out.println("Error loading vehicles: " + e);
                }

            
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
