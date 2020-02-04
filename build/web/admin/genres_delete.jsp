<%-- 
    Document   : genres_delete
    Created on : Jun 24, 2019, 12:33:06 AM
    Author     : MAHENDRA
--%>
 <%@ page import="java.sql.*" %>
<%
 String genres_code=request.getParameter("code");
 try{
      Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    st.execute("update genres set delete1=1 where genres_id='"+genres_code+"'");
                                                    %>record deleted <%
 }
 catch(Exception e){}
%>
