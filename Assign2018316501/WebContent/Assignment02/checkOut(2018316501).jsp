<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	<h2>계산</h2>
	선택한 상품 목록
	<hr>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null){
		out.println("선택한 상품이 없습니다");
	}else{
		for(Object productname:list){
			out.println(productname+"<br>");
		}
	}
%>
	<hr>
	총 합계 : 
<%
	int sum = 0;
	List<String> list2 = (List)session.getAttribute("productlist");
	if(list2 != null){
		for(String product : list2){
			if("사과".equals(product)){
				sum += 100;
			}else if("귤".equals(product)){
				sum += 200;
			}else if("파인애플".equals(product)){
				sum += 300;
			}else if("자몽".equals(product)){
				sum += 400;
			}else if("레몬".equals(product)){
				sum += 500;
			}
		}
	}
	out.print(sum+"원 입니다");
%>
</div>
</body>
</html>