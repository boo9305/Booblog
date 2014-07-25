<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- http://getbootstrap.com/ -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
		<script src="jquery-1.11.1.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<style>
			body{

				padding : 30px;
			}
		
				#my_title{
				padding-left:20px;
				padding-right:20px;
			}
			.gg{
				padding: 10px;
			}

	
		</style>
	</head>
	<body>
		

		<div class="container" >



		<div id='my_title'>
			<div class="row hero-unit "> 
				<h1>Boo <small>Blog</small></h1>
			</div>
		</div>



		<div id ="my_main">
			<div class="row">
				<div class="span3">
					<nav>
						
					        <ul class="nav nav-tabs nav-stacked my_ul">
				                <li id = "mhome"><a href ="my_web2.html">Home</a></li>
				                <li id = "mpage"><a href ="my_web2_menu1.jsp">page</a></li>
				                <li id = "mpicture"><a href ="my_web2_menu2.html">picture</a></li>
				                <li><a href ="#">Menu3</a></li>
				                <li><a href ="#">Menu4</a></li>

					        </ul>
				        		

						
					</nav>

				</div>
				<div class="span8">
					<article>
					<!-- pagination -->
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

							    String SQL_column_count  = "select count(*) Num from board";
							    String SQL_search  = "select * from board";
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
										<td><div><%=rs.getString(2)%></div></td>
										<td><div class="text-center"><%=rs.getString(3)%></div></td>
										<td><div class="text-center"><%=rs.getString(4).substring(0, 10)%></div></td>
								
									</tr>
						    	<%
						    		}
						    	%>

						    </tbody>


							<%
								}catch(Exception e){
						            e.printStackTrace();
						        }finally{
						            if(rs != null) rs.close();
						            if(pstmt != null) pstmt.close();
						            if(conn != null) conn.close();
						        }
							%>
						</table>

						<!-- 글쓰기 버튼 -->
						<div class="clearfix">
								
								<div class="pull-right">
									<a href="www.naver.com">
										<button class="btn btn-primary" type="button">글쓰기</button>
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



					</article>
				</div>
			</div>
		</div>
		</div>
		<script>
			$('#mpage').addClass('active');
		</script>

	</body>
</html>