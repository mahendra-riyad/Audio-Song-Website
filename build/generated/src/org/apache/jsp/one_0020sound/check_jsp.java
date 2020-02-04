package org.apache.jsp.one_0020sound;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.Cookie;

public final class check_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
 
            
            if(request.getParameter("password")==null || request.getParameter("email_id")==null){
               // response.sendRedirect("login.jsp");
            }
            else{
                String email_id=request.getParameter("email_id");
                String password=request.getParameter("password");
                try{
                 Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                Statement st = cn.createStatement();
                ResultSet rs=st.executeQuery("select * from user where email_id='"+email_id+"'");
                if(rs.next()){
                if(rs.getString("password").equals(password)){
                    Cookie ct=new Cookie("user",email_id);
                    ct.setMaxAge(3600);
                    response.addCookie(ct);
                    session.setAttribute(email_id,password);
                    session.setMaxInactiveInterval(10);
                   // response.sendRedirect("profile.jsp");
                   System.out.print("hello");
                    
                }
                else{
                 //  response.sendRedirect("login.jsp"); 
                }
                }
                else{
                   // response.sendRedirect("login.jsp");
                }
                cn.close();
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }                
            }
            
      out.write("\n");
      out.write("            \n");
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
