<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	List<String> list = new ArrayList<>(); //누적될 리스트
	Random ran = new Random();
	String[] jobs = {"어피치","라이언","제이지","무지","프로도"};
%>
<%
	int r = ran.nextInt(jobs.length);
	list.add(jobs[r]);
	int count = 0;
	for(String s : list) {
		if(s.equals(jobs[r])) {
			count++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= jobs[r] %> 친구가 입장했습니다</h2>

	<b>현재인원:</b> <%= list.toString() %><br/>
	<b>중복된 카카오 프렌즈:</b> <%=count %>명
	<%
		//clear list 
		if(list.size() == 10) {
			list.clear();
		}
	%>
<script>
    setTimeout('location.reload()',2000); 
</script>
</body>
</html>
