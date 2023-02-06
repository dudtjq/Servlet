package com.ckgagu.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hellocontroller extends HttpServlet{

	// request : 요청
	// reponse : 응답
	 @Override
	    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
	        PrintWriter out = response.getWriter();
	        out.println("hello world!!!");
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
