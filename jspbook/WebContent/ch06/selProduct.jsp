<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");

	session.setAttribute("username", request.getParameter("username"));
%>
</head>
<body>
<div align="center">
	<h2>상품선택</h2>
	<hr>
	<%=session.getAttribute("username") %>님이 로그인한 상태입니다.
	<hr>
	<form name="form1" method="post" action="add.jsp">
		<select name="product">
			<option>사과 100원</option>
			<option>귤 200원</option>
			<option>파인애플 300원</option>
			<option>자몽 400원</option>
			<option>레몬 500원</option>
		</select>
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">계산</a>
</div>
</body>
</html>