<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
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
<table>
	<tr>
		<th>박민지_Phone_010-2500-1998</th>
	</tr>
</table>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/contact_tracker";
	
	
	try{
		
		Class.forName(jdbc_driver);
		
		conn = DriverManager.getConnection(jdbc_url,"root","alswl3092!");
		
		String sql = "select * from contact";

		pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		System.out.println(e);
	}
%>



<h2>정보 갱신</h2>
<table>
	<tr>
		<td>First name : </td>
		<td></td>
	</tr>
	<tr>
		<td>Last name:</td>
		<td></td>
	</tr>
	<tr>
		<td>Email:</td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="저장"></td>
	</tr>
</table>



<script type="text/javascript">
	function delcheck() {
		result = confirm("정말로 삭제하시겠습니까 ?");
	
		if(result == true){
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else
			return;
	}
</script>


<a href="list_contact_all.jsp">Back to List</a>

</body>
</html>