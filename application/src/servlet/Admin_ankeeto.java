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

import dao.Admin_DeleteDAO;
import dao.Admin_SelectDAO;
import dto.Admin_DTO;

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
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String view = "/WEB-INF/admin/admin_form.jsp";
		ArrayList<Admin_DTO> list = Admin_SelectDAO.ankeetoView();
		RequestDispatcher dispatcher = null;
		switch(null!=request.getParameter("sb")?request.getParameter("sb"):"update") {
		case "search":
			session.setAttribute("adlist", Admin_SelectDAO.searchAnkeeto(request.getParameter("sw")));
			view = "/WEB-INF/admin/admin_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "reset":
			session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
			view = "/WEB-INF/admin/admin_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			response.sendRedirect("Admin_ankeeto_resist");
			break;
		case "delete":
			for(int i=0; i<list.size();i++) {
				if(null!=request.getParameter("cbx"+i)) {
					Admin_DeleteDAO.deleteAnkeeto(Integer.parseInt(request.getParameter("cbx"+i)));
				}
			}
			session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			for(int i=0; i<list.size();i++) {
				if(null!=request.getParameter("btn"+i)) {
					Admin_DTO dto = Admin_SelectDAO.ankeetoSearch(Integer.parseInt(request.getParameter("btn"+i)));
					session.setAttribute("anten", Admin_SelectDAO.tes(dto.getNum1()));
					session.setAttribute("anup", dto);
					break;
				}
			}
			response.sendRedirect("Admin_ankeeto_update");
		}

	}

}
