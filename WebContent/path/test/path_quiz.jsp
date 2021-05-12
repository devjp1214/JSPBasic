<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 --%>
	
	 <a href="../../request/req_video.jsp">req_video로이동(상대경로)</a><br/>
	 <a href="/JSPBasic/request/req_video.jsp">req_video로이동(절대경로)</a><br/>
 	
 	<%-- a태그를 이용해서 TestServlet의 URL맵핑 경로를 확인해서 상대경로, 절대경로로 이동 --%>
 	
 	<a href="../../서블릿어노테이션안에이름">서블릿이동(상대경로)</a>
	<a href="/JSPBasic/서블릿어노테이션안에이름">서블릿이동(절대경로)</a>
	 	
	 	
	<%-- img태그로 java.png파일을 상대경로, 절대경로로 참조 --%>
	
	상대경로 img:<br>
	<img src="../../request/img/1.png"><br>
	절대경로 img:<br>
	<img src="/JSPBasic/request/img/1.png">
	
</body>
</html>