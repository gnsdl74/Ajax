<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Stringify</title>
</head>
<body>
	<h1>JSON Stringify</h1>
	<div id="output"></div>
	<script type="text/javascript">
		// * 데이터를 웹서버로 전송할 때, 데이터는 문자열이 된다. (Client -> Server)
		//	 JSON.stringify()는 자바스크립트 객체를 문자열로 변환해준다.
		//	  자바스크립트 배열 및 객체도 JSON 문자열로 변경 가능
		var obj = {
		    name : "Go",
		    age : 45,
		    city : "Seoul"
		};
		var myJSON = JSON.stringify(obj); // JSON 객체로 변환
		document.getElementById("output").innerHTML = myJSON;
	</script>
	
</body>
</html>