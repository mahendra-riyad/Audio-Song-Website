<%-- 
    Document   : genres_photo
    Created on : Jun 17, 2019, 4:12:25 PM
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
    String random=request.getParameter("genres_code"); 
    try{
                
                    
                                                     Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                                                    Statement st = cn.createStatement();
                                                     st.execute("update genres set photo_status=1 where genres_id='"+random+"'");
                                                    
}
catch(Exception e){
                      System.out.println(e.getMessage());
} 
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
                    
saveFile=random+".jpg";
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
    
FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/genres-photo/"+saveFile);

// fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

response.sendRedirect("genres.jsp?id=success");
}catch (Exception e)
{
System.err.println ("Error writing to file");
%>
<h2> <%=e.getMessage()%></h2>
<%}
 
} %>
