<%-- 
    Document   : header_login.jsp
    Created on : Jul 2, 2019, 4:31:08 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
 <%@page import="javax.servlet.http.Cookie" %>
<%
    String email1=null;
    Cookie c1[]=request.getCookies();
    for(int i=0;i<c1.length;i++){
        if(c1[i].getName().equals("user")){
            email1=c1[i].getValue();
            break;
        }
    }
                             Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                    Statement st1 = cn1.createStatement();
                                    ResultSet rs8=st1.executeQuery("select *from user where email_id='"+email1+"'");
                                    if(rs8.next()){
        %>
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
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="albums-store.jsp">Albums</a></li>
                                    
                                    <li><a href="event.html">Events</a></li>
                                    <li><a href="blog.html">News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                    <li style="border:1px solid #009999; border-radius: 30px;; padding: 7px 23px;"><a href="#">Hii _<%=rs8.getString(2)%></a>
                                        <ul class="dropdown">
                                            <li><a href="">Edit profile</a></li>
                                            <li><a href="logout.jsp">Logout</a></li>
                                            
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
      <% }%>                                  
    <!-- ##### Header Area End ##### -->
    
    <% 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                    Statement st = cn.createStatement();
    %>

