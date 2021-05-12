<%@page import="java.util.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!-- Date 클래스 import 했더니 생성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM--dd HH:mm:ss");
	String now = sdf.format(date);
	
	//문자열 저장 하는 리스트
	List<String> list = new ArrayList<>();
	list.add("저장1");
	list.add("저장2");
	
	//키=숫자, 값=문자열 저장하는 해쉬맵 
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "저장1");
	map.put(2, "저장2");
	
	//숫자 저장하는 Set
	Set<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2);
	set.add(3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	지금:<br />
	<%=now %> 

	<hr/>	
	리스트:<br />
	<%=list.toString() %>

	<hr/>
	향상된 for문 출력<br/>
	<% 
		for(String str: list) {
		out.println(str);
		}
	%><br/>
	또는 일반 for문<br/>
	<% for(int i = 0; i <list.size(); i++) { %>
		<%=list.get(i) %>			
	<% } %>

	<hr/>
	맵:<br />
	<%=map.toString() %>
	
	<hr/>
	EntrySet문 출력<br/>
	<% 
		for(Map.Entry<Integer, String> entry : map.entrySet()) {
		out.println("key: " + entry.getKey() + ",value: " + entry.getValue());
		}
	%>

	<hr/>
	셋:<br />
	<%=set.toString() %>

	<hr/>
	향상된for문 출력<br/>
	<%
	for(int num : set) {
	out.println(num);
	}
	%>
    
    <hr/>
	iterator문 출력<br/>
	<% 
	Iterator<Integer> iterator = set.iterator();
	while(iterator.hasNext()) {
		int numm = iterator.next();
		out.println(numm);
	}
	%>






</body>
</html>