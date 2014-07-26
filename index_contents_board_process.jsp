<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="index_header.jsp"%>
		<script type="text/javascript">
				m_menu =2;
		</script>
<%
	String mode = request.getParameter("mode");
	String subject = request.getParameter("subject");
	// String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
    String num = request.getParameter("num");
    String ip = request.getRemoteAddr();	

    out.println(mode);	
%>

<%@ include file="JDBC_header.jsp"%>

<%
			if ("W".equals(mode)) {
			out.println(mode);
			pstmt = conn.prepareStatement(
				"INSERT INTO boo_board (SUBJECT, WRITER ,CONTENTS, IP, HIT, REG_DATE, MOD_DATE) "+
				"VALUES (?, ?, ?, ?, 0, NOW(), NOW())");
			out.println(ip);
			pstmt.setString(1, subject);
			pstmt.setString(2, "zoflr9305");
			pstmt.setString(3, contents);
			pstmt.setString(4, ip);
			pstmt.executeUpdate();
	
			response.sendRedirect("index_contents_board.jsp");
		} 
%>



<%@ include file="JDBC_footer.jsp"%>		
<%@ include file="index_footer.jsp"%>
