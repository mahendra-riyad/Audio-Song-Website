<%-- 
    Document   : song_details_update
    Created on : Jun 23, 2019, 5:32:07 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ page import="java.sql.*" %>
    </head>
    <body>
       
      <%     String song_code=request.getParameter("id");  
          if(request.getParameter("song_name")==null || request.getParameter("genres")==null || request.getParameter("tags")==null || request.getParameter("date")==null || request.getParameter("words")==null){
               response.sendRedirect("song_details.jsp?id=song_code");
           }
           else{ 
                
               String song_name=request.getParameter("song_name");
               String genres=request.getParameter("genres");
               String category=request.getParameter("category");
               
               String tags=request.getParameter("tags");
               String date=request.getParameter("date");
               String words =request.getParameter("words");
               try{
                 Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                     st.execute("update song set song_name='"+song_name+"',genres='"+genres+"',category='"+category+"',tags='"+tags+"',date='"+date+"',words='"+words+"' where song_code='"+song_code+"'");
                response.sendRedirect("song_details.jsp?id="+song_code);
           
               }
               catch(Exception e){
                   %><%=e.getMessage()%><%
              } 
                    
}    %>
    </body>
</html>
