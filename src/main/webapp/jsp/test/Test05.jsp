<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<%
		// cm 길이
		int length = Integer.parseInt(request.getParameter("length"));
		
		// 단위들 unit
		// inch, yard, feet, meter
		String[] unitArray = request.getParameterValues("unit");
		
		// 계산이 될 결과에 문자열을 붙히기 위해 사용!
		String result = "";
		for(int i = 0; i < unitArray.length; i++){
			// 모든 값을 보여주기 위해 사용!
			String unit = unitArray[i];
			// 따른 jsp 파일에 value 속성이 포함 된 것을 if 문으로 푼다 
			if(unit.equals("inch")){
				double inch = length * 0.39;
				// 위에 있는 공백문자열을 표기하기위해 더하기 한후 <br>을 하여 아랫줄에다 생성하게끔 한다! 
				result += inch + "in<br>";
				
			}else if(unit.equals("yard")){
				double yard = length * 0.010936133;
				result += yard + "yd<br>";
				
			}else if(unit.equals("feet")){
				double feet = length * 0.032808399;
				result += feet + "ft<br>";
				
			}else if(unit.equals("meter")){
				double meter = length * 100.0;
				result += meter + "m";
			}
		}
		
	%>
	
	<h3>변환 결과</h3>
	<h2><%= length %>cm</h2>
	<hr>
	<%= result %>

</body>
</html>