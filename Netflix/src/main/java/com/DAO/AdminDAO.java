package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Entity.Admin;
import com.connector.Connector;

public class AdminDAO {

	public static boolean login(Admin a) {
		boolean flag = false;
		Connection cn = Connector.getConnection();
		try {
			PreparedStatement ps = cn.prepareStatement("select email,password from admin where email=? and password=?");
			ps.setString(1, a.getEmail());
			ps.setString(2, a.getPass());
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
}
