package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User_SelectDAO;

@WebServlet("/User_Question_responce")
public class User_Question_responce extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Question_responce() {
		super();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "/WEB-INF/user/question-responce.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("btn"));
		request.setAttribute("id", id);
		request.setAttribute("answer", User_SelectDAO.coResponse(id));
		String view = "/WEB-INF/user/question-responce.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
