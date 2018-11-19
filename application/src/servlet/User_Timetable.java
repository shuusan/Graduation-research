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
		String view = "/WEB-INF/user/timetable.jsp";
		ArrayList<User_DTO> hl = User_SelectDAO.top_event();
		ArrayList<User_DTO> mel = User_SelectDAO.middle_event(1);
		HashMap<Integer, ArrayList<User_DTO>> bel = User_SelectDAO.bottom_event();
		HashMap<Integer,ArrayList<Integer>> interval = Calcurator.time_interval(mel.size(), bel);
//		for(int i = 0; i<interval.size();i++) {
//			for(int j = 0; j < interval.get(i).size();j++) {
//				System.out.println(interval.get(i).get(j));
//			}
//		}
		session.setAttribute("hl", hl);
		session.setAttribute("mel", mel);
		session.setAttribute("bel", bel);
		session.setAttribute("interval", interval);
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
