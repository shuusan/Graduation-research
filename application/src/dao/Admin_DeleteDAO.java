package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class Admin_DeleteDAO {
	public static void deleteUser(ArrayList<Integer> list) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");

			for(int i=0; i<list.size();i++) {
				String sql = "DELETE FROM user where id = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, list.get(i));
				pstmt.executeUpdate();
				pstmt = null;
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}