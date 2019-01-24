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

import dao.Admin_DeleteDAO;
import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;
import dto.Admin_DTO;

/**
 * Servlet implementation class Admin_user
 */
@WebServlet("/Admin_user")
public class Admin_user extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_user() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("userList", Admin_SelectDAO.userView());
		String view = "/WEB-INF/admin/admin_user.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>)session.getAttribute("userList");
		HashMap<String, String> map = new HashMap<String, String>();
		//検索
		if(null!=request.getParameter("search")) {
			session.setAttribute("userList", Admin_SelectDAO.searchUser(request.getParameter("txt")));
			//更新
		}else if(null!=request.getParameter("update")){
			for(int i=0; i<list.size();i++) {
				if(null!=request.getParameter("change_id "+list.get(i).getNum())) {
					map.put("id "+list.get(i).getNum(), request.getParameter("change_id "+list.get(i).getNum()));
				}
				if(null!=request.getParameter("change_name "+list.get(i).getNum())) {
					map.put("name "+list.get(i).getNum(), request.getParameter("change_name "+list.get(i).getNum()));
				}
				if(null!=request.getParameter("change_grade "+list.get(i).getNum())) {
					map.put("grade "+list.get(i).getNum(), request.getParameter("change_grade "+list.get(i).getNum()));
				}
				if(null!=request.getParameter("change_department "+list.get(i).getNum())) {
					map.put("department "+list.get(i).getNum(), request.getParameter("change_department "+list.get(i).getNum()));
				}
				if(null!=request.getParameter("change_cose "+list.get(i).getNum())) {
					map.put("cose "+list.get(i).getNum(), request.getParameter("change_cose "+list.get(i).getNum()));
				}
				if(null!=request.getParameter("change_mail "+list.get(i).getNum())) {
					map.put("mail "+list.get(i).getNum(), request.getParameter("change_mail "+list.get(i).getNum()));
				}
			}
			Admin_UpdateDAO.updateUser(map);
			session.setAttribute("userList", Admin_SelectDAO.userView());

			//削除
		}else if(null!=request.getParameter("delete")){
			ArrayList<Integer> dl = new ArrayList<Integer>();
			for(int i=0; i<list.size(); i++) {
				if(null!=request.getParameter("change_check"+i)) {
					dl.add(Integer.parseInt(request.getParameter("change_check"+i)));
				}
			}
			Admin_DeleteDAO.deleteUser(dl);;
			session.setAttribute("userList", Admin_SelectDAO.userView());
		}else {
			System.out.println("管理できません");
		}
		String view = "/WEB-INF/admin/admin_user.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
