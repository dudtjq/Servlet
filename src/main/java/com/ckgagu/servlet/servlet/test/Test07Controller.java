package com.ckgagu.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		// 주소
		String address = request.getParameter("address");
		// 결제 카드
		String card = request.getParameter("card");
		// 가격
		String price = request.getParameter("price");
		int price1 = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html><head><title>주문 결과</title></head> <body>");
		// 서울시가 아니면 배달 불가지역
		if(!address.contains("서울시")) {
			out.println("<h2>배달 불가 지역입니다.</h2>");
		}else if(card.equals("신한카드")) {
			out.println("결제 불가 카드입니다.");
		}else {
			out.println("<h3>" + address + "</h3><hr>");
			out.println("결제금액 : " + price1 + "원");
		}
		
		out.println("</body></html>");

		
		
		
		
	}
	
}
