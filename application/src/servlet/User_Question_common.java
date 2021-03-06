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

@WebServlet("/User_Question_common")
public class User_Question_common extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Question_common() {
		super();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("place", "User_Question_common");
		session.setAttribute("tag", User_SelectDAO.tagList());
		session.setAttribute("cqList", User_SelectDAO.cqList(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		session.setAttribute("qdv", 0);
		session.setAttribute("qdt", "すべて");
		String view = "/WEB-INF/user/question-common.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		session.setAttribute("cqList", User_SelectDAO.searchQuest(array, Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		String view = "/WEB-INF/user/question-common.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
