package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class User_UpdateDAO {
	/*Setting*/
	public static void passwordUpdate(String text, int num){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE user set password = ? where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static void mailUpdate(String text, int num){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE user set mail = ? where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
