<%-- 
    Document   : logout
    Created on : Jun 25, 2019, 1:02:59 AM
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
         %>kcjsdgjdk<%
    }
    else{
                     Cookie ct=new Cookie("admin",email);
                    ct.setMaxAge(0);
                    response.addCookie(ct);
                    response.sendRedirect("index.jsp");
                    %>mahendra<%
    }
%>