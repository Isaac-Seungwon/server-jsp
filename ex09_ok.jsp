<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String text = request.getParameter("text");
	String backcolor = request.getParameter("backcolor");
	String textcolor = request.getParameter("textcolor");
	String fontsize = request.getParameter("fontsize");
	String ea = request.getParameter("ea");
	int count = Integer.parseInt(ea);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css"> -->
<style>
	.btn {
		width: <%= width %>px;
		height: <%= height %>px;
		background-color: <%= backcolor %>;
		color: <%= textcolor %>;
		font-size: <%= fontsize %>px;
	}
</style>
</head>
<body>
	<h1>결과</h1>
	
	<div>
		<% for (int i=0; i<count; i++) { %>
		<button class="btn"><%= text %></button>
		<% } %>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>