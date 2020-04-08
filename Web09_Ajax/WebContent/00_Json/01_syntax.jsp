<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Json Syntax</title>
</head>
<body>
	<h1>Json 문법</h1>
	<!-- 
	 * JSON (JavaScript Object Notation)
	 - 데이터를 저장하고 교환하기 위한 문법
	 - JSON은 텍스트이며, 자바스크립트 객체 표기법으로 작성
	 - 자바스크립트 객체를 JSON으로 변환 가능하며, JSON을 서버로 전송 가능
	 - 서버에서 받아온 JSON을 자바스크립트 객체로 변환 또한 가능
	 - 기본적으로 자바스크립트 객체 문법과 비슷함
	 
	 * JSON을 사용하는 이유
	 - 자바스크립트 객체 표기법의 표준
	 - 경량 데이터교환 형태
	 - 이해하기 쉬움
	 - 언어 독립적임(JSON 형태는 텍스트이므로, 모든 언어에서 읽을 수 있음
	-->
	
	<div id="output"></div>
	
	<script type="text/javascript">
		// 자바스크립트 객체 사용법
		var person = {
		  name : "Go",
		  age : 45,
		  city : "Seoul"
		};
		document.getElementById("output").innerHTML += person.name;
	</script>
</body>
</html>