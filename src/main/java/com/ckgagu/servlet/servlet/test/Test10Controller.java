package com.ckgagu.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "dudtjq");
	        put("password", "asdf");
	        put("name", "이영섭");
	    }
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 아이디와 비밀번호를 전달 받고 html로 출력한다
		
		String id = request.getParameter("id");
		
		String password = request.getParameter("password");
		
		out.println("<html><head><title>로그인</title></head> <body>");
		
		if(!id.equals(userMap.get("id"))) {
			out.println("<h2>id가 일치하지 않습니다.</h2>");
		}else if(!password.equals(userMap.get("password"))) {
			out.println("<h2>password가 일치하지 않습니다.</h2>");
		}else {
			out.println("<h1>" + userMap.get("name") + "님 환영합니다.</h1>");
		}
		
		out.println("</body></html>");
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
}

