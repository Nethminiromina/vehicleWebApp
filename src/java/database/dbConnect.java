/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class dbConnect {

    private String url = "jdbc:mysql://localhost:3306/finalProjectDB";
    private String user = "root";
    private String password = "";

    Connection con;

    public Connection Connect() throws ClassNotFoundException {
        con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");                    
            con = DriverManager.getConnection(url, user, password);
//            System.out.println("Connected");
            return con;
        } catch (SQLException e) {
            System.out.println("Error :" + e);
        }
        return con;
    }
}
