<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
	<br>
	<div class="card border-primary mb-3" style="width: 100%;">
		<div class="card-header">음식종류별 BEST5</div>
		<div class="card-body">
			<div class="card border-secondary mb-3" style="width:20%; float:left;">
				<div class="card-header">한식</div>
				<div class="card-body">
				
					<c:forEach items="${hansik}" var="han">
						<c:set var="i" value="${i+1 }" />
							${i } .<a href="${han.businNo}" class="move">${han.businNm }</a><br>
					
					</c:forEach>
					
				</div>
			</div>
			
			<div class="card border-secondary mb-3" style="width:20%;  float:left;">
				<div class="card-header">중식</div>
				<div class="card-body">
						<c:forEach items="${jungsik}" var="jung">
						<c:set var="j" value="${j+1 }" />
							${j } .<a href="${jung.businNo}" class="move">${jung.businNm }</a><br>
					
					</c:forEach>
				</div>
			</div>
			
			<div class="card border-secondary mb-3" style="width:20%; float:left;">
				<div class="card-header">일식</div>
				<div class="card-body">
					<c:forEach items="${ilsik}" var="il">
						<c:set var="k" value="${k+1 }" />
							${k } .<a href="${il.businNo}" class="move">${il.businNm }</a><br>
					
					</c:forEach>
				</div>
			</div>
			
			<div class="card border-secondary mb-3" style="width:20%;  float:left;">
				<div class="card-header">양식</div>
				<div class="card-body">
					<c:forEach items="${yangsik}" var="yang">
						<c:set var="l" value="${l+1 }" />
							${l } .<a href="${yang.businNo}" class="move">${yang.businNm }</a><br>
					
					</c:forEach>
				</div>
			</div>
			
			<div class="card border-secondary mb-3" style="width:20%;  float:left;">
				<div class="card-header">기타 및 디저트</div>
				<div class="card-body">
					<c:forEach items="${gita}" var="gi">
						<c:set var="m" value="${m+1 }" />
							${m } .<a href="${gi.businNo}" class="move">${gi.businNm }</a><br>
					
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="card border-primary mb-3" style="width: 100%;">
		<div class="card-header">타베요 소식</div>
		<div class="card-body">
			<div class="card border-secondary mb-3" style="width:50%;  float:left;">
				<div class="card-header">공지사항</div>
				<div class="card-body">
					<h4 class="card-title">Primary card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
			
			<div class="card border-secondary mb-3" style="width:50%;  float:left;">
				<div class="card-header">자유게시판</div>
				<div class="card-body">
					<h4 class="card-title">Primary card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
	</div>
	
	<form action="/busin/regiList" id="actionForm" method="get">
    </form>
	<script>
	
	var actionForm = $("#actionForm");
	$('.move').on('click', function(e){
		e.preventDefault();
		
		actionForm.append("<input type='hidden' name='businNo' value='" + 
						    $(this).attr('href') + "'>")
		
		actionForm.attr('action', '/busin/get');				    
		actionForm.submit();
	});
	</script>
</body>
<%@ include file="../include/footer.jsp"%>