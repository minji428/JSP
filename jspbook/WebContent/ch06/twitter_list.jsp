<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	
	if(username != null){
		session.setAttribute("user", username);
	}
%>
</head>
<body>
<div align = "center">
	<h3>My Simple Twitter!!</h3>
	<hr>
	<form action="tweet.jsp" method="post">
		<!-- 세션에 저장된 이름 출력 -->
		@<%=session.getAttribute("user") %>
		<input type="text" name="msg">
		<input type="submit" value="tweet">
	</form>
	<hr>
	<div align="left">
	<ul>
	<%
	ArrayList<String>msgs = (ArrayList<String>)application.getAttribute("msgs");
		
	if(msgs != null){
		for(String msg : msgs){
			out.println("<li>"+msg+"</li>");
		}
	}
	%>
	</ul>
	</div>
</div>
</body>
</html>