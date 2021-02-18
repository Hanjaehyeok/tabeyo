<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 --%><!DOCTYPE html>
<html>
<style>

</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>점포페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
   <div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<a class="navbar-brand" href="/busin/main"><img
					src="/resources/img/tabeyolog.PNG" style="height: 100px; width:200px;" ></a>
			</div>
			<!-- /.navbar-header -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="collapse navbar-collapse" id="navbarColor03">
					<ul class="navbar-nav mr-auto">
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control" type="text" placeholder="id">
							<input class="form-control" type="password" placeholder="pw">
							<button class="btn btn-secondary">로그인</button>
						</form>
						<li class="nav-item"><a class="nav-link" href="#">ID찾기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">PW찾기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
					</ul>
				</div>
			</nav>
			<!-- /.navbar-static-side -->
		</nav>
		<!-- /.navbar-top-links -->
		<div id="page-wrapper">
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- /header -->
        <!-- body -->
       
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav" style="text-align: center;">
					<li class="nav-item" style="width: 300px; font-size: 40px;"><a
						class="nav-link" id="businInfo" href="${busin.businNo }">점포정보</a></li>
					<li class="nav-item" style="width: 300px; font-size: 40px;"><a
						class="nav-link" id="couponList" href="${busin.businNo }">쿠폰목록</a></li>
					<li class="nav-item" style="width: 300px; font-size: 40px;"><a
						class="nav-link" id="reviewList" href="${busin.businNo }">점포리뷰 목록</a></li>
					<li class="nav-item" style="width: 300px; font-size: 40px;"><a
                            class="nav-link" id="menuList" href="${busin.businNo }">우리가게메뉴</a></li>
                            
					
				</ul>
			</div>
          </nav>
          </div>
          </div>
          
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    	<form id="actionForm" method="get">
			 </form>
			  <script> 
					 var actionForm = $("#actionForm");
						$('#couponList').on('click', function(e){
							e.preventDefault();
							
							actionForm.append("<input type='hidden' name='businNo' value='" + 
											    $(this).attr('href') + "'>")
							
							actionForm.attr('action', '/busin/couponList');				    
							actionForm.submit();	
						});
						$('#menuList').on('click', function(e){
							e.preventDefault();
							
							actionForm.append("<input type='hidden' name='businNo' value='" + 
											    $(this).attr('href') + "'>")
							
							actionForm.attr('action', '/busin/menuList');				    
							actionForm.submit();	
						});
						$('#reviewList').on('click', function(e){
							e.preventDefault();
							
							actionForm.append("<input type='hidden' name='businNo' value='" + 
											    $(this).attr('href') + "'>")
							
							actionForm.attr('action', '/busin/reviewList');				    
							actionForm.submit();	
						});
						$('#businInfo').on('click', function(e){
							e.preventDefault();
							
							actionForm.append("<input type='hidden' name='businNo' value='" + 
											    $(this).attr('href') + "'>")
							
							actionForm.attr('action', '/busin/get');				    
							actionForm.submit();	
						});
						
					 </script>
 
