<!-- http://getbootstrap.com/ -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<html>
	<head>
		
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link hre	f="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
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
		</style>


<!-- 하이라이트 자동화 -->
		<script>
			function highlightmenu(temp){
				
				if(temp == 1)
					$('#mhome').addClass('active');
				else if(temp ==2 )
					$('#mpage').addClass('active');
				else if(temp ==3)
					$('#mpicture').addClass('active');
			}	
		</script>

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
							<h2>Home</h2>
							<p>설명</p>

					</article>
				</div>
			</div>
		</div>
		</div>

<!-- 하이라이트 자동화 처리 -->
	<script>
				pagenum =1;
			highlightmenu(pagenum);
	</script>
	</body>
</html>