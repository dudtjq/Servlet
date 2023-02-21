package com.ckgagu.servlet.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckgagu.servlet.servlet.common.MysqlService;

@WebServlet("/database/test02/insert")
public class Test02MysqlService extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		
//	 	PrintWriter out = response.getWriter();
	 	
	 	String name = request.getParameter("name");
	 	String url = request.getParameter("url");
	 	// int id = Integer.parseInt(request.getParameter("id"));
	 	
	 	MysqlService mysqlservice = MysqlService.getInstance();
	 	mysqlservice.connect();
	 	
	 	String query = "INSERT INTO `email`\r\n"
	 			+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
	 			+ "VALUES\r\n"
	 			+ "('" + name + "', '" + url + "', now(), now()),\r\n"
	 			+ "('"+ name + "', '" + url + "', now(), now()),\r\n"
	 			+ "('" + name + "', '" + url + "', now(), now()),\r\n"
	 			+ "('" + name + "', '" + url + "', now(), now()),\r\n"
	 			+ "('" + name + "', '" + url + "', now(), now());";
	 	
//	 	int count = mysqlservice.update(query);
//	 		 	
//	 	out.println("수행결과 : " + count);
	 	
	 	mysqlservice.update(query);
	 	
	 	mysqlservice.disconnect();
	 	
	 	response.sendRedirect("/database/test/test02.jsp");
	 	
	 	
	 	
	 	
	}
}
