<%@page import="java.util.Calendar"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
        Calendar now = Calendar.getInstance();
    %>
    
    <p>현재 시간: <%= String.format("%tT", now) %></p>
    
	<%@ include file="inc/copyright.jsp" %>
</body>
</html>