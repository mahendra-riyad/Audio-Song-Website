<%-- 
    Document   : search
    Created on : Jul 19, 2019, 4:39:18 AM
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
.single-album-area{
   text-align: center;
   transition: 1s;
}

.single-album-area:hover{
   
    box-shadow: 0px 2px 20px 0px #ccffcc;
    
}

    </style>
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
                        
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/search.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>search filter</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row" style="margin-top:50px;">
                <div class="song-list">
                <span >Songs Search By Name</span>
                </div>
                <div class="song-search" style="width:100%;">
                    <input type="text" class="song-enter" name="search-song" placeholder="Enter Song Name" style="float:left; width: 80%; padding: 15px 30px; letter-spacing: 4px; word-spacing: 8px;">
                    <button class="song-submit" style="float: right;width: 20%;  padding: 15px 30px; letter-spacing: 4px; word-spacing: 8px;">search</button>
                </div>
                <div  id="song-search" style="width:100%; margin-top:20px;"></div>
                </div>
             </div>   
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->
    
        <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row" style="margin-top:50px;">
                <div class="song-list">
                <span >Songs Search By Album</span>
                </div>
                <div class="song-search" style="width:100%;">
                    <input type="text" class="album-enter" placeholder="Enter Album Name" style="float:left; width: 80%; padding: 15px 30px; letter-spacing: 4px; word-spacing: 8px;">
                    <button class="album-submit" style="float: right;width: 20%;  padding: 15px 30px; letter-spacing: 4px; word-spacing: 8px;">search</button>
                </div>
                <div  id="album-search" style="width:100%; margin-top:20px;"></div>
                </div>
             </div>   
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->
            
                             <script>
                                $(document).ready(function(){
                                    $(".song-submit").click(function(){
                                        var v=$(".song-enter").val();                                       
                                        $.post("song-search.jsp",{song_name:v},function(data){
                                            $("#song-search").html(data);
                                          
                                          
                                        });
                                    });
                                });
                            </script> 
                             <script>
                                $(document).ready(function(){
                                    $(".album-submit").click(function(){
                                        var v=$(".album-enter").val();  
                                       
                                        $.post("album-search.jsp",{album_name:v},function(data){
                                            $("#album-search").html(data);
                                        });
                                    });
                                });
                            </script> 
    <!-- ##### Buy Now Area End ##### -->
    
        <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                <!-- Single Album Area -->
                <%  
                    ResultSet rs2=st.executeQuery("select * from category where status=0");
  
                    while(rs2.next()){
                    
                        %>
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-album-area">
                        <div class="album-info">
                            <a href="category.jsp?category=<%=rs2.getString(1)%>">
                                <h5><%=rs2.getString(2)%></h5>
                            </a>
                        </div>
                    </div>
                </div>
                   <%}%>                
            </div>

            
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->
    <%@include file="footer.jsp" %>
</body>
</html>

