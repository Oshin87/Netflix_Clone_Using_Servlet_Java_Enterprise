package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Entity.Movie;
import com.connector.Connector;

public class MovieDAO {

	public static List<Movie> getMovies() {
        List<Movie> list = new ArrayList<>();
        try {
            Connection con = Connector.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM movies");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Movie m = new Movie();
                m.setTitle(rs.getString("title"));
                m.setGenre(rs.getString("genre"));
                m.setImage(rs.getString("image"));
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public static boolean insert(Movie m) {
		boolean flag = false;
		Connection cn = Connector.getConnection();
		try {
			PreparedStatement ps = cn.prepareStatement("insert into movies(title,genre,image) values(?,?,?)");
			ps.setString(1, m.getTitle());
			ps.setString(2, m.getGenre());
			ps.setString(3, m.getImage());
			
			int f = ps.executeUpdate();
			if(f>0) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
}
