/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Code;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public static Connection connet(){
        Connection conn = null;
        
          String url,user,pass;
          
          url = "jdbc:mysql://localhost:3306/sms?userSSL=true";
          user = "root";
          pass = "";
          
          try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             conn = DriverManager.getConnection(url,user,pass);
             System.out.println("Driver Loaded");
          } catch (Exception e){
              System.err.println("Not Loaded Driver");
          }
        
        return conn;
    }
}

    

