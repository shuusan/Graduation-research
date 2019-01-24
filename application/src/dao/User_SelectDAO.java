package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
			String sql = "SELECT * FROM top_event ORDER BY id ASC";
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

	public static ArrayList<User_DTO> middle_event(int num,String date){
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
			String sql = "SELECT title FROM middle_event WHERE top_eventID = ? AND start_datetime LIKE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, date+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String title = rs.getString("title");
				list.add(new User_DTO(title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static HashMap<Integer, ArrayList<User_DTO>> bottom_event(int num,String date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
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
			String sql = "SELECT * FROM bottom_event WHERE top_eventID = ? AND start_datetime LIKE ? ORDER BY start_datetime ASC";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, date+"%");
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				int middle_eventID = rs.getInt("middle_eventID");
				int display_flg = rs.getInt("display_flg");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				int authority = rs.getInt("authority");

				StringBuilder start_datetime = new StringBuilder(rs.getString("start_datetime").substring(0,16));
				StringBuilder end_datetime = new StringBuilder(rs.getString("end_datetime").substring(0,16));
				long start = sdf.parse(start_datetime.toString()).getTime();
				long end = sdf.parse(end_datetime.toString()).getTime();
				LocalDateTime ldt = LocalDateTime.parse(start_datetime,dtf);
				int min = ldt.getMinute();

				if(null!=map.get(middle_eventID)) {
					map.get(middle_eventID).add(new User_DTO(id, display_flg,title,contents,authority,start,end,min,start_datetime,end_datetime));
				}else {
					list.add(new User_DTO(id, display_flg,title,contents,authority,start,end,min,start_datetime,end_datetime));
					map.put(middle_eventID, list);
					list = new ArrayList<>();
				}
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return map;
	}

	/*question*/
	public static ArrayList<User_DTO> tagList(){
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
			String sql = "SELECT * FROM tag";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			do {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String photo = rs.getString("photo");
				list.add(new User_DTO(id,name,photo));
			}while(rs.next() == true );
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static ArrayList<User_DTO> cqList(int num){
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
			String sql = "SELECT id,title FROM question WHERE top_eventNo = ? AND cflg = 1";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new User_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static User_DTO coResponse(int num){
		User_DTO dto = null;
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
			String answer = rs.getString("answer");
			dto = new User_DTO(id,title,content,answer);
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return dto;
	}

	/*ankeeto*/
	public static ArrayList<User_DTO> ankketo(int num){
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
			String sql = "SELECT * FROM ankeeto WHERE top_eventID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()){
				String title = rs.getString("title");
				String url = rs.getString("url");
				String start_datetime = rs.getString("start_datetime").substring(0,16);
				String end_datetime = rs.getString("end_datetime").substring(0,16);
				list.add(new User_DTO(title,url,start_datetime,end_datetime));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<User_DTO> searchQuest(String[] array,int key){
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
			String sql = "SELECT * FROM question";
			String[] result = array[1].trim().split(" |　");
			int count = 1;
			if(null!=array[1]&&!("".equals(array[1]))&&!(" ".equals(array[1]))&&!("　".equals(array[1]))) {
				for(int i=0; i<result.length;i++) {
					if(i==0) {
						sql = sql + " WHERE title LIKE ? OR content LIKE ? OR answer LIKE ?";
					}else {
						sql = sql + " OR title LIKE ? OR content LIKE ? OR answer LIKE ?";
					}
					if(i==result.length-1) {
						sql = sql + " AND top_eventNo = ? AND cflg = 1";
					}
				}
				pstmt = con.prepareStatement(sql);
				for(int i=0;i<result.length;i++) {
					pstmt.setString(count++, "%"+result[i]+"%");//title
					pstmt.setString(count++, "%"+result[i]+"%");//content
					pstmt.setString(count++, "%"+result[i]+"%");//answer
				}
				pstmt.setInt(count, key);
			}else if(Integer.parseInt(array[0])!=0) {
				sql = sql + " WHERE tagID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(count, Integer.parseInt(array[0]));

			}else {
				pstmt = con.prepareStatement(sql);
			}
			rs = pstmt.executeQuery();

			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new User_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

}