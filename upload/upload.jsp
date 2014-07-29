<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 첨부된 파일을 받아서 올리는데 목적이 있다.
    // 위치는 현재 프로젝트 /upload
    String path = "C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/ROOT/Booblog/upload/img";

    // 파일이 첨부된 경우에는 일반적으로 request로 받지 못한다.
    // 이유는 폼 태그에서 enctype이 지정되기 때문이다.
    // 그리고 받는 JSP에서는 Multi를 지원하는 객체로 받아야 한다.

    MultipartRequest mr = new MultipartRequest(
            request, path, 1024*1024*100, "utf-8", 
            new DefaultFileRenamePolicy());


    File s_file = mr.getFile("upload"); //

    String o_name = mr.getOriginalFileName("upload");//이거다 찾음 제발  파일 이름 반환 
    String o_name2= mr.getFilesystemName("upload");//저장된 파일이름 반환
    String funcNum = request.getParameter("CKEditorFuncNum");
    String fullpath = "/Booblog/upload/img/"+o_name;


    %>

    <script>alert('<%=o_name2%>')</script>

    <%
    
    path +="Booblog/upload/img/123123.jsp";
   // Softwaretring fileUrl = "C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/ROOT/Booblog/upload";
    out.write("<script>window.parent.CKEDITOR.tools.callFunction(" + funcNum + ", '" +fullpath + "');</script>");
%>    
