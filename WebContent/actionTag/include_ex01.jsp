<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>1번 페이지</h2>
	
	<%-- 
	<%@ page include file="include_ex02.jsp" %> <!-- 지시자 인클루드 -->
	--%>
	
	<jsp:include page="include_ex02.jsp" /> <!-- 액션태크 인클루드 -->
	
	<%-- 지시자 인클루드는 페이지에 사용하는 변수도 가져올 수 있는 반면에 액션태그 인클루드는 단순히 html
	영역만 가져올 수 있음--%>
	
	
</body>
</html>