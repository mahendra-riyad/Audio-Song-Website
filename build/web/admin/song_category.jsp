<%-- 
    Document   : song_category
    Created on : Jun 21, 2019, 8:27:30 PM
    Author     : MAHENDRA
--%>
<%@ page import="java.sql.*" %>
<%
    int count=0;
    String song_name=request.getParameter("song_name");
    String category=request.getParameter("category");
    try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
          Statement st = cn.createStatement();
          ResultSet rs=st.executeQuery("select * from song_category where song_name='"+song_name+"'");
          while(rs.next()){
              if(rs.getString(2).equals(category)){
                  count++;
              }
          }
          if(count==0){
                         int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
           String random=sb.toString();
           st.execute("insert into song_category values('"+random+"','"+category+"','"+song_name+"')");
          }
          ResultSet rs1=st.executeQuery("select * from song_category where song_name='"+song_name+"'");
          while(rs1.next()){
%><button class="song_category" id="<%=rs1.getString(1)%>" style="padding:5px 10px; border:1px solid #17a2b8; margin: 5px; font-size: 12px; border-radius:4px; "><%=rs1.getString(2)%></button><%
          }
    }
    catch(Exception e){
        %><%=e.getMessage()%>error<%
    }
    
    

%>
