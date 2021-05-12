<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS는 HTML에 디자인을 입히는 언어, 사용하는 형식으로는 인라인, 내부스타일시트, 외부스타일시트가 있음 -->
<!-- 내부 스타일 시트는 style 태그를 이용해서 디자인을 주는 방식 -->
<!-- 태그에는 class 속성이 존재하고 디자인을 줄 때 이 클래스를 선택하는 방법을 많이 이용, class ="클래스이름" -->
<!-- 클래스에 접근하는 선택자는 . 입니다 -->

<style>
	.form-content {width: 200px; margin: 0 auto;}
	.form-control {width: 100%; box-sizing: border-box; margin-top: 10px;}
	.form-group {text-align: center;}
</style>


</head>
<body>

	<section>
		<div class="form-content">
			<form action="response_ex02_result.jsp" method="post" class="form-group"> <!-- 아이디 비밀번호는 반드시 post로 (보안) --> 
				<span>로그인 폼</span><br/>
				
				<input type="text" name="id" placeholder="아이디" name="id" class="form-control"><br/>
				<input type="password" name="pw" placeholder="비밀번호" name="pw" class="form-control"><br/>
				<input type="submit" value="로그인" class="form-control">
				
			</form>
		</div>
	</section>

<!-- span과 div 모두 공간태그 span은 인라인, div는 블럭--> 

</body>
</html>