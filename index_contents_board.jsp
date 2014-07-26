<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


	<%@ include file="index_header.jsp"%>
	<%@ include file="JDBC_header.jsp"%>
		<%
		   	String SQL_column_count  = "select count(*) Num from boo_board";
		    String SQL_search  = "select * from boo_board ORDER BY NUM DESC";
		  //  int column_count;
		  	
		    pstmt = conn.prepareStatement(SQL_column_count);   
		   	rs = pstmt.executeQuery();
		   	rs.next();

			md_column_count	=	rs.getInt("Num");
		//	while(rs.next())
		 //		out.println(rs.getString(1) + "<br>");
			//rs.beforeFirst();
		  	// beforefirst ) Moves the cursor to just before the first row
			if(md_column_count != 0)
			{
				pstmt=conn.prepareStatement(SQL_search);
				rs=pstmt.executeQuery();

			}

		%>
			<script type="text/javascript">
				m_menu =2;
			</script>	
		<!-- contents -->
					
		


		
		<table class="table table-condensed table-hover">

		    <thead>
		        <tr>
		            <th><div class="text-center"> Row</div></th>
		            <th><div> Title</div></th>
		            <th><div class="text-center"> User</div></th>
		            <th><div class="text-center"> Date</div></th>
		     
		        </tr>
		    </thead>
		    <tbody>
		    	<%
		    		while(rs.next())
		    		{
												   
		    	%>
					<tr>
						<td><div class="text-center"> <%=rs.getString(1)%></div></td>
						<td><div><a href="index_contents_board_view.jsp?num=<%=rs.getInt("NUM")%>"><%=rs.getString(2)%></a></div></td>
						<td><div class="text-center"><%=rs.getString(3)%></div></td>
						<td><div class="text-center"><%=rs.getString(7).substring(0, 10)%></div></td>
				
					</tr>
		    	<%
		    		}
		    	%>

		    </tbody>
		</table>

		


		<!-- 글쓰기 버튼 -->
		<div class="clearfix">
					
				<div class="pull-right">


					<a href="index_contents_board_write.jsp">
						<button class="btn btn-primary" type="button">Write</button>
					</a>

				</div>

									
		</div>



		<div class="pagination pagination-centered">
			<ul>
				<li class="disabled"><a href="#">&laquo;</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>



			
	<%@ include file="JDBC_footer.jsp"%>

	
	<%@ include file="index_footer.jsp"%>
		
	