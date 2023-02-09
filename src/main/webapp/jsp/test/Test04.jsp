<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<%
	
	int number1 = Integer.parseInt(request.getParameter("number1"));
	
	int number2 = Integer.parseInt(request.getParameter("number2"));
	
	String what = request.getParameter("what");
	
	double result = 0;
	if(what.equals("+")){
		result = number1 + number2;
	}else if(what.equals("-")){
		result = number1 - number2;
	}else if(what.equals("x")){
		result = number1 * number2;
	}else{
		result = number1 / number2;
	}
	 
	
	
	%>
	<div class="container">
	<h3>계산 결과</h3>
	<div class="display-4"><%= number1 %><%= what %><%= number2 %> = <span class="text-primary"><%= result %></span></div>
	</div>




</body>
</html>