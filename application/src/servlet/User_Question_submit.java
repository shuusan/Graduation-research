package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/User_Question_submit")
public class User_Question_submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public User_Question_submit() {
		super();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "/WEB-INF/user/question-submit.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("submit"));
		if(0==num%2) {
			num=(2==num)?2:(4==num)?4:8;
		}else if(0==num%3){
			num=(3==num)?3:(6==num)?6:9;
		}else {
			num=(1==num)?1:(5==num)?5:7;
		}
		
		request.setAttribute("question", num);
		String view = "/WEB-INF/user/question-submit.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
