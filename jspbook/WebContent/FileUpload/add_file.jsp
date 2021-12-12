<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
                 com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                 java.io.File" %>
<%@ page import="java.time.*" %>

<%
    MultipartRequest multi = new MultipartRequest(
            request,
            application.getRealPath("/UploadFiles"),   // 파일을 저장할 경로
            100 * 1024 * 1024,                   // 최대 파일 크기 (100MB)
            "utf-8",                             // 인코딩
            new DefaultFileRenamePolicy()        // 동일 파일명 처리 방법
    );

    File file = multi.getFile("upload");         // 파일 객체 얻기
    Connection conn = null;
    Statement stmt = null;

 // 데이터베이스 연결관련정보를 문자열로 선언
     String jdbc_driver = "com.mysql.jdbc.Driver";
     String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
    if (file != null) {
        
        try {
        Class.forName(jdbc_driver);
        conn = DriverManager.getConnection(jdbc_url,"jspbook","alswl3092!");
                stmt = conn.createStatement();
         {
            // 현재 시간 얻기
            String curTime = LocalDate.now() + " " +
                             LocalTime.now().toString().substring(0, 8);

            // 쿼리 실행
            stmt.executeUpdate(String.format(
                "insert into webhard (fname, ftime, fsize) " +
                "values ('%s', '%s', %d)",
                file.getName(), curTime, (int)file.length()));

            // 메인 페이지로 돌아가기
            response.sendRedirect("webhard.jsp");
            return;

        } 
        }
         catch(Exception e) {
            e.printStackTrace();
        }
    }

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

<script>
    alert('업로드 실패 !');
    history.back();
</script>

</body>
</html>