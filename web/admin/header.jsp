<%-- 
    Document   : header
    Created on : Jun 20, 2019, 2:58:03 AM
    Author     : MAHENDRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ page import="java.sql.*" %>
        <%@page import="javax.servlet.http.Cookie" %>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    
    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
        <style>
        .single-album {
  position: relative;
  z-index: 1;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  margin-bottom: 30px; }
  .single-album img {
    width: 100%;
    height: 30%;}
  .single-album .album-info {
    position: relative;
    z-index: 1;
    text-align: center;
    padding-top: 15px;
    padding-bottom: 15px; }
    .single-album .album-info h5 {
      font-size: 18px;
      margin-bottom: 0;
      text-transform: uppercase; }
    .single-album .album-info p {
      margin-bottom: 0; }
  .single-album:hover, .single-album:focus {
    box-shadow: 0 5px 70px 0 rgba(0, 0, 0, 0.15); }

.single-album-area {
  position: relative;
  z-index: 1;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  margin-bottom: 30px; }
  .single-album-area .album-thumb {
    position: relative;
    z-index: 1; }
    .single-album-area .album-thumb .album-price p {
      position: absolute;
      top: 15px;
      left: 15px;
      background-color: #fff;
      margin-bottom: 0;
      line-height: 1;
      padding: 5px 15px;
      border-radius: 15px;
      z-index: 20; }
    .single-album-area .album-thumb .play-icon a {
      color: #fff;
      font-size: 50px;
      position: absolute;
      top: 50%;
      left: 50%;
      line-height: 1;
      -webkit-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%); }
  .single-album-area img {
    width: 100%; }
  .single-album-area .album-info {
    display: block;
    position: relative;
    z-index: 1;
    padding-top: 15px;
    padding-bottom: 15px; }
    .single-album-area .album-info h5 {
      font-size: 18px;
      margin-bottom: 0;
      text-transform: uppercase; }
    .single-album-area .album-info p {
      margin-bottom: 0; }

.albums-slideshow {
  position: relative;
  z-index: 1; }
  .albums-slideshow .single-album {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    margin-bottom: 0;
    border: 1px solid transparent; }
    .albums-slideshow .single-album:hover, .albums-slideshow .single-album:focus {
      border: 1px solid #000000;
      box-shadow: none;
      background-color: #f5f9fa; }
  .albums-slideshow .owl-prev,
  .albums-slideshow .owl-next {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    background-color: #fff;
    position: absolute;
    width: 50px;
    height: 50px;
    border: 1px solid #000000;
    top: 50%;
    left: -25px;
    margin-top: -50px;
    z-index: 50;
    text-align: center;
    line-height: 48px;
    opacity: 0;
    visibility: hidden; }
    @media only screen and (max-width: 767px) {
      .albums-slideshow .owl-prev,
      .albums-slideshow .owl-next {
        left: 0; } }
    .albums-slideshow .owl-prev:hover, .albums-slideshow .owl-prev:focus,
    .albums-slideshow .owl-next:hover,
    .albums-slideshow .owl-next:focus {
      background-color: #000000;
      color: #fff; }
  .albums-slideshow .owl-next {
    left: auto;
    right: -25px; }
    @media only screen and (max-width: 767px) {
      .albums-slideshow .owl-next {
        right: 0; } }
  .albums-slideshow:hover .owl-prev,
  .albums-slideshow:hover .owl-next {
    opacity: 1;
    visibility: visible; }
    </style>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar2">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="images/icon/avatar-01 -.jpg" alt="Mahendra" />
                    </div>
                    <h4 class="name">mahendra riyad</h4>
                    <a href="logout.jsp">Sign out</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li >
                            <a class="js-arrow" href="main.jsp" id="deshboard5">
                                <i class="fas fa-tachometer-alt"></i>Dashboard
                            
                            </a>

                        </li>
                        <li>
                            <a href="category.jsp" id="category5">
                                <i class="fas fa-shopping-basket"></i>Add Category</a>
                        </li>
                        <li>
                            <a href="genres.jsp" id="genres5">
                                <i class="fa fa-music"></i>genres</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#" id="album5">
                                <i class="fas fa-copy"></i>Albums
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="album.jsp" id="album5">
                                        <i class="fas fa-sign-in-alt"></i>New Albums</a>
                                </li>
                                
                                <li>
                                    <a href="all_album.jsp" id="#album51">
                                        <i class="fas fa-unlock-alt"></i>All Albums</a>
                                </li>
                            </ul>
                            <li>
                            <a href="message.jsp" id="message5">
                                <i class="fa fa-envelope"></i>Message</a>
                            </li>
                        </li>
                        
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container2">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop2" style="background-color:#366cad;">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap2">
                            <div class="logo d-block d-lg-none">
                                <a href="#">
                                    <img src="images/icon/logo.png" alt="one sound" />
                                </a>
                            </div>
                            <div class="header-button2">
<!--                                <div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-search"></i>
                                    <div class="search-dropdown js-dropdown">
                                        <form action="">
                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Search for datas &amp; reports..." />
                                            <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                        </form>
                                    </div>
                                </div>-->
                               
                                <div class="header-button-item mr-0 js-sidebar-btn">
                                    <i class="zmdi zmdi-menu"></i>
                                </div>
                             <!--  <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-account"></i>Account</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-money-box"></i>Billing</a>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-globe"></i>Language</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-pin"></i>Location</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-email"></i>Email</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-notifications"></i>Notifications</a>
                                        </div>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    </div>
            </header>
            <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                <div class="logo">
                    <a href="#">
                        <img src="images/icon/logo-white.png" alt="one sound" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar2">
                    <div class="account2">
                        <div class="image img-cir img-120">
                            <img src="images/icon/avatar-big-01.jpg" alt="Mahendra Riyad" />
                        </div>
                        <h4 class="name">Mahendra Riyad</h4>
                        <a href="logout.jsp">Sign out</a>
                    </div>
                    <nav class="navbar-sidebar2">
                         <ul class="list-unstyled navbar__list">
                        <li >
                            <a class="js-arrow" href="main.jsp" id="deshboard5">
                                <i class="fas fa-tachometer-alt"></i>Dashboard
                            
                            </a>

                        </li>
                        <li>
                            <a href="category.jsp" id="category5">
                                <i class="fas fa-shopping-basket"></i>Add Category</a>
                        </li>
                        <li>
                            <a href="genres.jsp" id="genres5">
                                <i class="fa fa-music"></i>genres</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#" id="album5">
                                <i class="fas fa-copy"></i>Albums
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="album.jsp" id="album5">
                                        <i class="fas fa-sign-in-alt"></i>New Albums</a>
                                </li>
                                
                                <li>
                                    <a href="all_album.jsp" id="#album51">
                                        <i class="fas fa-unlock-alt"></i>All Albums</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                    </nav>
                </div>
            </aside> 
                            </div></div></div></div></header></div></div>


<%
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
%>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <script src="vendor/vector-map/jquery.vmap.js"></script>
    <script src="vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

       
    </body>
</html>
