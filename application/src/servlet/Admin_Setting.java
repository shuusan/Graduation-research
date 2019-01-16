package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User_UpdateDAO;

/**
 * Servlet implementation class Admin_Setting
 */
@WebServlet("/Admin_Setting")
public class Admin_Setting extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Setting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("cautionPass", "　");
		request.setAttribute("cautionMail", "　");
		HttpSession session = request.getSession();
		session.setAttribute("place", "Manager_Setting");
		String view = "/WEB-INF/admin/setting.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setAttribute("cautionPass", "　");
		request.setAttribute("cautionMail", "　");
		if(0==Integer.parseInt(request.getParameter("dif"))) {
			String password = request.getParameter("password");
			String check = request.getParameter("check");
			if(password.equals(check)) {
				User_UpdateDAO.passwordUpdate(password, Integer.parseInt((String)session.getAttribute("userId")));
				request.setAttribute("cautionPass", "パスワードが変更されました。");
			}else {
				request.setAttribute("cautionPass", "入力された２つのパスワードが一致しません。");
			}
		}else{
			String mail = request.getParameter("mail");
			User_UpdateDAO.mailUpdate(mail, Integer.parseInt((String)session.getAttribute("userId")));
			request.setAttribute("cautionMail", "変更されました。");
		}
		String view = "/WEB-INF/admin/setting.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
