<%-- 
    Document   : check
    Created on : Jun 12, 2019, 2:28:41 AM
    Author     : MAHENDRA
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
         <% 
            
            if(request.getParameter("password")==null || request.getParameter("email_id")==null){
                response.sendRedirect("login.jsp?error=1");
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
                    response.sendRedirect("index.jsp?login");  
                }
                else{
                   response.sendRedirect("login.jsp?id=password"); 
                }
                }
                else{
                    response.sendRedirect("login.jsp?id=password");
                }
                cn.close();
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }                
            }
            %>
            
    </body>
</html>
