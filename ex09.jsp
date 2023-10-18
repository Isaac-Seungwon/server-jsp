<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>버튼 만들기</h1>
	
	<form method="POST" action="ex09_ok.jsp">
	<table class="vertical">
		<tr>
			<th>너비(px)</th>
			<td><input type="number" name="width" min="50" max="300" step="10" value="100"></td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td><input type="number" name="height" min="50" max="300" step="10" value="50"></td>
		</tr>
		<tr>
			<th>텍스트</th>
			<td><input type="text" name="text" value="Button"></td>
		</tr>
		<tr>
			<th>배경색</th>
			<td><input type="color" name="backcolor" value="#FFFFFF" style="height: 40px;"></td>
		</tr>
		<tr>
			<th>글자색</th>
			<td><input type="color" name="textcolor" value="#000000" style="height: 40px;"></td>
		</tr>
		<tr>
			<th>글자 크기(px)</th>
			<td><input type="number" name="fontsize" min="10" max="50" value="16"></td>
		</tr>
		<tr>
			<th>버튼 개수(ea)</th>
			<td><input type="number" name="ea" min="1" max="20" value="1"></td>
		</tr>
	</table>
	<div>
		<input type="submit" value="만들기">
	</div>	
	</form>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>