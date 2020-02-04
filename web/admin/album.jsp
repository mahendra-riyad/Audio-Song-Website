<%-- 
    Document   : album
    Created on : Jun 13, 2019, 7:27:53 PM
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
<%@include file="header.jsp" %>
<html lang="en">

<head>
    <!-- Title Page-->
    <title>one sound-albums</title>
    <style>
        #album5 {
    color:#3868cd;
}
</style>
<style>
    input,textarea{
        border:none;
      font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;
        box-shadow: 2px 5px 10px 0px #20a8d8;
    }
    select{
        border:none;
      
        box-shadow: 2px 5px 10px 0px #20a8d8;
        font-size: 14px; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8;
    }
    label{
       letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;  
    }
</style>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-container2">


            <!-- modal medium -->
            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="mediumModalLabel">Medium Modal</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                           <input name="cc-name" type="text" class="form-control cc-name valid">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Confirm</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end modal medium -->

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card">
                                    <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px;">NEW ALBUMS</div>
                                    <div class="card-body">                                      
                                        
                                            <div class="form-group has-success"> 
                                             <form method="post" action="album1.jsp"> 
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Name</label>
                                                 <input id="song_name" name="album" type="text" class="form-control cc-name valid" placeholder="Enter New Albums Name" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Release Date</label>
                                                 <input id="" name="date" type="date" class="form-control cc-name valid" placeholder="Enter date" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Released By</label>
                                                 <input id="" name="release_by" type="text" class="form-control cc-name valid" placeholder="Released By" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Genres Name</label>
                                                <br>
                                                <select name="genres_name"  class="genres_select" style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                    <option value="select genres">select Genres</option>
                                                    <%
                                                      try{
                                                             ResultSet rs = st.executeQuery("select * from genres where delete1=0");
                                                             while(rs.next()){
                                                    %> <option id="<%=rs.getString(2)%>" value="<%=rs.getString(2)%>"><%=rs.getString(2)%> </option>
                                                                <%
                                                              }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             %>
                                                   
                                                </select><br>
                                                <div id="category_selected"></div><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Select Category</label><br>
                                                <select name="category"  style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                
                                                    <%
                                                      try{
                                                             ResultSet rs = st.executeQuery("select * from category where status=0");
                                                             while(rs.next()){
                                                                 %> <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%> </option>
                                                                <%
                                                                }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             %>
                                                   
                                                </select><br><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Recording Location</label>
                                                <textarea name="location" rows="3" cols="76%" width="100%;" style="border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; " required="required"></textarea><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> About Album</label>
                                                <textarea name="about" rows="3" cols="76%" width="100%;" style="border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; " required="required">Write something here....
                                                </textarea><br><br>

                                                 <input type="reset" value="RESET" class="btn btn-lg btn-info" style="width:40%;letter-spacing: 2px; float: left; background-color: darkred;">
                                             <input type="submit" value="SUBMIT" class="btn btn-lg btn-info btn-block" style="width:40%;letter-spacing: 2px; float:right; margin-top: 0px;">
                                             
                                             </form>    
                                             <%     String success=request.getParameter("success");
                                                 if(success=="album_submit"){
                                                 %> <p style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px; text-align: center;">** ALBUM SUCCESSFULLY INSERTED **</p>
                                                 <%
                                             } %> 
                                            </div>
                                             <script>
                                                 $(document).ready(function(){
                                                     $("select.genres_select").change(function(){
                                                       var category = $(this).children("option:selected").val();
                                                       var song=$("input#song_name").val();
                                                       if(song==''){
                                                          alert("enter name");  
                                                       }
                                                       else{
                                                          
                                                            $.post("song_category.jsp",{song_name:song,category:category},function(data){
                                                                $("#category_selected").html(data);
                                                            });
                                                            
                                                       }
                                                        
                                                     });
                                                 });
                                             </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</body>

</html>
<%}%>
