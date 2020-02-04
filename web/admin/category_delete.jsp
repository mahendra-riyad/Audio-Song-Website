<%-- 
    Document   : category_delete
    Created on : Jun 21, 2019, 6:47:26 AM
    Author     : MAHENDRA
--%>
 <%@ page import="java.sql.*" %>
 <%
     if(request.getParameter("delete")!=null){
         String category_code=request.getParameter("delete");
         
                try{
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    st.execute("update category set status=1 where category_code='"+category_code+"'");
                                                   
                                                     %>id received<%
                    }
                     catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                    %><%=e.getMessage()%><%
                                                }
       
     }
     else{
         %>id not received<% }
 %>
