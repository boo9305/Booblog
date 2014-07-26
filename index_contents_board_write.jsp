<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	 <script src="edit/ckeditor/ckeditor.js"></script>

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




	<%@ include file="JDBC_footer.jsp"%>		


		<form name ="board_write_form" action ="index_contents_board_process.jsp" method="post" onsubmit="return boardWriteCheck();">
		<input type="hidden" name="mode" value="W" />
			<div clss="clearfix">
				 <textarea name="subject" style="width:98%;height:20px;resize:none"></textarea>
			</div>
			<!-- <div class = "editor"> -->
	       <textarea name="contents" style="width:100%;height:200px;"></textarea>
			<script type="text/javascript">
				 CKEDITOR.replace( 'contents' );
	        </script>

			<!-- </div> -->

			<div class="clearfix line_border" >		
					<div class="pull-right">
						<a href="index_contents_board.jsp">
							<button class="btn btn-primary" type="submit">Confirmation</button>
						</a>

					</div>			
					<div class="pull-left">
						<a href="index_contents_board.jsp">
							<button class="btn btn-primary" type="button">List</button>
						</a>
					</div>				
			</div>

		</form>
	<%@ include file="index_footer.jsp"%>
	
