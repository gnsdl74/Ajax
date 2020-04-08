<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Type</title>
</head>
<body>
	<h1>JSON 데이터 타입</h1>
	<div id="output"></div>
	
	<script type="text/javascript">
		// * JSON 데이터 타입
		// - 문자열
		// - 숫자
		// - 객체(JSON 객체)
		// - 배열
		// - 논리형
		// - null
		
		// 문자열
		var str = {"name" : "Go"};
		
		// 숫자
		var num = {"age" : 45};
		
		// 객체 - employee라는 Key값에 (name, age, city)의 값을 가지는 객체 저장
		var obj = {"employee" : {"name" : "Go", "age" : 45, "city" : "Seoul"}};
		
		document.getElementById("output").innerHTML += obj + "<br>";
		document.getElementById("output").innerHTML += obj.employee.name + "<br>";
		document.getElementById("output").innerHTML += obj.employee.age + "<br>";
	</script>
</body>
</html>