<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 등록</title>
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
  <label class="col-form-label" for="inputDefault">제목</label>
  <input type="text" class="form-control" placeholder="제목" id="inputDefault">
</div>
<div class="form-group">
  <label class="col-form-label" for="inputDefault">내용</label>
  <textarea class="form-control" id="exampleTextarea" rows="10" placeholder="내용"></textarea>
</div>
	<div style="float: right;">
			<button type="button" class="btn btn-primary">등록</button>
			<button type="button" class="btn btn-primary">뒤로</button>
		</div>
	</div>
	<br>
	<br>
</body>
</html>
<%@ include file="../include/footer.jsp"%>