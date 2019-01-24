package servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin_InsertDAO;
import dao.Admin_SelectDAO;
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
		HashMap<String, String> hm = new HashMap<>();
		hm.put("latop1", "関連イベント名");
		hm.put("latop2", "タイトル");
		hm.put("edtit", "");
		hm.put("lamiddle", "URL");
		hm.put("edcon", "");
		hm.put("labottom", "回収期間");
		hm.put("edst_date", "");
		hm.put("edst_time", "");
		hm.put("eden_date", "");
		hm.put("eden_time", "");
		hm.put("sbv", "");
		hm.put("sbt", "登録する");
		request.setAttribute("hl", User_SelectDAO.top_event());
		request.setAttribute("hm", hm);
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
		HttpSession session = request.getSession();
		session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
		session.setAttribute("fa", "Admin_ankeeto");
		String view = "/WEB-INF/admin/admin_form.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
