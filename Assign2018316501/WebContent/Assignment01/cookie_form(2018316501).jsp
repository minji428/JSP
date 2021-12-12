<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%
		String name = "MinjiPark";
		Cookie cookie = new Cookie("Name", name);
		cookie.setComment("이름");
		response.addCookie(cookie);
		
		String mail = "alswl980428@skuniv.ac.kr";
		Cookie cookie1 = new Cookie("Email", mail);
		cookie1.setComment("메일");
		response.addCookie(cookie1);
		
	%>
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>쿠키 테스트</h2>
	
	쿠키 설정이 완료되었습니다
	<br><br>
	<a href="cookie_result(2018316501).jsp">쿠키보기</a>
	<a href="cookie_delete(2018316501).jsp">쿠기삭제</a>	
</div>
</body>
</html>