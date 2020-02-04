<%-- 
    Document   : category_insert
    Created on : Jun 21, 2019, 3:49:43 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
         
        <%
            int count=0;
            String category=request.getParameter("category");
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
             Statement st = cn.createStatement();
            ResultSet rs=st.executeQuery("select * from category where category='"+category+"'");
            if(rs.next()){
                %><div>category already inserted</div><%
            }
           else{
               int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghigklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
           String category_code=sb.toString();
           st.execute("insert into category values('"+category_code+"','"+category+"',"+0+")");
        %><div>category successfully inserted</div>
        <% }
        %>
        
