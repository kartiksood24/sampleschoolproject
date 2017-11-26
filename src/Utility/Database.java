/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utility;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;



/**
 *
 * @author SOOD
 */
public class Database {
     Connection con;
     Statement stmt;
     public  Database() throws ClassNotFoundException
     {
        try {
             Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/school";
            con=(Connection) DriverManager.getConnection(url,"root","root"); 
            stmt=(Statement) con.createStatement();
        }
        catch(SQLException e){
        }
 
    }
     
     public ResultSet Excecute(String qry) throws SQLException //for get data or select
     {
         return stmt.executeQuery(qry);
     }
     
     public boolean Update(String qry) throws SQLException  //for insert,update and delete
     {
         stmt.executeUpdate(qry);
         return true;
     }
}
