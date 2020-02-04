<%-- 
    Document   : category
    Created on : Jul 20, 2019, 5:17:26 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%@page import="javax.servlet.http.Cookie" %>
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
</head>
<body>
    <%
        String category_code=request.getParameter("category");
    %>
<%@include file="header.jsp" %>
			<!-- modal medium -->
			<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content" id="javaquery" style="background-color : #ccffcc">
						
					</div>
				</div>
			</div>
			<!-- end modal medium -->
                        
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/m.jpg); background-position: top;">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <% try{
                ResultSet rs4=st.executeQuery("select * from category where category_code='"+category_code+"'");
                if(rs4.next()){
                    String category_name=rs4.getString(2);
                    %><h2><%=rs4.getString(2)%> Songs</h2><%
                }
            }catch(Exception e2){%><%=e2.getMessage()%><%}%>
            
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->   
       <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container"> 
            <div class="row" style="margin-top:40px;">
                <div class="song-list">
                <span >Mp3 Songs List</span>
                </div>
                <!-- Single Album Area -->
                <%  int count=0;
                   ResultSet rs2=st.executeQuery("select * from song where song_delete=0 AND category='"+category_code+"'");
                    rs2.afterLast();
                    while(rs2.previous()){
                        count++;
                        if(count==16) break;
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
   <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                 <div class="song-list">
                <span >New Release Albums</span>
                </div>
                <!-- Single Album Area -->
                <%   count=0;
                ResultSet rs4=st.executeQuery("select * from category where category_code='"+category_code+"'");
                if(rs4.next()){
                   ResultSet rs=st.executeQuery("select * from album where delete1=0 AND (category ='"+rs4.getString(2)+"' OR category ='"+rs4.getString(1)+"')");
                    
                    while(rs.next()){
                      count++;
                        if(count==5) break;
                        %>
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-album-area">
                        <div class="album-thumb">
                            <a href="album_details.jsp?album=<%=rs.getString(1)%>"> <img src="album-photo/<%=rs.getString(1)%>.jpg" alt=""></a>
                        </div>
                        <div class="album-info">
                            <a href="album_details.jsp?album=<%=rs.getString(1)%>">
                                <h5><%=rs.getString(2)%></h5>
                            </a>
                            <p><%=rs.getString(4)%></p>
                        </div>
                    </div>
                </div>
                   <%}
}%>
            </div>

            
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->           
                             <script>
                                $(document).ready(function(){
                                    $(".song_details,.play-on-click").click(function(){
                                        var v=$(this).attr("id");
                                        $.post("genres-song-details.jsp",{song_code:v},function(data){
                                            $("#javaquery").html(data);
                                          
                                           
                                        });
                                    });
                                });
                            </script> 
    <!-- ##### Buy Now Area End ##### -->
    <%@include file="footer.jsp" %>
</body>
</html>

