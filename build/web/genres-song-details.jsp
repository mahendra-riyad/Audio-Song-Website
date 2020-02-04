<%-- 
    Document   : genres-song-details
    Created on : Jul 16, 2019, 4:42:51 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
        <% 
           String song_code=request.getParameter("song_code");
           
          try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from song where song_code='"+song_code+"'");
                                                    if(rs.next()){
                                                              
        %> 
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="mediumModalLabel" style="font-weight: lighter; letter-spacing: 4px; word-spacing: 8px;">Song Details</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="oneMusic-buy-now-area mb-100">
                                                            <div class="container">
                                                                <div class="row" style=" box-shadow: 2px 0px 5px 0px #009999; padding: 5px;">
                                                                    <div class="col-12 col-sm-6" style="text-align:center; padding:20px; ">
                                                                        <img src="song-photo/<%=rs.getString(1)%>.jpg" alt="">
                                                                    </div>
                                                                    <div class="col-12 col-sm-6" style="text-align:center; padding-top: 20px;">
                        <div class="album-info">
                            <p style="letter-spacing:2px; word-spacing: 4px; margin-top :10px;">Song Name -<a href="" style="color: #009999; text-transform: capitalize;">  <%=rs.getString(2)%></a></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Release Date -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(7)%></span></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Tags -<span style="color: #009999; text-transform: capitalize;">#<%=rs.getString(6)%></span></p>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Words/Music -<span style="color: #009999; text-transform: capitalize;">  <%=rs.getString(8)%></span></p>
                                                <%
                                                  try{  ResultSet rs1 = st.executeQuery("select * from album where album_id='"+rs.getString(5)+"'");
                                                            if(rs1.next()){
                                                %>
                                                <p style="letter-spacing:2px; word-spacing: 4px; margin-bottom: 10px;">Album - <a href="album_details.jsp?album=<%=rs1.getString(1)%>" style="color: #009999; text-transform: capitalize;">  <%=rs1.getString(2)%></a></p>
                                             <%             }
                                                   }catch(Exception e){%><%=e.getMessage()%><%}                                           %>
                        </div>
                                                                    </div></div>
                        <div class="row">
                            <audio preload="auto" controls class="audio-set" autoplay="autoplay">
                                    <source src="song/<%=song_code%>.mp3">
                                </audio>
                        </div>
                            
						
                                     <%
                                                }
else{
                                 
}
            }
            catch(Exception e){
                      System.out.println(e.getMessage());
                    }
          %> 
