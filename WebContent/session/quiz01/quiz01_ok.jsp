<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="session.example.User" %>
    
    
<%
//앞 화면 저장한 user 세션 읽기
User user = (User)session.getAttribute("user_type");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 세션에 저장된 ID: <%=user.getId() %><br/>
 세션에 저장된 이름: <%=user.getName() %><br/>

<%=user.getId() %> ( <%=user.getName() %> )님 환영합니다.<br/>

</body>
</html>