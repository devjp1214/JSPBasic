<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.id, pw를 받아서 처리합니다.
	2.id가 abc123이고 비밀번호가 asd123이라면 로그인 성공으로 간주하고 response_ex02_welcome으로 리디렉트
	3.id가 틀린경우 response_ex02_idfail로 리디렉트
	3.pw가 틀린경우 response_ex02_pwfail로 리디렉트
	*/
	
	request.setCharacterEncoding("utf-8"); //한글처리
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc123") && pw.equals("asd123")) {
		response.sendRedirect("response_ex02_welcome.jsp");
	} else if(!id.equals("abc123")) {
		response.sendRedirect("response_ex02_idfail.jsp");
	} else if(!pw.equals("asd123")) {
		response.sendRedirect("response_ex02_pwfail.jsp");		
	} 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>