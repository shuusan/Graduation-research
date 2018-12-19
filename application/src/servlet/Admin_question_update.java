package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;
import dao.User_SelectDAO;

/**
 * Servlet implementation class Admin_quesyion_update
 */
@WebServlet("/Admin_question_update")
public class Admin_question_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_question_update() {
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
		request.setCharacterEncoding("UTF-8");
		String view = "";
		RequestDispatcher dispatcher = null;
		if("back".equals(request.getParameter("btn"))) {
			request.setAttribute("qList", Admin_SelectDAO.questionList());
			view = "/WEB-INF/admin/admin_question.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}else {
			Admin_UpdateDAO.updateQuestion(request.getParameter("answer"), Integer.parseInt(request.getParameter("btn")));
			request.setAttribute("qData", User_SelectDAO.coResponse(Integer.parseInt(request.getParameter("btn"))));
			view = "/WEB-INF/admin/admin_question_update.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}
}
