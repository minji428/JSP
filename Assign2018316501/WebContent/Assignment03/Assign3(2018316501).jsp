<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<% request.setCharacterEncoding("utf-8"); %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table { width: 400px; text-align: center; }
        th    { background-color: cyan; }
    </style>    
</head>
<body>

<%

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
    try { 
    	// Class.forName(jdbc_driver);
	    Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbc_url, "root", "alswl3092!");
        //Statement stmt = conn.createStatement();
                             
    	String sql = "insert into score values(?,?,?,?,?)";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, request.getParameter("num"));
    	pstmt.setString(2, request.getParameter("name"));
    	pstmt.setString(3, request.getParameter("kor"));
    	pstmt.setString(4, request.getParameter("eng"));
    	pstmt.setString(5, request.getParameter("math"));
    	
    	if(request.getParameter("num")!=null){
    		pstmt.executeUpdate();
    	}
        
    } catch(Exception e) {
    	System.out.println(e);
    }
%>

<div align="center">
	<H2>성적 입력</H2>
	<HR>
	
	<form name=form1 method=post action=Assign3(2018316501).jsp>
		번호 : <input type=text name=num>
		이름 : <input type=text name=name>
		국어 : <input type=text name=kor>
		영어 : <input type=text name=eng>
		수학 : <input type=text name=math>
		<input type=submit value="등록">
	</form>
	<HR>
</div>

<table>
    <tr>
        <th>번호</th><th>이름</th>
        <th>국어</th><th>영어</th><th>수학</th>
        <th>총점</th><th>평균</th>
    </tr>

<%
	try{
		String sql = "select * from score";

		pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		
		int i=1;
		while(rs.next()) {
			int sum = rs.getInt(3)+rs.getInt(4)+rs.getInt(5);
			int avg = sum/3;
%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=sum %></td>
				<td><%=avg %></td>
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

</body>
</html>