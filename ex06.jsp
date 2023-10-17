<%@page import="com.test.jsp.MyMath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 10;
%>
<%!
	int b = 20; //지역 변수(X), 클래스 멤버 변수(O)
	
	public int sum(int a, int b) {
		return a + b;
	}
	
	MyMath m = new MyMath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div><%= sum(10, 20)%></div>
	<div><%= m.sum(10, 20)%></div>
</body>
</html>