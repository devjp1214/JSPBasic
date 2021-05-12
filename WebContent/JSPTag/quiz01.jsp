<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
<%!
	int visitCount = 0;
%>
<% 
	int num = (int)(Math.random()*8)+2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    	
	<%=
	++visitCount 
	%> 번째 방문자 입니다.<br/>
	
	<% if(visitCount%10 == 0) {
		out.println("당첨되셨습니다.");
	}
	%>
		
	<hr/>
	<h1>랜덤구구단 <%=num %>단</h1>
	
	이번에 나온 구구단 <%=num %>단 입니다<br/>
	
	<% for(int i = 1; i <= 9; i++) {
		out.println(num + "X" + i + "=" + num*i + "<br/>");
		}
	%>
	

	

</body>
</html>