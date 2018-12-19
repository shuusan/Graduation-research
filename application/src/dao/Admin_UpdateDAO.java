package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;

import dto.Admin_DTO;

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

	public static Admin_DTO updateUser2(String[] array) {
		Admin_DTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE user SET department_id = ?, name = ?, grade = ?, authority = ?, mail = ? WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(array[0]));
			pstmt.setString(2, array[1]);
			pstmt.setInt(3, Integer.parseInt(array[2]));
			pstmt.setInt(4, Integer.parseInt(array[3]));
			pstmt.setString(5, array[4]);
			pstmt.setInt(6, Integer.parseInt(array[5]));
			pstmt.executeUpdate();
			result = new Admin_DTO(
					Integer.parseInt(array[5]),
					Integer.parseInt(array[0]),
					array[1],
					"password",
					Integer.parseInt(array[2]),
					Integer.parseInt(array[3]),
					array[4]
				);
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void updateAnkeeto(String[] array, int id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE ankeeto SET top_eventID = ?, title = ?, url = ?, start_datetime = ?, end_datetime = ? WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(array[0]));
			pstmt.setString(2, array[1]);
			pstmt.setString(3, array[2]);
			pstmt.setString(4, array[3]);
			pstmt.setString(5, array[4]);
			pstmt.setInt(6, id);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void updateDeco(String text, int id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE department_cose SET name = ? WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
