package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.Cookie;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write(" \n");
      out.write(" \n");
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
      out.write("    <title>One sound</title>\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("\n");
      out.write("    <!-- Stylesheet -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("    <!-- Stylesheet -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
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
      out.write("                        <a href=\"index.jsp\" class=\"nav-brand\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("\n");
      out.write("                        <!-- Navbar Toggler -->\n");
      out.write("                        <div class=\"classy-navbar-toggler\">\n");
      out.write("                            <span class=\"navbarToggler\"><span></span><span></span><span></span></span>\n");
      out.write("                        </div>\n");
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
      out.write("                                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                    \n");
      out.write("                                    <li><a href=\"albums-store.jsp\">Albums</a></li>\n");
      out.write("                                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                                <div class=\"login-register-cart-button d-flex align-items-center\">\n");
      out.write("                                    <!-- Login/Register -->\n");
      out.write("                                    <div class=\"login-register-btn mr-50\">\n");
      out.write("                                        <a href=\"whatsnew.jsp\" id=\"loginBtn\" style=\"border-bottom: 1px solid #00aced;\">What's New</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"login-register-btn mr-50\">\n");
      out.write("                                        <a href=\"search.jsp\" id=\"loginBtn\">Search</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                               \n");
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
      out.write("    \n");
      out.write("    ");

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                    Statement st = cn.createStatement();
    
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("    <!-- ##### Hero Area Start ##### -->\n");
      out.write("    <section class=\"hero-area\">\n");
      out.write("        <div class=\"hero-slides owl-carousel\">\n");
      out.write("                <!-- Single Hero Slide -->\n");
      out.write("            <div class=\"single-hero-slide d-flex align-items-center justify-content-center\">\n");
      out.write("                <!-- Slide Img -->\n");
      out.write("                <div class=\"slide-img bg-img\" style=\"background-image: url(img/bg-img/m.jpg);\"></div>\n");
      out.write("                <!-- Slide Content -->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"hero-slides-content text-center\">\n");
      out.write("                                <h6 data-animation=\"fadeInUp\" data-delay=\"100ms\">Latest album</h6>\n");
      out.write("                                ");
  int count=0;
                                    
                                    ResultSet rs=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    while(rs.next()){
                                    
                                        count++;
                                
      out.write("<h2 data-animation=\"fadeInUp\" data-delay=\"300ms\" style=\"text-transform: capitalize;\">");
      out.print(rs.getString(2));
      out.write(" <span>");
      out.print(rs.getString(2));
      out.write("</span></h2>");

                                    if(count==1){break;}
                                    }
                                
      out.write("\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                <a data-animation=\"fadeInUp\" data-delay=\"500ms\" href=\"album_details.jsp?album=");
      out.print(rs.getString(1));
      out.write("\" class=\"btn oneMusic-btn mt-50\">Discover <i class=\"fa fa-angle-double-right\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("                            <!-- Single Hero Slide -->\n");
      out.write("            <div class=\"single-hero-slide d-flex align-items-center justify-content-center\">\n");
      out.write("                <!-- Slide Img -->\n");
      out.write("                <div class=\"slide-img bg-img\" style=\"background-image: url(img/bg-img/m1.jpg);\"></div>\n");
      out.write("                <!-- Slide Content -->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"hero-slides-content text-center\">\n");
      out.write("                                <h6 data-animation=\"fadeInUp\" data-delay=\"100ms\">Latest album</h6>\n");
      out.write("                                 ");
   ResultSet rs1=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    count=0;
                                    while(rs1.next()){
                                    
                                        count++;
                                    if(count==2){
                                
      out.write("<h2 data-animation=\"fadeInUp\" data-delay=\"300ms\" style=\"text-transform: capitalize;\">");
      out.print(rs1.getString(2));
      out.write(" <span>");
      out.print(rs1.getString(2));
      out.write("</span></h2>");

                                    break;}
                                    }
                                
      out.write("\n");
      out.write("                                <a data-animation=\"fadeInUp\" data-delay=\"500ms\" href=\"album_details.jsp?album=");
      out.print(rs1.getString(1));
      out.write("\" class=\"btn oneMusic-btn mt-50\">Discover <i class=\"fa fa-angle-double-right\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Single Hero Slide -->\n");
      out.write("            <div class=\"single-hero-slide d-flex align-items-center justify-content-center\">\n");
      out.write("                <!-- Slide Img -->\n");
      out.write("                <div class=\"slide-img bg-img\" style=\"background-image: url(img/bg-img/bg-1.jpg);\"></div>\n");
      out.write("                <!-- Slide Content -->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"hero-slides-content text-center\">\n");
      out.write("                                <h6 data-animation=\"fadeInUp\" data-delay=\"100ms\">Latest album</h6>\n");
      out.write("                             ");
   ResultSet rs2=st.executeQuery("select * from album where delete1=0 ORDER BY date ");
                                    
                                    count=0;
                                    while(rs2.next()){
                                    
                                        count++;
                                    if(count==3){
                                
      out.write("<h2 data-animation=\"fadeInUp\" data-delay=\"300ms\" style=\"text-transform: capitalize;\">");
      out.print(rs2.getString(2));
      out.write(" <span>");
      out.print(rs2.getString(2));
      out.write("</span></h2>");

                                    break;}
                                    }
                                
      out.write("\n");
      out.write("                                \n");
      out.write("                                <a data-animation=\"fadeInUp\" data-delay=\"500ms\" href=\"album_details.jsp?album=");
      out.print(rs2.getString(1));
      out.write("\" class=\"btn oneMusic-btn mt-50\">Discover <i class=\"fa fa-angle-double-right\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Single Hero Slide -->\n");
      out.write("            <div class=\"single-hero-slide d-flex align-items-center justify-content-center\">\n");
      out.write("                <!-- Slide Img -->\n");
      out.write("                <div class=\"slide-img bg-img\" style=\"background-image: url(img/bg-img/bg-2.jpg);\"></div>\n");
      out.write("                <!-- Slide Content -->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"hero-slides-content text-center\">\n");
      out.write("                                <h6 data-animation=\"fadeInUp\" data-delay=\"100ms\">Latest album</h6>\n");
      out.write("                                ");
   ResultSet rs3=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    count=0;
                                    while(rs3.next()){
                                    
                                        count++;
                                    if(count==4){
                                
      out.write("<h2 data-animation=\"fadeInUp\" data-delay=\"300ms\" style=\"text-transform: capitalize;\">");
      out.print(rs3.getString(2));
      out.write(" <span>");
      out.print(rs3.getString(2));
      out.write("</span></h2>");

                                    break;}
                                    }
                                
      out.write("\n");
      out.write("                                \n");
      out.write("                                <a data-animation=\"fadeInUp\" data-delay=\"500ms\" href=\"album_details.jsp?album=");
      out.print(rs3.getString(1));
      out.write("\" class=\"btn oneMusic-btn mt-50\">Discover <i class=\"fa fa-angle-double-right\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Hero Area End ##### -->\n");
      out.write("    <!-- ##### Latest Albums Area Start ##### -->\n");
      out.write("      <section class=\"latest-albums-area section-padding-100\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"section-heading style-2\">\n");
      out.write("                        <p>See what’s new</p>\n");
      out.write("                        <h2>Latest Genres</h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-12 col-lg-9\">\n");
      out.write("                    <div class=\"ablums-text text-center mb-70\">\n");
      out.write("                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"albums-slideshow owl-carousel\">\n");
      out.write("                        <!-- Single Album -->\n");
      out.write("                                                ");

                            try{
                                
                                ResultSet rs4=st.executeQuery("select * from genres where delete1=0");
                                rs4.afterLast();
                                while(rs4.previous()){
                         
      out.write(" \n");
      out.write("                     \n");
      out.write("                         <div class=\"single-album\">\n");
      out.write("                             <a href=\"genres-song.jsp?genres=");
      out.print(rs4.getString(1));
      out.write("\"> <img src=\"genres-photo/");
      out.print(rs4.getString(1));
      out.write(".jpg\" alt=\"\" ></a>\n");
      out.write("                                            <div class=\"album-info\">\n");
      out.write("                                                <a href=\"genres-song.jsp?genres=");
      out.print(rs4.getString(1));
      out.write("\">\n");
      out.write("                                                    <h5>");
      out.print(rs4.getString(2));
      out.write("</h5>\n");
      out.write("                                                </a>\n");
      out.write("                                                <p>");
      out.print(rs4.getString(3));
      out.write("</p>\n");
      out.write("                                            </div>\n");
      out.write("                                    </div>\n");
      out.write("                           ");

                                }
                            }
                            catch(Exception e){
      out.print(e.getMessage());
}
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Latest Albums Area End ##### -->\n");
      out.write("\n");
      out.write("      <!-- ##### Featured Artist Area Start ##### -->\n");
      out.write("    <section class=\"featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed\" style=\"background-image: url(img/bg-img/bg-4.jpg);\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row align-items-end\">\n");
      out.write("                ");
  try{
                                ResultSet rs6=st.executeQuery("select * from song where song_delete=0 ORDER BY date DESC");
                                
                                if(rs6.next()){
                    
      out.write("\n");
      out.write("                <div class=\"col-12 col-md-5 col-lg-4\">\n");
      out.write("                    <div class=\"featured-artist-thumb\">\n");
      out.write("                        <img src=\"song-photo/");
      out.print(rs6.getString(1) );
      out.write(".jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-12 col-md-7 col-lg-8\">\n");
      out.write("                    <div class=\"featured-artist-content\">\n");
      out.write("                        <!-- Section Heading -->\n");
      out.write("                        <div class=\"section-heading white text-left mb-30\">\n");
      out.write("                            <p>See what’s new</p>\n");
      out.write("                            <h2>Buy What’s New</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>\n");
      out.write("                        <div class=\"song-play-area\">\n");
      out.write("                            <div class=\"song-name\">\n");
      out.write("                                <p>01. ");
      out.print(rs6.getString(2));
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                            <audio preload=\"auto\" controls>\n");
      out.write("                                <source src=\"song/");
      out.print(rs6.getString(1));
      out.write(".mp3\">\n");
      out.write("                            </audio>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                 ");
}
                }
                catch(Exception e){
      out.write("<h2>");
      out.print(e.getMessage());
      out.write("</h2>");
}
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Featured Artist Area End ##### -->\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!-- ##### Buy Now Area Start ##### -->\n");
      out.write("    <section class=\"oneMusic-buy-now-area has-fluid bg-gray section-padding-100\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"section-heading style-2\">\n");
      out.write("                        <p>See what’s new</p>\n");
      out.write("                        <h2>Buy What’s New</h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <!-- Single Album Area -->\n");
      out.write("                ");

                    count=0;
                    ResultSet rs5=st.executeQuery("select * from album where delete1=0");
                    rs5.afterLast();
                    while(rs5.previous()){
                        count++;
                        if(count==13) break;
                 
                
      out.write("\n");
      out.write("                <div class=\"col-12 col-sm-6 col-md-4 col-lg-2\"  style=\"text-align: center;\">\n");
      out.write("                    <div class=\"single-album-area wow fadeInUp\" data-wow-delay=\"100ms\">\n");
      out.write("                        <div class=\"album-thumb\">\n");
      out.write("                            <a href=\"album_details.jsp?album=");
      out.print(rs5.getString(1));
      out.write("\"><img src=\"album-photo/");
      out.print(rs5.getString(1) );
      out.write(".jpg\" alt=\"\"></a>\n");
      out.write("                            <!-- Play Icon -->\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                            <div class=\"album-info\">\n");
      out.write("                            <a href=\"album_details.jsp?album=");
      out.print(rs5.getString(1));
      out.write("\">\n");
      out.write("                                <h5>");
      out.print(rs5.getString(2));
      out.write("</h5>\n");
      out.write("                            </a>\n");
      out.write("                            <p>");
      out.print(rs5.getString(3));
      out.write("</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
    } 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"load-more-btn text-center wow fadeInUp\" data-wow-delay=\"300ms\">\n");
      out.write("                        <a href=\"albums-store.jsp\" class=\"btn oneMusic-btn\">Load More <i class=\"fa fa-angle-double-right\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Buy Now Area End ##### -->\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("  \n");
      out.write("    <!-- ##### Miscellaneous Area End ##### -->\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- ##### Contact Area Start ##### -->\n");
      out.write("    <section class=\"contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img\" style=\"background-image: url(img/bg-img/bg-2.jpg);\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"section-heading white wow fadeInUp\" data-wow-delay=\"100ms\">\n");
      out.write("                        <p>See what?s new</p>\n");
      out.write("                        <h2>Get In Touch</h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <!-- Contact Form Area -->\n");
      out.write("                    <div class=\"contact-form-area\">\n");
      out.write("                        <form action=\"get_in_touch.jsp\" method=\"post\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6 col-lg-4\">\n");
      out.write("                                    <div class=\"form-group wow fadeInUp\" data-wow-delay=\"100ms\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Name\" name=\"name\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6 col-lg-4\">\n");
      out.write("                                    <div class=\"form-group wow fadeInUp\" data-wow-delay=\"200ms\">\n");
      out.write("                                        <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"E-mail\" name=\"email_id\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-4\">\n");
      out.write("                                    <div class=\"form-group wow fadeInUp\" data-wow-delay=\"300ms\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"subject\" placeholder=\"Subject\" name=\"subject\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-12\">\n");
      out.write("                                    <div class=\"form-group wow fadeInUp\" data-wow-delay=\"400ms\">\n");
      out.write("                                        <textarea name=\"message\" class=\"form-control\" id=\"message\" cols=\"30\" rows=\"10\" placeholder=\"Message\"></textarea>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-12 text-center wow fadeInUp\" data-wow-delay=\"500ms\">\n");
      out.write("                                    <button class=\"btn oneMusic-btn mt-30\" type=\"submit\">Send <i class=\"fa fa-angle-double-right\"></i></button>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- ##### Contact Area End ##### -->\n");
      out.write("\n");
      out.write("    <!-- ##### Footer Area Start ##### -->\n");
      out.write("    <footer class=\"footer-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row d-flex flex-wrap align-items-center\">\n");
      out.write("                <div class=\"col-12 col-md-6\">\n");
      out.write("                    <a href=\"#\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-12 col-md-6\">\n");
      out.write("                    <div class=\"footer-nav\">\n");
      out.write("                        <ul>\n");
      out.write("                                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                    \n");
      out.write("                                    <li><a href=\"albums-store.jsp\">Albums</a></li>\n");
      out.write("                                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                                \n");
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
      out.write("    <script src=\"js/active.js\"></script> \n");
      out.write("\n");
      out.write("</body>\n");
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
