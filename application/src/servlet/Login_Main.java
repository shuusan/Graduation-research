package servlet;

import java.io.IOException;
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
	 * @see HttpServlet#HttpServlet()
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
		String view="";
		if(Login_DAO.login(Integer.parseInt(request.getParameter("id")), request.getParameter("pass"))) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", request.getParameter("id"));
			//トップイベントリスト
			ArrayList<User_DTO> hl = User_SelectDAO.top_event();
			//ミドルイベントリスト
			ArrayList<User_DTO> mel = User_SelectDAO.middle_event(1);
			//ボトムイベントリストr
			HashMap<Integer, ArrayList<User_DTO>> bel = Calcurator.reKey(User_SelectDAO.bottom_event(1));
			//イベントや間隙の領域リスト
			HashMap<Integer,ArrayList<Calc_con>> interval = Calcurator.time_interval(bel);
			//セッション打ち上げ
			session.setAttribute("hl", hl);
			session.setAttribute("mel", mel);
			session.setAttribute("bel", bel);
			session.setAttribute("interval", interval);
			session.setAttribute("place", "User_Timetable");
			session.setAttribute("here", 0);
			session.setAttribute("userId", request.getParameter("id"));
			session.setAttribute("top_eventId", 1);
			view = "/WEB-INF/user/timetable.jsp";
		}else {
			request.setAttribute("caution", "学籍番号 または パスワードが間違っています。");
			view = "/WEB-INF/login/login.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}
