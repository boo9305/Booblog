
<%@ include file="index_header.jsp"%>
<%@ include file="JDBC_header.jsp"%>
	<script type="text/javascript">
				m_menu =2;
		</script>	
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
		pstmt = conn.prepareStatement(
			"SELECT NUM, SUBJECT, CONTENTS, WRITER, HIT, REG_DATE, MOD_DATE FROM boo_board "+ 
			"WHERE NUM = ?");
		pstmt.setString(1, num);
		rs = pstmt.executeQuery();
		rs.next();

		
	%>



	<div class ="board_title">
		<h2><%=rs.getString("subject")%><h3><small><%=rs.getString("MOD_DATE")%></h3></small></h2>
	</div>

	<div class ="board_contents">
		<p><%=rs.getString("contents")%></p>
	</div>

	<div class="clearfix line_border ">
		<div class="pull-left">
			<a href="index_contents_board.jsp">
				<button class="btn btn-primary" type="button">List</button>
			</a>
		</div>

		<div class="pull-right">
			<a href="index_contents_board_modification.jsp?num=<%=num%>">
				<button class="btn btn-primary" type="button">modification</button>
			</a>


			
			
			<a href="index_contents_board_process.jsp?mode=R&amp;num=<%=num%>">
				<button class="btn btn-primary" type="sudmit">Remove</button>
			</a>
		
		</div>
	</div>

<%@ include file="JDBC_footer.jsp"%>		
<%@ include file="index_footer.jsp"%>
