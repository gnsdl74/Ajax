package edu.web.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/info.do")
public class Infoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Infoservlet() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// * json 라이브러리 다운로드
		// https://code.google.com/archive/p/json-simple/downloads
		String userid = "test";
		String password = "1234";
		String email = "test@test.com";
		
		// JSON 객체 생성
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("userid", userid);
		jsonObj.put("password", password);
		jsonObj.put("email", email);
		
		// JSON 객체 전송
		response.getWriter().append(jsonObj.toString());
	} // end doGet()

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	} // end doPost()

} // end InfoServlet
