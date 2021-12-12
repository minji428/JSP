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
<h2>학생 정보 입력 결과</h2>
학번 : <%= request.getParameter("hakbun") %><br>
성명 : <%= request.getParameter("name") %><br>
전공 : <%= request.getParameter("subject") %><br>

<h2>요청 정보</h2>
요청 방식 : <%=request.getMethod() %><br>
요청 URL : <%=request.getRequestURL() %><br>
요청 URI : <%=request.getRequestURI() %><br>
클라이언트 주소 : <%=request.getRemoteAddr() %><br>
클라이언트 호스트 : <%=request.getRemoteHost() %><br>
프로토콜 방식 : <%=request.getProtocol() %><br>
서버 이름 : <%=request.getServerName() %><br>
서버 포트번호 : <%=request.getServerPort() %><br>
</body>
</html>