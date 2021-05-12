<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	a태그에 강의목록을 식별할 수 있는 매개값을 넘겨주세요
	두번째 화면에서는 식별할 값 별로 해당 동영상만 보여지도록 처리 -->
	
	<div align="center"> <!-- align은 하위 요소들 전부 정렬 -->
		<table border="1">
			
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일자</th>				
			</tr>
			
			<tr>
				<td>
					<a href="req_video_result.jsp?course=java">
						<img src="img/1.png" width="200" alt="자바">
					</a>
				</td>	
				<td>
					<a href="req_video_result.jsp?course=java">자바 강의</a>
				</td>
				<td>자바 기본 문법을 학습합니다</td>
				<td>2020-01-01</td>
			</tr>
			
			<tr>
				<td>
					<a href="req_video_result.jsp?course=js">
						<img src="img/2.png" width="200" alt="JS">
					</a>
				</td>	
				<td>
					<a href="req_video_result.jsp?course=js">JS 강의</a>
				</td>
				<td>JS 기본 문법을 학습합니다</td>
				<td>2020-02-02</td>
			</tr>
			
			<tr>
				<td>
					<a href="req_video_result.jsp?course=oracle">
						<img src="img/3.png" width="200" alt="오라클">
					</a>
				</td>	
				<td>
					<a href="req_video_result.jsp?course=oracle">오라클 강의</a>
				</td>
				<td>오라클 기본 문법을 학습합니다</td>
				<td>2020-03-03</td>
			</tr>
		
		</table>
	</div>
</body>
</html>