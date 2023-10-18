<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
</head>
<body>
	<h1>out</h1>
	
	<% int dan = 2; %>
	
	<h2>구구단 (스크립틀릿 + 표현식)</h2>
	<% for (int i = 1; i<=9; i++) { %>
	<div><%= dan %> x <%= i %> = <%= i * 2 %></div>
	<% } %>
	
	<h2>구구단 (스크립틀릿 + out)</h2>
	<%
		for (int i=1; i<=9; i++) {
			out.println(String.format("<div>%d x %d = %d</div>", dan, i, dan * i));
		}
	%>
	
	<h1>방문 카운트</h1>
	<div>count: <%= session.getAttribute("count") %></div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
</body>
</html>