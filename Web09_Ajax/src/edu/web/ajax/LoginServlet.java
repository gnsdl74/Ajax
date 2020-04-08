package edu.web.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Login Servlet doGet() 호출");
		String id = request.getParameter("userId");
		String pw = request.getParameter("password");
		System.out.println("id : " + id + ", pw : " + pw);
		
		PrintWriter out = response.getWriter();
		if(id.equals("test") && pw.equals("1234")) {
			out.append("success");
		}
	} // end doGet()

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Login Servlet doPost() 호출");
		String id = request.getParameter("userId");
		String pw = request.getParameter("password");
		System.out.println("id : " + id + ", pw : " + pw);
		
		PrintWriter out = response.getWriter();
		if(id.equals("test") && pw.equals("1234")) {
			out.append("success");
		}
	} // end doPost()

} // end LoginServlet
