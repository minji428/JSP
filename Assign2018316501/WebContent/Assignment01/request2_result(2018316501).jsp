<%@page import="java.util.Enumeration"%>
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
<h2>취미와 가보고 싶은 국가 결과</h2>
취미 와 국가
<%
	Enumeration enums = request.getParameterNames();

	while(enums.hasMoreElements()){
		String name = (String)enums.nextElement();		
		String values[] = request.getParameterValues(name);
		
		out.println("<br><br>");

		for(String value : values){				
			if(name.startsWith("hobby")){
				out.println(value+"&nbsp");
			}else{
				out.println(value);	
			}
		}		
	}
%>	
</body>
</html>