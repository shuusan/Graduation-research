package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Admin_InsertDAO;
import dao.User_SelectDAO;

/**
 * Servlet implementation class Admin_event_form
 */
@WebServlet("/Admin_event_form")
public class Admin_event_form extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_event_form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("hl", User_SelectDAO.top_event());
		String view = "/WEB-INF/admin/admin_event_form.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String view = "";
		RequestDispatcher dispatcher = null;
		switch(null!=request.getParameter("btn")?request.getParameter("btn"):"update") {
		case "search":
			request.setAttribute("hl", User_SelectDAO.top_event());
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			System.out.println("aaa");
			Admin_InsertDAO.topEveInsert(request.getParameter("resitext"));
			request.setAttribute("hl", User_SelectDAO.top_event());
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "delete":
			request.setAttribute("hl", User_SelectDAO.top_event());
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			request.setAttribute("hl", User_SelectDAO.top_event());
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		}
	}

}
