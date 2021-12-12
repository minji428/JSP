<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String filename = request.getParameter("filename");
	String directory = application.getRealPath("upload");
	ServletContext context = getServletContext();
	
	String realPath = context.getRealPath(directory);
	
	String RrealPath = realPath+"\\"+filename;
	
	File file = new File(RrealPath);
	long length = file.length();
	
%>
</body>
</html>