<%-- 
    Document   : genres_edit
    Created on : Jul 8, 2019, 4:57:00 PM
    Author     : MAHENDRA
--%>

<%@ page import="java.sql.*" %>
        <% 
           String genres_code=request.getParameter("genres_id");
           
          try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from genres where genres_id='"+genres_code+"'");
                                                    if(rs.next()){
                                                        String genres_name=rs.getString(2);       
                                 %> <form method="post" action="genres_edit1.jsp?id=<%=genres_code%>">	
                                     <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> Genre Name :</label><br>
                                     <input type="text" name="genres" class="form-control cc-name valid" style=" letter-spacing: 2px; word-spacing: 4px; font-size: 14px;" value="<%=rs.getString(2)%>"><br>
                                     <label style=" letter-spacing: 2px; word-spacing: 4px; color:#00b5e9; font-size: 14px;">> About</label><br>
                                     <input type="text" name="title" class="form-control cc-name valid" style=" letter-spacing: 2px; word-spacing: 4px; font-size: 14px;" value="<%=rs.getString(3)%>"><br>           
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="float:left; width: 40%; padding: 15px;">Cancel</button>
                                    <input type="submit" name="insert" id="add-genres" value="Update" class="btn btn-primary" style="float:right;width: 40%; padding: 15px">  
                                    </form> 
                                    
                                     <%
                                                }
else{
       %>song not found<%                          
}
            }
            catch(Exception e){
                      System.out.println(e.getMessage());
                    }
          %> 

