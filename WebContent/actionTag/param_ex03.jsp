<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String id = request.getParameter("name");
	String nick = request.getParameter("nick");
	String age = request.getParameter("age");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %><br/> <!-- ex01에서 넘어옴 -->
	<%=nick %><br/> <!-- ex02에서 추가 -->
	<%=age %><br/> <!-- ex03에서 추가 -->

</body>
</html>