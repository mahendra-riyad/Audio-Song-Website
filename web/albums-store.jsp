<%-- 
    Document   : albums-store
    Created on : Jul 3, 2019, 2:40:17 AM
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
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>Latest Albums</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">
                        <a href="#" data-filter="*">Browse All</a>
                        <a href="#" data-filter=".a" class="active">A</a>
                        <a href="#" data-filter=".b">B</a>
                        <a href="#" data-filter=".c">C</a>
                        <a href="#" data-filter=".d">D</a>
                        <a href="#" data-filter=".e">E</a>
                        <a href="#" data-filter=".f">F</a>
                        <a href="#" data-filter=".g">G</a>
                        <a href="#" data-filter=".h">H</a>
                        <a href="#" data-filter=".i">I</a>
                        <a href="#" data-filter=".j">J</a>
                        <a href="#" data-filter=".k">K</a>
                        <a href="#" data-filter=".l">L</a>
                        <a href="#" data-filter=".m">M</a>
                        <a href="#" data-filter=".n">N</a>
                        <a href="#" data-filter=".o">O</a>
                        <a href="#" data-filter=".p">P</a>
                        <a href="#" data-filter=".q">Q</a>
                        <a href="#" data-filter=".r">R</a>
                        <a href="#" data-filter=".s">S</a>
                        <a href="#" data-filter=".t">T</a>
                        <a href="#" data-filter=".u">U</a>
                        <a href="#" data-filter=".v">V</a>
                        <a href="#" data-filter=".w">W</a>
                        <a href="#" data-filter=".x">X</a>
                        <a href="#" data-filter=".y">Y</a>
                        <a href="#" data-filter=".z">Z</a>
                        <a href="#" data-filter=".number">0-9</a>
                    </div>
                </div>
            </div>

            <div class="row oneMusic-albums">
                <!-- Single Album -->
                <%
                    int count=0;
                    ResultSet rs5=st.executeQuery("select * from album where delete1=0 ORDER BY date DESC");
                    
                    while(rs5.next()){
                      String album=rs5.getString(2);
                      char d=album.charAt(0);
                      char d1=album.charAt(1);
                      char d2=album.charAt(2);
                      count++;
                        if(count==13) break;
                 
                %>
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item <%=d%> <%=d1%> <%=d2%>">
                    <div class="single-album">
                        <img src="album-photo/<%=rs5.getString(1)%>.jpg" alt="">
                        <div class="album-info">
                            <a href="album_details.jsp?album=<%=rs5.getString(1)%>">
                                <h5><%=rs5.getString(2)%></h5>
                            </a>
                            <p><%=rs5.getString(3)%></p>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </section>
    <!-- ##### Album Catagory Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                <!-- Single Album Area -->
                <%   count=0;
                    ResultSet rs2=st.executeQuery("select * from album where delete1=0 ORDER BY views DESC");
                    
                    while(rs2.next()){
                      count++;
                        if(count==5) break;
                        %>
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-album-area">
                        <div class="album-thumb">
                            <a href="album_details.jsp?album=<%=rs2.getString(1)%>"><img src="album-photo/<%=rs2.getString(1)%>.jpg" alt=""></a>
                            
                        </div>
                        <div class="album-info">
                            <a href="album_details.jsp?album=<%=rs2.getString(1)%>">
                                <h5><%=rs2.getString(2)%></h5>
                            </a>
                            <p><%=rs2.getString(4)%></p>
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
