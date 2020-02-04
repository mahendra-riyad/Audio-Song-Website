<%-- 
    Document   : category_edit
    Created on : Jul 8, 2019, 4:22:29 PM
    Author     : MAHENDRA
--%>

 <%@ page import="java.sql.*" %>
 <%
     if(request.getParameter("id")!=null){
         String category_code=request.getParameter("id");
         String category=request.getParameter("edit");
         
                try{
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    st.execute("update category set category='"+category+"' where category_code='"+category_code+"'");
                                                     %>id received<%
                    }
                     catch(Exception e){
                                                    %><%=e.getMessage()%><%
                                                }
       
     }
     else{
         %>id not received<% }
 %>