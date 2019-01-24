package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;
import dao.User_SelectDAO;
import dto.Admin_DTO;
import dto.User_DTO;

/**
 * Servlet implementation class Admin_ankeeto_update
 */
@WebServlet("/Admin_ankeeto_update")
public class Admin_ankeeto_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_ankeeto_update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		Admin_DTO dto = (Admin_DTO) session.getAttribute("anup");
		Admin_DTO dto1 = (Admin_DTO) session.getAttribute("anten");
		ArrayList<User_DTO> list = User_SelectDAO.top_event();
		for(int i=0; i<list.size();i++) {
			if(null!=dto1&&null!=list&&list.get(i).getNum()==dto1.getNum1()) {
				list.add(0,new User_DTO(dto1.getNum(), dto.getText()));
				break;
			}
		}

		HashMap<String, String> hm = new HashMap<>();
		hm.put("latop1", "関連イベント名");
		hm.put("latop2", "タイトル");
		hm.put("edtit", dto.getText());
		hm.put("lamiddle", "URL");
		hm.put("edcon", dto.getText1());
		hm.put("labottom", "回収期間");
		hm.put("edst_date", dto.getText2().split(" ")[0]);
		hm.put("edst_time", dto.getText2().split(" ")[1]);
		hm.put("eden_date", dto.getText3().split(" ")[0]);
		hm.put("eden_time", dto.getText3().split(" ")[1]);
		hm.put("sbv", String.valueOf(dto.getNum()));
		hm.put("sbt", "更新する");

		request.setAttribute("hl", list);
		request.setAttribute("hm", hm);
		session.setAttribute("fa2", "Admin_ankeeto_update");

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
				request.getParameter("edst_date")+" "+request.getParameter("edst_time"),
				request.getParameter("eden_date")+" "+request.getParameter("eden_time")
		};
		Admin_UpdateDAO.updateAnkeeto(array, Integer.parseInt(request.getParameter("btn")));
		HttpSession session = request.getSession();
		session.setAttribute("adlist", Admin_SelectDAO.ankeetoView());
		session.setAttribute("fa", "Admin_ankeeto");
		String view = "/WEB-INF/admin/admin_form.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
