<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<%
	
	String height = request.getParameter("height");
	int realHeight = Integer.parseInt(height);
	
	String weight = request.getParameter("weight");
	int realWeight = Integer.parseInt(weight);
	
	double BMI = realWeight / (double)((realHeight / 100.0) * (realHeight / 100.0));
	
	
	String result = null;
	if(BMI <= 20){
		result = "저체중";
	}else if(BMI <= 25){
		result = "정상";
	}else if(BMI <= 30){
		result = "과제충";
	}else{
		result = "비만";
	}
	
	%>
	
	<h3>BMI 측정 결과</h3><br>
	당신은 <%= result %> 입니다.
	BMI 수치 : <%= BMI %>
	

</body>
</html>