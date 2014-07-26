
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

   
%>

<%@ include file="JDBC_header.jsp"%>

<%

 out.println(mode);	
		if ("W".equals(mode)) {
			out.println(mode);
			pstmt = conn.prepareStatement(
				"INSERT INTO boo_board (SUBJECT, WRITER ,CONTENTS, IP, HIT, REG_DATE, MOD_DATE) "+
				"VALUES (?, ?, ?, ?, 0, NOW(), NOW())");
			pstmt.setString(1, subject);
			pstmt.setString(2, "zoflr9305");
			pstmt.setString(3, contents);
			pstmt.setString(4, ip);
			pstmt.executeUpdate();

			response.sendRedirect("index_contents_board.jsp");
		} else if ("R".equals(mode)) {

			pstmt = conn.prepareStatement(
					"DELETE FROM BOO_BOARD WHERE NUM= ? ");
			pstmt.setString(1, num);
			pstmt.executeUpdate();
			response.sendRedirect("index_contents_board.jsp");
		}else if ("M".equals(mode)){
			
			pstmt = conn.prepareStatement(
					"UPDATE BOO_BOARD SET SUBJECT= ?, CONTENTS= ?, IP= ? , MOD_DATE = NOW() "+"WHERE NUM = ? ");
			pstmt.setString(1, subject);
			pstmt.setString(2, contents);
			pstmt.setString(3, ip);
			pstmt.setString(4, num);

			pstmt.executeUpdate();
			response.sendRedirect("index_contents_board_view.jsp?num="+num);
		}else{
			out.println("error");
		}


%>



<%@ include file="JDBC_footer.jsp"%>		
<%@ include file="index_footer.jsp"%>
