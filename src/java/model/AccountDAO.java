/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
import java.sql.*;

public class AccountDAO extends MyDAO{
        public Account login(String username, String password){
            xSql = "select * from Account\n" +
                    "where username = ? and [password] = ? ";
            try{
                ps = con.prepareStatement(xSql);
                ps.setString(1, username);
                ps.setString(2, password);
                rs = ps.executeQuery();
                while(rs.next()){
                    return new Account(rs.getInt(1), 
                            rs.getString(2), 
                            rs.getString(3), 
                            rs.getString(4));
                }
            }catch(Exception e){
                e.printStackTrace();
            }
            
            return null;
        }
        
}
