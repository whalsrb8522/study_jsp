<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL param 연습4</title>
</head>
<body>
	<!-- 쿼리스트링 값이 같은 키로 두개 이상 들어올 경우, 배열로 입력받아진다 -->
	메뉴1 : ${paramValues.food[0]} <br>
	메뉴2 : ${paramValues.food[1]} <br>
</body>
</html>