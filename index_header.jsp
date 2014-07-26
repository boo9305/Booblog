<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>

		<!-- head position : 1.css 2.viewprot 3.boot-responsive.css 4.jquery 5.bootstrap.min.js -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
		
		
		<script src="jquery/jquery-1.11.1.js"></script>
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

			.line_border{
				padding-top:10px;
				margin-top:50px;
				border-top:1px solid gray
			}
		</style>
	</head>


	<body>

		<div class="container" >



		<div id='my_title'>
			<div class="row hero-unit "> 
				<h1>Title <small>Blog</small></h1>
			</div>
		</div>



		<div id ="my_main">
			<div class="row">
				<div class="span3">
					<nav>
						
					        <ul class="nav nav-tabs nav-stacked my_ul">
				                <li id = "mhome"><a href ="index_contents_main.jsp">Home</a></li>
				                <li id = "mboard"><a href ="index_contents_board.jsp">page</a></li>
				                <li id = "mpicture"><a href ="index_contents_picture.jsp">picture</a></li>
				                <li><a href ="#">Menu3</a></li>
				                <li><a href ="#">Menu4</a></li>

					        </ul>
				        		

						
					</nav>

				</div>
				<div class="span9">
						<article>