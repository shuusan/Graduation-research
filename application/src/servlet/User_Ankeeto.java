package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User_SelectDAO;

@WebServlet("/User_Ankeeto")
public class User_Ankeeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Ankeeto() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("place", "User_Ankeeto");
		request.setAttribute("list", User_SelectDAO.ankketo(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		String view = "/WEB-INF/user/ankeeto.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}