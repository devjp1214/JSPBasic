<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>가장 많이 쓰이는 Scriptlet</h3>
	<!-- sysout 은 콘솔창의로의 출력, html 화면으로 출력을 하고 싶다면 out.println-->
	<%
		int a = 1;
		if(a > 10) {
			System.out.println("10보다 큽니다");
			out.println("10보다 큽니다");
		} else {
			System.out.println("10보다 작습니다");
			out.println("10보다 작습니다");			
		}
			
	%>
	<hr/>
	<%
		for(int i = 1; i <= 10; i++) {
			out.println(i + "<br/>");
			//자바 코드에서는 ln이 줄바꿈인데, html에선 아니라 문자열의 형태로 <br>태그 사용
		}
	%>
	<hr/>
	<%
	
		int num = (int)(Math.random() * 20) +1;
		if(num > 10) {
			out.println("<p>참입니다~</p>");
		} else {
			out.println("<p>거짓입니다~~</p>");
		}
		//html 태그를 문자열의 형태로 out.println을 통해서 화면에 출력 할 수 있지만
		//이러한 코드들이 쌓이다 보면 가독성이 좋지 않아지기 때문에 분리하는 것 이 바람직
		//합쳐서 쓰는 경우도 있지만
	%>
	<hr/>
	<% if(num > 10) { %>
	 	<p>참입니다~</p>			
	<% } else { %>	
		<p>거짓입니다~</p>			
	<% } %>
	<hr/>
	1.  구구단 전체 뽑기<br/>
	<% 
	for(int i = 2; i < 10; i++) { 
			for(int j = 1; j <10; j++) {				
			out.println(i + "*" + j + "=" + i*j + "<br/>");			
	    }
	} 	
	%>
	<hr/>
	2.  3단 뽑기<br/>
	<%
	for(int i = 1; i < 10; i++) {
		out.println(3 + "*" + i + "=" + i*3 + "<br/>");
	}	
	%>
	<hr/>
	3-1.  체크박스 10개를 브라우저 생성<br/>
	<% for(int i = 1; i <=10; i++) { 
	out.println(i + ". " + "체크박스 " + "<input type='checkbox'>" + "<br/>");
	}%>
	
	<hr/>
	3-2.<br/>
	<% for(int i = 1; i <=10; i++) { %>
	<input type ="checkbox">
	<% } %>
	
</body>
</html>