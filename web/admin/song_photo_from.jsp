<%-- 
    Document   : song_photo_from
    Created on : Jun 23, 2019, 2:23:32 AM
    Author     : MAHENDRA
--%>


<%@ page import="java.sql.*" %>
        <% 
           String song_code=request.getParameter("photo_code");
           
        
                    
                   
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from song where song_code='"+song_code+"'");
                                                    while(rs.next()){
                                                      String song_name=rs.getString(2);  
                                                     
                                                    
        %> <form method="post" action="song_photo.jsp?song_code=<%=song_code %>" enctype="multipart/form-data">	
                                     <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Song Name : <span style="text-transform: uppercase; color: black;"><%=song_name%></span></label><br>
                                     <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Photo Upload</label><br>
                                                 <input type="file" name="photo" class="form-control cc-name valid" placeholder="Upload Your Image" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required/><br><br>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left; width: 40%; padding: 15px;">Cancel</button>
                                <input type="submit" name="insert" id="add-genres" value="Insert" class="btn btn-primary" style="float:right;width: 40%; padding: 15px">  
                                            </form> 
                                     <%}%>
                                     
                                    

