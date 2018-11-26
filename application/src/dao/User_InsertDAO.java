package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class User_InsertDAO {
	public static void questionInsert(String text, String text1,int num){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO question VALUES (null,4171204,1,?,?,null,1,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.setString(2, text1);
			pstmt.setInt(3, num);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
