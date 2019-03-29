/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.loginBean;
import database.dbConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class AdminloginCon {

    public int login(loginBean loginBean) {

        Connection currentCon = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        String email = loginBean.getEmail();
        String password = loginBean.getPassword();

        String query = "SELECT * FROM admin WHERE name=? && password=?";

        try {

            dbConnect dbConnect = new dbConnect();
            currentCon = dbConnect.Connect();
            System.out.println("Connection sucess");

            pstmt = currentCon.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                System.out.println("Login");
                return 2;
            } else {
                System.out.println("Error");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: " + e);
        }
        return 0;
    }
}
