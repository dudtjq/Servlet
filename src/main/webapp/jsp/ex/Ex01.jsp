<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 1부터 10까지의 합을 구한다 --%>

	<%
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
		    sum += i;
		}
	%>

	<h3>합계 : <%= sum %> </h3>
	<input type="text" value="<%= sum %>">


	<%
		// 동물이름 리스트
		List<String> animal = new ArrayList<>();
		animal.add("dog");
		animal.add("cat");
	%>
	
	<h3><%= animal.get(0) %> </h3>
	<h3><%= animal.get(1) %> </h3>
	
	<%-- 메소드 만들기 --%>
	<!-- <%!
    // 필드
    private int num = 10;

    // 메소드
    public String getHelloWorld() {
        return "Hello World";
    }
%> -->
	
	
	
	
</body>
</html>