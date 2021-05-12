<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		application 객체는 session과 사용방법은 동일합니다.
		생명주기가 톰캣을 stop할 때 까지 단 1개가 유지됩니다.
		application은 프로그램 전체에서 공유할 값을 보통 넣음
		
		세션은 브라우저 창을 닫으면(끄면) 생명이 끝남, app은 브라우저 껏다 켜도 생명주기 유지 
	*/
	
	int total = 0;

	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total"); //브라우저 끄고 켜도 누적 
		//total = (int)session.getAttribute("total"); 브라우저 끄고 키면 누적x
	}
	
	total++;
	
	application.setAttribute("total", total);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	어플리케이션 객체에 누적된 토탈값:<%=total %>
</body>
</html>