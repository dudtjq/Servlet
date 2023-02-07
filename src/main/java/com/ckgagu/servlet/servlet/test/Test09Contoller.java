package com.ckgagu.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test09")
public class Test09Contoller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		
		String text = request.getParameter("text");
		
		out.println("<html><head><title>입사 지원</title></head> <body>");
		
		out.println("<h3>" + name + "님 지원이 완료 되었습니다.</h3><hr>");
		out.println("지원 내용 <br>" +text);
		
		out.println("</body></html>");
		
		
		
		
		
		
		
	}
	
	
	
}
