package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Admin_SelectDAO;

/**
 * Servlet implementation class Admin_event_middle
 */
@WebServlet("/Admin_event_middle")
public class Admin_event_middle extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_event_middle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setAttribute("midEvelist", Admin_SelectDAO.midEvelist(1));
    	String view = "/WEB-INF/admin/admin_event_middle.jsp";
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
			view = "/WEB-INF/admin/admin_event_middle.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			view = "/WEB-INF/admin/admin_event_middle.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "delete":
//			ArrayList<User_DTO> list = User_SelectDAO.middle_event();
//			for(int i=0; i<list.size();i++) {
//				if(null!=request.getParameter("ckb"+i)) {
//					Admin_DeleteDAO.delete_middleEv(Integer.parseInt(request.getParameter("ckb"+i)));
//				}
//			}
			view = "/WEB-INF/admin/admin_event_middle.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			view = "/WEB-INF/admin/admin_event_middle.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		}
	}

}
