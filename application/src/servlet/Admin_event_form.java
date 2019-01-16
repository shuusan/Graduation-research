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
import dao.Admin_InsertDAO;
import dao.Admin_SelectDAO;
import dao.User_SelectDAO;
import dto.User_DTO;

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
			request.setAttribute("hl", Admin_SelectDAO.topSearch(request.getParameter("keyword")));
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			Admin_InsertDAO.topEveInsert(request.getParameter("resitext"));
			request.setAttribute("hl", User_SelectDAO.top_event());
			view = "/WEB-INF/admin/admin_event_form.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "delete":
			ArrayList<User_DTO> list = User_SelectDAO.top_event();
			for(int i=0; i<list.size()+1;i++) {
				if(null!=request.getParameter("ckb"+i)) {
					Admin_DeleteDAO.delete_topEv(Integer.parseInt(request.getParameter("ckb"+i)));
				}
			}
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
		default:
			if(null!=request.getParameter("next")) {
				HttpSession session = request.getSession();
				session.setAttribute("teNumber", request.getParameter("next"));
				view = "/WEB-INF/admin/admin_event_select.jsp";
				dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);
			}else {
				request.setAttribute("hl", User_SelectDAO.top_event());
				view = "/WEB-INF/admin/admin_event_form.jsp";
				dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);
			}
			break;
		}
	}

}
