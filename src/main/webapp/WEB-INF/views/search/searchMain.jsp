<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>검색</title>
</head>
<body>
<br>
  <form class="form-inline my-2 my-lg-0" style="margin-left : 30px;" >
      <input class="form-control mr-sm-2" type="text" placeholder="Search" style="width:50%;">
      <button class="btn btn-primary" type="submit">Search</button>
   </form>
   <hr>
  <br>
 
	<div class="paging">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#">&laquo;</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">4</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">5</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div>
	
  
</body>
<%@ include file="../include/footer.jsp"%>
</html>