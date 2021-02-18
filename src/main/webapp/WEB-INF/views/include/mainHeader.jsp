<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 --%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>타베요</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<a class="navbar-brand" href="/busin/main"><img
					src="/resources/img/tabeyolog.PNG" style="height: 100px; width:200px;"></a>
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
                     class="nav-link" href="#">공지사항</a></li>
                  <li class="nav-item" style="width: 300px; font-size: 40px;"><a
                     class="nav-link" href="#">자유게시판</a></li>
                  <li class="nav-item" style="width: 300px; font-size: 40px;"><a
                     class="nav-link" href="#">쪽지함</a></li>
                  <li class="nav-item" style="width: 300px; font-size: 40px;"><a
                     class="nav-link" href="#">최근 본 식당</a></li>
               </ul>
            </div>
         </nav>
         </nav>