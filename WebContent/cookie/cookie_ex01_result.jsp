<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	/*
	쿠키 사용 실예 - 오늘 하루 이창 열지 않기, 아이디 기억하기, 장바구니, 자동 로그인, 
	
	1. 전송되는 3가지 값을 받습니다
	2. id = abc, pw = 1234 라면 로그인이라 간주하고 
	user_id이름의 실제 아이디 값을 담는 쿠키 생성
	3. 아이디, 비밀번호가 틀리면 로그인 페이지로 리다이렉트
	4. 로그인 성공시 cookie_ex01_welcome페이지로 리다이렉트, 화면에"~~~아이디님 환영"출력		
	*/
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idcheck = request.getParameter("idcheck");
	
	if (id.equals("abc") && pw.equals("1234")) {
		Cookie idCoo = new Cookie("user_id", id);
		idCoo.setMaxAge(180);
		response.addCookie(idCoo);
		
		if(idcheck != null) {
			Cookie check = new Cookie("idcheck", id);
			check.setMaxAge(1800);
			response.addCookie(check);
		}
	
		response.sendRedirect("cookie_ex01_welcome.jsp");
		
	} else if (!id.equals("abc") || !pw.equals("1234")) {
		response.sendRedirect("cookie_ex01.jsp");
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