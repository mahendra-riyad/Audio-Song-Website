<%-- 
    Document   : song-search
    Created on : Jul 19, 2019, 1:58:06 PM
    Author     : MAHENDRA
--%>
<%@ page import="java.sql.*" %>
        <% 
           String song_name=request.getParameter("song_name");
           
          try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from song where song_name='"+song_name+"'");
                                                    if(rs.next()){
                                                              
        %>  <div class="col-12" id="song-detail">
                            <div class="album-info">  
                                 <span class="song_details" data-toggle="modal" data-target="#mediumModal" id="<%=rs.getString(1)%>" style=" cursor: pointer; font-size: 16px; letter-spacing: 4px; word-spacing: 8px; text-transform: capitalize;"><%=rs.getString(2)%>.Mp3
                                </span> 
                                <button class="play-on-click" data-toggle="modal" data-target="#mediumModal" id="<%=rs.getString(1)%>">play</button><br>
                                
                            </div>
                               
                    
                </div>
                                     <%
                                                }
else{
                                     %><span style="letter-spacing: 2px; word-spacing: 4px; text-align: center; ">Song Not Found Check Your Song Spelling </span><%
}
            }
            catch(Exception e){
                      System.out.println(e.getMessage());
                    }
          %> 

