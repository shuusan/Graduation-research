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
			String sql = " SELECT * FROM bottom_event WHERE top_eventID = ? AND start_datetime LIKE ? ORDER BY start_datetime ASC";
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
				list.add(new User_DTO(id,name));
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

	public static User_DTO question(int num){
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

	public static ArrayList<User_DTO> questionSearch(int num, int num1, String text){
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
			String sql = "SELECT id,top_eventNo,title FROM question WHERE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, text);
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println(num1);
				System.out.println(rs.getInt("top_eventNo"));
				if(num==rs.getInt("top_eventNo")&&num1==rs.getInt("top_eventNo")) {
					int id = rs.getInt("id");
					String title = rs.getString("title");
					list.add(new User_DTO(id,title));
				}
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<User_DTO> tagSearch(int num, int num1){
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
			String sql = "SELECT id,top_eventNo,title FROM question WHERE tagID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()){
				if(num1==rs.getInt("top_eventNo")) {
					int id = rs.getInt("id");
					String title = rs.getString("title");
					list.add(new User_DTO(id,title));
				}
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<User_DTO> textSearch(int num, String text){
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
			if("null".equals(text)) {
				list.add(new User_DTO(404,"検索結果の結果、対象となるものが見つかりませんでした。"));
				return list;
			}
			System.out.println(text);
			String sql = "SELECT id,top_eventNo,title FROM question WHERE top_eventNo = ? AND ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, text);
			rs = pstmt.executeQuery();
			while(rs.next()){
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

}