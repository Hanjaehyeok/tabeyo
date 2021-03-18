<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.navbar-header img {
	margin-left: 30px;
	float: left;
}

.login {
	float: right;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>타베요</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/united/bootstrap.min.css">
</head>
<div class="navbar-header">

	<a class="navbar-brand" href="/busin/main"><img
		src="/resources/img/tabeyologo.png"
		style="height: 100px; width: 200px;"></a>
	<div class="login">
		<input type="text" class="form-control" placeholder="ID"
			id="inputDefault" style="width: 283px;"> <input
			type="password" class="form-control" id="exampleInputPassword1"
			placeholder="Password" style="width: 283px;">
		<button type="button" class="btn btn-primary">로그인</button>
		<button type="button" class="btn btn-primary">ID/PW 찾기</button>
		<button type="button" class="btn btn-primary">회원가입</button>
	</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="/busin/main">메인</a>
 

  <div class="navbar-collapse collapse show" id="navbarColor01" style="">
    <ul class="navbar-nav mr-auto">
     
      <li class="nav-item">
        <a class="nav-link" href="/search/searchMain"><strong>점포 검색</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/notice/noticeList"><strong>공지사항</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/freeboard/freeList"><strong>자유게시판</strong></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#"><strong>관리페이지</strong></a>
      </li>
    
    </ul>
    
  </div>
</nav>