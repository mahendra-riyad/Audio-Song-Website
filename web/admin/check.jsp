<%-- 
    Document   : check
    Created on : Jun 10, 2019, 4:22:48 PM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check</title>
    </head>
    <body>
         <% 
            String email=null;
            Cookie c[]=request.getCookies();
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("admin")){
                    email=c[i].getValue();
                    break;
                }
            }
            if(email==null){
                if(request.getParameter("email")==null){
                   response.sendRedirect("index.jsp"); 
                }
                else{
                    email=request.getParameter("email");
                }
            }
            if(request.getParameter("pass")==null){
                response.sendRedirect("index.jsp?error=1");
            }
            else{
                String pass=request.getParameter("pass");
                try{
                 Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                Statement st = cn.createStatement();
                ResultSet rs=st.executeQuery("select * from admin where email_id='"+email+"'");
                if(rs.next()){
                if(rs.getString("password").equals(pass)){
                    Cookie ct=new Cookie("admin",email);
                    ct.setMaxAge(3600);
                    response.addCookie(ct);
                    session.setAttribute(email,pass);
                    session.setMaxInactiveInterval(10);
                    response.sendRedirect("main.jsp");
                    
                }
                else{
                   response.sendRedirect("index.jsp"); 
                }
                }
                else{
                    response.sendRedirect("index.jsp");
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
