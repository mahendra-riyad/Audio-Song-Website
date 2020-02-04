<%-- 
    Document   : genres-song
    Created on : Jul 16, 2019, 1:54:57 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%@page import="javax.servlet.http.Cookie" %>
 
<%
        String genres_code=request.getParameter("genres");
        String genres_name1=request.getParameter("genres_name");
        
        %>
<!DOCTYPE html>
<html lang="en">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
    <!-- Title -->
    <title>One sound-album</title>
    <style>
        .album-thumb img{
            height: 230px;
            cursor: pointer;
        }
        .song-list{
            padding: 15px;
            font-size: 16px;
            background-color: #999999;
            width: 100%;
            text-align: center;
            color:white;
            margin-bottom: 20px;
        }
        .audio-set{
            width: 100%;
            margin-top: 20px;
            background-color: black;
        }
                #song-detail{
          padding: 30px;
          margin-bottom: 20px;
          background-color: #ccffcc;
          transition: 1s;
        }
        #song-detail:hover{
            box-shadow: 0px 2px 50px 0px #ccccff;
        }
        .play-on-click{
   letter-spacing: 3px;
   border-radius: 8px;
   padding: 5px 20px;
   transition: 1s;
   backface-visibility: hidden;
   animation-timing-function: ease-out;
   transform: translate(-50%,-50);
   float:right;
   cursor: pointer;
   border:none;
   background-color: #99ff99;
}
.play-on-click:hover{
   border:1px solid crimson; 
   letter-spacing: 8px;
   transform: translate(-50%,-50);
}

        
    </style>
     <script>
                                $(document).ready(function(){
                                    $(".song_details").click(function(){
                                        var v=$(this).attr("id");
                                        $.post("genres-song-details.jsp",{song_code:v},function(data){
                                            $("#javaquery").html(data);
                                          
                                           
                                        });
                                    });
                                });
                            </script> 
</head>
<body>
<%@include file="header.jsp" %>
			<!-- modal medium -->
			<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content" id="javaquery" style="background-color : #ccffcc">
						
					</div>
				</div>
			</div>
			<!-- end modal medium -->
                        
<%  try{
                    ResultSet rs=st.executeQuery("select * from genres where genres_id='"+genres_code+"' OR genres_name='"+genres_name1+"'");
                    if(rs.next()){
                        String genres_name=rs.getString(2);
                        %>
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(genres-photo/<%=genres_code%>.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2><%=rs.getString(2)%></h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row" style="margin-top:50px; box-shadow: 2px 0px 10px 0px #66ffff;">

                <!-- Single Album Area -->
                
                <div class="col-12 col-sm-6" style="text-align:center; padding:20px; ">
                        
                            <img src="genres-photo/<%=rs.getString(1)%>.jpg" alt="">
                            <!-- Play Icon -->
                        
                </div>
                <div class="col-12 col-sm-6" style="text-align:center;">
                    <div class="album-info" style="margin-top:20%;">
                            <p style="letter-spacing:2px; word-spacing: 4px; margin-top:10px;">Genres Name -<a href="" style="color: #009999; text-transform: capitalize;">  <%=rs.getString(2)%></a></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;"><span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(3)%></span></p>
                                                      <%  int numberRow=0;
                                        try{
                                            
                                        ResultSet rs3=st.executeQuery("select COUNT(*) from song where song_delete=0 AND genres='"+genres_code+"'");
                                        while(rs3.next()){
                                            numberRow = rs3.getInt("count(*)");
                                        }
                                        %><p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">No of Songs -<span style="color: #009999; text-transform: capitalize;">  <%=numberRow%></span></p><%
                                        }catch(Exception e){%><%=e.getMessage()%><%} 
                                    %> 
                        </div>
                    </div>
                </div>
             </div>   
        </div>
    
     <%}
}catch(Exception e){%><%=e.getMessage()%><%}%>
    <!-- ##### Buy Now Area End ##### -->

       <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                <div class="song-list">
                <span >Mp3 Songs List</span>
                </div>
                <!-- Single Album Area -->
                <% 
                   ResultSet rs2=st.executeQuery("select * from song where song_delete=0 AND genres='"+genres_code+"' ORDER BY date DESC");
                    
                    while(rs2.next()){
                    
                        %>
                  <div class="col-12" id="song-detail">
                    
                            <div class="album-info">  
                                <span class="song_details" data-toggle="modal" data-target="#mediumModal" id="<%=rs2.getString(1)%>" style=" cursor: pointer; font-size: 16px; letter-spacing: 4px; word-spacing: 8px; text-transform: capitalize;"><%=rs2.getString(2)%>.Mp3
                                </span> 
                                <button class="play-on-click" data-toggle="modal" data-target="#mediumModal" id="<%=rs2.getString(1)%>">play</button><br>
                                <%
                                     Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                    Statement st3 = cn3.createStatement();
                                    ResultSet rs3=st3.executeQuery("select * from genres where genres_id='"+rs2.getString(3)+"'");
                                    if(rs3.next()){
                                        %><span><%=rs3.getString(2)%></span><%
                                    }
                                    cn3.close();
                                %>
                                
                            </div>
                               
                    
                </div>
                
                
                   <%}%>
            </div>
        </div>
    </div>
           
     <!-- ##### Latest Albums Area Start ##### -->
  <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>See what’s new</p>
                        <h2>All Genres</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                        <!-- Single Album -->
                                                <%
                            try{
                                
                                ResultSet rs4=st.executeQuery("select * from genres where delete1=0");
                                rs4.afterLast();
                                while(rs4.previous()){
                         %> 
                     
                         <div class="single-album">
                             <a href="genres-song.jsp?genres=<%=rs4.getString(1)%>"> <img src="genres-photo/<%=rs4.getString(1)%>.jpg" alt="" ></a>
                                            <div class="album-info">
                                                <a href="genres-song.jsp?genres=<%=rs4.getString(1)%>">
                                                    <h5><%=rs4.getString(2)%></h5>
                                                </a>
                                                <p><%=rs4.getString(3)%></p>
                                            </div>
                                    </div>
                           <%
                                }
                            }
                            catch(Exception e){%><%=e.getMessage()%><%}
                        %>
                    </div>
                </div>
            </div>
        </div>
    </section>                        
    <!-- ##### Latest Albums Area End ##### -->
    <!-- ##### Buy Now Area End ##### -->
    <%@include file="footer.jsp" %>
</body>
</html>

