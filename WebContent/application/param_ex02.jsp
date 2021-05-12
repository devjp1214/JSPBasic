<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	request.setCharacterEncoding("utf-8"); %>
    
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="똑똑이" name="nick">
	<jsp:param value="20" name="age">
</jsp:forward>

<%-- param 태그는 forward 방식의 필요한 값을 담아줄 때 사용합니다. --%>