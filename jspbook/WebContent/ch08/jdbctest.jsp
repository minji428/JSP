<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;

	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
	
	try{
		Class.forName(jdbc_driver);

		conn = DriverManager.getConnection(jdbc_url,"root","alswl3092!");

		String sql = "insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("username"));
		pstmt.setString(2,request.getParameter("email"));

		// username 값을 입력한 경우 sql 문장을 수행.
		if(request.getParameter("username") != null) {
			pstmt.executeUpdate();
		}
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
<HTML>
<HEAD><TITLE>ch08 : JDBC 테스트 </TITLE></HEAD>
<BODY>
<div align="center">
	<H2>이벤트 등록</H2>
	<HR>
	
	<form name=form1 method=post action=jdbctest.jsp>
		등록이름 : <input type=text name=username>
		email주소 : <input type=text name=email size=20>
		<input type=submit value="등록">
	</form>
	<HR>
</div>
# 등록 목록<P>
<%
	try{
		String sql = "select username, email from jdbc_test";

		pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		int i=1;

		while(rs.next()) {
			out.println(i+" : "+rs.getString(1)+" , "+rs.getString("email")+"<BR>");
			i++;
		}

		
/*		String sql2 =
				"create table score ("+
				"	num int		primary key,"+
				"	name varchar(20),	"+
				"	kor int,"+
				"	eng int,"+
				"	math int"+
				")";
			pstmt.executeUpdate(sql2);
			out.println("성적 테이블 생성 성공!");
*/
			
		rs.close();
		pstmt.close();
		conn.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
</BODY>
</HTML>