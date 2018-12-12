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

import culculator.Calcurator;
import dao.User_InsertDAO;
import dto.User_DTO;

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
    @SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setAttribute("questionNo", request.getParameter("selectButton"));
		request.setAttribute("question", Calcurator.tag(Integer.parseInt(request.getParameter("selectButton")), (ArrayList<User_DTO>)session.getAttribute("tag")));
		String view = "/WEB-INF/manager/question-submit.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User_InsertDAO.questionInsert(request.getParameter("title"),request.getParameter("question"),Integer.parseInt((String)session.getAttribute("userId")),Integer.parseInt(request.getParameter("select")));
		String view = "/WEB-INF/manager/question-select.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
