package org.apache.jsp.one_0020sound;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.Cookie;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("    <!-- Title -->\n");
      out.write("    <title>One Music - Modern Music HTML5 Template</title>\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("\n");
      out.write("    <!-- Stylesheet -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- Preloader -->\n");
      out.write("    <div class=\"preloader d-flex align-items-center justify-content-center\">\n");
      out.write("        <div class=\"lds-ellipsis\">\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- ##### Header Area Start ##### -->\n");
      out.write("    <header class=\"header-area\">\n");
      out.write("        <!-- Navbar Area -->\n");
      out.write("        <div class=\"oneMusic-main-menu\">\n");
      out.write("            <div class=\"classy-nav-container breakpoint-off\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!-- Menu -->\n");
      out.write("                    <nav class=\"classy-navbar justify-content-between\" id=\"oneMusicNav\">\n");
      out.write("\n");
      out.write("                        <!-- Nav brand -->\n");
      out.write("                        <a href=\"index.html\" class=\"nav-brand\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("\n");
      out.write("                        <!-- Navbar Toggler -->\n");
      out.write("                        <div class=\"classy-navbar-toggler\">\n");
      out.write("                            <span class=\"navbarToggler\"><span></span><span></span><span></span></span>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Menu -->\n");
      out.write("                        <div class=\"classy-menu\">\n");
      out.write("\n");
      out.write("                            <!-- Close Button -->\n");
      out.write("                            <div class=\"classycloseIcon\">\n");
      out.write("                                <div class=\"cross-wrap\"><span class=\"top\"></span><span class=\"bottom\"></span></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Nav Start -->\n");
      out.write("                            <div class=\"classynav\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                                    <li><a href=\"albums-store.html\">Albums</a></li>\n");
      out.write("                                    <li><a href=\"#\">Pages</a>\n");
      out.write("                                        <ul class=\"dropdown\">\n");
      out.write("                                            <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                                            <li><a href=\"albums-store.html\">Albums</a></li>\n");
      out.write("                                            <li><a href=\"event.html\">Events</a></li>\n");
      out.write("                                            <li><a href=\"blog.html\">News</a></li>\n");
      out.write("                                            <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("                                            <li><a href=\"elements.html\">Elements</a></li>\n");
      out.write("                                            <li><a href=\"login.html\">Login</a></li>\n");
      out.write("                                            <li><a href=\"#\">Dropdown</a>\n");
      out.write("                                                <ul class=\"dropdown\">\n");
      out.write("                                                    <li><a href=\"#\">Even Dropdown</a></li>\n");
      out.write("                                                    <li><a href=\"#\">Even Dropdown</a></li>\n");
      out.write("                                                    <li><a href=\"#\">Even Dropdown</a></li>\n");
      out.write("                                                    <li><a href=\"#\">Even Dropdown</a>\n");
      out.write("                                                        <ul class=\"dropdown\">\n");
      out.write("                                                            <li><a href=\"#\">Deeply Dropdown</a></li>\n");
      out.write("                                                            <li><a href=\"#\">Deeply Dropdown</a></li>\n");
      out.write("                                                            <li><a href=\"#\">Deeply Dropdown</a></li>\n");
      out.write("                                                            <li><a href=\"#\">Deeply Dropdown</a></li>\n");
      out.write("                                                            <li><a href=\"#\">Deeply Dropdown</a></li>\n");
      out.write("                                                        </ul>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li><a href=\"#\">Even Dropdown</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"event.html\">Events</a></li>\n");
      out.write("                                    <li><a href=\"blog.html\">News</a></li>\n");
      out.write("                                    <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                                <!-- Login/Register & Cart Button -->\n");
      out.write("                                <div class=\"login-register-cart-button d-flex align-items-center\">\n");
      out.write("                                    <!-- Login/Register -->\n");
      out.write("                                    <div class=\"login-register-btn mr-50\">\n");
      out.write("                                        <a href=\"register.jsp\" id=\"loginBtn\"> Register</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Nav End -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- ##### Header Area End ##### -->\n");
      out.write("\n");
      out.write("    <!-- ##### Breadcumb Area Start ##### -->\n");
      out.write("    <section class=\"breadcumb-area bg-img bg-overlay\" style=\"background-image: url(img/bg-img/breadcumb3.jpg);\">\n");
      out.write("        <div class=\"bradcumbContent\">\n");
      out.write("            <p>See what’s new</p>\n");
      out.write("            <h2>Login</h2>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Breadcumb Area End ##### -->\n");
      out.write("\n");
      out.write("    <!-- ##### Login Area Start ##### -->\n");
      out.write("    <section class=\"login-area section-padding-100\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-12 col-lg-8\">\n");
      out.write("                    <div class=\"login-content\">\n");
      out.write("                        <h3>Welcome Back</h3>\n");
      out.write("                        <!-- Login Form -->\n");
      out.write("                        <div class=\"login-form\">\n");
      out.write("                            <form action=\"check.jsp\" method=\"post\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter E-mail\" name=\"email_id\" required=\"required\">\n");
      out.write("                                    <small id=\"emailHelp\" class=\"form-text text-muted\"><i class=\"fa fa-lock mr-2\"></i>We'll never share your email with anyone else.</small>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"exampleInputPassword1\">Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Password\" name=\"password\" required=\"required\">\n");
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                               \n");
      out.write("                                <button type=\"submit\" class=\"btn oneMusic-btn mt-30\">Login</button><br>\n");
      out.write("                                 <div class=\"form-group\" style=\"text-align: center; font-size: 14px;\">\n");
      out.write("                                    ");

                                        if(request.getParameter("id")!=null){
                                            
                                        
                                        String id=request.getParameter("id");
                                        if(id.equals("password")|| id.equals("email")){
                                            
      out.write("\n");
      out.write("                                            <i style=\"color:red;\">**  email or password wrong  **</i>\n");
      out.write("                                            ");

                                        }
                                        }
                                    
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Login Area End ##### -->\n");
      out.write("\n");
      out.write("    <!-- ##### Footer Area Start ##### -->\n");
      out.write("    <footer class=\"footer-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row d-flex flex-wrap align-items-center\">\n");
      out.write("                <div class=\"col-12 col-md-6\">\n");
      out.write("                    <a href=\"#\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-12 col-md-6\">\n");
      out.write("                    <div class=\"footer-nav\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Home</a></li>\n");
      out.write("                            <li><a href=\"#\">Albums</a></li>\n");
      out.write("                            <li><a href=\"#\">Events</a></li>\n");
      out.write("                            <li><a href=\"#\">News</a></li>\n");
      out.write("                            <li><a href=\"#\">Contact</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- ##### Footer Area Start ##### -->\n");
      out.write("\n");
      out.write("    <!-- ##### All Javascript Script ##### -->\n");
      out.write("    <!-- jQuery-2.2.4 js -->\n");
      out.write("    <script src=\"js/jquery/jquery-2.2.4.min.js\"></script>\n");
      out.write("    <!-- Popper js -->\n");
      out.write("    <script src=\"js/bootstrap/popper.min.js\"></script>\n");
      out.write("    <!-- Bootstrap js -->\n");
      out.write("    <script src=\"js/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("    <!-- All Plugins js -->\n");
      out.write("    <script src=\"js/plugins/plugins.js\"></script>\n");
      out.write("    <!-- Active js -->\n");
      out.write("    <script src=\"js/active.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
