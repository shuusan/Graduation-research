package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Admin_DeleteDAO;
import dao.Admin_InsertDAO;
import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;
import dto.Admin_DTO;

/**
 * Servlet implementation class Admin_deco_form
 */
@WebServlet("/Admin_deco_form")
public class Admin_deco_form extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_deco_form() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("decoList", Admin_SelectDAO.decoList());
		String view = "/WEB-INF/admin/admin_deco.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String deco="";
		ArrayList<Admin_DTO> list =  Admin_SelectDAO.decoList();
		switch(null!=request.getParameter("btn")?request.getParameter("btn"):"update") {
		case "search":
			if(null!=request.getParameter("key")) {
				String[] result = request.getParameter("key").trim().split(" |　");
				ArrayList<Admin_DTO> sl = Admin_SelectDAO.decoList();
				ArrayList<Admin_DTO> relist = new ArrayList<Admin_DTO>();
				for(int i=0; i<result.length;i++) {
					for(int j=0; j<sl.size();j++) {
						if(sl.get(j).getText().contains(result[i])) {
							relist.add(sl.get(j));
						}
					}
				}
				request.setAttribute("decoList", relist);
			}else {
				request.setAttribute("decoList", Admin_SelectDAO.decoList());
			}
			break;
		case "resist":
			deco = request.getParameter("department") + " " +  request.getParameter("cose");
			Admin_InsertDAO.decoInsert(deco);
			request.setAttribute("label", "登録完了しました。");
			request.setAttribute("decoList", Admin_SelectDAO.decoList());
			break;
		case "delete":
			for(int i=0; i<list.size();i++){
				if(null!=request.getParameter("cb"+i)) {
					Admin_DeleteDAO.deleteDeco(Integer.parseInt(request.getParameter("cb"+i)));
				}
			}
			request.setAttribute("decoList", Admin_SelectDAO.decoList());
			break;
		case "update"://update
			for(int i=0; i<list.size();i++){
				if(null!=request.getParameter("change_dep"+i)&&null!=request.getParameter("change_cose"+i)) {
					deco = request.getParameter("change_dep"+i) + " " +  request.getParameter("change_cose"+i);
					Admin_UpdateDAO.updateDeco(deco, list.get(i).getNum());
				}else if(null!=request.getParameter("change_dep"+i)) {
					deco = request.getParameter("change_dep"+i) + " " +  request.getParameter("cose"+i);
					Admin_UpdateDAO.updateDeco(deco, list.get(i).getNum());
				}else {
					deco = request.getParameter("dep"+i) + " " +  request.getParameter("change_cose"+i);
					Admin_UpdateDAO.updateDeco(deco, list.get(i).getNum());
				}
			}
			request.setAttribute("decoList", Admin_SelectDAO.decoList());
			break;
		}
		String view = "/WEB-INF/admin/admin_deco.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}
