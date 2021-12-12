<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>ch 06 : application 테스트</h2>
<hr>
1. 서버정보 : <%=application.getServerInfo() %><br>
2. 서블릿 API 버전정보 : <%=application.getMajorVersion()+"."+application.getMinorVersion() %><br>
3. application.jsp 파일의 실제경로 : <%=application.getRealPath("application.jsp") %>
<hr>
setAttribute로 username 변수에 "박민지" 설정<p>
<%
	application.setAttribute("username", "박민지");
	application.log("username=박민지");
	application.setAttribute("count", 1);
%>

<a href="application_result.jsp">확인하기</a>
</div>
</body>
</html>