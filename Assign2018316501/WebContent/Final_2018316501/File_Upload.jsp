<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,
                 com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                 java.io.File" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

<% 
    MultipartRequest multi = new MultipartRequest(
            request,                    // POST 로 전달된 내용을 담은 객체
            application.getRealPath("/UploadFiles"),   // 파일을 저장할 경로
            1024 * 1024 * 1024,                   // 최대 파일 크기 (100MB)
            "utf-8",                             // 인코딩
            new DefaultFileRenamePolicy()        // 동일 파일명 처리 방법
    );

    File file1 = multi.getFile("upload");         // 파일 객체 얻기
    File file2 = multi.getFile("upload");         // 파일 객체 얻기
    File file3 = multi.getFile("upload");         // 파일 객체 얻기
    File file4 = multi.getFile("upload");         // 파일 객체 얻기
    File file5 = multi.getFile("upload");         // 파일 객체 얻기
    
    if (file1 == null)
        out.print("파일1 업로드 오류!");
    if (file1 == null)
        out.print("파일2 업로드 오류!");
    if (file1 == null)
        out.print("파일3 업로드 오류!");
    if (file1 == null)
        out.print("파일4 업로드 오류!");
    if (file1 == null)
        out.print("파일5 업로드 오류!");
    else {
        out.print("File Name : " + file1.getName() + "<br>");
        out.print("File Size : " + file1.length()  + "<br>");
        out.print("File Name : " + file2.getName() + "<br>");
        out.print("File Size : " + file2.length()  + "<br>");
        out.print("File Name : " + file3.getName() + "<br>");
        out.print("File Size : " + file3.length()  + "<br>");
        out.print("File Name : " + file4.getName() + "<br>");
        out.print("File Size : " + file4.length()  + "<br>");
        out.print("File Name : " + file5.getName() + "<br>");
        out.print("File Size : " + file5.length()  + "<br>");
    }
%>

</body>
</html>