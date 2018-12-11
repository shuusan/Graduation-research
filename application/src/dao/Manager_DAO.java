package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Manager_DTO;

public class Manager_DAO {

	public static ArrayList<Manager_DTO> aqList(int num){
		ArrayList<Manager_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT id,title FROM question WHERE top_eventNo = ? ORDER BY answer IS NULL DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new Manager_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static Manager_DTO anResponse(int num){
		Manager_DTO dto = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT id,title,content,answer FROM question WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String content= rs.getString("content");
			String answer= rs.getString("answer");
			dto = new Manager_DTO(id,title,content,answer);
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public static void submit(String text,int id){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE question SET answer = ? WHERE id = ?";
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

	public static void tiUpdate(String text,int id){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "UPDATE question SET ? WHERE id = ?";
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
