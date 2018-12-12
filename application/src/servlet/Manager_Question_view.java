package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Manager_DAO;
import dao.User_SelectDAO;

/**
 * Servlet implementation class Question_view
 */
@WebServlet("/Manager_Question_view")
public class Manager_Question_view extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Manager_Question_view() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("buttonLink"));
		request.setAttribute("answer", Manager_DAO.anResponse(id));
		String view = "/WEB-INF/manager/question-view.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Manager_DAO.submit(request.getParameter("answer"), Integer.parseInt(request.getParameter("submit")));
		HttpSession session = request.getSession();
		session.setAttribute("place", "Manager_Question_answer");
		session.setAttribute("tag", User_SelectDAO.tagList());
		session.setAttribute("aqList", Manager_DAO.aqList(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		String view = "/WEB-INF/manager/question-answer.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}