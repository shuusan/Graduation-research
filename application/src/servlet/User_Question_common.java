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
		session.setAttribute("tag", User_SelectDAO.tagList());
		request.setAttribute("cqList", User_SelectDAO.cqList(1));
		String view = "/WEB-INF/user/question-common.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
