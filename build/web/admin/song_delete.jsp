<%-- 
    Document   : song_delete
    Created on : Jul 13, 2019, 2:41:59 PM
    Author     : MAHENDRA
--%>

 <%@ page import="java.sql.*" %>
<%
 String song_code=request.getParameter("code");
 try{
      Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    st.execute("update song set song_delete=1 where song_code='"+song_code+"'");
                                                   response.sendRedirect("album_details.jsp"); %>record deleted <%
 }
 catch(Exception e){}
%>
