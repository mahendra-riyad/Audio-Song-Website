<%-- 
    Document   : song_insert
    Created on : Jun 23, 2019, 12:53:20 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <%
           if(request.getParameter("song_name")==null || request.getParameter("genres")==null ||request.getParameter("category")==null ||request.getParameter("album_name")==null || request.getParameter("tags")==null || request.getParameter("date")==null || request.getParameter("words")==null){
               response.sendRedirect("album_details.jsp?error=enter_all_field");
           }
           else{ 
                String id=request.getParameter("id");
               String song_name=request.getParameter("song_name");
               String genres=request.getParameter("genres");
               String category=request.getParameter("category");
               String album_name=request.getParameter("album_name");
               String tags=request.getParameter("tags");
               String date=request.getParameter("date");
               String words =request.getParameter("words");
               
                  Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    int count=0;
               ResultSet rs=st.executeQuery("select * from song");
               while(rs.next()){
                   if(rs.getString(2).compareToIgnoreCase(song_name)==0){
                   
                   count++;
                   }
               } 
               if(count==0){
               try{
                             int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
           String song_code=sb.toString();
           
                
                                                    
           st.execute("insert into song values('"+song_code+"','"+song_name+"','"+genres+"','"+category+"','"+id+"','"+tags+"','"+date+"','"+words+"',"+0+","+0+","+0+","+0+")");
                response.sendRedirect("album_details.jsp?id="+id);
           
               }
               catch(Exception e){
              
              } 
             }
               else{
                   response.sendRedirect("album_details.jsp?id='"+id+"'");
               }
           }
               
           
       %>
    </body>
</html>
