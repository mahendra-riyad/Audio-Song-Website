<%-- 
    Document   : song_mp3
    Created on : Jun 23, 2019, 2:51:48 AM
    Author     : MAHENDRA
--%>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%  
    
String contentType = request.getContentType();
System.out.println("Content type is :: " + contentType);
String imageSave=null;
byte dataBytes[]=null;
String saveFile=null;
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{         
    String random=request.getParameter("song_code");
    int status=1;
   try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                     st.execute("update song set song_status="+status+" where song_code='"+random+"'");
                                                    
}
catch(Exception e){
                      System.out.println(e.getMessage());
 } 
      Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                        ResultSet rs=st.executeQuery("select * from song where song_code='"+random+"'");
                                                     if(rs.next()){
                                                         String album_code=rs.getString(5);
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
dataBytes = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength)
{
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                    
saveFile=random+".mp3";
// out.print(dataBytes);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1, contentType.length());
// out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
try
{
    
FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/song/"+saveFile);

// fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

response.sendRedirect("album_details.jsp?id="+album_code);
}catch (Exception e)
{
System.err.println ("Error writing to file");
%>
<h2> <%=e.getMessage()%></h2>
<%}
}
} %>

