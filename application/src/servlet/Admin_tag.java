package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.Admin_DeleteDAO;
import dao.Admin_InsertDAO;
import dao.Admin_SelectDAO;
import dao.Admin_UpdateDAO;
import dto.Admin_DTO;

/**
 * Servlet implementation class Admin_tag
 */
@WebServlet("/Admin_tag")
@MultipartConfig(location="", maxFileSize=1048576)
public class Admin_tag extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_tag() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("tagList", Admin_SelectDAO.tagList());
		String view = "/WEB-INF/admin/admin_tag.jsp";
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
			ArrayList<Admin_DTO> sl = Admin_SelectDAO.tagList();
			if(null!=request.getParameter("key")) {
				String[] result = request.getParameter("key").trim().split(" |　");
				ArrayList<Admin_DTO> relist = new ArrayList<Admin_DTO>();
				for(int i=0; i<result.length; i++) {
					for(int j=0; j<sl.size();j++) {
						if(sl.get(j).getText().contains(result[i])) {
							relist.add(sl.get(j));
						}
					}
				}
				request.setAttribute("tagList", relist);
			}else {
				request.setAttribute("tagList", Admin_SelectDAO.tagList());
			}
			view = "/WEB-INF/admin/admin_tag.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			Part part = request.getPart("file");
			String name = this.getFileName(part);
			part.write("" + "/" + name);

			String[] array = new String[2];
			array[0] = request.getParameter("tn");
			array[1] = name;

			Admin_InsertDAO.tagInsert(array);

			request.setAttribute("tagList", Admin_SelectDAO.tagList());
			view = "/WEB-INF/admin/admin_tag.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "delete":
			for(int i=0; i<Admin_SelectDAO.tagList().size();i++) {
				if(null!=request.getParameter("ckb"+i)) {
					Admin_DeleteDAO.delete_tag(Integer.parseInt(request.getParameter("ckb"+i)));
				}
			}
			request.setAttribute("tagList", Admin_SelectDAO.tagList());
			view = "/WEB-INF/admin/admin_tag.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			for(int i=0; i<Admin_SelectDAO.tagList().size();i++) {
				if(null!=request.getParameter("change_id"+i)) {
					Admin_UpdateDAO.tagUpdate(Integer.parseInt(request.getParameter("change_id"+i)),request.getParameter("tag"+i));
				}
			}
			request.setAttribute("tagList", Admin_SelectDAO.tagList());
			view = "/WEB-INF/admin/admin_tag.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		}
	}

	private String getFileName(Part part) {
		String name = null;
		for (String dispotion : part.getHeader("Content-Disposition").split(";")) {
			if (dispotion.trim().startsWith("file")) {
				name = dispotion.substring(dispotion.indexOf("=") + 1).replace("\"", "").trim();
				name = name.substring(name.lastIndexOf("\\") + 1);
				break;
			}
		}
		return name;
	}

}
