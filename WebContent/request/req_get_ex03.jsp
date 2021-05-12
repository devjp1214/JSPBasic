<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- 
 get방식은 반드시 form태그가 필요하지 않다
 주소를 통해서 강제로 파라미터 값을 전달 할 수 있습니다
 
 값1개: 주소?변수명=값
 값2개: 주소?변수명=값&변수명=값
 ...
 
 -->

 <a href="req_get_ex04.jsp?name=홍길동&number=1">req_ex04로 이동</a>
</body>
</html>