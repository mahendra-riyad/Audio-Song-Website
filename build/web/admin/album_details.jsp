
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
        
%>
<html lang="en">

<head>
    <!-- Required meta tags-->
<%@include file="header.jsp" %>
</head>

 <body class="animsition">
                <% String album_id1=request.getParameter("id"); %>
                			<!-- modal large -->
			<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Album Details</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
                                            <%
                                                ResultSet rs5 = st.executeQuery("select * from album where album_id='"+album_id1+"'");
                                                    if(rs5.next()){
                                            %>
						<div class="modal-body">
                                                    <div class="row">
                      
                                                        <div class="col-sm-10">
                                                            <form method="post" action="album_details1.jsp?id=<%=album_id1 %>"> 
                                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Name</label>
                                                                 <input id="" name="album" type="text" class="form-control cc-name valid" placeholder="Enter New Albums Name" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required" value="<%=rs5.getString(2)%>"> <br>
                                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Release Date</label>
                                                                 <input id="" name="date" type="text" class="form-control cc-name valid" placeholder="Enter date" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required" value="<%=rs5.getString(3)%>"> <br>
                                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Released By</label>
                                                 <input id="" name="release_by" type="text" class="form-control cc-name valid" placeholder="Released By" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required" value="<%=rs5.getString(4)%>"> <br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Genres Name</label>
                                                <!-- <input id="" name="genres_name" type="text" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" placeholder="Enter Genres Name Who Related To Album Seprated by ," required="required" value="<%=rs5.getString(5)%>"><br>
                                                -->
                                                <select name="genres_name" class="form-control cc-name valid">
                                                    <option value="<%=rs5.getString(5)%>" selected="selected"><%=rs5.getString(5)%></option>
                                                <%  try{ 
                                                     
                                                    Statement st1 = cn.createStatement();
                                                    ResultSet rs6=st1.executeQuery("select * from genres where delete1=0");
                                                
                                                     while(rs6.next()){
                                                         %><option value="<%=rs6.getString(2)%>"><%=rs6.getString(2)%></option><%  
                                                     } 
                                                    }catch(Exception er){
                                                            out.println(er.getMessage());
                                                    }
%></select><br>
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Recording Location</label>
                                                <textarea name="location" rows="3" cols="74%" width="100%;" style="border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; " required="required" ><%=rs5.getString(6)%></textarea><br><br>
                                                
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> About Album</label>
                                                <textarea name="about" rows="3" cols="74%" width="100%;" style="border: 1px solid #ced4da; color:#495057; letter-spacing: 2px; word-spacing:4px; padding: 15px; font-size:14px; " required="required"><%=rs5.getString(7)%>
                                                </textarea><br><br>                                         
                                                
                                             
                                                 
                                                        </div>
                                                    </div>
						</div>
                                                <%}%>
						<div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left; width: 30%;">Cancel</button>
							<input type="submit" value="Update" class="btn btn-primary" style="letter-spacing: 2px; width: 30%; float: right">
						</div>
                                                </form>
					</div>
				</div>
			</div>
			<!-- end modal large -->
                
            	<div class="modal fade" id="smallmodal" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel">Song Details</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
                                                        </button></div>
                                                        <div class="modal-body" id="javaquery">
                                                        
                             	
                                                        </div>
						</div>
						
					</div>
				</div>
    
            <!-- end modal small -->
            
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
                             <form method="post" action="song_insert.jsp?id=<%=album_id1 %>">
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Song Name</label><br>    
                                                <input id="song_name" name="song_name" type="text" placeholder="--- name ---" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                               
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Select Genre</label><br>
                                                <select name="genres"  style="font-size: 14px; width: 60%; letter-spacing: 2px; word-spacing: 4px; padding:15px; border:1px solid #cccccc; opacity: .8">
                                                
                                                    <%
                                                      try{
                                                             ResultSet rs1 = st.executeQuery("select * from genres where delete1=0");
                                                             while(rs1.next()){
                                                                 %> <option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%> </option>
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
                                                             ResultSet rs2 = st.executeQuery("select * from category where status=0");
                                                             while(rs2.next()){
                                                    %> <option id="<%=rs2.getString(1)%>" value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%> </option>
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
                                                 <%
                                             try{
                
                                                    String album_id=request.getParameter("id");
                                                
                                                    ResultSet rs3 = st.executeQuery("select * from album where album_id='"+album_id+"'");
                                                    if(rs3.next()){
                                                        
                                            %>
                                                <input name="album_name" type="text" value="<%=rs3.getString(2)%>" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                             <%} } catch(Exception e){} %>
                                             
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> Tags</label>    
                                                <input name="tags" type="text" placeholder="#tags" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                
                                                <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> Upload Date</label>                         
                                                 <input  name="date" type="date" class="form-control cc-name valid" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>
                                                
                                                 <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Words/Music</label>                         
                                                 <input  name="words" type="text" class="form-control cc-name valid" placeholder="--- singer ---" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required="required"> <br>    
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left;width: 40%; padding: 15px;margin: 0px;">Cancel</button>
                                                 <input type="submit" name="insert" id="add-genres" value="Insert" class="btn btn-primary" style="float:right;width: 40%; padding: 15px;margin: 0px;">  
                                             </form> 
                                             
                                       
                        </div>
                    </div>
                </div>
            </div>
            <!-- end modal medium -->
            
            
             <%
                                             try{
                
                                                    String album_id=request.getParameter("id");
                                                    
                                                    ResultSet rs = st.executeQuery("select * from album where album_id='"+album_id+"'");
                                                    if(rs.next()){
                                                       String album_name=rs.getString(2); 
                                            %>
    <div class="page-wrapper">
        <div class="page-container2">
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                                            
                        <div class="row">
                            <div class="col-lg-12">
                                
                                    
                               
                                
                                <div class="card">
                                    <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px;">Album :- <span style="color: #333333; text-transform: uppercase;"><%=rs.getString(2)%></span>
                                    <button type="button" class="btn btn-primary mb-1" data-toggle="modal" data-target="#mediumModal" style="float:right">
											New Songs
										</button>
                                    <form method="post" action="album_delete.jsp?id=<%=album_id%>">
                                        <input type="submit" class="btn btn-primary mb-1" value="Delete" style="float:right;  margin-right: 20px; margin-top: -25px">
                                    </form>
                                        
                                        <button type="button" class="btn btn-primary mb-1" data-toggle="modal" data-target="#largeModal" style="float:right; margin-top: -25px; margin-right: 20px;">
											Edit
										</button>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-12 col-sm-6" style="float:left; content: center; text-align: center; padding-top:50px;">
                                               <img src="../album-photo/<%=rs.getString(1)%>.jpg" alt="">
                                            </div>
                                            <div class="col-12 col-sm-6" style="float:right; text-align: center;">
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-top:0px;">Album Name -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(2)%></span></p><hr>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Release Date -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(3)%></span></p><hr>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Release By -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(4)%></span></p><hr>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Category -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(5)%></span></p><hr>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Location -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(6)%></span></p><hr><hr>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">About -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(7)%></span></p><hr>
                                                       <%  int numberRow=0;
                                        try{
                                            
                                        ResultSet rs3=st.executeQuery("select COUNT(*) from song where song_delete=0 AND album_name='"+rs.getString(1)+"'");
                                        while(rs3.next()){
                                            numberRow = rs3.getInt("count(*)");
                                        }
                                        %><p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">No of Songs -<span style="color: #009999; text-transform: capitalize;">  <%=numberRow%></span></p><hr><%
                                        }catch(Exception e){%><%=e.getMessage()%><%} 
                                    %>
                                                
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">
                                                <% try{
                                                    ResultSet rs2=st.executeQuery("select * from song_category where song_name='"+album_name+"'");
                                                    while(rs2.next()){
                                                %><button style="color: #009999; text-transform: capitalize; border-radius: 8px; border:1px solid #cccccc; padding:5px 10px; margin:10px;"> <%=rs2.getString(2)%></button><%
                                                    }
                                                    } catch(Exception e){%><%=e.getMessage()%><%} %></p> 
                                            </div>
                                            </div>
                                        </div>
                                            
                                    <div class="card-body"> 
                                        <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px; text-align: center;"><span style="color: #333333; text-transform: uppercase;">All Mp3 Songs List</span></div><br><br>
                                         <div class="row oneMusic-albums">
                                        
                                             <%
                                             try{
                                                    ResultSet rs4 = st.executeQuery("select * from song where album_name='"+album_name+"' OR album_name='"+album_id+"' AND song_delete=0");
                                                    rs4.afterLast();
                                                    while(rs4.previous()){         
                                            %>
                <div class="col-12 col-sm-4 col-md-3 col-lg-3 single-album-item t c p">
                    <div class="single-album">
                        <img src="../song-photo/<%=rs4.getString(1)%>.jpg" alt="">
                        <div class="album-info">
                            <a href="song_details.jsp?id=<%=rs4.getString(1)%>">
                                <h5 style="letter-spacing: 2px; word-spacing: 4px; text-transform: uppercase;"><%=rs4.getString(2)%></h5>
                            </a>
                            <p><%=rs4.getString(6)%></p>
                            <% if(rs4.getInt(9)==0){
                            %> <button type="button" class="btn btn-success" id="<%=rs4.getString(1)%>" data-toggle="modal" data-target="#smallmodal">Photo Upload</button>
			<%	  
                            } %>
                             <% if(rs4.getInt(10)==0){
                            %> <button type="button" class="btn btn-danger" id="<%=rs4.getString(1)%>" data-toggle="modal" data-target="#smallmodal">Song Upload</button>
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
                                             
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                <!-- END USER DATA--> 
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
</body>

</html>
<%}%>
