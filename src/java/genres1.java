/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author MAHENDRA
 */
public class genres1 extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/genres";
    private String dbUser = "root";
    private String dbPass = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // gets values of text fields
        String genres = request.getParameter("genres");
        
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {

              Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(dbURL,dbUser,dbPass);
            
             int n=10;
           String abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
           StringBuilder sb=new StringBuilder(n);
           for(int i=0;i<n;i++){
               int index=(int)(abc.length()*Math.random());
               sb.append(abc.charAt(index));
               
           }
           String genres_id=sb.toString();
           

            String sql =("INSERT INTO genres (genres_id, genres, photo) values (?, ?, ?)");
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,genres_id);
            statement.setString(2, genres);
           

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream);
            }

            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                System.out.print("file upload");
            }
        } catch (Exception  ex) {
            System.out.print(ex.getMessage());
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                   System.out.print(ex.getMessage());
                }
            }
            // sets the message in request scope
        
        }
    }
}
