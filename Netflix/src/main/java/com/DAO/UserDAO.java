package com.DAO;

import com.connector.Connector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public static boolean login(String email, String password) {
        boolean status = false;
        try {
            Connection con = Connector.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                status = rs.next();
            }
            System.out.println("Login Sucessfull !!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public static void register(String email,String name,long number, String password,boolean status) {
        try {
            Connection con = Connector.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO users(email,name,phone_no,password,payment_status) VALUES(?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, name);
            ps.setLong(3, number);
            ps.setString(4, password);
            ps.setBoolean(5, status);
            ps.executeUpdate();
            System.out.println("Registration Sucessfull !!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}