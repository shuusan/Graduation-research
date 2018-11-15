package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User_SelectDAO;
import dto.User_DTO;

@WebServlet("/User_Timetable")
public class User_Timetable extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Timetable() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "/WEB-INF/user/timetable.jsp";
		ArrayList<User_DTO> humburger_list = User_SelectDAO.top_event();
		HttpSession session = request.getSession();
		session.setAttribute("humburger_list", humburger_list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
