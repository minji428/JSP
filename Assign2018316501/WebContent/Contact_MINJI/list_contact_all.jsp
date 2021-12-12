<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<style>
		html, body{
			margin-left:15px; margin-right:15px; 
			padding:0px; 
			font-family:Verdana, Arial, Helvetica, sans-serif;
		}
		
		table {   
			border-collapse:collapse;
			border-bottom:1px solid gray;
			font-family: Tahoma,Verdana,Segoe,sans-serif;
			width:72%;
		}
		 
		th {
			border-bottom:1px solid gray;
			background:none repeat scroll 0 0 #0775d3;
			padding:10px;
			color: #FFFFFF;
		}
		
		tr {
			border-top:1px solid gray;
			text-align:center;	
		}
		 
		tr:nth-child(even) {background: #FFFFFF}
		tr:nth-child(odd) {background: #BBBBBB}	
		 
		#wrapper {width: 100%; margin-top: 0px; }
		#header {width: 72%; background: #0775d3; margin-top: 0px; padding:15px 0px 15px 0px;}
		#header h2 {width: 100%; margin:auto; color: #FFFFFF;}
		#container {width: 100%; margin:auto}
		#container h3 {color: #000;}
		#container #content {margin-top: 20px;}
		
		.add-student-button {
			border: 1px solid #666; 
			border-radius: 5px; 
			padding: 4px; 
			font-size: 12px;
			font-weight: bold;
			width: 120px; 
			padding: 5px 10px; 
			
			margin-bottom: 15px;
			background: #cccccc;
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
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
		if(request.getParameter("id") != null) {
			pstmt.executeUpdate();
		}
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
<form name="form1" method="post" action="add_contact_form.jsp">
	<table border="1">
		<tr>
			<th colspan="3">박민지_2018316501</th>
		</tr>
	</table>
	
	<a href="add_contact_form.jsp">
		<input type="button" value="추가하기">
	</a>

	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
		</tr>
	
<%
	try{
		String sql = "select * from contact";

		pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		
		int i=1;
		while(rs.next()) {
%>
			<tr>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><a href="update_contact_form.jsp">Update</a>
				<td><a href="#">Delete</a></td>
			</tr>
<%
			i++;
		}
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		System.out.println(e);
	}
%>

	</table>
</form>
</body>
</html>