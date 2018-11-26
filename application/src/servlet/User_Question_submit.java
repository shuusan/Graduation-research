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

@WebServlet("/User_Question_submit")
public class User_Question_submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Question_submit() {
		super();
		}

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setAttribute("questionNo", request.getParameter("selectButton"));
		request.setAttribute("question", Calcurator.tag(Integer.parseInt(request.getParameter("selectButton")), (ArrayList<User_DTO>)session.getAttribute("tag")));
		String view = "/WEB-INF/user/question-submit.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("question"));
		System.out.println(Integer.parseInt(request.getParameter("select")));
		User_InsertDAO.questionInsert(request.getParameter("title"),request.getParameter("question"),Integer.parseInt(request.getParameter("select")));
		String view = "/WEB-INF/user/question-select.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
