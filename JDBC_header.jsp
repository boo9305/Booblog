<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<%
	    String driverName="com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/my_web";
	    String id = "root";
	    String pwd ="9305";
	   	Connection conn =null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;

	    try{
	        //[1] JDBC 드라이버 로드
	        Class.forName(driverName);     
		    
			int md_column_count =0;
			    // out.println("mysql jdbc Driver registered!!");
			   
		    //[2]데이타베이스 연결 
			conn = DriverManager.getConnection(url,id,pwd);
	    
	
	%>