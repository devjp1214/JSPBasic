<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HttpServletRequest request = new HttpServletRequest();
	//자동 생성 되어 있기 때문에 request. 으로 바로 사용 가능
	
	
	//request객체에는 브라우저에 대한 정보 or 사용자가 전달하는 값 등등 많은 정보를 담을 수 있음
	StringBuffer url = request.getRequestURL(); //URL
	
	String uri = request.getRequestURI(); //URI
	
	String path = request.getContextPath(); //서버가 프로젝트를 구분하는 경로
	
	String mtd = request.getMethod();
	
	String remote = request.getRemoteAddr();
	
	System.out.println(remote);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

요청 URL주소: <%=url %><br/>
요청 URI주소: <%=uri %><br/>
루트경로: <%=path %><br/>
요청방식: <%=mtd %><br/> <!--get방식-->
요청아이피: <%=remote %><br/>

</body>
</html>