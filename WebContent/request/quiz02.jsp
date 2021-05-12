<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 클릭시 quiz02_result 페이지로 학생 번호를 전달함녀 됨
		 문자열 안에도 표현식 사용 가능 -->
	
	<h2>quiz.02jsp</h2>
	<% for (int i = 1; i <= 30; i ++) { %>
		<a href = "quiz02_result.jsp?num=<%=i %>"> <%=i %>번 학생 <br/>
	<% } %>
	
</body>
</html>