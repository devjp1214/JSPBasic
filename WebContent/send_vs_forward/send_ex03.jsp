<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

ID: <%=id %><br/>
PW: <%=pw %><br/>
<%-- 결과 null 값, 왜? request의 생명주기는 다음 페이지 까지만!! send_ex02에서 끝나기때문에 ex01페이지의 값을 
여기까지 가져올 수 없다 --%>
</body>
</html>