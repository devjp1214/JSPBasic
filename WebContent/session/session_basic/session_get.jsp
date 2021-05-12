<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 값은 브라우저가 종료되기 전까지 or 기본 30분동안 유지.
	//어느페이지에서든 사용 할 수 있음
	//getAttribute("값") 을 이용해서 사용
	
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");	
	
	//세션의 시간 확인
	int time = session.getMaxInactiveInterval();
	
	//특정세션삭제
	session.removeAttribute("user_name"); //user_name삭제
	
	//모든 세션 무효화 (완전히 지우고 새로 만들때);
	session.invalidate();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	세션에 저장된 ID: <%=id %><br/>
	세션에 저장된 NAME: <%=name %><br/>
	세션 유지 시간: <%=time %>

</body>
</html>