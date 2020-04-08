package edu.web.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax_test.do")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AjaxServlet doGet() 호출");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		
		PrintWriter out = response.getWriter();
		// Ajax의 success : function(result)에 전송될 데이터
		out.append("id : " + id + "\n");
		out.append("pw : " + pw);
	} // end doGet()

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	} // end doPost()

} // end AjaxServlet
