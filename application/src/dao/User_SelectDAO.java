package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import dto.User_DTO;

public class User_SelectDAO {

	//top_event
	public static ArrayList<User_DTO> top_event(){
		ArrayList<User_DTO> resultList = new ArrayList<User_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM top_event";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			do{
				int id = rs.getInt("id");
				String name = rs.getString("name");
				resultList.add(new User_DTO(id,name));
			}while(rs.next() == true );
			con.close();
		} catch (SQLException e){

			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	public static ArrayList<User_DTO> middle_event(int num){
		ArrayList<User_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM middle_event WHERE top_eventID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();
			do {
				String title = rs.getString("title");
				list.add(new User_DTO(title));
			}while(rs.next() == true );
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static HashMap<Integer, ArrayList<User_DTO>> bottom_event(){
		HashMap<Integer, ArrayList<User_DTO>> map = new HashMap<>();
		ArrayList<User_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM bottom_event";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			do {
				int id = rs.getInt("id");
				int middle_eventID = rs.getInt("middle_eventID");
				int display_flg = rs.getInt("display_flg");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				int authority = rs.getInt("authority");
				if(null!=map.get(middle_eventID)) {
					map.get(middle_eventID).add(new User_DTO(id, display_flg,title,contents,authority));
				}else {
					list.add(new User_DTO(id, display_flg,title,contents,authority));
					map.put(middle_eventID, list);
					list = new ArrayList<>();
				}
			}while(rs.next() == true );
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return map;
	}
}