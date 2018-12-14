package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;

public class Admin_UpdateDAO {
	public static void updateUser(HashMap<String, String> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");

			for (Iterator<String> n = map.keySet().iterator(); n.hasNext();){
				String column = n.next();
				String[] array = column.split(" ");
				String sql = "UPDATE user set "+ array[0] +" = ? where id = ?";
				System.out.println(array[0]);
				System.out.println(map.get(column));
				System.out.println(array[1]);
				System.out.println();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, map.get(column));
				pstmt.setInt(2, Integer.parseInt(array[1]));
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
