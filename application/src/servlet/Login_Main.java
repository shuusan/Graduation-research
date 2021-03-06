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
import dao.Admin_SelectDAO;
import dao.Login_DAO;
import dao.User_SelectDAO;
import dto.User_DTO;

/**
 * Servlet implementation class Login_Main
 */
@WebServlet("/Login_Main")
public class Login_Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpSer
	 * vlet()
	 */
	public Login_Main() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("caution", "　");
		String view = "/WEB-INF/login/login.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		LocalDate ld = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String view="";
		int authority = Login_DAO.login(Integer.parseInt(request.getParameter("id")), request.getParameter("pass"));
		if(404!=authority) {
			HttpSession session = request.getSession();
			//トップイベントリスト
			ArrayList<User_DTO> hl = User_SelectDAO.top_event();
			//ミドルイベントリスト
			ArrayList<User_DTO> mel = User_SelectDAO.middle_event(Admin_SelectDAO.top(),dtf.format(ld));
			//ボトムイベントリスト
			HashMap<Integer, ArrayList<User_DTO>> bel = Calcurator.reKey(User_SelectDAO.bottom_event(Admin_SelectDAO.top(),dtf.format(ld)));
			//イベントや間隙の領域リスト
			HashMap<Integer,ArrayList<Calc_con>> interval = Calcurator.time_interval(bel);
			//セッション打ち上げ
			session.setAttribute("hl", hl);
			session.setAttribute("mel", mel);
			session.setAttribute("bel", bel);
			session.setAttribute("interval", interval);
			session.setAttribute("here", 0);
			session.setAttribute("userId", request.getParameter("id"));
			session.setAttribute("top_eventId", Admin_SelectDAO.top());
			session.setAttribute("top_eventName", Admin_SelectDAO.topName(Admin_SelectDAO.top()));
			session.setAttribute("date", dtf.format(ld));
			session.setAttribute("authority", authority);
			if(0==authority) {
				view = "/WEB-INF/admin/admin_event_form.jsp";
				request.setAttribute("hl", User_SelectDAO.top_event());
			}else if(2<=authority){
				session.setAttribute("place", "User_Timetable");
				view = "/WEB-INF/user/timetable.jsp";
			}else {
				session.setAttribute("place", "Manager_Timetable");
				view = "/WEB-INF/manager/timetable.jsp";
			}
		}else {
			request.setAttribute("caution", "学籍番号 または パスワードが間違っています。");
			view = "/WEB-INF/login/login.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}
