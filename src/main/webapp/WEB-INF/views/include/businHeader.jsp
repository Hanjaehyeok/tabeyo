<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 --%><!DOCTYPE html>
<html>
<style>
	
	.navbar-header img{
		margin-left: 30px;
		float: left;
	}
	.login{
		float:right;
	}
	
	</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>점포페이지</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/united/bootstrap.min.css">
</head>
<body>
  		<div class="navbar-header">
				
				<a class="navbar-brand" href="/busin/main"><img
					src="/resources/img/tabeyologo.png" style="height: 100px; width:200px;" ></a>
					<div class="login">
  					<input type="text" class="form-control" placeholder="ID" id="inputDefault" style="width:283px;" > 
  					
  					
  					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" style="width:283px;">
					<button type="button" class="btn btn-primary">로그인</button>
					<button type="button" class="btn btn-primary">ID/PW 찾기</button>
					<button type="button" class="btn btn-primary">회원가입</button>
					</div>
			</div>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- /header -->
        <!-- body -->
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  		<a class="navbar-brand" href="/busin/main">메인</a>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      
     <li class="nav-item">
     <a	class="nav-link" id="businInfo" href="${busin.businNo }">점포정보</a></li>
      <li class="nav-item">
      <a class="nav-link" id="couponList" href="${busin.businNo }">쿠폰목록</a></li>
     <li class="nav-item">
     <a	class="nav-link" id="reviewList" href="${busin.businNo }">점포리뷰 목록</a></li>
      <li class="nav-item">
      <a class="nav-link" id="menuList" href="${busin.businNo }">우리가게메뉴</a></li>
    </ul>
   
  </div>
</nav>
          
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
 
