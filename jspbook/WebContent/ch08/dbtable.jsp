<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	String sql =
		"create table score ("+
		"	num int		primary key,"+
		"	name varchar(20),	"+
		"	kor int,"+
		"	eng int,"+
		"	math int"+
		")";
	stmt.excuteUpdate(sql);		


</body>
</html>