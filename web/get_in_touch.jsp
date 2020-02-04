<%-- 
    Document   : get_in_touch
    Created on : Jun 12, 2019, 3:33:24 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         if(request.getParameter("email_id")==null || request.getParameter("message")==null){
             response.sendRedirect("index.jsp");
         }
         else{
             
                     String name=request.getParameter("name");
                    String email_id=request.getParameter("email_id");
                    String subject=request.getParameter("subject");
                    String message=request.getParameter("message");
             
            try{
            
           
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    st.execute("insert into get_in_touch values('"+name+"','"+email_id+"','"+subject+"','"+message+"')");
                    cn.close();
                    response.sendRedirect("index.jsp?id=send");
            }
            catch(Exception e){
             System.out.println(e.getMessage());
            }
         }
                
    %>
    </body>
</html>
