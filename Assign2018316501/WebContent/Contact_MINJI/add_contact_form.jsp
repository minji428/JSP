<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
	form {
		margin-top: 10px;
	}
	
	label {
		font-size: 16px; 
		width: 100px; 
		display: block; 
		text-align: right;
		margin-right: 10px;
		margin-top: 8px;
		margin-bottom: 8px;
	}
	
	input {
		width: 250px;
		border: 1px solid #666; 
		border-radius: 5px; 
		padding: 4px; 
		font-size: 16px;
	}
	
	.save {
		font-weight: bold;
		width: 130px; 
		padding: 5px 10px; 
		margin-top: 30px;
		background: #cccccc;
	}
	
	table {   
		border-style:none;
		width:50%;
	}
	
	tr:nth-child(even) {background: #FFFFFF}
	tr:nth-child(odd) {background: #FFFFFF}
	
	tr {
		border-style:none;
		text-align:left;	
	}
		
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table></table>
<h2>Contact 추가</h2>
<form name="form1" method="post" action="list_contact_all.jsp">
	<table>
		<tr>
			<td>First name:</td>
			<td><input type="text" name="firstname"></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><input type="text" name="lastname"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="저장"></td>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/contact_tracker";
	
	
	try{
		Class.forName(jdbc_driver);
	
		conn = DriverManager.getConnection(jdbc_url,"root","alswl3092!");
	
		String sql = "insert into contact values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("id"));
		pstmt.setString(2,request.getParameter("first_name"));
		pstmt.setString(3,request.getParameter("last_name"));
		pstmt.setString(4,request.getParameter("email"));
	
		// username 값을 입력한 경우 sql 문장을 수행.

	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
	</table>
</form>
<br>
<a href="list_contact_all.jsp">목록으로</a>
</body>
</html>