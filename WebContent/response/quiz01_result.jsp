<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*값을 보내준다면 이렇게 복잡한 코드를 짜야하지만 애초에
	값이 없으면 보내지 않는다는 required를 intput태그 안에 넣어주면
	전송이 되지 않아서 이렇게 코드를 짤 필요가 없음
	*/

	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String kr = request.getParameter("kr"); 
	String math = request.getParameter("math");
	String eng = request.getParameter("eng");

	//값이 공백이라면 다시 화면으로
	if(name.equals("") || kr.equals("") || math.equals("") || eng.equals("")) {
		response.sendRedirect("quiz01.jsp");
	} else {

		int score1 = Integer.parseInt(request.getParameter("kr"));
		int score2 = Integer.parseInt(request.getParameter("math"));
		int score3 = Integer.parseInt(request.getParameter("eng"));
		
		double avg = (score1+score2+score3) / 3.0;
		
		if(avg >= 60) {
			response.sendRedirect("quiz01_pass.jsp");
		}else {
			response.sendRedirect("quiz01_fail.jsp");
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

</body>
</html>