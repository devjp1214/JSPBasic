<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- form 태그를 이용해서 post 형식 이름, 키, 몸무게 3가지 입력 
	 1.qui01_result.jsp로 데이터 전송
	 2. 해당 페이지에서는 넘어간 값을 BMI 지수 처리, double형, 문자형
	 	(BMI공식 : KG / (CM/100 * CM/100)
	 	결과화면에 키, 몸무게, BMI 지수 출력
	 	조건문 이용해서 BMI 25이상 과체중, 18이하 저체중, 나머지 정상 출력-->
	 	
	 	<h3>quiz01 화면</h3>
	 	
	 	<form action="quiz01_result.jsp" method="post">
	 	이름: <input type="text" name="name"><br/>
	 	키: <input type="text" name="cm"><br/>
	 	몸무게: <input type="text" name="kg"><br/>
	 	<input type="submit" value="확인">
	 	</form>
	 	
</body>
</html>