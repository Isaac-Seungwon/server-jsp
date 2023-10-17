<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "Isaac";
	int age = 25;
	String txt = "<input type='text'>";
	String color = "cornflowerblue";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		color: <%= color %>;
	}
</style>
</head>
<body>
	<h1>스크립틀릿과 표현식</h1>
	<div>이름: <%= name %></div>
	<div>나이: <%= age %></div>
	<div><%= txt %></div>
	<div><input type="text" value="<%= color %>"></div>
	<input type="button" value="버튼" id="btn1">
	
	<script>
		document.getElementById('btn1').onclick = function() {
			alert('<%= color %>');
		};
	</script>
</body>
</html>