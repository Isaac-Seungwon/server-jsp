<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 변수
	session.setAttribute("a", 10); //session 객체에 a 변수 저장

	//application 변수
	application.setAttribute("b", 20); //application 객체에 b 변수 저장

	//방문 카운트
	if (session.getAttribute("count") == null) {
		session.setAttribute("count", 1);
	} else {
		//count = count + 1
		session.setAttribute("count", (int)session.getAttribute("count") + 1); //Down Casting, 페이지 실행할 때마다 누적
	}
	
	//방문 카운트
	if (application.getAttribute("count") == null) {
		application.setAttribute("count", 1);
	} else {
		//count = count + 1
		application.setAttribute("count", (int)application.getAttribute("count") + 1); //Down Casting, 페이지 실행할 때마다 누적
	}
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
	<h1>session</h1>
	<div>a: <%= session.getAttribute("a") %></div>

	<h1>application</h1>
	<div>b: <%= application.getAttribute("b") %></div>

	<h1>방문 카운트</h1>
	<div>count: <%= session.getAttribute("count") %></div>

	<h1>방문 카운트</h1>
	<div>count: <%= application.getAttribute("count") %></div>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>