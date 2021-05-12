<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8"); //한글처리
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	//age 숫자로 변환
	int result = Integer.parseInt(age);
	
	if(result >= 20) {
		response.sendRedirect("response_ex01_okay.jsp");
	} else {
		response.sendRedirect("response_ex01_no.jsp");
	}
	
	/*
	response_ex01에서 action, method=post 를통해서 result 페이지로 넘어오고
	여기 result 페이지에서는 response.sendRedirect를 통해 다시 경로 재설정 (조건에 따라서
	no, okay 페이지로~ 결국 이곳은 값을 받아 처리만 하는 페이지고, 화면상에 나타나지 않음
	*/
	
	/* 
	값을 받을때는 request.getParameter, 값을 보낼때는 response.sendRedirect
	*/


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