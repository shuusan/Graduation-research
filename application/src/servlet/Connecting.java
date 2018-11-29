package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.User_DTO;

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
		@SuppressWarnings("unchecked")
	    ArrayList<User_DTO> hl = (ArrayList<User_DTO>)session.getAttribute("hl");
	    session.setAttribute("here", Integer.parseInt(request.getParameter("hc")));
	    session.setAttribute("top_eventId", hl.get(Integer.parseInt(request.getParameter("hc"))).getNum());
	    response.sendRedirect(String.valueOf(session.getAttribute("place")));
	}

}
