<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>out 객체는 jsp 파일에서 html응답을 보내기 위해 사용하는 출력내장객체(표현식이 대신)</h3>
	
	<%
		out.println("<b>b태그는굵게입니다</b>");
		out.println("<p>");
		for(int i = 1; i <= 10; i++) {
			out.println("<input type = 'checkbox' name = 'num' >" + i);
		}
		out.print("</p>");
	%>
	
	<hr/>
	
	jsp 파일에서는 위에처럼 말고 이렇게 쓸 것<br/>
	<i>i태그는 이탈릭체</i>
	<p>
		<% for(int i = 1; i <= 10; i++) { %>
			<input type = "checkbox" name = "num"><%=i %>
		<% } %>
		
	
	</p>

</body>
</html>