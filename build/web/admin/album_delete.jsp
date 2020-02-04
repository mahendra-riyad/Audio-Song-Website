<%-- 
    Document   : album_delete
    Created on : Jul 11, 2019, 11:30:22 AM
    Author     : MAHENDRA
--%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%    String random=request.getParameter("id"); 
    try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                     st.execute("update album set delete1=1 where album_id='"+random+"'");
                                                     response.sendRedirect("all_album.jsp?album_delete=1");
                                                     
                                                    
}
catch(Exception e){
                     
 }
    %>