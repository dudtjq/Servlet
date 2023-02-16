package com.ckgagu.servlet.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;

	private String url = "jdbc:mysql://localhost:8080/";
	private String userId = "root";
	private String password = "root";
	
	private Connection connection;
	private Statement statement;
	
	// 객체를 관리 하는메소드 
	public static MysqlService getInstance() {
		
		mysqlService = new MysqlService();
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	// MysqlService mysqlService = MysqlService.getInstance(); 사용할수 있게 한다.
	private MysqlService() {
		
	}
		
	// 접속 기능
	public void connect() {
		
	
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		
		}

	}		
	public ResultSet select(String query)  {
		
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
		
	}
	// insert update, delete 쿼리 수행기능

	
	// 접속 끊기
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
		
}
