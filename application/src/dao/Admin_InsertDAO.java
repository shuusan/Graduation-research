package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.Admin_DTO;

public class Admin_InsertDAO {

	public static Admin_DTO insertUser(String[] array) {
		Admin_DTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO user VALUES (?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(array[0]));
			pstmt.setInt(2, Integer.parseInt(array[1]));
			pstmt.setString(3, array[2]);
			pstmt.setString(4, "password");
			pstmt.setInt(5, Integer.parseInt(array[3]));
			pstmt.setInt(6, Integer.parseInt(array[4]));
			pstmt.setString(7, array[5]);
			pstmt.executeUpdate();
			result = new Admin_DTO(
					Integer.parseInt(array[0]),
					Integer.parseInt(array[1]),
					array[2],
					"password",
					Integer.parseInt(array[3]),
					Integer.parseInt(array[4]),
					array[5]
				);
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void ankeetoInsert(String[] array){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO ankeeto VALUES (null,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(array[0]));
			pstmt.setString(2, array[1]);
			pstmt.setString(3, array[2]);
			pstmt.setString(4, array[3]);
			pstmt.setString(5, array[4]);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void decoInsert(String text){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO department_cose VALUES (null,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void topEveInsert(String text){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO top_event VALUES (null,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void midEveInsert(int num, String[] array){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "INSERT INTO middle_event VALUES (null,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, array[0]);
			pstmt.setString(3, array[1]);
			pstmt.setString(4, array[2]);
			pstmt.executeUpdate();
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
