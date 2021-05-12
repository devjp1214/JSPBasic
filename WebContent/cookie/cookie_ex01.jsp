<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//화면 진입시 아이디 기억하기 쿠키 검사(아이디 기억하기 쿠키를 찾아서 input 태그안에 id 값을 미리 넣어주기)
	//input 태그에 미리 값을 넣으려면 value속성을 이용

	Cookie[] cookies = request.getCookies();
	
	String lastId = "";
	if(cookies != null) {
		for(Cookie c : cookies) {
			if(c.getName().equals("idcheck")) {
				lastId = c.getValue();
			}
		}	
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키를 사용한 로그인 연습</h3>
	<form action = "cookie_ex01_result.jsp" method="post">
		아이디: <input type = "text" name= "id" value="<%=lastId %>" required><br/>
		비밀번호: <input type = "password" name= "pw" required><br/>
		<input type = "submit" value="로그인"><br/>
		아이디 기억하기	<input type = "checkbox" name="idcheck"><br/>
	</form>
</body>
</html>