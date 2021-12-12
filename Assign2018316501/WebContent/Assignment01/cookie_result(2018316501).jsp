<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name="";
	String mail="";
	
	// 쿠키 정보 가져오기
	String cook = request.getHeader("Cookie");
	if(cook != null){
		// 쿠키 배열 반환 후 없으면 null
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("Name")){
				// 쿠키의 이름이 Name이면 값을 name에 저장
				name = cookies[i].getValue();
			}else if(cookies[i].getName().equals("Email")){				
				// 쿠키의 이름이 Email이면 값을 mail에 저장
				mail = cookies[i].getValue();
			}
		}
	}
%>
name 은 <%=name %> 입니다.<br>
mail 은 <%=mail %> 입니다.
</body>
</html>