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
	<h1>컨트롤 입력 + 전송</h1>

	<form method="POST" action="ex08_ok.jsp">
	<table class="vertical">
		<tr>
			<th>텍스트 박스</th>
			<td><input type="text" name="txt1"></td>
		</tr>
		<tr>
			<th>암호 박스</th>
			<td><input type="password" name="txt2"></td>
		</tr>
		<tr>
			<th>다중 텍스트 박스</th>
			<td><textarea name="txt3"></textarea></td>
		</tr>
		<tr>
			<th>체크 박스</th>
			<td><input type="checkbox" name="cb1" value="yes"></td>
		</tr>
		<tr>
			<th>체크 박스들 1</th>
			<td>
				<h3>취미를 선택하세요.</h3>
				<label>코딩<input type="checkbox" name="cb2" value="코딩"></label>
				<label>독서<input type="checkbox" name="cb3" value="독서"></label>
				<label>운동<input type="checkbox" name="cb4" value="운동"></label>
			</td>
		</tr>
		<tr>
			<th>체크 박스들 2</th>
			<td>
				<h3>취미를 선택하세요.</h3>
				<label>코딩<input type="checkbox" name="cb5" value="코딩"></label>
				<label>독서<input type="checkbox" name="cb5" value="독서"></label>
				<label>운동<input type="checkbox" name="cb5" value="운동"></label>
			</td>
		</tr>
		<tr>
			<th>라디오 버튼</th>
			<td>
				<h3>성별을 선택하시오.</h3>
				<label><input type="radio" name="rb" value="male" checked>남자</label>
				<label><input type="radio" name="rb" value="female">여자</label>
			</td>
		</tr>
	</table>
	<div>
		<input type="submit" value="보내기">
	</div>
	</form>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
</body>
</html>