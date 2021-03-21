<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
#idFind {
	margin: auto;
}


</style>
<meta charset="UTF-8">
<title>IP/PW찾기</title>
</head>
<body>
	<br>
	<div class="card border-primary mb-3" id="idFind"
		style="max-width: 20rem;">
		<div class="card-header">ID/PW 찾기</div>
		<div class="card-body">
			<div class="form-group">
				<label class="col-form-label" for="inputDefault">이름
				</label> <input type="text" class="form-control"
				 id="inputDefault">
			</div>
			<div class="form-group">
				<label class="col-form-label" for="inputDefault">이메일
				</label> <input type="text" class="form-control"
				id="inputDefault">
			</div>
			 <button type="button" class="btn btn-primary">ID 찾기</button>
 			 <button type="button" class="btn btn-primary">PW 찾기</button>
		</div>
	</div>
	<br>

</body>
<%@ include file="../include/footer.jsp"%>
</html>