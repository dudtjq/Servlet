package com.ckgagu.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet{
// 다시 풀어보기!!!!! // 향상된 for문으로 풀어보기! for(String ??:??){}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String keyword = request.getParameter("keyword");
		
		out.println("<html><head><title>맛집 소개</title></head> <body>");
			
		
		// 향산된 for문
		for(String sentence:list) {
			// 문자열 안에 특정한 keyword 가 포함되어 있는지
			if(sentence.contains(keyword)) {
				// replace 활용
				sentence = sentence.replace(keyword, "<b>"+ keyword + "</b>");
				out.println(sentence + "<hr>");
			}
			
		}
		
		out.println("</body></html>");
		
	}
	
}
