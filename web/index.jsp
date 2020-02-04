<%-- 
    Document   : index
    Created on : Jun 9, 2019, 8:03:10 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%@page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>One sound</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>
<body>
<%@include file="header.jsp" %>

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
                <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/m.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <%  int count=0;
                                    
                                    ResultSet rs=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    while(rs.next()){
                                    
                                        count++;
                                %><h2 data-animation="fadeInUp" data-delay="300ms" style="text-transform: capitalize;"><%=rs.getString(2)%> <span><%=rs.getString(2)%></span></h2><%
                                    if(count==1){break;}
                                    }
                                %>
                                
                                
                                <a data-animation="fadeInUp" data-delay="500ms" href="album_details.jsp?album=<%=rs.getString(1)%>" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
                            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/m1.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                 <%   ResultSet rs1=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    count=0;
                                    while(rs1.next()){
                                    
                                        count++;
                                    if(count==2){
                                %><h2 data-animation="fadeInUp" data-delay="300ms" style="text-transform: capitalize;"><%=rs1.getString(2)%> <span><%=rs1.getString(2)%></span></h2><%
                                    break;}
                                    }
                                %>
                                <a data-animation="fadeInUp" data-delay="500ms" href="album_details.jsp?album=<%=rs1.getString(1)%>" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-1.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                             <%   ResultSet rs2=st.executeQuery("select * from album where delete1=0 ORDER BY date ");
                                    
                                    count=0;
                                    while(rs2.next()){
                                    
                                        count++;
                                    if(count==3){
                                %><h2 data-animation="fadeInUp" data-delay="300ms" style="text-transform: capitalize;"><%=rs2.getString(2)%> <span><%=rs2.getString(2)%></span></h2><%
                                    break;}
                                    }
                                %>
                                
                                <a data-animation="fadeInUp" data-delay="500ms" href="album_details.jsp?album=<%=rs2.getString(1)%>" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <%   ResultSet rs3=st.executeQuery("select * from album where delete1=0 ORDER BY date");
                                    
                                    count=0;
                                    while(rs3.next()){
                                    
                                        count++;
                                    if(count==4){
                                %><h2 data-animation="fadeInUp" data-delay="300ms" style="text-transform: capitalize;"><%=rs3.getString(2)%> <span><%=rs3.getString(2)%></span></h2><%
                                    break;}
                                    }
                                %>
                                
                                <a data-animation="fadeInUp" data-delay="500ms" href="album_details.jsp?album=<%=rs3.getString(1)%>" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->
    <!-- ##### Latest Albums Area Start ##### -->
      <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>See what’s new</p>
                        <h2>Latest Genres</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-12 col-lg-9">
                    <div class="ablums-text text-center mb-70">
                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>
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

      <!-- ##### Featured Artist Area Start ##### -->
    <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(img/bg-img/bg-4.jpg);">
        <div class="container">
            <div class="row align-items-end">
                <%  try{
                                ResultSet rs6=st.executeQuery("select * from song where song_delete=0 ORDER BY date DESC");
                                
                                if(rs6.next()){
                    %>
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="featured-artist-thumb">
                        <img src="song-photo/<%=rs6.getString(1) %>.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="featured-artist-content">
                        <!-- Section Heading -->
                        <div class="section-heading white text-left mb-30">
                            <p>See what’s new</p>
                            <h2>Buy What’s New</h2>
                        </div>
                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. <%=rs6.getString(2)%></p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="song/<%=rs6.getString(1)%>.mp3">
                            </audio>
                        </div>
                    </div>
                </div>
                 <%}
                }
                catch(Exception e){%><h2><%=e.getMessage()%></h2><%}
                %>
            </div>
        </div>
    </section>
    <!-- ##### Featured Artist Area End ##### -->
    
    
    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>See what’s new</p>
                        <h2>Buy What’s New</h2>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Album Area -->
                <%
                    count=0;
                    ResultSet rs5=st.executeQuery("select * from album where delete1=0");
                    rs5.afterLast();
                    while(rs5.previous()){
                        count++;
                        if(count==13) break;
                 
                %>
                <div class="col-12 col-sm-6 col-md-4 col-lg-2"  style="text-align: center;">
                    <div class="single-album-area wow fadeInUp" data-wow-delay="100ms">
                        <div class="album-thumb">
                            <a href="album_details.jsp?album=<%=rs5.getString(1)%>"><img src="album-photo/<%=rs5.getString(1) %>.jpg" alt=""></a>
                            <!-- Play Icon -->
                           
                        </div>
                            <div class="album-info">
                            <a href="album_details.jsp?album=<%=rs5.getString(1)%>">
                                <h5><%=rs5.getString(2)%></h5>
                            </a>
                            <p><%=rs5.getString(3)%></p>
                        </div>
                    </div>
                </div>
                <%    } %>


            </div>

            <div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center wow fadeInUp" data-wow-delay="300ms">
                        <a href="albums-store.jsp" class="btn oneMusic-btn">Load More <i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Buy Now Area End ##### -->

  

  
    <!-- ##### Miscellaneous Area End ##### -->

    <%@include file="footer.jsp" %>
</body>
</html>
