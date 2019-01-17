package servlet;

import java.io.IOException;

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
import dao.Admin_UpdateDAO;

/**
 * Servlet implementation class Admin_event_buttom
 */
@WebServlet("/Admin_event_bottom")
public class Admin_event_bottom extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_event_bottom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(request.getParameter("btn"))));
    	String view = "/WEB-INF/admin/admin_event_bottom.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String view = "";
		RequestDispatcher dispatcher = null;
		switch(null!=request.getParameter("btn")?request.getParameter("btn"):"update") {
		case "search":
			request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(request.getParameter("btn"))));
			view = "/WEB-INF/admin/admin_event_bottom.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			try {
				for(int i=0; i<=Integer.parseInt(request.getParameter("count"))+1; i++) {
					int[] numData = new int[2];
					numData[0] = Integer.parseInt(String.valueOf(session.getAttribute("teNumber")));
					numData[1] = Integer.parseInt(String.valueOf(session.getAttribute("mid")));

					String[] data = new String[7];
					data[0] = request.getParameter("ev-title"+i);
					data[1] = request.getParameter("txta"+i);

					data[4] = request.getParameter("s-date"+i);
					data[5] = request.getParameter("s-hour"+i);
					data[6] = request.getParameter("s-minutes"+i);
					data[2] = data[4]+" "+data[5]+":"+data[6];

					data[4] = request.getParameter("e-date"+i);
					data[5] = request.getParameter("e-hour"+i);
					data[6] = request.getParameter("e-minutes"+i);
					data[3] = data[4]+" "+data[5]+":"+data[6];

					Admin_InsertDAO.btmEveInsert(numData,data);
				}
				request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))));
				view = "/WEB-INF/admin/admin_event_bottom.jsp";
				dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);

			} catch (Exception e) {
				request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))));
				view = "/WEB-INF/admin/admin_event_bottom.jsp";
				dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);
			}
			break;
		case "delete":
			for(int i=0; i<Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))).size();i++) {
				if(null!=request.getParameter("ckb"+i)) {
					Admin_DeleteDAO.delete_btmEv(Integer.parseInt(request.getParameter("ckb"+i)));
				}
			}
			request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))));
			view = "/WEB-INF/admin/admin_event_bottom.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			for(int i=0; i<Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))).size();i++) {
				if(null!=request.getParameter("change_id"+i)) {
					String[] data = new String[7];
					data[0] = request.getParameter("ev-title"+i);
					data[1] = request.getParameter("txta"+i);

					data[4] = request.getParameter("s-date"+i);
					data[5] = request.getParameter("s-hour"+i);
					data[6] = request.getParameter("s-minutes"+i);
					data[2] = data[4]+" "+data[5]+":"+data[6];

					data[4] = request.getParameter("e-date"+i);
					data[5] = request.getParameter("e-hour"+i);
					data[6] = request.getParameter("e-minutes"+i);
					data[3] = data[4]+" "+data[5]+":"+data[6];

					Admin_UpdateDAO.btmEveUpdate(Integer.parseInt(request.getParameter("change_id"+i)),data);
				}
			}
			request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(Integer.parseInt(String.valueOf(session.getAttribute("teNumber"))), Integer.parseInt(String.valueOf(session.getAttribute("mid")))));
			view = "/WEB-INF/admin/admin_event_bottom.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		}
	}

}
