<%-- 
    Document   : header
    Created on : Jun 26, 2019, 7:39:16 PM
    Author     : MAHENDRA
--%>
<%@ page import="java.sql.*" %>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.jsp" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>
                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    
                                    <li><a href="albums-store.jsp">Albums</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="whatsnew.jsp" id="loginBtn" style="border-bottom: 1px solid #00aced;">What's New</a>
                                    </div>
                                    <div class="login-register-btn mr-50">
                                        <a href="search.jsp" id="loginBtn">Search</a>
                                    </div>
                                </div>
                               
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
    
    <%
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                    Statement st = cn.createStatement();
    %>
