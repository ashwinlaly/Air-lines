/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package My_package;

import java.sql.*;

/**
 *
 * @author Dell
 */
public class DBConnection {
    
    static Connection con;
        
    public static Connection getConnection(){
        try {
          Class.forName("com.mysql.jdbc.Driver");
          try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/airlines","user","user");
          } catch (SQLException ex) {
               System.out.print(ex.getStackTrace());
          }
        } catch(Exception ex){
            System.out.print(ex.getStackTrace());
        }
        return con;
    }
}
