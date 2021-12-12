<%@page import="final_2018316501.BookBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	BookBean b1 = new BookBean();
	
<%
	ArrayList<BookBean> bookList = new ArrayList<BookBean>();

	bookList data = new BookBean("미드나잇 라이브러리", "매크 헤이그", "인플루엔셜");
	bookList.add("미드나잇 라이브러리");
	bookList.add("매크 헤이그");
	bookList.add("인플루엔셜");
	bookList.add("자바 웹 프로그래밍");
	bookList.add("황희정");
	bookList.add("한빛아카데미");
	
	String[] bookCode = {"소설", "역사", "인문", "정치", "미술", "종교", "여행", "과학", "만화", "건강"};
%>

	<
${BookBean.title} <BR>
${BookBean.author} <BR>
${BookBean.publisher} <BR>
</body>
</html>