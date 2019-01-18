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
 * Servlet implementation class Question_answer
 */
@WebServlet("/Manager_Question_answer")
public class Manager_Question_answer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Manager_Question_answer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("place", "Manager_Question_answer");
		session.setAttribute("tag", User_SelectDAO.tagList());
		session.setAttribute("aqList", Manager_DAO.aqList(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		session.setAttribute("qdv", 0);
		session.setAttribute("qdt", "すべて");
		String view = "/WEB-INF/manager/question-answer.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		session.setAttribute("place", "User_Question_common");
		request.setCharacterEncoding("UTF-8");
		String[] array = {
				request.getParameter("select"),
				request.getParameter("text")
		};
		if(null!=request.getParameter("select")) {
			session.setAttribute("qdv", Integer.parseInt(request.getParameter("select")));
			session.setAttribute("qdt", request.getParameter("data"));
		}
		session.setAttribute("aqList", Manager_DAO.aqSearch(array, Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		String view = "/WEB-INF/manager/question-answer.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
