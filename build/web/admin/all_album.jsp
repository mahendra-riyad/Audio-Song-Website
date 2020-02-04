<%-- 
    Document   : all_album
    Created on : Jun 15, 2019, 2:03:00 AM
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
<html lang="en">

<head>
 
    <title>one sound-albums</title>
   
    <%@include file="header.jsp" %>
       <style>
        #album51 {
    color:#3868cd;
}
</style>
</head>

<body class="animsition">
    <div class="page-wrapper">
    
        <div class="page-container2">
            <!-- HEADER DESKTOP-->
           
      
            <!-- END HEADER DESKTOP-->
                            <div class="modal fade" id="smallmodal" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel">Photo Insert</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
                                                        </button></div>
                                                        <div class="modal-body" id="javaquery">
                                                        
                             	
                                                        </div>
						</div>
						
					</div>
				</div>
            
            

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header" style="letter-spacing: 3px; word-spacing: 5px; font-weight: 500;text-align: center;"><b style="padding-top:20px;">
                                            ALL  ALBUMS	</b></div>
                                    <div class="card-body"> 
                                            <div class="row oneMusic-albums">
                                        
                                             <%
                                             try{
                                                    ResultSet rs = st.executeQuery("select * from album where delete1=0");
                                                    while(rs.next()){
                                                        String album_id =rs.getString(1);
                                                        String album_name=rs.getString(2);
                                            %>
                                            <div class="col-12 col-sm-4 col-md-3 col-lg-3 single-album-item t c p">
                                                
                    <div class="single-album">
                        <img src="../album-photo/<%=album_id%>.jpg" alt="">
                        <div class="album-info">
                            <a href="album_details.jsp?id=<%=rs.getString(1)%>">
                                <h5 style="letter-spacing: 2px; word-spacing: 4px; text-transform: uppercase;"><%=album_name%></h5>
                            </a>
                            <p><%=rs.getString(3)%></p>
                             <% if(rs.getInt(8)==0){
                            %> <button type="button" class="btn btn-success" id="<%=album_id%>" data-toggle="modal" data-target="#smallmodal">Photo Upload</button>
			<%	  
                            } %>
                        </div>
                    </div>
                </div>                             
                                            <%
                                                        
                                                    }     
                                                }
                                             catch(Exception e){
                                                    System.out.println(e.getMessage());
                                                }
                                             %>
                                                
                              <script>
                                $(document).ready(function(){
                                    $(".btn.btn-success").click(function(){
                                        var v=$(this).attr("id");
                                        
                                        $.post("album_photo_from.jsp",{photo_code:v},function(data){
                                            $("#javaquery").html(data);
                                           
                                        });
                                    });
                                });
                            </script>          
                                   
 
                                </div>
                                <!-- END USER DATA--> 
                    </div>
</body>

</html>
<%}%>
