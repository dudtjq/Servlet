<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 관련된 과제 풀기!!	
		// 달력 클래스 다루기
		Calendar today = Calendar.getInstance();
	
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		// 요렇게 add가 2개 있음 두 add가 합쳐진 상태로 출력된다!
		// 15일전 
		 today.add(Calendar.DATE, -15);
		
		// 3달전
		today.add(Calendar.MONTH, -3);
		
		
		String dateString = formatter.format(today.getTime());
		
	%>

		<div><%= dateString %></div>




</body>
</html>