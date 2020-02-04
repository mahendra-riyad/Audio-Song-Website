<%-- 
    Document   : album1.jsp
    Created on : Jun 14, 2019, 12:31:02 AM
    Author     : MAHENDRA
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%  if(request.getParameter("album")==null || request.getParameter("date")==null ||request.getParameter("release_by")==null ||request.getParameter("category")==null ||request.getParameter("location")==null ||request.getParameter("about")==null ){
            response.sendRedirect("album.jsp?success=all_field");
    }
else{
    
    try{
              int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghigklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
         String random=sb.toString();
                    int count=0;
                    String album=request.getParameter("album");
                    String date=request.getParameter("date");
                    String release_by=request.getParameter("release_by");
                    String category=request.getParameter("category");
                    String location=request.getParameter("location");
                    String about=request.getParameter("about");
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/one-sound","root","");
                    Statement st = cn.createStatement();
                    
                    ResultSet rs=st.executeQuery("select * from album");
                    while(rs.next()){
                        String s=rs.getString(2);
                        if(s.compareToIgnoreCase(album)==0){
                            count++;
                        }
                       
                    }
                    if(count==0){
                        
                    st.execute("insert into album values('"+random+"','"+album+"','"+date+"','"+release_by+"','"+category+"','"+location+"','"+about+"',"+0+","+0+","+0+")");
                    cn.close();
                    response.sendRedirect("album.jsp?success=album_submit");
                    }
                    else{
                       response.sendRedirect("album.jsp?success=album_already_present");  
                    }
                
         }
            catch(Exception e){
             System.out.println(e.getMessage());
             %> <%=e.getMessage() %><%
          }
}
 /*
String contentType = request.getContentType();
System.out.println("Content type is :: " + contentType);
String imageSave=null;
byte dataBytes[]=null;
String saveFile=null;
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{
                  int n=10;
           String abc="ABCDEFGHIJK"+"012345678";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
           } 
           
         String random=sb.toString();
    
    
    
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
    
FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/album-photo/"+saveFile);

// fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();


}catch (Exception e)
{
System.err.println ("Error writing to file");

} 

} */
 %>