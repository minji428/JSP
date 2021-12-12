<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			// 쿠키의 유효시간을 0으로 설정해 만료
			cookies[i].setMaxAge(0);
			
			// 응답 헤더에 추가
			response.addCookie(cookies[i]);
		}
	}
%>

쿠키가 삭제되었습니다 <a href="cookie_result(2018316501).jsp">쿠키 삭제 확인</a>
</body>
</html>