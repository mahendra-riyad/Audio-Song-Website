<%-- 
    Document   : album_photo_from
    Created on : Jun 19, 2019, 2:59:11 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
        <% 
           String album_code=request.getParameter("photo_code");
           
           try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from album where album_id='"+album_code+"'");
                                                    if(rs.next()){
                                                              
        %> <form method="post" action="album_photo.jsp?album_code=<%=album_code%>" enctype="multipart/form-data">	
            <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Album Name : <span style="text-transform: uppercase; color: black;"><%=rs.getString(2)%></span></label><br>
                                     <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;font-style: serif;">> Photo Upload</label><br>
                                                 <input type="file" name="photo" class="form-control cc-name valid" placeholder="Upload Your Image" style="font-size: 14px;letter-spacing: 2px; word-spacing: 4px; padding:15px;" required/><br><br>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left; width: 40%; padding: 15px;">Cancel</button>
                                <input type="submit" name="insert" id="add-genres" value="Insert" class="btn btn-primary" style="float:right;width: 40%; padding: 15px">  
                                            </form> 
                                    
                                      <% 
                                                }
else{
                                 
}
            }
            catch(Exception e){
                      System.out.println(e.getMessage());
                    }
          %> 
