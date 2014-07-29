
	 <script src="edit/ckeditor_full/ckeditor.js"></script>

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




	<form name ="board_write_form" action ="index_contents_board_process.jsp" method="post" onsubmit="return boardWriteCheck();" >
	<input type="hidden" name="mode" value="W" />
	

		<label for="Titleinput"><b>Title</b></label>
		 <input id="Titleinput" name="subject" style="margin-bottom:10px;width:99.5%;resize:none" maxlength="100" placeholder="Enter title"></input>
	

		<!-- <div class = "editor"> -->
		<label for="Contentsinput"><b>Contents</b></label>
       <textarea id ="Contentsinput" name="contents" style="width:100%;height:200px;"></textarea>
		<script type="text/javascript">
			 CKEDITOR.replace(
			  	'contents',
			  	{
			  		filebrowserImageUploadUrl : "upload/upload.jsp",
			  	}
				
           
			 	);
        </script>

		<!-- </div> -->

		<div class="clearfix line_border" >		
				<div class="pull-right">
						<button class="btn btn-primary" type="submit">Confirmation</button>
				

				</div>			
				<div class="pull-left">
					<a href="index_contents_board.jsp">
						<button class="btn btn-primary" type="button">List</button>
					</a>
				</div>				
		</div>

	</form>

	<%@ include file="index_footer.jsp"%>
	
