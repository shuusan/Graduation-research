package servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import culculator.Calc_con;
import culculator.Calcurator;
import dao.User_SelectDAO;
import dto.User_DTO;

@WebServlet("/User_Timetable")
public class User_Timetable extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Timetable() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		LocalDate ld = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		//トップイベントリスト
		ArrayList<User_DTO> hl = User_SelectDAO.top_event();
		//ミドルイベントリスト
		ArrayList<User_DTO> mel = User_SelectDAO.middle_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),dtf.format(ld));
		//ボトムイベントリスト
		HashMap<Integer, ArrayList<User_DTO>> bel = Calcurator.reKey(User_SelectDAO.bottom_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),dtf.format(ld)));
		//イベントや間隙の領域リスト
		HashMap<Integer,ArrayList<Calc_con>> interval = Calcurator.time_interval(bel);
		//セッション打ち上げ
		session.setAttribute("hl", hl);
		session.setAttribute("mel", mel);
		session.setAttribute("bel", bel);
		session.setAttribute("interval", interval);
		session.setAttribute("place", "User_Timetable");
		session.setAttribute("date", dtf.format(ld).replace("-", "/"));

		String view = "/WEB-INF/user/timetable.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//トップイベントリスト
		ArrayList<User_DTO> hl = User_SelectDAO.top_event();
		//ミドルイベントリスト
		ArrayList<User_DTO> mel = User_SelectDAO.middle_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),request.getParameter("date"));
		//ボトムイベントリスト
		HashMap<Integer, ArrayList<User_DTO>> bel = Calcurator.reKey(User_SelectDAO.bottom_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),request.getParameter("date")));
		//イベントや間隙の領域リスト
		HashMap<Integer,ArrayList<Calc_con>> interval = Calcurator.time_interval(bel);
		//セッション打ち上げ
		session.setAttribute("hl", hl);
		session.setAttribute("mel", mel);
		session.setAttribute("bel", bel);
		session.setAttribute("interval", interval);
		session.setAttribute("place", "User_Timetable");
		session.setAttribute("date", request.getParameter("date").replace("-", "/"));
		String view = "/WEB-INF/user/timetable.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
