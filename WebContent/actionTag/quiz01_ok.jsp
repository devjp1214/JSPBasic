<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String name = (String)request.getAttribute("user_name");
   String avg = (String)request.getAttribute("score");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님 평균 <%=avg %>점으로 합격입니다.	
</body>
</html>