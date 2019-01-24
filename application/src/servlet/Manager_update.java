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
import dao.Manager_DAO;
import dao.User_SelectDAO;
import dto.User_DTO;

/**
 * Servlet implementation class Manager_update
 */
@WebServlet("/Manager_update")
public class Manager_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Manager_update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		HashMap<Integer, ArrayList<User_DTO>> list = (HashMap<Integer, ArrayList<User_DTO>>)session.getAttribute("bel");
		String[] value = new String[3];

		for(int i=0; i<list.size();i++) {
			for(int j=0; j < list.get(i).size();j++) {
				String title = "titleDATA"+i+j;
				String time = "timeDATA"+i+j;
				String contents = "contentsDATA"+i+j;
				String id = "change_data"+i+j;
				if(null!=request.getParameter(id)) {
					value[0] = request.getParameter(title);
					value[1] = request.getParameter(time);
					value[2] = request.getParameter(contents);
					Manager_DAO.tiUpdate(value, Integer.parseInt(request.getParameter(id)));
				}
			}
		}

		//トップイベントリスト
		ArrayList<User_DTO> hl = User_SelectDAO.top_event();
		//ミドルイベントリスト
		ArrayList<User_DTO> mel = User_SelectDAO.middle_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),String.valueOf(session.getAttribute("date")));
		//ボトムイベントリスト
		HashMap<Integer, ArrayList<User_DTO>> bel = Calcurator.reKey(User_SelectDAO.bottom_event(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId"))),String.valueOf(session.getAttribute("date"))));
		//イベントや間隙の領域リスト
		HashMap<Integer,ArrayList<Calc_con>> interval = Calcurator.time_interval(bel);
		//セッション打ち上げ
		session.setAttribute("hl", hl);
		session.setAttribute("mel", mel);
		session.setAttribute("bel", bel);
		session.setAttribute("interval", interval);
		String view = "/WEB-INF/manager/timetable.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
