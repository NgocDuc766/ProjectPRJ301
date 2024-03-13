/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    public Connection connection;
    public DBContext()
    {
        try {
            //Change the username password and url to connect your own database
            String username = "sa";
            String password = "123456";
            // connection between database and java by url
            String url = "jdbc:sqlserver://localhost:1433;databaseName=ASSIGNMENT_PRJ301";
            // sign-up JDBC driver for SQL
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // tạo và thiết lập kết nối đến csdl bằng cách dùng thông tin về url, username và password
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            // bắt lỗi xảy ra nếu không thực hiện được kết nối
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            
        }
    }
    
}

