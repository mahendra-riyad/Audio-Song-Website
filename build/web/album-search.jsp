<%-- 
    Document   : album-search
    Created on : Jul 20, 2019, 4:22:36 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
        <% 
           String album_name=request.getParameter("album_name");
           
          try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from album where album_name='"+album_name+"' AND delete1=0");
                                                    if(rs.next()){
                                                              
        %>  <div class="col-12" id="song-detail">
                            <div class="album-info">  
                                <a href="album_details.jsp?album=<%=rs.getString(1)%>"> <span class="song_details" style=" cursor: pointer; font-size: 16px; letter-spacing: 4px; word-spacing: 8px; text-transform: capitalize;"><%=rs.getString(2)%>
                                    </span> </a>
                                <a href="album_details.jsp?album=<%=rs.getString(1)%>" class="play-on-click">view album</a>   
                               
                                
                            </div>
                               
                    
                </div>
                                     <%
                                                }
else{
                                     %><span style="letter-spacing: 2px; word-spacing: 4px; text-align: center; ">Album Not Found Check Your Album Spelling </span><%
}
            }
            catch(Exception e){
                      System.out.println(e.getMessage());
                    }
          %> 


