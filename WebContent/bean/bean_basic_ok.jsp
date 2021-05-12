<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
%>

<%--
	id: bean의 이름
	class: 실제 사용할 클래스의 이름
	scope: bean의 사용 범위
	
	스코프속성
	page - 현재 페이지에서만 가능 (기본, 아무것도 선언 안하면 적용)
	request - 다음 페이지까지
	session - 브라우저 종료되기 까지 
	application - 톰캣 종료 까지	
--%>


<!-- setter사용 -->
<jsp:useBean id="user" class="bean.example.User" scope="request"/> <!--객체 생성-->

<jsp:setProperty property="id" name="user" value="<%=id %>"/>
<jsp:setProperty property="pw" name="user" value="<%=pw %>"/>
<jsp:setProperty property="name" name="user" value="<%=name %>"/>
<jsp:setProperty property="email" name="user" value="<%=email %>"/>

<!-- getter사용 -->
<jsp:getProperty property="id" name="user"/>
<jsp:getProperty property="pw" name="user"/>
<jsp:getProperty property="name" name="user"/>
<jsp:getProperty property="email" name="user"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>