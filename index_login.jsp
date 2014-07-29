<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">   
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    
    <script src="jquery/jquery-1.11.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
   <script src="bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap/js/ie10-viewport-bug-workaround.js"></script>
<html>
  <head></head>


  <body>
      <h1>파일첨부</h1>
  <form action="te.jsp" method="post" enctype="multipart/form-data">
    첨부파일:<input type="file" name="s_file"/><br/>
    <input type="submit" value="보내기"/>
  </body>
</html>