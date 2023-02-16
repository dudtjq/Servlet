<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
</head>

	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<body>
		<%
			Calendar now = Calendar.getInstance();
		
			Date today = new Date();
		
			SimpleDateFormat dayFormatter = new SimpleDateFormat("yyyy-MM");
			
			String dayString = dayFormatter.format(today);
			//현재시점
			int year = now.get(Calendar.YEAR);
			int month = now.get(Calendar.MONTH);
			
			//  그에 해당하는 달의 요일 얻어내기 
			now.set(year, month, 1);
			int whatDay = now.get(Calendar.DAY_OF_WEEK);
			// 이번달이 몇일까지 있는지 얻어내기
			int maxDay = now.getActualMaximum(Calendar.DATE);
		
		%>
		
		<div class="container">
			<table class="text-center table">
				<h1 class="text-center"><%= dayString %></h1>				
				<thead>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<%	// 해당하는 달이 몇일 까지 있는지
							for(int i = 1; i < whatDay; i++){
						%>
							<td><%= i %></td>
							
						<% 
						//	if(i == 7)
							
							} %>
					
					</tr>
				</tbody>
				
			
	
			</table>
		
		
		</div>
		


</body>
</html>