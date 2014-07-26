
	 <script src="edit/ckeditor_standerd/ckeditor.js"></script>

	<%@ include file="index_header.jsp"%>
	<%@ include file="JDBC_header.jsp"%>

	<script type="text/javascript">
			m_menu =2;
	</script>	
	<script>
		function boardWriteCheck(){
			var form = document.board_write_form;
			if(form.subject.value == ''){
				alert('input the title');
				form.subject.focus();
				return false;
			}
	
			return true;
		}
	</script>
	<script type="text/javascript">
			m_menu =2;
	</script>	

	<%

	    String num = request.getParameter("num");

	    String mode ="M";
		pstmt = conn.prepareStatement(
			"SELECT NUM, SUBJECT, CONTENTS, WRITER, HIT, REG_DATE FROM boo_board "+ 
			"WHERE NUM = ?");
		pstmt.setString(1, num);
		rs = pstmt.executeQuery();
		rs.next();

		
	%>


	<form name ="board_write_form" action ="index_contents_board_process.jsp?num=<%=num%>" method="post" onsubmit="return boardWriteCheck();" >
	<input type="hidden" name="mode" value="M" />
	<input type="hidden" name="num" value="<%=num%>" />

		<label for="Titleinput"><b>Title</b></label>
		 <input id="Titleinput" name="subject" style="margin-bottom:10px;width:99.5%;resize:none" maxlength="100" value="<%=rs.getString("subject")%>"></input>
	

		<!-- <div class = "editor"> -->
		<label for="Contentsinput"><b>Contents</b></label>
       <textarea id ="Contentsinput" name="contents" style="width:100%;height:200px;"><%=rs.getString("contents")%></textarea>
		<script type="text/javascript">
			 CKEDITOR.replace( 'contents' ,{skin:'moono'});
        </script>

		<!-- </div> -->

		<div class="clearfix line_border" >		
				<div class="pull-right">
						<button class="btn btn-primary" type="submit">Confirmation</button>
				</div>			
				<div class="pull-left">
					<a href="index_contents_board_view.jsp?num=<%=num%>">
						<button class="btn btn-primary" type="button">Cancel</button>
					</a>
				</div>				
		</div>

	</form>


	<%@ include file="JDBC_footer.jsp"%>		


	<%@ include file="index_footer.jsp"%>
	
