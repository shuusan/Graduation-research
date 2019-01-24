package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admin_SelectDAO;

/**
 * Servlet implementation class Connecting
 */
@WebServlet("/Connecting")
public class Connecting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Connecting() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	    session.setAttribute("top_eventName", Admin_SelectDAO.topName(Integer.parseInt(request.getParameter("hc"))));
	    session.setAttribute("top_eventId", Integer.parseInt(String.valueOf(request.getParameter("hc"))));
	    response.sendRedirect(String.valueOf(session.getAttribute("place")));
	}

}
