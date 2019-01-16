package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import dto.Admin_DTO;
import dto.User_DTO;

public class Admin_SelectDAO {

	public static HashMap<Integer,String[]> decoView(){
		HashMap<Integer,String[]> resultMap = new HashMap<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM department_cose";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String[] name = rs.getString("name").split(" ");
				resultMap.put(id, name);
			}
			con.close();
		} catch (SQLException e){

			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return resultMap;
	}

	public static ArrayList<Admin_DTO> userView(){
		//学年学科コースの取得
		HashMap<Integer,String[]> map = decoView();
		ArrayList<Admin_DTO> resultList = new ArrayList<Admin_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM user";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String department = map.get(rs.getInt("department_id"))[0];
				String cose = map.get(rs.getInt("department_id"))[1];
				int grade = rs.getInt("grade");
				String mail = rs.getString("mail");
				resultList.add(new Admin_DTO(id, name, grade, department, cose, mail));
			}
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

	public static ArrayList<Admin_DTO> decoView2(){
		ArrayList<Admin_DTO> list = new ArrayList<Admin_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM department_cose";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				list.add(new Admin_DTO(id,name));
			}
			con.close();
		} catch (SQLException e){

			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static Admin_DTO decoSearch(int num){
		Admin_DTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM department_cose WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String name = rs.getString("name");
			result = new Admin_DTO(id,name);
			con.close();
		} catch (SQLException e){
			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static ArrayList<Admin_DTO> ankeetoView(){
		//学年学科コースの取得
		ArrayList<Admin_DTO> resultList = new ArrayList<Admin_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM ankeeto";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String title = rs.getString("title");
				resultList.add(new Admin_DTO(id, title));
			}
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

	public static Admin_DTO ankeetoSearch(int num){
		Admin_DTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM ankeeto WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			int top_eventID = rs.getInt("top_eventID");
			String title = rs.getString("title");
			String url = rs.getString("url");
			String start_datetime = rs.getString("start_datetime");
			String end_datetime = rs.getString("end_datetime");
			result = new Admin_DTO(id, top_eventID, title, url, start_datetime, end_datetime);
			con.close();
		} catch (SQLException e){
			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static Admin_DTO tes(int num){
		Admin_DTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM top_event WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String name = rs.getString("name");
			result = new Admin_DTO(id,name);
			con.close();
		} catch (SQLException e){
			if(rs==null){
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static ArrayList<Admin_DTO> decoList(){
		//学年学科コースの取得
		ArrayList<Admin_DTO> resultList = new ArrayList<Admin_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM department_cose";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				resultList.add(new Admin_DTO(id, name));
			}
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

	public static ArrayList<Admin_DTO> questionList(){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT id,title FROM question";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new Admin_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<Admin_DTO> meList(){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM middle_event";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String sd = rs.getString("start_datetime");
				String ed = rs.getString("end_datetime");
				list.add(new Admin_DTO(id,title,sd,ed));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<Admin_DTO> midEvelist(int num){
		ArrayList<Admin_DTO> list = new ArrayList<>();
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
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String[] start = rs.getString("start_datetime").split(" ");
				String[] end = rs.getString("end_datetime").split(" ");
				list.add(new Admin_DTO(id, title, start, end));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<Admin_DTO> btmEvelist(int key1, int key2){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM bottom_event WHERE top_eventID = ? AND middle_eventID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, key1);
			pstmt.setInt(2, key2);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				String[] start = rs.getString("start_datetime").split(" ");
				String[] end = rs.getString("end_datetime").split(" ");
				list.add(new Admin_DTO(id, title, contents, start, end));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<Admin_DTO> tagList(){
		ArrayList<Admin_DTO> list = new ArrayList<>();
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
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("name");
				String photo = rs.getString("photo");
				list.add(new Admin_DTO(id, title, photo));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static ArrayList<Admin_DTO> searchAnkeeto(String text){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM ankeeto";
			String[] result = text.trim().split(" |　");
			int count = 1;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " WHERE title LIKE ?";
				}else {
					sql = sql + " OR title LIKE ?";
				}
			}
			pstmt = con.prepareStatement(sql);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new Admin_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<Admin_DTO> searchDC(String text){
		//学年学科コースの取得
		ArrayList<Admin_DTO> resultList = new ArrayList<Admin_DTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM department_cose";
			String[] result = text.trim().split(" |　");
			int count = 1;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " WHERE name LIKE ?";
				}else {
					sql = sql + " OR name LIKE ?";
				}
			}
			pstmt = con.prepareStatement(sql);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				resultList.add(new Admin_DTO(id, name));
			}
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

	public static ArrayList<Admin_DTO> searchQuestion(String txt){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT id,title FROM question";
			String[] result = txt.trim().split(" |　");
			int count = 1;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " WHERE title LIKE ?";
				}else {
					sql = sql + " OR title LIKE ?";
				}
			}
			pstmt = con.prepareStatement(sql);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				list.add(new Admin_DTO(id,title));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<User_DTO> topSearch(String key){
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
			String[] result = key.trim().split(" |　");
			int count = 1;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " WHERE name LIKE ?";
				}else {
					sql = sql + " OR name LIKE ?";
				}
			}
			sql = sql + " ORDER BY id ASC";
			pstmt = con.prepareStatement(sql);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				resultList.add(new User_DTO(id,name));
			}
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

	public static ArrayList<Admin_DTO> midSearch(int num, String key){
		ArrayList<Admin_DTO> list = new ArrayList<>();
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
			String[] result = key.trim().split(" |　");
			int count = 2;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " AND (title LIKE ?";
				}else {
					sql = sql + " OR title LIKE ?";
				}
			}
			sql = sql + ")";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String[] start = rs.getString("start_datetime").split(" ");
				String[] end = rs.getString("end_datetime").split(" ");
				list.add(new Admin_DTO(id, title, start, end));
			}
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static ArrayList<Admin_DTO> btmSearch(int key1, int key2,String text){
		ArrayList<Admin_DTO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/timetable?useSSL=false",
					"adminuser",
					"password");
			String sql = "SELECT * FROM bottom_event WHERE top_eventID = ? AND middle_eventID = ?";
			String[] result = text.trim().split(" |　");
			int count = 3;
			for(int i=0; i<result.length;i++) {
				if(i==0) {
					sql = sql + " AND (title LIKE ? OR contents LIKE ?";
				}else {
					sql = sql + " OR title LIKE ? OR contents LIKE ?";
				}
			}
			sql = sql + ")";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, key1);
			pstmt.setInt(2, key2);
			for(int i=0;i<result.length;i++) {
				pstmt.setString(count++, "%"+result[i]+"%");
				pstmt.setString(count++, "%"+result[i]+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				String[] start = rs.getString("start_datetime").split(" ");
				String[] end = rs.getString("end_datetime").split(" ");
				list.add(new Admin_DTO(id, title, contents, start, end));
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
