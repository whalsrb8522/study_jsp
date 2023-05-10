<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL param 연습3</title>
</head>
<body>
	<!-- 스크립틀릿 방식에서는 넘어오는 parameter 값이 문자열로 인식, 20 + 1 => 201 -->
    1. 스크립틀릿 방식으로 파라미터를 전달받음 <br>
	<%=request.getParameter("nick")%> <br>
	<%=request.getParameter("age") + 1%>세 <br>
	<hr>
	
	<!-- EL 방식은 내부적으로 형변환이 이루어져 연산이 가능 20 + 1 => 21 -->
	2. EL 방식으로 파라미터를 전달받음 <br>
	${param.nick} <br>
	${param.age + 1} 세 <br>
	<hr>
	
	<form action="./step2-4.jsp">
		<input type="checkbox" name="food" value="삼겹살">삼겹살 <br>
		<input type="checkbox" name="food" value="목살">목살 <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>