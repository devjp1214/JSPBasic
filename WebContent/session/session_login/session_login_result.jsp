<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.넘어오는 3가지 값을 받는다
	2. 아이디랑 비밀번호가 동일하면 로그인 성공이라고 가정 (user_id, 실제 아이디값)의 세션을 생성
	(user_nick, 실제 닉네임)을 생성
	3.session_welcome으로 리다이렉트 해서 "id(닉네임) 환영합니다" 출력, 틀리면 로그인 페이지 리다이렉트	
	4.session-welcome에는 로그아웃 a태그를 생성 a태그 클릭시session_logout 페이지로 이동해서
	세션을 삭제하고 다시 로그인 페이지로 리다이렉트
	*/
	
	/*
	숙제: 왜 사람마다 사용하는 브라우저에서 이걸 판별해낼까요? 
	*/
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)) {
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		session.setMaxInactiveInterval(1800);
		
		response.sendRedirect("session_welcome.jsp");
	} else {
		response.sendRedirect("session_login.jsp");
	
%>
	<script>
		/*
		HTML에서 동적인 부분의 처리는 JS를 이용합니다.
		스트립트 사용은 script 태그 안에 작성합니다.
		
		var a = 1;
		function 이름 (b) {}
		
		JS 내장함수		
		alert("아이디와 비밀번호를 확인하세요");
		confirm("yest or no 확인창");
		history.go(-1); //1번 뒤로가기, 2번 뒤로가기 -2...
		locaton.herf = "session_login.jsp"; //리디렉트, = sendRedirect
		*/
		
		function check() {
			alert("아이디 또는 비밀번호를 확인하세요");
			location.href = "session_login.jsp";
		}
		
		check(); //호출
	</script>
<%
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