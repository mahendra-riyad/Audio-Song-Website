<%-- 
    Document   : register1
    Created on : Jun 12, 2019, 1:56:37 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
     <%
         if(request.getParameter("name")==null || request.getParameter("email_id")==null || request.getParameter("password")==null){
             response.sendRedirect("register.jsp");
         }
         else{
             
                     String name=request.getParameter("name");
                    String email_id=request.getParameter("email_id");
                    String password=request.getParameter("password");
                    
                      int n=10;
           String abc="ABCDEFGHIJK"+"012345678";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
               
           }
           String random=sb.toString();
             
            try{
            
           
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    st.execute("insert into user values('"+random+"','"+name+"','"+email_id+"','"+password+"')");
                    cn.close();
                    response.sendRedirect("login.jsp");
            }
            catch(Exception e){
             System.out.println(e.getMessage());
            }
         }
                
    %>
    </body>
</html>
