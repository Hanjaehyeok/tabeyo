<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
	<br>
	<div class="noticeList" style="width: 80%; margin: auto;">
		<p style="text-align: center;">
			<strong>공지사항</strong>
		</p>
		<table class="table table-hover">
			<thead>
				<tr style="text-align: center;">
					<td><input class="form-check-input" type="checkbox" value=""></td>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">작성날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr style="text-align: center;">
					<td><input class="form-check-input" type="checkbox" value=""></td>
					<td>운영자</td>
					<td><a href="/notice/noticeGet">공지사항 첫 글</a></td>
					<td>2020/03/17</td>
				</tr>
			</tbody>
		</table>
		<div style="float: left;">
			<ul class="pagination">
				<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
				</li>
				<li class="page-item active"><a class="page-link" href="#">1</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">&raquo;</a>
				</li>
			</ul>
		</div>
		<div style="float: right;">
			<button type="button" class="btn btn-primary">작성</button>
			<button type="button" class="btn btn-primary">삭제</button>
		</div>
	</div>

	<br>
	<br>
	<br>
	<%@ include file="../include/footer.jsp"%>
</body>


</html>
