<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//자바 영역
	int a = 10;
	int b = 20;
	int c = a + b;
	String name = "Isaac";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="300">
		<tr>
			<th>a</th>
			<td><%= a %></td>
		</tr>
		<tr>
			<th>b</th>
			<td><%= b %></td>
		</tr>
		<tr>
			<th>c</th>
			<td><%= c %></td>
		</tr>
		<tr>
			<th>d</th>
			<td><%= name %></td>
		</tr>
	</table>
</body>
</html>