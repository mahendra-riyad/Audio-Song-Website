<%-- 
    Document   : new_song
    Created on : Jun 17, 2019, 1:07:23 PM
    Author     : MAHENDRA
--%>

<%-- 
    Document   : genres
    Created on : Jun 10, 2019, 5:06:56 PM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
</head>

<body class="animsition">
    
             <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content" style="width: 80%;">
                        <div class="modal-header">
                            <h5 class="modal-title" id="mediumModalLabel">New Song</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                             <form method="post" action="song_insert.jsp">
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Song Name</label><br>    
                                                <input id="song_name" name="song_name" type="text" placeholder="--- name ---" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                               
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Select Genre</label><br>
                                                <select name="genres"  style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                
                                                    <%
                                                      try{
                                                             ResultSet rs = st.executeQuery("select * from genres");
                                                             while(rs.next()){
                                                                 %> <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%> </option>
                                                                <%
                                                                }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             %>
                                                   
                                                </select><br><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Select Category</label><br>
                                                <select name="category"  class="category_select" style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                    <option value="select category">select category</option>
                                                    <%
                                                      try{
                                                             ResultSet rs = st.executeQuery("select * from category where status=0");
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
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Select Album</label><br>
                                                <select name="album_name"  style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                    <option value="No album">No Album</option>
                                                    <%
                                                      try{
                                                             ResultSet rs = st.executeQuery("select * from album");
                                                             while(rs.next()){
                                                                 %> <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%> </option>
                                                                <%
                                                                }
                                                        }
                                                       catch(Exception e){
                                                            System.out.println(e.getMessage());
                                                         }
                                             %>
                                                   
                                                </select><br><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> Tags</label>    
                                                <input name="tags" type="text" placeholder="#tags" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> Upload Date</label>                         
                                                 <input  name="date" type="date" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Words/Music</label>                         
                                                 <input  name="words" type="text" class="form-control cc-name valid" placeholder="--- singer ---" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>    
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left;width: 40%; padding: 15px;margin: 0px;">Cancel</button>
                                                 <input type="submit" name="insert" id="add-genres" value="Insert" class="btn btn-primary" style="float:right;width: 40%; padding: 15px;margin: 0px;">  
                                             </form> 
                                             
                                             <script>
                                                 $(document).ready(function(){
                                                     $("select.category_select").change(function(){
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
            <!-- end modal medium -->

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
            <!-- end modal small -->
            
    <div class="page-wrapper">
        <div class="page-container2">
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                     <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px; font-weight: 500"><b style="padding-top:20px;">
                                            All songs	</b><button type="button" class="btn btn-primary mb-1" data-toggle="modal" data-target="#mediumModal" style="float:right">
											New Songs
										</button></div>
                                        <div class="card-body"> 
                                            
                                            <div class="row oneMusic-albums">
                                        
                                             <%
                                             try{
                                                    ResultSet rs = st.executeQuery("select * from song");
                                                    rs.afterLast();
                                                    while(rs.previous()){         
                                            %>
                                            <div class="col-12 col-sm-4 col-md-3 col-lg-3 single-album-item t c p">
                    <div class="single-album">
                        <img src="../song-photo/<%=rs.getString(1)%>.jpg" alt="">
                        <div class="album-info">
                            <a href="song_details.jsp?id=<%=rs.getString(1)%>">
                                <h5 style="letter-spacing: 2px; word-spacing: 4px; text-transform: uppercase;"><%=rs.getString(2)%></h5>
                            </a>
                            <p><%=rs.getString(3)%></p>
                            <% if(rs.getInt(8)==0){
                            %> <button type="button" class="btn btn-success" id="<%=rs.getString(1)%>" data-toggle="modal" data-target="#smallmodal">Photo Upload</button>
			<%	  
                            } %>
                             <% if(rs.getInt(9)==0){
                            %> <button type="button" class="btn btn-danger" id="<%=rs.getString(1)%>" data-toggle="modal" data-target="#smallmodal">Song Upload</button>
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
                                        
                                        $.post("song_photo_from.jsp",{photo_code:v},function(data){
                                            $("#javaquery").html(data);
                                           
                                        });
                                    });
                                });
                            </script>  
                            <script>
                                $(document).ready(function(){
                                    $(".btn.btn-danger").click(function(){
                                        var v=$(this).attr("id");
                                        
                                        $.post("song_mp3_from.jsp",{song_code:v},function(data){
                                            $("#javaquery").html(data);
                                           
                                        });
                                    });
                                });
                            </script>  
 
                                </div>
             
                                            
 
                                        </div>                

</body>

</html>
