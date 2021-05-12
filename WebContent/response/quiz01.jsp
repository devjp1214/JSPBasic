<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.form-content {width: 200; margin: 0 auto; text-align: center;}
	.form-control {width: 100%; box-sizing: border-box; margin-top: 10px;}

</style>
</head>
<body>

<%--
1.form 태그를 이용해서 post형식으로 이름, 국어, 수학, 영어점수를 받습니다
2. quiz02페이지로 전송해서 평균을 구하고, 평균이 60이상이라면 합격페이지로 이동, 미만이라면 불합격 페이지로 이동
3. 넘어가는 값이 공백이라면 다시 입력 받도록 처리.
 --%>
 
 	<form action="quiz01_result.jsp" method="post" class="form-content">
 		이름: <input type="text" name="name" class="form-control" required><br/>
 		<!-- required 때문에 값이 없으면 전송 X, 입력란에 작성하세요 뜸 -->
 		국어: <input type="text" name="kr" class="form-control"><br/>
 		수학: <input type="text" name="math" class="form-control"><br/>
 		영어: <input type="text" name="eng" class="form-control"><br/>
 			 <input type="submit" value="제출">
 	
 	</form>
 

</body>
</html>