<%-- 
    Document   : message
    Created on : Jul 11, 2019, 2:27:07 PM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
<%@page import="javax.servlet.http.Cookie" %>
<%
    String email=null;
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("admin")){
            email=c[i].getValue();
            break;
        }
    }
    if(email==null){
        response.sendRedirect("index.jsp?please_login");
    }
    else{
        
%>
<html lang="en">

<head>
 <%@include file="header.jsp" %>

    <!-- Title Page-->
    <title>one sound-message</title>
    
    <style>
        #message5 {
    color:#3868cd;
}
    </style>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-container2">
            <!-- END HEADER DESKTOP-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                     
                                             <%
                                             try{
                
                    
                                                
                                                    ResultSet rs = st.executeQuery("select * from get_in_touch");
                                                    rs.afterLast();
                                                    while(rs.previous()){
                                                     
                                            %>
                                            <div class="card-body">
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Name :- <span style="color: #00cccc;"><%=rs.getString(1)%></span></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px;  margin-bottom: 10px;">From :-<span style="color: #00cccc;"> <%=rs.getString(2)%></span></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px;  margin-bottom: 10px; box-shadow: 0px 2px 5px 0px #00cccc; padding: 10px;">Subject :-<span style="color: #00cccc;"> <%=rs.getString(3)%></span></p><br>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px; padding: 20px; border:1px solid buttonface;"> <%=rs.getString(4)%></p>
                                            </div><br>
                                            <%
                                                        
                                                    }
                                                    
                                                   
                                                }
                                             catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                }
                                             %>
                                </div>
 
                                </div>
                                            
                    
              


</body>

</html>
<%}%>

