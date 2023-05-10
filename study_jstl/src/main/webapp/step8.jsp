<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.PersonVO" %>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
		border-collapse: collapse;
	}
	
	th, td {
		border: 1px solid black;
		padding: 5px 10px;
		text-align: center;
	}
</style>
<body>
	<%
		// PersonVo 객체를 이용 list에 여러명 추가
		// list를 request 객체에 담아 jsp 전송
		ArrayList<PersonVO> list = new ArrayList<>();
		
		list.add(new PersonVO("홍길동", 40));
		list.add(new PersonVO("홍길순", 35));
		list.add(new PersonVO("홍길자", 5));
		list.add(new PersonVO("홍기철", 15));
		list.add(new PersonVO("홍기자", 30));
		
		request.setAttribute("personList", list);
	%>
	
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>연령대</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.personList}" var="person" varStatus="order">
				<tr>
					<td>${order.count}</td>
					<td>${person.getName()}</td>
					<td>${person.getAge()}</td>
					<td>${person.getAge() >= 30 ? "성인" : "미성년"}</td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>	
</body>
</html>