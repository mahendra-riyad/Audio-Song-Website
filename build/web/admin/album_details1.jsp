<%-- 
    Document   : album_details1
    Created on : Jun 15, 2019, 4:08:22 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Album Details</title>
    </head>
    <body>
        <%
       try{
          
                    String album_id=request.getParameter("id");
                    String album=request.getParameter("album");
                    String date=request.getParameter("date");
                    String release_by=request.getParameter("release_by");
                    String genres_name=request.getParameter("genres_name");
                    String location=request.getParameter("location");
                    String about=request.getParameter("about");
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    st.execute("update album set album_name='"+album+"',date='"+date+"',release_by='"+release_by+"',category='"+genres_name+"',location='"+location+"',about='"+about+"' where album_id='"+album_id+"'");
                
                    cn.close();
                    response.sendRedirect("album_details.jsp?id="+album_id);
         }
            catch(Exception e){
            // System.out.println(e.getMessage());
            %><%=e.getMessage()%><%
            }
     %>
    </body>
</html>
