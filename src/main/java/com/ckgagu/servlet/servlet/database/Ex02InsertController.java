package com.ckgagu.servlet.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckgagu.servlet.servlet.common.MysqlService;


@WebServlet("/db/ex02/insert")
public class Ex02InsertController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//redirect를 사용하게 되면  setContentType과 getWriter를 사용을 하지 않는다!
//		response.setContentType("text/plain");
//		
//	 	PrintWriter out = response.getWriter();
	 	
	 	// 이름 생년월일 이메일을 전달받고 해당 데이터를 insert 한다.
	 	String name = request.getParameter("name");
	 	String birthday = request.getParameter("birthday");
	 	String email = request.getParameter("email");
	 	
	 	MysqlService mysqlService = MysqlService.getInstance();
	 	mysqlService.connect();
	 	
	 	String query = "INSERT INTO `new_user`\r\n"
	 			+ "(`name`, `yyyymmdd`, `email`, `createdAt`, `updatedAt`)\r\n"
	 			+ "VALUE\r\n"
	 			+ "('" + name + "', '" + birthday + "', '" + email + "', now(), now());";
	 	
	 	// int count = mysqlService.update(query);
	 	
	 	// redirect를 사용하여 사용하지 않는다.
//	 	out.println("수행결과 : " + count);
	 	
	 	mysqlService.disconnect();
	 	
	 	// redirect(sendRedirect)
	 	// 페이지를 연결 해주는 역할을 한다!!
	 	response.sendRedirect("/database/ex/ex02.jsp");
		
		
	}
	
	
	
}
