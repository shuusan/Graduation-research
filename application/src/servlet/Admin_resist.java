package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin_InsertDAO;
import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;

/**
 * Servlet implementation class Admin_resist
 */
@WebServlet("/Admin_resist")
public class Admin_resist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_resist() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("decoList2", Admin_SelectDAO.decoView2());
		String view = "/WEB-INF/admin/resist_user.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//		HttpSession session = request.getSession();
		if("resist".equals(request.getParameter("sb"))) {
			String[]array =
				{
						request.getParameter("banngou1"),
						request.getParameter("deco1"),
						request.getParameter("namae1"),
						request.getParameter("grade1"),
						request.getParameter("authority1"),
						request.getParameter("mail1"),
				};
			request.setAttribute("rex2", Admin_InsertDAO.insertUser(array));
			request.setAttribute("tagName", Admin_SelectDAO.decoSearch(Integer.parseInt(request.getParameter("deco1"))));
		}else if("correct".equals(request.getParameter("sb"))){
			String[]array =
				{
						request.getParameter("deco2"),
						request.getParameter("namae2"),
						request.getParameter("grade2"),
						request.getParameter("authority2"),
						request.getParameter("mail2"),
						request.getParameter("banngou2"),
				};
			request.setAttribute("rex2", Admin_UpdateDAO.updateUser2(array));
			request.setAttribute("tagName", Admin_SelectDAO.decoSearch(Integer.parseInt(request.getParameter("deco2"))));
		}else {
			System.out.println("ぬるぽだよ");
		}
		String view = "/WEB-INF/admin/resist_user.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
