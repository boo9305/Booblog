<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="index_header.jsp"%>
<%@ include file="JDBC_header.jsp"%>

	<script>
		// function boardWriteCheck(){
		// 	var form = document.board_write_form;
		// 	if(form.subject.value == ''){
		// 		alert('input the title');
		// 		form.subject.focus();
		// 		return false;
		// 	}
	
		// 	return true;
		// }
	</script>
	<%
	
	    String num = request.getParameter("num");
	    String mode ="R";
	    String SQL_Search_Contents  = "select * from boo_board where 'num' = num";
		pstmt = conn.prepareStatement(
			"SELECT NUM, SUBJECT, CONTENTS, WRITER, HIT, REG_DATE FROM boo_board "+ 
			"WHERE NUM = ?");
		pstmt.setString(1, num);
		rs = pstmt.executeQuery();
		rs.next();

		
	%>



	<div class ="border_title">
		<h2><%=rs.getString("subject")%></h2>
	</div>

	<div class ="border_contents">
		<p><%=rs.getString("contents")%></p>
	</div>

	<div class="clearfix line_border ">
		<div class="pull-left">
			<a href="index_contents_board.jsp">
				<button class="btn btn-primary" type="button">List</button>
			</a>
		</div>

		<div class="pull-right">
			<a href="index_contents_board_write.jsp">
				<button class="btn btn-primary" type="button">modification</button>
			</a>


			
			
			<a href="index_contents_board_process.jsp?mode=R&amp;num=<%=num%>">
				<button class="btn btn-primary" type="sudmit">Remove</button>
			</a>
		
		</div>
	</div>

<%@ include file="JDBC_footer.jsp"%>		
<%@ include file="index_footer.jsp"%>
