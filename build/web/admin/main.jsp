<%-- 
    Document   : main
    Created on : Jun 10, 2019, 4:27:24 PM
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
<style>
    .new-hits-area {
  position: relative;
  z-index: 1;
  padding: 45px 30px;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  }
  .new-hits-area .single-new-item {
    position: relative;
    z-index: 1;
    border-bottom: 1px solid #d8d8d8;
    margin-bottom: 10px;
    padding-bottom: 10px; }
    .new-hits-area .single-new-item:last-child {
      margin-bottom: 0;
      border-bottom: none;
      padding-bottom: 0; }
    .new-hits-area .single-new-item .thumbnail {
      -webkit-box-flex: 0;
      -ms-flex: 0 0 73px;
      flex: 0 0 73px;
      max-width: 73px;
      width: 73px;
      margin-right: 50px; }
    .new-hits-area .single-new-item .content- h6 {
      text-transform: uppercase;
      margin-bottom: 0; }
    .new-hits-area .single-new-item .content- p {
      font-size: 14px;
      margin-bottom: 0; }
    .new-hits-area .single-new-item .audioplayer {
      margin: 0;
      padding: 0;
      width: auto;
      height: auto;
      border: none;
      border-radius: 0;
      background: transparent; }
    .new-hits-area .single-new-item .audioplayer-playing .audioplayer-playpause,
    .new-hits-area .single-new-item .audioplayer:not(.audioplayer-playing) .audioplayer-playpause:hover,
    .new-hits-area .single-new-item .audioplayer:not(.audioplayer-playing) .audioplayer-playpause {
      background: #d6d6d6; }
    .new-hits-area .single-new-item .audioplayer:not(.audioplayer-playing) .audioplayer-playpause a {
      border-left: 12px solid #fff; }
    .new-hits-area .single-new-item .audioplayer-time,
    .new-hits-area .single-new-item .audioplayer-volume,
    .new-hits-area .single-new-item .audioplayer-bar {
      display: none; }
</style>
<style>
.play-on-click{
   letter-spacing: 3px;
   border-radius: 8px;
   padding: 5px 20px;
   transition: 1s;
   backface-visibility: hidden;
   animation-timing-function: ease-out;
   transform: translate(-50%,-50);
}
.play-on-click:hover{
   border:1px solid crimson; 
   letter-spacing: 8px;
   transform: translate(-50%,-50);
}

</style>
<!DOCTYPE html>
<html lang="en">

<head>

 <style>
        #deshboard5 {
    color:#3868cd;
}
 .audio-set{
            width: 100%;
            margin-top: 20px;
            background-color: black;
        }
</style>
</head>

<body class="animsition">
    <!-- modal medium -->
			<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content" id="javaquery" style="background-color : #ccffcc">
						
					</div>
				</div>
			</div>
			<!-- end modal medium -->
                        
    <div class="page-wrapper">
        
        <div class="page-container2">
            
            <!-- STATISTIC-->
            <section class="statistic" style="margin-top:50px;">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">
                                <div class="statistic__item">
                                    <%  int numberRow=0;
                                        try{
                                            
                                        ResultSet rs=st.executeQuery("select COUNT(*) from song where song_delete=0");
                                        while(rs.next()){
                                            numberRow = rs.getInt("count(*)");
                                        }
                                        }catch(Exception e){%><%=e.getMessage()%><%} 
                                    %>
                                    <h2 class="number"><%=numberRow %></h2>
                                    <span class="desc">total song</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="statistic__item">
                                    <%   numberRow=0;
                                        try{
                                            
                                        ResultSet rs=st.executeQuery("select COUNT(*) from album where delete1=0");
                                        while(rs.next()){
                                            numberRow = rs.getInt("count(*)");
                                        }
                                        }catch(Exception e){%><%=e.getMessage()%><%} 
                                    %>
                                    <h2 class="number"><%=numberRow %></h2>
                                    <span class="desc">total album</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-shopping-cart"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="statistic__item">
                                    <%   numberRow=0;
                                        try{
                                            
                                        ResultSet rs=st.executeQuery("select COUNT(*) from genres where delete1=0");
                                        while(rs.next()){
                                            numberRow = rs.getInt("count(*)");
                                        }
                                        }catch(Exception e){%><%=e.getMessage()%><%} 
                                    %>
                                    <h2 class="number"><%=numberRow %></h2>
                                    <span class="desc">total genres</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-calendar-note"></i>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-7">
                                <!-- RECENT REPORT 2-->
                                <div class="recent-report2">
                                    <h3 class="title-3"> Top Songs</h3>
                                    
                                    <div class="recent-report__chart">
                                        
                                                            <!-- ***** Weeks Top ***** -->
                 
                    <div class="new-hits-area mb-100">
                        <!-- Single Top Item -->
                        <%
                            try{
                                
                               int count=0;
                                ResultSet rs7=st.executeQuery("select * from song where song_delete=0 ORDER BY views DESC");
                                while(rs7.next()){
                                    count++;
                                    if(count==11) break;
                        %>
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="../song-photo/<%=rs7.getString(1)%>.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6><%=rs7.getString(2)%></h6>
                                    <p># <%=rs7.getString(6)%></p>
                                </div>
                            </div>
                                <button class="play-on-click" data-toggle="modal" data-target="#mediumModal" id="<%=rs7.getString(1)%>">play</button>
                        </div>
                        <%      }
                            }
                            catch(Exception e){
                        %><h3><%=e.getMessage()%></h3><%
                        }%>
                    </div>
                </div>
                
                            <script>
                                $(document).ready(function(){
                                    $(".play-on-click").click(function(){
                                        var v=$(this).attr("id");   
                                        $.post("main-song-play.jsp",{song_code:v},function(data){
                                            $("#javaquery").html(data);
                                        });
                                    });
                                });
                            </script> 
                                    
                                </div>
                                <!-- END RECENT REPORT 2             -->
                            </div>
                            <div class="col-xl-5">
                                <!-- TASK PROGRESS-->
                                <div class="task-progress">
                                    <h3 class="title-3">Top Album</h3>
                                    <div class="au-skill-container">
                                        <div class="au-progress">
                                           <div class="new-hits-area mb-100">
                        <!-- Single Top Item -->
                        <%
                            try{
                                
                               int count=0;
                                ResultSet rs7=st.executeQuery("select * from album where delete1=0 ORDER BY views DESC");
                                while(rs7.next()){
                                    count++;
                                    if(count==11) break;
                        %>
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="../album-photo/<%=rs7.getString(1)%>.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <a href="album_details.jsp?id=<%=rs7.getString(1)%>"> <h6><%=rs7.getString(2)%></h6></a>
                                    <p>... <%=rs7.getString(4)%></p>
                                </div>
                            </div>
                        </div>
                        <%      }
                            }
                            catch(Exception e){
                        %><h3><%=e.getMessage()%></h3><%
                        }%>
                    </div>
                
                                        </div>
                                    </div>
                                </div>
                                <!-- END TASK PROGRESS-->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
        </div>

    </div>



</body>

</html>

<%}%>
<!-- end document-->
