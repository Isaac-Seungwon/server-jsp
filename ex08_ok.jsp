<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	//텍스트 박스
	//1. 입력O: 입력값 반환
	//2. 컨트롤O 입력X: null(X), ""(O)
	//3. 컨트롤X (key 오류): null 반환
	String txt1 = request.getParameter("txt1");
	
	//암호 박스
	//한글 입력(X)
	String txt2 = request.getParameter("txt2");
	
	//다중 텍스트 박스
	String txt3 = request.getParameter("txt3");
	txt3 = txt3.replace("\r\n", "<br>");
	
	//체크 박스
	//1. value가 없을 때
	//	체크O: on
	//	체크X: null
	//2. value가 있을 때
	//	체크O: value
	//	체크X: null
	String cb1 = request.getParameter("cb1");
	
	//체크 박스들 1
	/* 
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	String hobby = "";
	hobby += cb2 + ",";
	hobby += cb3 + ",";
	hobby += cb4 + ",";
	*/
	
	//체크 박스들 1 일괄 처리
	String hobby = "";
	for (int i=2; i<=4; i++) {
		hobby += request.getParameter("cb" + i) + ",";
	}
	
	//체크 박스들 2
	//동일한 name의 컨트롤을 여러 개 전송
	String[] cb5 = request.getParameterValues("cb5");
	
	//라디오 버튼
	String rb = request.getParameter("rb");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
</head>
<body>
	<h1>결과</h1>
	<h2>텍스트 박스</h2>
	<div><%= txt1 %></div>

	<h2>암호 박스</h2>
	<div><%= txt2 %></div>
	
	<h2>다중 텍스트 박스</h2>
	<div><%= txt3 %></div>
	
	<h2>체크 박스</h2>
	<div><%= cb1 %></div>
	
	<h2>체크 박스들 1</h2>
	<div><%= hobby %></div>
	
	<h2>체크 박스들 2</h2>
	<div><%= Arrays.toString(cb5) %></div>
	
	<h2>라디오 버튼</h2>
	<div><%= rb %></div>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
</body>
</html>