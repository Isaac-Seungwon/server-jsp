<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트 > (데이터) > 서버
	//데이터 수신하기
	//- String request.getParameter(String key)
	
	//POST 방식으로 넘어온 데이터 인코딩
	request.setCharacterEncoding("UTF-8");
	
	String txt = request.getParameter("txt");
	String num = request.getParameter("num");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	
</style>
</head>
<body>
	<h1>결과</h1>
	<div>문자: <%= txt %></div>
	<div>숫자: <%= num %></div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>