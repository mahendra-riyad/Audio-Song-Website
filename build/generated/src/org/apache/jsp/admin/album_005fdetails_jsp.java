package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.Cookie;
import java.sql.*;
import javax.servlet.http.Cookie;

public final class album_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/header.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String email=null;
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("admin")){
            email=c[i].getValue();
            break;
        }
    }
    if(email==null){
        response.sendRedirect("index.jsp?please_login");
    }
    else{
        

      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <!-- Required meta tags-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <!-- Required meta tags-->\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"au theme template\">\n");
      out.write("    <meta name=\"author\" content=\"Hau Nguyen\">\n");
      out.write("    <meta name=\"keywords\" content=\"au theme template\">\n");
      out.write("\n");
      out.write("    <!-- Title Page-->\n");
      out.write("    \n");
      out.write("    <!-- jQuery library -->\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Latest compiled JavaScript -->\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Fontfaces CSS-->\n");
      out.write("    <link href=\"css/font-face.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/font-awesome-5/css/fontawesome-all.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS-->\n");
      out.write("    <link href=\"vendor/bootstrap-4.1/bootstrap.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("    <!-- Vendor CSS-->\n");
      out.write("    <link href=\"vendor/animsition/animsition.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/wow/animate.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/css-hamburgers/hamburgers.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/slick/slick.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/perfect-scrollbar/perfect-scrollbar.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/vector-map/jqvmap.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("    <!-- Main CSS-->\n");
      out.write("    <link href=\"css/theme.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <style>\n");
      out.write("        .single-album {\n");
      out.write("  position: relative;\n");
      out.write("  z-index: 1;\n");
      out.write("  -webkit-transition-duration: 500ms;\n");
      out.write("  transition-duration: 500ms;\n");
      out.write("  margin-bottom: 30px; }\n");
      out.write("  .single-album img {\n");
      out.write("    width: 100%; }\n");
      out.write("  .single-album .album-info {\n");
      out.write("    position: relative;\n");
      out.write("    z-index: 1;\n");
      out.write("    text-align: center;\n");
      out.write("    padding-top: 15px;\n");
      out.write("    padding-bottom: 15px; }\n");
      out.write("    .single-album .album-info h5 {\n");
      out.write("      font-size: 18px;\n");
      out.write("      margin-bottom: 0;\n");
      out.write("      text-transform: uppercase; }\n");
      out.write("    .single-album .album-info p {\n");
      out.write("      margin-bottom: 0; }\n");
      out.write("  .single-album:hover, .single-album:focus {\n");
      out.write("    box-shadow: 0 5px 70px 0 rgba(0, 0, 0, 0.15); }\n");
      out.write("\n");
      out.write(".single-album-area {\n");
      out.write("  position: relative;\n");
      out.write("  z-index: 1;\n");
      out.write("  -webkit-transition-duration: 500ms;\n");
      out.write("  transition-duration: 500ms;\n");
      out.write("  margin-bottom: 30px; }\n");
      out.write("  .single-album-area .album-thumb {\n");
      out.write("    position: relative;\n");
      out.write("    z-index: 1; }\n");
      out.write("    .single-album-area .album-thumb .album-price p {\n");
      out.write("      position: absolute;\n");
      out.write("      top: 15px;\n");
      out.write("      left: 15px;\n");
      out.write("      background-color: #fff;\n");
      out.write("      margin-bottom: 0;\n");
      out.write("      line-height: 1;\n");
      out.write("      padding: 5px 15px;\n");
      out.write("      border-radius: 15px;\n");
      out.write("      z-index: 20; }\n");
      out.write("    .single-album-area .album-thumb .play-icon a {\n");
      out.write("      color: #fff;\n");
      out.write("      font-size: 50px;\n");
      out.write("      position: absolute;\n");
      out.write("      top: 50%;\n");
      out.write("      left: 50%;\n");
      out.write("      line-height: 1;\n");
      out.write("      -webkit-transform: translate(-50%, -50%);\n");
      out.write("      transform: translate(-50%, -50%); }\n");
      out.write("  .single-album-area img {\n");
      out.write("    width: 100%; }\n");
      out.write("  .single-album-area .album-info {\n");
      out.write("    display: block;\n");
      out.write("    position: relative;\n");
      out.write("    z-index: 1;\n");
      out.write("    padding-top: 15px;\n");
      out.write("    padding-bottom: 15px; }\n");
      out.write("    .single-album-area .album-info h5 {\n");
      out.write("      font-size: 18px;\n");
      out.write("      margin-bottom: 0;\n");
      out.write("      text-transform: uppercase; }\n");
      out.write("    .single-album-area .album-info p {\n");
      out.write("      margin-bottom: 0; }\n");
      out.write("\n");
      out.write(".albums-slideshow {\n");
      out.write("  position: relative;\n");
      out.write("  z-index: 1; }\n");
      out.write("  .albums-slideshow .single-album {\n");
      out.write("    -webkit-transition-duration: 500ms;\n");
      out.write("    transition-duration: 500ms;\n");
      out.write("    margin-bottom: 0;\n");
      out.write("    border: 1px solid transparent; }\n");
      out.write("    .albums-slideshow .single-album:hover, .albums-slideshow .single-album:focus {\n");
      out.write("      border: 1px solid #000000;\n");
      out.write("      box-shadow: none;\n");
      out.write("      background-color: #f5f9fa; }\n");
      out.write("  .albums-slideshow .owl-prev,\n");
      out.write("  .albums-slideshow .owl-next {\n");
      out.write("    -webkit-transition-duration: 500ms;\n");
      out.write("    transition-duration: 500ms;\n");
      out.write("    background-color: #fff;\n");
      out.write("    position: absolute;\n");
      out.write("    width: 50px;\n");
      out.write("    height: 50px;\n");
      out.write("    border: 1px solid #000000;\n");
      out.write("    top: 50%;\n");
      out.write("    left: -25px;\n");
      out.write("    margin-top: -50px;\n");
      out.write("    z-index: 50;\n");
      out.write("    text-align: center;\n");
      out.write("    line-height: 48px;\n");
      out.write("    opacity: 0;\n");
      out.write("    visibility: hidden; }\n");
      out.write("    @media only screen and (max-width: 767px) {\n");
      out.write("      .albums-slideshow .owl-prev,\n");
      out.write("      .albums-slideshow .owl-next {\n");
      out.write("        left: 0; } }\n");
      out.write("    .albums-slideshow .owl-prev:hover, .albums-slideshow .owl-prev:focus,\n");
      out.write("    .albums-slideshow .owl-next:hover,\n");
      out.write("    .albums-slideshow .owl-next:focus {\n");
      out.write("      background-color: #000000;\n");
      out.write("      color: #fff; }\n");
      out.write("  .albums-slideshow .owl-next {\n");
      out.write("    left: auto;\n");
      out.write("    right: -25px; }\n");
      out.write("    @media only screen and (max-width: 767px) {\n");
      out.write("      .albums-slideshow .owl-next {\n");
      out.write("        right: 0; } }\n");
      out.write("  .albums-slideshow:hover .owl-prev,\n");
      out.write("  .albums-slideshow:hover .owl-next {\n");
      out.write("    opacity: 1;\n");
      out.write("    visibility: visible; }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"animsition\">\n");
      out.write("    <div class=\"page-wrapper\">\n");
      out.write("        <!-- MENU SIDEBAR-->\n");
      out.write("        <aside class=\"menu-sidebar2\">\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img src=\"images/icon/logo.png\" alt=\"Cool Admin\" />\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"menu-sidebar2__content js-scrollbar1\">\n");
      out.write("                <div class=\"account2\">\n");
      out.write("                    <div class=\"image img-cir img-120\">\n");
      out.write("                        <img src=\"images/icon/avatar-01 -.jpg\" alt=\"Mahendra\" />\n");
      out.write("                    </div>\n");
      out.write("                    <h4 class=\"name\">mahendra riyad</h4>\n");
      out.write("                    <a href=\"logout.jsp\">Sign out</a>\n");
      out.write("                </div>\n");
      out.write("                <nav class=\"navbar-sidebar2\">\n");
      out.write("                    <ul class=\"list-unstyled navbar__list\">\n");
      out.write("                        <li >\n");
      out.write("                            <a class=\"js-arrow\" href=\"main.jsp\" id=\"deshboard5\">\n");
      out.write("                                <i class=\"fas fa-tachometer-alt\"></i>Dashboard\n");
      out.write("                            \n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"category.jsp\" id=\"category5\">\n");
      out.write("                                <i class=\"fas fa-shopping-basket\"></i>Add Category</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"genres.jsp\" id=\"genres5\">\n");
      out.write("                                <i class=\"fas fa-fa-music\"></i>genres</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"has-sub\">\n");
      out.write("                            <a class=\"js-arrow\" href=\"#\" id=\"album5\">\n");
      out.write("                                <i class=\"fas fa-copy\"></i>Albums\n");
      out.write("                                <span class=\"arrow\">\n");
      out.write("                                    <i class=\"fas fa-angle-down\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"list-unstyled navbar__sub-list js-sub-list\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"album.jsp\" id=\"album5\">\n");
      out.write("                                        <i class=\"fas fa-sign-in-alt\"></i>New Albums</a>\n");
      out.write("                                </li>\n");
      out.write("                                \n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"all_album.jsp\" id=\"#album51\">\n");
      out.write("                                        <i class=\"fas fa-unlock-alt\"></i>All Albums</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <!-- END MENU SIDEBAR-->\n");
      out.write("\n");
      out.write("        <!-- PAGE CONTAINER-->\n");
      out.write("        <div class=\"page-container2\">\n");
      out.write("            <!-- HEADER DESKTOP-->\n");
      out.write("            <header class=\"header-desktop2\">\n");
      out.write("                <div class=\"section__content section__content--p30\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"header-wrap2\">\n");
      out.write("                            <div class=\"logo d-block d-lg-none\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <img src=\"images/icon/logo.png\" alt=\"one sound\" />\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"header-button2\">\n");
      out.write("                                <div class=\"header-button-item js-item-menu\">\n");
      out.write("                                    <i class=\"zmdi zmdi-search\"></i>\n");
      out.write("                                    <div class=\"search-dropdown js-dropdown\">\n");
      out.write("                                        <form action=\"\">\n");
      out.write("                                            <input class=\"au-input au-input--full au-input--h65\" type=\"text\" placeholder=\"Search for datas &amp; reports...\" />\n");
      out.write("                                            <span class=\"search-dropdown__icon\">\n");
      out.write("                                                <i class=\"zmdi zmdi-search\"></i>\n");
      out.write("                                            </span>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                               <div class=\"header-button-item has-noti js-item-menu\">\n");
      out.write("                                    <i class=\"zmdi zmdi-notifications\"></i>\n");
      out.write("                                   <div class=\"notifi-dropdown js-dropdown\">\n");
      out.write("                                        <div class=\"notifi__title\">\n");
      out.write("                                            <p>You have 3 Notifications</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"notifi__item\">\n");
      out.write("                                            <div class=\"bg-c1 img-cir img-40\">\n");
      out.write("                                                <i class=\"zmdi zmdi-email-open\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"content\">\n");
      out.write("                                                <p>You got a email notification</p>\n");
      out.write("                                                <span class=\"date\">April 12, 2018 06:50</span>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"notifi__item\">\n");
      out.write("                                            <div class=\"bg-c2 img-cir img-40\">\n");
      out.write("                                                <i class=\"zmdi zmdi-account-box\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"content\">\n");
      out.write("                                                <p>Your account has been blocked</p>\n");
      out.write("                                                <span class=\"date\">April 12, 2018 06:50</span>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"notifi__item\">\n");
      out.write("                                            <div class=\"bg-c3 img-cir img-40\">\n");
      out.write("                                                <i class=\"zmdi zmdi-file-text\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"content\">\n");
      out.write("                                                <p>You got a new file</p>\n");
      out.write("                                                <span class=\"date\">April 12, 2018 06:50</span>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"notifi__footer\">\n");
      out.write("                                            <a href=\"#\">All notifications</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                                <div class=\"header-button-item mr-0 js-sidebar-btn\">\n");
      out.write("                                    <i class=\"zmdi zmdi-menu\"></i>\n");
      out.write("                                </div>\n");
      out.write("                             <!--  <div class=\"setting-menu js-right-sidebar d-none d-lg-block\">\n");
      out.write("                                    <div class=\"account-dropdown__body\">\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-account\"></i>Account</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-settings\"></i>Setting</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-money-box\"></i>Billing</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"account-dropdown__body\">\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-globe\"></i>Language</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-pin\"></i>Location</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-email\"></i>Email</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-notifications\"></i>Notifications</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> -->\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("            </header>\n");
      out.write("            <aside class=\"menu-sidebar2 js-right-sidebar d-block d-lg-none\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <img src=\"images/icon/logo-white.png\" alt=\"one sound\" />\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"menu-sidebar2__content js-scrollbar2\">\n");
      out.write("                    <div class=\"account2\">\n");
      out.write("                        <div class=\"image img-cir img-120\">\n");
      out.write("                            <img src=\"images/icon/avatar-big-01.jpg\" alt=\"Mahendra Riyad\" />\n");
      out.write("                        </div>\n");
      out.write("                        <h4 class=\"name\">Mahendra Riyad</h4>\n");
      out.write("                        <a href=\"logout.jsp\">Sign out</a>\n");
      out.write("                    </div>\n");
      out.write("                    <nav class=\"navbar-sidebar2\">\n");
      out.write("                         <ul class=\"list-unstyled navbar__list\">\n");
      out.write("                        <li >\n");
      out.write("                            <a class=\"js-arrow\" href=\"main.jsp\" id=\"deshboard5\">\n");
      out.write("                                <i class=\"fas fa-tachometer-alt\"></i>Dashboard\n");
      out.write("                            \n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"category.jsp\" id=\"category5\">\n");
      out.write("                                <i class=\"fas fa-shopping-basket\"></i>Add Category</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"genres.jsp\" id=\"genres5\">\n");
      out.write("                                <i class=\"fas fa-shopping-basket\"></i>genres</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"has-sub\">\n");
      out.write("                            <a class=\"js-arrow\" href=\"#\" id=\"album5\">\n");
      out.write("                                <i class=\"fas fa-copy\"></i>Albums\n");
      out.write("                                <span class=\"arrow\">\n");
      out.write("                                    <i class=\"fas fa-angle-down\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"list-unstyled navbar__sub-list js-sub-list\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"album.jsp\" id=\"album5\">\n");
      out.write("                                        <i class=\"fas fa-sign-in-alt\"></i>New Albums</a>\n");
      out.write("                                </li>\n");
      out.write("                                \n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"all_album.jsp\" id=\"#album51\">\n");
      out.write("                                        <i class=\"fas fa-unlock-alt\"></i>All Albums</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </aside> \n");
      out.write("                            </div></div></div></div></header></div></div>\n");
      out.write("\n");
      out.write("\n");

                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();

      out.write("\n");
      out.write("\n");
      out.write("    <!-- Jquery JS-->\n");
      out.write("    <script src=\"vendor/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <!-- Bootstrap JS-->\n");
      out.write("    <script src=\"vendor/bootstrap-4.1/popper.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap-4.1/bootstrap.min.js\"></script>\n");
      out.write("    <!-- Vendor JS       -->\n");
      out.write("    <script src=\"vendor/slick/slick.min.js\">\n");
      out.write("    </script>\n");
      out.write("    <script src=\"vendor/wow/wow.min.js\"></script>\n");
      out.write("    <script src=\"vendor/animsition/animsition.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap-progressbar/bootstrap-progressbar.min.js\">\n");
      out.write("    </script>\n");
      out.write("    <script src=\"vendor/counter-up/jquery.waypoints.min.js\"></script>\n");
      out.write("    <script src=\"vendor/counter-up/jquery.counterup.min.js\">\n");
      out.write("    </script>\n");
      out.write("    <script src=\"vendor/circle-progress/circle-progress.min.js\"></script>\n");
      out.write("    <script src=\"vendor/perfect-scrollbar/perfect-scrollbar.js\"></script>\n");
      out.write("    <script src=\"vendor/chartjs/Chart.bundle.min.js\"></script>\n");
      out.write("    <script src=\"vendor/select2/select2.min.js\">\n");
      out.write("    </script>\n");
      out.write("    <script src=\"vendor/vector-map/jquery.vmap.js\"></script>\n");
      out.write("    <script src=\"vendor/vector-map/jquery.vmap.min.js\"></script>\n");
      out.write("    <script src=\"vendor/vector-map/jquery.vmap.sampledata.js\"></script>\n");
      out.write("    <script src=\"vendor/vector-map/jquery.vmap.world.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Main JS-->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write(" <body class=\"animsition\">\n");
      out.write("                ");
 String album_id1=request.getParameter("id"); 
      out.write("\n");
      out.write("                \t\t\t<!-- modal large -->\n");
      out.write("\t\t\t<div class=\"modal fade\" id=\"largeModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"largeModalLabel\" aria-hidden=\"true\">\n");
      out.write("\t\t\t\t<div class=\"modal-dialog modal-lg\" role=\"document\">\n");
      out.write("\t\t\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"modal-title\" id=\"largeModalLabel\">Large Modal</h5>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("\t\t\t\t\t\t\t\t<span aria-hidden=\"true\">&times;</span>\n");
      out.write("\t\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                            ");

                                                ResultSet rs = st.executeQuery("select * from album where album_id='"+album_id1+"'");
                                                    if(rs.next()){
                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"modal-body\">\n");
      out.write("                                                    <div class=\"row\">\n");
      out.write("                                                        <div class=\"col-sm-4\">\n");
      out.write("                                                           <img src=\"../album-photo/");
      out.print(album_id1 );
      out.write(".jpg\" alt=\"\" style=\" border-radius:20px;\" > \n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"col-sm-8\">\n");
      out.write("                                                            <form method=\"post\" action=\"album_details1.jsp?id=");
      out.print(album_id1 );
      out.write("\"> \n");
      out.write("                                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Name</label>\n");
      out.write("                                                                 <input id=\"\" name=\"album\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Enter New Albums Name\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs55.getString(2));
      out.write("\"> <br>\n");
      out.write("                                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Release Date</label>\n");
      out.write("                                                                 <input id=\"\" name=\"date\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Enter date\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs.getString(3));
      out.write("\"> <br>\n");
      out.write("                                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Released By</label>\n");
      out.write("                                                 <input id=\"\" name=\"release_by\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Released By\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs.getString(4));
      out.write("\"> <br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Genres Name</label>\n");
      out.write("                                                 <input id=\"\" name=\"genres_name\" type=\"text\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" placeholder=\"Enter Genres Name Who Related To Album Seprated by ,\" required=\"required\" value=\"");
      out.print(rs.getString(5));
      out.write("\"><br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Recording Location</label>\n");
      out.write("                                                <textarea name=\"location\" rows=\"3\" cols=\"74%\" width=\"100%;\" style=\"border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; \" required=\"required\" >");
      out.print(rs.getString(6));
      out.write("</textarea><br><br>\n");
      out.write("                                                \n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> About Album</label>\n");
      out.write("                                                <textarea name=\"about\" rows=\"3\" cols=\"74%\" width=\"100%;\" style=\"border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; \" required=\"required\">");
      out.print(rs.getString(7));
      out.write("\n");
      out.write("                                                </textarea><br><br>                                         \n");
      out.write("                                                \n");
      out.write("                                             <input type=\"submit\" value=\"UPDATE\" class=\"btn btn-lg btn-info btn-block\" style=\"letter-spacing: 2px; margin-top: 0px;\">\n");
      out.write("                                                </form> \n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                ");
}
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"modal-footer\">\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancel</button>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-primary\">Confirm</button>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- end modal large -->\n");
      out.write("                \n");
      out.write("            \t<div class=\"modal fade\" id=\"smallmodal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"smallmodalLabel\" aria-hidden=\"true\">\n");
      out.write("\t\t\t\t<div class=\"modal-dialog modal-lg\" role=\"document\">\n");
      out.write("\t\t\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"modal-title\" id=\"smallmodalLabel\">Song Details</h5>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("\t\t\t\t\t\t\t\t<span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                        </button></div>\n");
      out.write("                                                        <div class=\"modal-body\" id=\"javaquery\">\n");
      out.write("                                                        \n");
      out.write("                             \t\n");
      out.write("                                                        </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("    \n");
      out.write("            <!-- end modal small -->\n");
      out.write("            \n");
      out.write("            <div class=\"modal fade\" id=\"mediumModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mediumModalLabel\" aria-hidden=\"true\">\n");
      out.write("                <div class=\"modal-dialog modal-lg\" role=\"document\">\n");
      out.write("                    <div class=\"modal-content\" style=\"width: 80%;\">\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <h5 class=\"modal-title\" id=\"mediumModalLabel\">New Song</h5>\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                             <form method=\"post\" action=\"song_insert.jsp?id=");
      out.print(album_id1 );
      out.write("\">\n");
      out.write("                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Song Name</label><br>    \n");
      out.write("                                                <input id=\"song_name\" name=\"song_name\" type=\"text\" placeholder=\"--- name ---\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\"> <br>\n");
      out.write("                                               \n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Select Genre</label><br>\n");
      out.write("                                                <select name=\"genres\"  style=\"font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8\">\n");
      out.write("                                                \n");
      out.write("                                                    ");

                                                      try{
                                                             ResultSet rs1 = st.executeQuery("select * from genres");
                                                             while(rs1.next()){
                                                                 
      out.write(" <option value=\"");
      out.print(rs1.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write(" </option>\n");
      out.write("                                                                ");

                                                                }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                                </select><br><br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Select Category</label><br>\n");
      out.write("                                                <select name=\"category\"  class=\"category_select\" style=\"font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8\">\n");
      out.write("                                                    <option value=\"select category\">select category</option>\n");
      out.write("                                                    ");

                                                      try{
                                                             ResultSet rs2 = st.executeQuery("select * from category where status=0");
                                                             while(rs2.next()){
                                                    
      out.write(" <option id=\"");
      out.print(rs2.getString(2));
      out.write("\" value=\"");
      out.print(rs2.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs2.getString(2));
      out.write(" </option>\n");
      out.write("                                                                ");

                                                              }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                                </select><br>\n");
      out.write("                                                <div id=\"category_selected\"></div><br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Select Album</label><br>\n");
      out.write("                                                 ");

                                             try{
                
                                                    String album_id=request.getParameter("id");
                                                
                                                    ResultSet rs3 = st.executeQuery("select * from album where album_id='"+album_id+"'");
                                                    if(rs3.next()){
                                                        
                                            
      out.write("\n");
      out.write("                                                <input name=\"album_name\" type=\"text\" value=\"");
      out.print(rs3.getString(2));
      out.write("\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\"> <br>\n");
      out.write("                                             ");
} } catch(Exception e){} 
      out.write("\n");
      out.write("                                             \n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;\">> Tags</label>    \n");
      out.write("                                                <input name=\"tags\" type=\"text\" placeholder=\"#tags\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\"> <br>\n");
      out.write("                                                \n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;\">> Upload Date</label>                         \n");
      out.write("                                                 <input  name=\"date\" type=\"date\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\"> <br>\n");
      out.write("                                                \n");
      out.write("                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Words/Music</label>                         \n");
      out.write("                                                 <input  name=\"words\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"--- singer ---\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\"> <br>    \n");
      out.write("                                                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\" style=\"float:left;width: 40%; padding: 15px;margin: 0px;\">Cancel</button>\n");
      out.write("                                                 <input type=\"submit\" name=\"insert\" id=\"add-genres\" value=\"Insert\" class=\"btn btn-primary\" style=\"float:right;width: 40%; padding: 15px;margin: 0px;\">  \n");
      out.write("                                             </form> \n");
      out.write("                                             \n");
      out.write("                                       \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- end modal medium -->\n");
      out.write("            \n");
      out.write("            \n");
      out.write("             ");

                                             try{
                
                                                    String album_id=request.getParameter("id");
                                                    
                                                    ResultSet rs = st.executeQuery("select * from album where album_id='"+album_id+"'");
                                                    if(rs.next()){
                                                       String album_name=rs.getString(2); 
                                            
      out.write("\n");
      out.write("    <div class=\"page-wrapper\">\n");
      out.write("        <div class=\"page-container2\">\n");
      out.write("            <div class=\"main-content\">\n");
      out.write("                <div class=\"section__content section__content--p30\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                                            \n");
      out.write("                 <!--  album update details ......   \n");
      out.write("                 <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-12\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-header\" style=\"letter-spacing: 3px; word-spacing: 5px;\">ALBUM DETAILS UPDATE</div>\n");
      out.write("                                    <div class=\"card-body\">                                      \n");
      out.write("                                        <div class=\"col-lg-4\" style=\"float:left; margin-top: 150px;\">\n");
      out.write("                                            <img src=\"../album-photo/");
      out.print(album_id );
      out.write(".jpg\" alt=\"\" class=\"img img-circle\" style=\" border-radius:20px;\" >\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-lg-8\" style=\"float:right;\">\n");
      out.write("                                        <div class=\"form-group has-success\"> \n");
      out.write("                                             <form method=\"post\" action=\"album_details1.jsp?id=");
      out.print(album_id );
      out.write("\"> \n");
      out.write("                                                 <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Name</label>\n");
      out.write("                                                 <input id=\"\" name=\"album\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Enter New Albums Name\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs.getString(2));
      out.write("\"> <br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Release Date</label>\n");
      out.write("                                                 <input id=\"\" name=\"date\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Enter date\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs.getString(3));
      out.write("\"> <br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Released By</label>\n");
      out.write("                                                 <input id=\"\" name=\"release_by\" type=\"text\" class=\"form-control cc-name valid\" placeholder=\"Released By\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" required=\"required\" value=\"");
      out.print(rs.getString(4));
      out.write("\"> <br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Genres Name</label>\n");
      out.write("                                                 <input id=\"\" name=\"genres_name\" type=\"text\" class=\"form-control cc-name valid\" style=\"font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;\" placeholder=\"Enter Genres Name Who Related To Album Seprated by ,\" required=\"required\" value=\"");
      out.print(rs.getString(5));
      out.write("\"><br>\n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> Recording Location</label>\n");
      out.write("                                                <textarea name=\"location\" rows=\"3\" cols=\"74%\" width=\"100%;\" style=\"border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; \" required=\"required\" >");
      out.print(rs.getString(6));
      out.write("</textarea><br><br>\n");
      out.write("                                                \n");
      out.write("                                                <label style=\" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;\">> About Album</label>\n");
      out.write("                                                <textarea name=\"about\" rows=\"3\" cols=\"74%\" width=\"100%;\" style=\"border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; \" required=\"required\">");
      out.print(rs.getString(7));
      out.write("\n");
      out.write("                                                </textarea><br><br>                                         \n");
      out.write("                                                \n");
      out.write("                                             <input type=\"submit\" value=\"UPDATE\" class=\"btn btn-lg btn-info btn-block\" style=\"letter-spacing: 2px; margin-top: 0px;\">\n");
      out.write("                                                </form>    \n");
      out.write("                                              \n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                        </div>\n");
      out.write("                    </div>  -->\n");
      out.write("  \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-12\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-header\" style=\"letter-spacing: 3px; word-spacing: 5px;\">Album :- <span style=\"color: #333333; text-transform: uppercase;\">");
      out.print(rs.getString(2));
      out.write("</span>\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-primary mb-1\" data-toggle=\"modal\" data-target=\"#mediumModal\" style=\"float:right\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tNew Songs\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</button>\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-primary mb-1\" data-toggle=\"modal\" data-target=\"#mediumModal\" style=\"float:right;  margin-right: 20px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tdelete\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</button>\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-primary mb-1\" data-toggle=\"modal\" data-target=\"#largeModal\" style=\"float:right; margin-right: 20px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tEdit\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    <div class=\"card-body\"> \n");
      out.write("                                         <div class=\"row oneMusic-albums\">\n");
      out.write("                                        \n");
      out.write("                                             ");

                                             try{
                                                    ResultSet rs4 = st.executeQuery("select * from song where album_name='"+album_name+"'");
                                                    rs4.afterLast();
                                                    while(rs4.previous()){         
                                            
      out.write("\n");
      out.write("                <div class=\"col-12 col-sm-4 col-md-3 col-lg-3 single-album-item t c p\">\n");
      out.write("                    <div class=\"single-album\">\n");
      out.write("                        <img src=\"../song-photo/");
      out.print(rs4.getString(1));
      out.write(".jpg\" alt=\"\">\n");
      out.write("                        <div class=\"album-info\">\n");
      out.write("                            <a href=\"song_details.jsp?id=");
      out.print(rs4.getString(1));
      out.write("\">\n");
      out.write("                                <h5 style=\"letter-spacing: 2px; word-spacing: 4px; text-transform: uppercase;\">");
      out.print(rs4.getString(2));
      out.write("</h5>\n");
      out.write("                            </a>\n");
      out.write("                            <p>");
      out.print(rs4.getString(3));
      out.write("</p>\n");
      out.write("                            ");
 if(rs4.getInt(9)==0){
                            
      out.write(" <button type=\"button\" class=\"btn btn-success\" id=\"");
      out.print(rs4.getString(1));
      out.write("\" data-toggle=\"modal\" data-target=\"#smallmodal\">Photo Upload</button>\n");
      out.write("\t\t\t");
	  
                            } 
      out.write("\n");
      out.write("                             ");
 if(rs4.getInt(10)==0){
                            
      out.write(" <button type=\"button\" class=\"btn btn-danger\" id=\"");
      out.print(rs4.getString(1));
      out.write("\" data-toggle=\"modal\" data-target=\"#smallmodal\">Song Upload</button>\n");
      out.write("\t\t\t");
	  
                            } 
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                            \t\t\t\t\t\t\t\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                                    \n");
      out.write("                            ");

                                                        
                                                    }
                                                    
                                                   
                                                }
                                             catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                }
                                             
      out.write("\n");
      out.write("                                             \n");
      out.write("                                         </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("                                             \n");
      out.write("                                             \n");
      out.write("                 ");

                                                        
                                                    }
                                                    
                                                   
                                                }
                                             catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                }
                                             
      out.write("\n");
      out.write("                                <!-- END USER DATA--> \n");
      out.write("                                  <script>\n");
      out.write("                                $(document).ready(function(){\n");
      out.write("                                    $(\".btn.btn-success\").click(function(){\n");
      out.write("                                        var v=$(this).attr(\"id\");\n");
      out.write("                                      \n");
      out.write("                                        \n");
      out.write("                                        $.post(\"song_photo_from.jsp\",{photo_code:v},function(data){\n");
      out.write("                                            $(\"#javaquery\").html(data);\n");
      out.write("                                           \n");
      out.write("                                        });\n");
      out.write("                                    });\n");
      out.write("                                });\n");
      out.write("                            </script>  \n");
      out.write("                            <script>\n");
      out.write("                                $(document).ready(function(){\n");
      out.write("                                    $(\".btn.btn-danger\").click(function(){\n");
      out.write("                                        var v=$(this).attr(\"id\");\n");
      out.write("                                        \n");
      out.write("                                        $.post(\"song_mp3_from.jsp\",{song_code:v},function(data){\n");
      out.write("                                            $(\"#javaquery\").html(data);\n");
      out.write("                                           \n");
      out.write("                                        });\n");
      out.write("                                    });\n");
      out.write("                                });\n");
      out.write("                            </script>  \n");
      out.write("                    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
}
      out.write('\n');
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
