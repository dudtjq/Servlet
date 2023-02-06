package com.ckgagu.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01DateController extends HttpServlet{
	// 다시 풀어보기!
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date today = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		String dateTimeString = formatter.format(today);
		
		PrintWriter out = response.getWriter(); 
		out.println("오늘의 날짜는 " + dateTimeString);
		
		
		
	}
	
	
}
