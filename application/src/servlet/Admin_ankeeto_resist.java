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
 * Servlet implementation class Admin_ankeeto_resist
 */
@WebServlet("/Admin_ankeeto_resist")
public class Admin_ankeeto_resist extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_ankeeto_resist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("latop1", "関連イベント名");
		request.setAttribute("hl", User_SelectDAO.top_event());
		request.setAttribute("latop2", "タイトル");
		request.setAttribute("edtit", "");
		request.setAttribute("lamiddle", "URL");
		request.setAttribute("edcon", "");
		request.setAttribute("labottom", "回収期間");
		request.setAttribute("edst", "");
		request.setAttribute("eden", "");
		request.setAttribute("sbt", "登録する");
		String view = "/WEB-INF/admin/admin_edit.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String[] array = {
				request.getParameter("edsel"),
				request.getParameter("edtit"),
				request.getParameter("edcon"),
				request.getParameter("edst"),
				request.getParameter("eden")
		};
		Admin_InsertDAO.ankeetoInsert(array);
		String view = "/WEB-INF/admin/done.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
