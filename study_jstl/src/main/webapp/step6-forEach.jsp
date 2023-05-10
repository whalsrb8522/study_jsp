<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] food = {"사과", "배", "귤", "감", "딸기", "바나나"};
		request.setAttribute("f", food);
	%>
	
	<c:forEach items="${requestScope.f}" var="fname" varStatus="order">
		count : ${order.count}
		index : ${order.index}
		${fname} <br>
	</c:forEach>
</body>
</html>