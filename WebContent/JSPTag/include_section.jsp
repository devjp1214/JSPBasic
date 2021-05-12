<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file ="include_header.jsp" %>
	<!-- 화면 오른쪽 클릭 검사 해보면
	body안에 또 헤더 부분의 다른 내용이 중첩되어있음 >> 문제발생 
	그래서 헤더 부분 디렉티브 빼고 다 지워줘야함 -->
	<section>
		<h3>본문1</h3>
	</section>

	<section>
		<h3>본문2</h3>
	</section>
	
	<%@ include file ="include_footer.jsp" %>
	
</body>
</html>