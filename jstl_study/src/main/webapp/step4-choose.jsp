<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.PersonVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL choose 연습</title>
</head>
<body>
	<!-- model 안에 PersonVO class 생성, 멤버변수는 name, age만 추가 -->
	<%
		PersonVO person = new PersonVO("홍길동", 20);
		request.setAttribute("person", person);
	%>
	
	<!-- EL 방식으로 name, age를 출력 -->
	이름 : ${person.name} <br>
	나이 : ${person.age} <br>
</body>
</html>