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
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<User_DTO> smel = (ArrayList<User_DTO>)session.getAttribute("mel");
		@SuppressWarnings("unchecked")
		HashMap<Integer, ArrayList<User_DTO>> sbel = (HashMap<Integer, ArrayList<User_DTO>>)session.getAttribute("bel");

		String title = "titleDATA";
		String time = "timeDATA";
		String contents = "contentsDATA";
		String sql="";

		for(int i=0; i<smel.size();i++) {
			for(int j=0; j<sbel.get(i).size();i++) {
				title = title+i+j;
				time = time+i+j;
				contents = contents+i+j;
				if(!(request.getParameter(title).isEmpty())||!(request.getParameter(time).isEmpty())||!(request.getParameter(contents).isEmpty())) {
					if(!(request.getParameter(title).isEmpty())) {
						sql = "title = " + request.getParameter(title) + " ";
					}
					if(!(request.getParameter(time).isEmpty())) {
						sql = "time = " + request.getParameter(time) + " ";
					}
					if(!(request.getParameter(contents).isEmpty())) {
						sql = "contents = " + request.getParameter(contents) + " ";
					}
					sql = sql.trim();
					Manager_DAO.tiUpdate(sql, sbel.get(i).get(j).getNum());
				}
			}
		}

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
		String view = "/WEB-INF/manager/timetable.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
