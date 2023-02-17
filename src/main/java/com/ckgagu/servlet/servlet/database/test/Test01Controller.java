package com.ckgagu.servlet.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckgagu.servlet.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		// 접속
		mysqlService.connect();
		// 쿼리 작성
		
		String selectQuery = "SELECT `address`, `area`, `type`\r\n"
				+ "FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC LIMIT 10;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			
			while(resultSet.next()) {
				
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");

				out.println("매물주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
				
			}
			
		} catch (SQLException e){
			
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		
	}

}
