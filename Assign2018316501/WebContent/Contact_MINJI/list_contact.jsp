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
	</table>
</form>
</body>
</html>