<%-- 
    Document   : genres_edit1
    Created on : Jul 9, 2019, 5:41:47 AM
    Author     : MAHENDRA
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
        
              
                 if(request.getParameter("genres")==null || request.getParameter("title")==null){
                        response.sendRedirect("genres.jsp?error=all_field");
                }
                 else{
                    String about_genres=request.getParameter("title");
                     String genres=request.getParameter("genres");
                     String genres_id=request.getParameter("id");
        try{  
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    st.execute("update genres set genres_name='"+genres+"',about_genres='"+about_genres+"' where genres_id='"+genres_id+"'");
                    response.sendRedirect("genres.jsp?success=1");
                    
              }
            catch(Exception e){
            
             %><h3><%=e.getMessage() %></h3><%
            }
           }
                    
       
     

%>
