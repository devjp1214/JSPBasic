<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- declaration vs scriptlet -->
<%! //선언자
	//선언자 - 멤버변수, 메서드를 선언할 때 사용(페이지에서 한 번만 실행)
	public int total = 0;
    //total++ 멤버변수라 여기서 증감식 불가능 ! 
%>

<% //스크립틀렛
   //스크립틀렛 - 지역변수, 페이지 실행마다 한번씩 실행되는 코드
	int each = 0;
	// public int num = 0; 지역변수라 접근제한자 불가능!
	
	total++;
	each++;
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		선언자:<%=total %><br/>
		스크립틀렛:<%=each %><br/>
		<!-- 새로고침 눌러서 계속 실행시켜 보면 total은 누적, each는 1 고정 -->

	</p>

</body>
</html>