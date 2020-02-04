<%-- 
    Document   : genres1
    Created on : Jun 12, 2019, 1:06:18 PM
    Author     : MAHENDRA
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
            
                      int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
           String random=sb.toString();

              
                 if(request.getParameter("genres1")==null || request.getParameter("about_genres")==null){
                        response.sendRedirect("genres.jsp?error=all_field");
                }
                 else{
                    String about_genres=request.getParameter("about_genres");
                     String genres=request.getParameter("genres1");
    
        try{  
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    st.execute("insert into genres values('"+random+"','"+genres+"','"+about_genres+"',"+0+","+0+")");
                    response.sendRedirect("genres.jsp?success=1");
                    
              }
            catch(Exception e){
            
             %><h3><%=e.getMessage() %></h3><%
            }
           }
                    
       
     

%>