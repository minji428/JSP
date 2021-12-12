<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<body>
<div align="center">
	<h2>Assign05:error2.jsp</h2>
	<hr>
	
	<table>
		<tr width=100% bgcolor="pink"><td>
		수용한도를 초과했습니다..<br>
		다시 시도 해주세요.
		</td></tr>
		<tr><td>
		${now }<p>
		요청 실패 URI : ${pageContext.errorData.requestURI }<br>
		상태코드 : ${pageContext.errorData.statusCode }<br>
		예외유형 : ${pageContext.errorData.throwable }
		</td></tr>
	</table>
</div>
</body>
</html>