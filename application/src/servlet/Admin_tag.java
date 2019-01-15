package servlet;

import java.io.IOException;

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

/**
 * Servlet implementation class Admin_tag
 */
@WebServlet("/Admin_tag")
@MultipartConfig(location="C:\\Users\\高橋秀英\\Desktop\\卒業研究\\Graduation-research\\application\\WebContent\\photo", maxFileSize=1048576)
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
			view = "/WEB-INF/admin/admin_event_middle.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "resist":
			System.out.println("resist");
			Part part = request.getPart("file");
			String name = this.getFileName(part);
			part.write("C:\\Users\\高橋秀英\\Desktop\\卒業研究\\Graduation-research\\application\\WebContent\\photo" + "/" + name);

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
			for(int i=0; i<Admin_SelectDAO.btmEvelist(2,7).size()+1;i++) {
				if(null!=request.getParameter("ckb"+i)) {
					Admin_DeleteDAO.delete_btmEv(Integer.parseInt(request.getParameter("ckb"+i)));
				}
			}
			request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(2, 7));
			view = "/WEB-INF/admin/admin_event_bottom.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
			break;
		case "update"://update
			for(int i=0; i<Admin_SelectDAO.btmEvelist(2,7).size()+1;i++) {
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
			request.setAttribute("btmEvelist", Admin_SelectDAO.btmEvelist(2, 7));
			view = "/WEB-INF/admin/admin_event_bottom.jsp";
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
