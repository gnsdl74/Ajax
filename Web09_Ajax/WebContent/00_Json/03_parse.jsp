<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 파싱</title>
</head>
<body>
	<div id="output"></div>
	<script type="text/javascript">
		// * 웹 서버로부터 데이터를 전송받으면 데이터는 항상 문자열(String)이다. (Server to Client)
		//	 JSON.parse()는 이 데이터를 자바스크립트 객체로 변환시켜준다.
		//	  주로 ajax로 데이터를 통신할 경우 쓰인다.
		var txt = '{"name" : "Go", "age" : 45, "city" : "서울", "birth" : "2020-04-07"}';
		var obj = JSON.parse(txt);
		
		// date는 변환이 불가능하기 때문에 값을 따로 변환시켜야함
		obj.birth = new Date(obj.birth);
		document.getElementById("output").innerHTML += obj.name + ", " + obj.birth;
	</script>

</body>
</html>