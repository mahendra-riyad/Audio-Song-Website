<%-- 
    Document   : genres
    Created on : Jun 10, 2019, 5:06:56 PM
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
    <!-- Required meta tags-->
 <%@include file="header.jsp" %>

    <!-- Title Page-->
    <title>one sound-genres</title>
    
    <style>
        #genres5 {
    color:#3868cd;
}
.fa.fa-times{
   float: right;
   cursor: pointer;
   color:coral;
   transition: 1s;
}
.fa.fa-times:hover{
    opacity: 1;
}
    </style>
    <script>
            $(document).ready(function(){
                $(".fa.fa-times").click(function(){
                    var v=$(this).attr("id");
                   
                   $.post("genres_delete.jsp",{code:v},function(data){
                       $("#r"+v).fadeOut(1000);
                   }); 
                });  
            });
    </script>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-container2">
            <!-- END HEADER DESKTOP-->
                            <div class="modal fade" id="smallmodal_edit" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
					<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel">Genres Edit</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
                                                        </button></div>
                                                        <div class="modal-body" id="javaquery_edit">
                                                        
                             	
                                                        </div>
						</div>
						
					</div>
				</div>
            
            			<div class="modal fade" id="smallmodal" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel">Photo Insert</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
                                                        </button></div>
                                                        <div class="modal-body" id="javaquery">
                                                        
                             	
                                                        </div>
						</div>
						
					</div>
				</div>
			
            
             <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="mediumModalLabel">New Genre</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                             	 <form method="post" action="genres1.jsp">	
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Genre Name</label>
                                             
                                                <input  name="genres1" type="text" placeholder="--- name ---" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> About Genres</label>
                                             
                                                 <input name="about_genres" type="text" placeholder="--- title ---" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                 <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left; width: 40%; padding: 15px;">Cancel</button>
                          <input type="submit" name="insert" id="add-genres" value="Insert" class="btn btn-primary" style="float:right;width: 40%; padding: 15px">  
                                            </form> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- end modal medium -->

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px; font-weight: 500"><b style="padding-top:20px;">
                                            All Genres	</b><button type="button" class="btn btn-primary mb-1" data-toggle="modal" data-target="#mediumModal" style="float:right">
											Add Genre
										</button></div>
                                    <div class="card-body"> 
                        
             
                                                <div class="row oneMusic-albums">
                                        
                                             <%
                                             try{
                
                    
                                                
                                                    ResultSet rs = st.executeQuery("select * from genres where delete1=0");
                                                    while(rs.next()){
                                                        String genres_id =rs.getString(1);
                                                        String genres_name=rs.getString(2);
                                            %>
                                            <div class="col-12 col-sm-4 col-md-3 col-lg-3 single-album-item t c p">
                    <div class="single-album" id="r<%=rs.getString(1)%>">
                        
                        <img src="../genres-photo/<%=genres_id %>.jpg" alt="">
                        <div class="album-info">
                            
                            <a href="#" id="<%=genres_id%>" class="genres_edit" data-toggle="modal" data-target="#smallmodal_edit">
                                <h5 style="letter-spacing: 2px; word-spacing: 4px; text-transform: uppercase;"><%=genres_name%></h5>
                                
                            </a>
                            <p><%=rs.getString(3)%> <i class="fa fa-times" id="<%=rs.getString(1)%>"></i></p>
                           
                            <% if(rs.getInt(4)==0){
                            %> <button type="button" class="btn btn-success" id="<%=genres_id%>" data-toggle="modal" data-target="#smallmodal">Photo Upload</button>
			<%	  
                            } %>
                            							
                            							
                        </div>
                    </div>
                </div>
                                            
                                            <%
                                                        
                                                    }
                                                    
                                                   
                                                }
                                             catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                }
                                             %>
                                                
                                    
                          <script>
                                $(document).ready(function(){
                                    $(".btn.btn-success").click(function(){
                                        var v=$(this).attr("id");
                                        
                                        $.post("genres_photo_from.jsp",{photo_code:v},function(data){
                                            $("#javaquery").html(data);
                                           
                                        });
                                    });
                                });
                            </script>  
                            <script>
                                $(document).ready(function(){
                                    $(".genres_edit").click(function(){
                                        var v=$(this).attr("id");
                                        
                                        $.post("genres_edit.jsp",{genres_id:v},function(data){
                                            $("#javaquery_edit").html(data);
                                           
                                        });
                                    });
                                });
                            </script>
 
                                </div>
 
                                </div>
                                            
                    
              


</body>

</html>
<%}%>
