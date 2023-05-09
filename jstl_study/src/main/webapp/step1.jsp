<%@ page import="model.CarVO"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연습</title>
</head>
<body>
	<h3>EL (Expression Language)</h3>
	<%
		CarVO car = new CarVO("1234", "소나타", 2000);
		// request.setAttribute : request 객체에 값을 저장하는 역할
		// request.getAttribute : request 객체에 값을 가져오는 역할
		// request.setAttribute("변수명", 값";)
		request.setAttribute("cvo", car);
	%>

	<!-- 변수 출력 -->
	<strong>1. CarVO의 객체에서 변수 출력</strong> <br>
	<!-- 방법1 : requestScope를 사용 -->
	${requestScope.cvo.name} <br>

	<!-- 방법2 : requestScope (생략가능) -->
	${cvo.name} <br> 
	${cvo.num } <br> 
	${cvo.price} <br>

	<!-- 리스트로 변수 출력 -->
	<%
		ArrayList<CarVO> list = new ArrayList<CarVO>();
		list.add(new CarVO("4567", "벤츠", 5000));
		session.setAttribute("carList", list);
	%>
	
	<!-- 변수 출력 -->
	<strong>2. CarVO의 객체에서 변수 출력</strong> <br>
	${sessionScope.carList[0].name} <br>
	
	<!-- 해쉬맵으로 변수를 출력 -->
	<%
		HashMap<String, CarVO> map = new HashMap<>();
		map.put("car1", new CarVO("8901", "브롱코", 500));
		request.setAttribute("carMap", map);
	%>
	
	<!-- 변수 출력 -->
	<strong>3. CarVO의 객체에서 변수 출력</strong> <br>
	${carMap["car1"].num} <br>
	${carMap["car1"].name} <br>
	${carMap["car1"].price} <br>
</body>
</html>