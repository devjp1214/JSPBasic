<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action ="req_get_ex02.jsp">
<!-- 사용자가 확인하는 화면 -->
<!-- 사용자가 값을 입력할 때 form 태그를 이용 submit버튼 누르면 form데이터 전송 -->
<!-- 전송될 주소를 action속성에 적습니다 -->
<!-- name속성 꼭 있어야 식별 해서 받을 수 있음 -->
<!-- checkbox, radio속성은 value속성에 값 지정 -->

		<h4>회원가입 양식</h4>
		아이디: <input type ="text" size="8" name="id" placeholder="8글자"><br/>
	        비밀번호: <input type ="password" size="10" name="pw"><br/>
	        이메일: <input type ="email" size="10" name="email"><br/>

	        관심분야: 
	    <input type="checkbox" name="inter" value="java">JAVA
	    <input type="checkbox" name="inter" value="jsp">JSP
	    <input type="checkbox" name="inter" value="js">JS
	    <input type="checkbox" name="inter" value="css">CSS
	    <input type="checkbox" name="inter" value="db">DB
	    <br>

	   	전공:
	    <input type="radio" name="major" value="경영학">경영학
	    <input type="radio" name="major" value="전산학">전산학
	   	<input type="radio" name="major" value="컴퓨터공학">컴퓨터공학
	   	<input type="radio" name="major" value="기계학">기계학
	   	<input type="radio" name="major" value="수학">수학   
	   	<br/> 

	   	지역:
	   	<select name="region">
	   		<option>서울</option>
	   		<option>경기</option>
	   		<option>인천</option>
	   		<option>부산</option>
	   	</select>
	   	<br/>

	   	자기소개:<br/>
	   	<textarea rows="5" cols="30" name="comments"></textarea>
	   	<br/>
	   	<input type="submit" value="가입">
	   	<input type="reset" value="초기화">
	   	<input button="button" value="목록">
	</form>
	   	
	
</body>
</html>