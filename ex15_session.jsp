<%@page import="java.util.Calendar"%>
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
	<h1>세션 (Session)</h1>
	
	<div class="list">
		<div><a href="ex15_set.jsp">세션값 저장하기</a></div>
		<div><a href="ex15_del.jsp">세션값 삭제하기</a></div>
		<div><a href="ex15_reset.jsp">세션 초기화</a></div>
		<div><a href="ex15_interval.jsp">세션 만료 시간 설정하기</a></div>
	</div>
	
	<hr>
	
	<h2>(현재) 세션 정보</h2>

	<div>
		Session ID:
		<%= session.getId() %>
	</div>
	<div>
		Session Create Time:
		<%
			Calendar time = Calendar.getInstance();
			time.setTimeInMillis(session.getCreationTime());
			out.println(String.format("%tF %tT", time, time));
		%>
		<%= session.getCreationTime() %>
	</div>
	<div>
		Session Max Inactive Interval:
		<%= session.getMaxInactiveInterval() %>
	</div>
	<div>
		Session inNew:
		<%= session.isNew() %>
	</div>
	<div>
		Session Data:
		
		<%
			if (session.getAttribute("data") != null) {
				out.println(session.getAttribute("data"));
			} else {
				out.println("데이터 없음");
			}
		%>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>