<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//String name = request.getParameter("name");
	//String age = request.getParameter("age");
	
	//파일 저장 경로
	//C:\Class\code\server\JSPTest\src\main\webapp\files
	//C:\Class\code\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\files
	//System.out.println(path);
	String path = application.getRealPath("/files");
	
	//업로드 파일의 최대 크기 지정
	//- 바이트 단위
	int size = 1024 * 1024 * 100; //100MB
	
	//변수 선언
	String name = ""; //이름
	String age = ""; //나이
	String filename = ""; //첨부파일명
	String orgfilename = ""; //첨부파일명
	
	//request > MultipartRequest 객체 생성
	try {
		MultipartRequest multi = new MultipartRequest(
									request, //원래 request
									path, //파일 업로드 위치
									size, //최대 크기
									"UTF-8", //인코딩
									new DefaultFileRenamePolicy() //파일명 관리(중복 시 넘버링)
								);
		//데이터 수신
		name = multi.getParameter("name");
		age = multi.getParameter("age");
		
		//업로드 파일 정보 (파일명)
		//<input type="file" name="attach">
		filename = multi.getFilesystemName("attach"); //파일명
		orgfilename = multi.getOriginalFileName("attach"); //파일명
	} catch (Exception e) {
		e.printStackTrace();
	}
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

	<div>
		이름: <%= name %>
	</div>
	<div>
		나이: <%= age %>
	</div>
	<div>
		파일명: <%= filename %>
	</div>
	<div>
		파일명: <%= orgfilename %>
	</div>
	
	<h2>파일 다운로드</h2>
	<div>
		<a href="/jsp/files/<%= filename %>"><%= orgfilename %></a>
	</div>
	
	<h2>파일 다운로드</h2>
	<div>
		<a href="/jsp/files/<%= filename %>" download><%= orgfilename %></a>
	</div>
	
	<h2>파일 다운로드</h2>
	<div>
      <a href="download.jsp?filename=<%= filename %>&orgfilename=<%= orgfilename %>"><%=orgfilename %></a>
   </div>


	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
</body>
</html>