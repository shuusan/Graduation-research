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
import dao.Admin_SelectDAO;
import dao.User_SelectDAO;
import dto.Admin_DTO;

/**
 * Servlet implementation class Admin_form
 */
@WebServlet("/Admin_form")
public class Admin_form extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("qList", Admin_SelectDAO.questionList());
		String view = "/WEB-INF/admin/admin_question.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ArrayList<Admin_DTO> list = Admin_SelectDAO.questionList();
		String view = "";
		RequestDispatcher dispatcher = null;
		switch(request.getParameter("btn")) {
		case "search":
			request.setAttribute("qList", Admin_SelectDAO.searchQuestion(request.getParameter("txt")));
			view = "/WEB-INF/admin/admin_question.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		case "delete":
			for(int i=0; i<list.size();i++) {
				if(null!=request.getParameter("cb"+i)) {
					Admin_DeleteDAO.deleteQuestion(Integer.parseInt(request.getParameter("cb"+i)));
				}
			}
			request.setAttribute("qList", Admin_SelectDAO.questionList());
			view = "/WEB-INF/admin/admin_question.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		default://update
			request.setAttribute("qData", User_SelectDAO.coResponse(Integer.parseInt(request.getParameter("btn"))));
			view = "/WEB-INF/admin/admin_question_update.jsp";
			dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}
