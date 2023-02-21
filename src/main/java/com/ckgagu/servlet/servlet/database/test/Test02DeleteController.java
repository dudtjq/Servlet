package com.ckgagu.servlet.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckgagu.servlet.servlet.common.MysqlService;


@WebServlet("/database/test02/delete")
public class Test02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	 	
	 	int id = Integer.parseInt(request.getParameter("id"));
		
	 	MysqlService mysqlService = MysqlService.getInstance();
	 	mysqlService.connect();
	 	
	 	String query = "DELETE FROM `email` WHERE `id` = " + id + ";";

	 	 mysqlService.update(query);
	 	
	 	mysqlService.disconnect();
	 	
	 	response.sendRedirect("/database/test/test02.jsp");
	 	
	 	
	 	
		
	}
	
}
