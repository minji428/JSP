<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forward_action.jsp에서 footer.jsp호출</h2>
<hr>
forward_action.jsp에서 호출한 메시지입니다.<br>
<jsp:forward page="footer.jsp">
	<jsp:param value="test@test.net" name="email"/>
	<jsp:param value="000-000-0000" name="tel"/>
</jsp:forward>
</body>
</html>