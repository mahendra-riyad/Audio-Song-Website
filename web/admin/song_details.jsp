<%-- 
    Document   : song_details
    Created on : Jun 23, 2019, 3:33:00 AM
    Author     : MAHENDRA
--%>


<%-- 
    Document   : all_album
    Created on : Jun 15, 2019, 2:03:00 AM
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
        String song_code=request.getParameter("id");
%>
<html lang="en">

<head>
    <!-- Required meta tags-->
<%@include file="header.jsp" %>
<style>
    .form-control{
       
       padding: 10px;
        font-size:16px;
        letter-spacing: 2px;
        word-spacing: 4px;
        text-transform: capitalize;
        
    }
    label{
        font-size:16px;
        padding:10px;
        letter-spacing: 2px;
        word-spacing: 4px;
        text-transform: capitalize;
        color:#009999;
        
    }
    .audio_set{
        box-shadow: 0px 2px 5px 0px #009999;
        width: 100%;
    }
    .parallax {
    /* The image used */
    /* Set a specific height */
    min-height: 600px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: top;
    background-repeat: no-repeat;
    background-size:cover;
    background-image: url("../song-photo/<%=song_code%>.jpg");
}
    
</style>
</head>

 <body class="animsition">
<div class="page-wrapper">
    <div class="page-container2">
       <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <%
                        ResultSet rs=st.executeQuery("select * from song where song_code='"+song_code+"' AND song_delete=0");
                        if(rs.next()){
                            
                       
                    %>
                    
                     
                    <div class="parallax">
                            </div>
                    <div class="row"> 
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <audio preload="auto" class="audio_set" controls>
                                            <source src="../song/<%=rs.getString(1)%>.mp3">
                                        </audio>
                                    <div class="col-sm-7">
                                        
                                        <form method="post" action="song_details_update.jsp?id=<%=rs.getString(1)%>">
                                        <label>song name</label>
                                        <input type="text" name="song_name" class="form-control" value="<%=rs.getString(2)%>">
                                        <label>genres name</label>
                                        <select class="form-control" name="genres">
                                           
                                            <% try{
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st1 = cn1.createStatement();
                                                ResultSet rs1=st1.executeQuery("select * from genres where delete1=0");
                                            while(rs1.next()){
                                                if(rs.getString(3).equals(rs1.getString(1))){
                                            %><option value="<%=rs1.getString(1)%>" selected="selected"><%=rs1.getString(2)%></option><%
                                                }
                                                else{
                                                    %><option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option><%
                                                }
                                            }
                                            }catch(Exception e){%><%=e.getMessage()%><%}
                                            %>
                                        </select>
                                        <label>Category</label>
                                        <select class="form-control"name="category">
                                            <% try{
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st1 = cn1.createStatement();
                                                ResultSet rs1=st1.executeQuery("select * from category where status=0");
                                            while(rs1.next()){
                                                if(rs.getString(4).equals(rs1.getString(1))){
                                            %><option value="<%=rs1.getString(1)%>" selected="selected"><%=rs1.getString(2)%></option><%
                                                }
                                                else{
                                                    %><option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option><%
                                                }
                                            
                                            }
                                            }catch(Exception e){%><%=e.getMessage()%><%}
                                            %>
                                        </select>
                                         <label>#Tags</label>
                                         <input type="text" value="<%=rs.getString(6)%>" name="tags" class="form-control">
                                         <label>date</label>
                                         <input type="date" value="<%=rs.getString(7)%>" name="date" class="form-control">
                                         <label>Words/Music</label>
                                         <input type="text" value="<%=rs.getString(8)%>" name="words" class="form-control"><br>
                                         
                                         <input type="submit" value="Update" class="btn btn-primary mb-1" style="width: 40%; float: right;">
                                       </form>
                                         <button class="btn btn-primary mb-3" style="width: 40%; float: left;" id="<%=rs.getString(1)%>">Delete</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }%>
                    <script>
            $(document).ready(function(){
                $("button.btn.btn-primary.mb-3").click(function(){
                    var v=$(this).attr("id");
                   
                   $.post("song_delete.jsp",{code:v},function(data){
                      alert(data);
                   }); 
                });  
            });
    </script>
                    
</body>
</html>
<%}%>
