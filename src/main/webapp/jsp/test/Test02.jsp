<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test02</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		// 보고 싶은 데이더의 형태 전달 받고,
		// what = time (시간) what = date (날짜)
		String what = request.getParameter("what");
		
		Date today = new Date();
		
		SimpleDateFormat dayFormatter = new SimpleDateFormat("yyyy년 M월 dd일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String dateString = dayFormatter.format(today);
		String timeString = timeFormatter.format(today);
		
		String resultString = null;
		if(what.equals("time")){
			// 시간을 보여준다
			resultString = timeString;
			
		}else{
			// 날짜를 보여준다
			resultString = dateString;
		}
		
	%>
	

	<div class="container">
		<div class="display-4"><%= resultString %></div>
	</div>	






	


</body>
</html>