package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin_SelectDAO;

/**
 * Servlet implementation class Admin_form
 */
@WebServlet("/Admin_ankeeto")
public class Admin_ankeeto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_ankeeto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
		session.setAttribute("fa", "Admin_ankeeto");
		String view = "/WEB-INF/admin/admin_form.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String view = "/WEB-INF/admin/admin_form.jsp";
		RequestDispatcher dispatcher = null;
		switch(request.getParameter("sb")) {
		case "search":
			session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			response.sendRedirect("Admin_ankeeto_resist");
			break;
		case "delete":
			session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		default://update
			response.sendRedirect(String.valueOf(session.getAttribute("place")));
		}

	}

}
