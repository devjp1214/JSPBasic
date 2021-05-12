<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="session.example.User" %>
	
<%
/*
1. 사용자가 입력한 값을 받은 다음에 값을 저장할 수 있는 자바 클래스(멤버 private, getter, setter)
2. 받은 값을 User에 저장하고, 저장한 User 클래스를 세션에 저장하세요
3. quiz01_ok페이지로 리디렉트 (여기서 세션에 저장된 id, 이름만 뽑아서 출력)

본인이 만든 클래스는 반드시 패키지화 되어 있어야 함
*/

//1.
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String region = request.getParameter("region");

User user = new User(id, pw, name, email, region);

if(id != null && pw != null) {
	//2.
	session.setAttribute("user_type", user); 
	session.setMaxInactiveInterval(1800);
	
	response.sendRedirect("quiz01_ok.jsp");
} else {
	response.sendRedirect("quiz01.jsp");
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