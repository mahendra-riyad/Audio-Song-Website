<%-- 
    Document   : logout
    Created on : Jul 3, 2019, 2:08:27 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
<%@page import="javax.servlet.http.Cookie" %>
<%
    String email=null;
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("user")){
            email=c[i].getValue();
            break;
        }
    }
    if(email==null){
        response.sendRedirect("index.jsp?please_login");
    }
    else{
                     Cookie ct=new Cookie("user",email);
                    ct.setMaxAge(0);
                    response.addCookie(ct);
                    response.sendRedirect("index.jsp?logout=1");
                   
    }
%>