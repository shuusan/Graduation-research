package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import culculator.Calcurator;
import dao.User_SelectDAO;

/**
 * Servlet implementation class Question_common
 */
@WebServlet("/Manager_Question_common")
public class Manager_Question_common extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Manager_Question_common() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("place", "Manager_Question_common");
		session.setAttribute("tag", User_SelectDAO.tagList());
		session.setAttribute("cqList", User_SelectDAO.cqList(Integer.parseInt(String.valueOf(session.getAttribute("top_eventId")))));
		String view = "/WEB-INF/manager/question-common.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] column = {"title","content","answer"};

		if(!("404".equals(request.getParameter("select")))&&!(request.getParameter("text").equals(null))) {
			System.out.println(1);
			request.setAttribute("cqList", User_SelectDAO.questionSearch(1, Integer.parseInt(request.getParameter("select")), Calcurator.search(column, request.getParameter("text"))));
		}else if(!("404".equals(request.getParameter("select")))) {
			System.out.println(2);
			request.setAttribute("cqList", User_SelectDAO.tagSearch(1, Integer.parseInt(request.getParameter("select"))));
		}else {
			System.out.println(3);
			request.setAttribute("cqList", User_SelectDAO.textSearch(1, Calcurator.search(column, request.getParameter("text"))));
		}

		String view = "/WEB-INF/manager/question-common.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
