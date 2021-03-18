<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 보기</title>
</head>
<body>
	<br>
	<div style="width: 50%; margin: auto;">
		<div class="form-group">
			<label class="col-form-label" for="inputDefault">작성자 </label> <input
				type="text" class="form-control" value="운영자"
				id="inputDefault" readonly>
		</div>
		<div class="form-group">
			<label class="col-form-label" for="inputDefault">작성일자
			</label> <input type="text" class="form-control"
				value="2021/03/21" id="inputDefault" readonly>
		</div>
		<div class="form-group">
  <label class="col-form-label" for="inputDefault">제목</label>
  <input type="text" class="form-control" value="자유게시판 첫 글" id="inputDefault" readonly>
</div>
<div class="form-group">
  <label class="col-form-label" for="inputDefault">내용</label>
  <textarea class="form-control" id="exampleTextarea" rows="10" readonly>내용</textarea>
</div>
	<div style="float: right;">
			<button type="button" class="btn btn-primary">수정</button>
			<button type="button" class="btn btn-primary">삭제</button>
		</div>
	</div>
	<br>
	<br>
</body>
</html>
<%@ include file="../include/footer.jsp"%>