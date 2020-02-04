<%-- 
    Document   : category
    Created on : Jun 21, 2019, 3:05:28 AM
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
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>one sound-category</title>
    
    <style>
        #category5 {
    color:#3868cd;
}
    </style>
    </head>
 <body class="animsition">
    <div class="page-wrapper">
        <div class="page-container2">
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card">
                                    <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px; font-weight: 500"><b style="padding-top:20px;">
                                            New Category	</b></div>
                                        <div class="card-body"> 
                                            
                                                <input  type="text" id="category" placeholder="--- name ---" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                <button name="insert" id="category_insert"  class="btn btn-primary" style="float:right;width: 40%; padding: 15px;">Insert</button>  
                                                <br><p id="msg" style="color: red; margin-top: 10px; word-spacing: 3px; letter-spacing: 1px; text-transform: capitalize;"></p>
                                            
                                        </div>
                                    <script>
                                        $(document).ready(function(){
                                            $("#category_insert").click(function(){
                                              var v=$("#category").val();
                                              if($('#category').val() == ''){
                                                 alert("enter value"); 
                                              }
                                              else{
                                                 $.post("category_insert.jsp",{category:v},function(data){
                                                   $("#msg").html(data);
                                                    //  alert(data);
                                                 });
                                              }
                                                
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                                                   <!-- TOP CAMPAIGN-->
                                <div class="top-campaign">
                                    <h3 class="title-3 m-b-30">
                                        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." style="border:1px solid #cccccc; float: left; padding: 15px; font-size: 14px; width: 50%; letter-spacing: 2px; word-spacing: 4px;"><span style="float:right;border-bottom:1px solid #cccccc; color:#0062cc; padding: 12px; font-size:16px">Category</span></h3><br><br>
                                    <div class="table-responsive">
                                        <table class="table table-top-campaign">
                                            <tbody>
                                                <ul id="myUL">
                                                <%
                                                    int count=0;
                                                    ResultSet rs=st.executeQuery("select * from category where status="+0);
                                                    rs.afterLast();
                                                    while(rs.previous()){
                                                        count++;
                                                %>
                                                
                                                <li id="r<%=rs.getString(1)%>" style="text-decoration: none;list-style-type: none; border-bottom: 1px solid #cccccc; padding:15px;"><a href="#"><%=count%> .  <%=rs.getString(2)%></a><button id="<%=rs.getString(1)%>" class="category_delete" style="color:red; margin-left: 30px; float: right;">delete</button><button class="edit"  id="<%=rs.getString(1)%>" style="float:right; color:green;">edit</button>
                                                    
                                                        <input type="text" class="category_edit" id="e<%=rs.getString(1)%>"  style="display:none; width: 40%; float: right; margin-left: 20px; margin-right: 40px; border-bottom:1px solid green; padding-bottom: 0px; letter-spacing: 3px; word-spacing: 5px; padding:10px; font-size: 12px;" required="required">
                                                </li>
                                                
                                               
                                                <%
                                                    }
                                                %>
                                                </ul>
                                            </tbody>
                                        </table>
                                                <script>
                                                    $(document).ready(function(){
                                                        $(".edit").click(function(){
                                                            var v=$(this).attr("id");
                                                            if(v.indexOf("_submit")==-1){
                                                                    $("#e"+v).css("display", "block");
                                                                    $(this).attr("id",v+"_submit");
                                                                  //  $("#"+v).text("update");
                                                           }
                                                           else{
                                                               var p = v.substring(0,v.indexOf("_submit"));
                                                               var d = $("#e"+p).val();
                                                               $.post("category_edit.jsp",{edit:d,id:p},function(data){
                                                                 alert(data);  
                                                               });  
                                                           }
                                                        });
                                                    });
                                                </script>
                                                <script>
                                                    $(document).on("click",".category_delete",function(){
                                                          var v=$(this).attr("id");
                                                          $("#r"+v).fadeOut(3000);
                                                           $.post("category_delete.jsp",{delete:v},function(data){
                                                                 $("#r"+v).fadeOut(1000);
                                                            }); 
                                                    });
                                                </script>
                                    </div>
                                </div>
                                <!--  END TOP CAMPAIGN-->   
                                
                                <script>
function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
           
        } else {
            li[i].style.display = "none";
            
        }
    }
}
</script>


                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
<% }%>
