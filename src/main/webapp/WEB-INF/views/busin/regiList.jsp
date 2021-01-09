<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<div class="jumbotron">
            <h1 class="display-3">사업자 신청 회원 목록</h1>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                  <td scope="col">신청일자</td>
                  <td scope="col">회원ID</td>
                  <td scope="col">점포명</td>
                  <td scope="col">점포 위치</td>
                  <td scope="col">전화번호</td>
                  <td scope="col">요리종목</td>
                  <td scope="col">상태</td>

                </tr>
              </thead>
              <c:forEach items="${list }" var="busin">
            <tbody>
              <tr class="table-active">
                <th scope="row"><fmt:formatDate value="${busin.regdate }"
                              pattern="yyyy-MM-dd" /></th>
                <td>${busin.userId }</td>
                <td><a href="${busin.businNo}" class="move">${busin.businNm }</a></td>
                <td>${busin.businAddr}/${busin.businAddr2}/${busin.businAddr3}</td>
                <td>${busin.businTel}</td>
                <td>${busin.businFood}</td>
                <td><a href="${busin.businNo}" class="info"><button type="button" class="btn btn-secondary">상세보기</button></a></td>
              </tr>
        </tbody>
        </c:forEach>
        </table>
  <ul class="pagination pagination-lg">
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

    <!-- 페이지 번호 링크 처리 -->
    <form action="/busin/regiList" id="actionForm" method="get">
<%--     	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
    	<input type="hidden" name="amount"  value="${pageMaker.cri.amount }">
    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
    	<input type="hidden" name="type"    value="${pageMaker.cri.type }"> --%>
    </form><!-- END 페이지 번호 링크 처리 -->
       

			
        <style>
            a{
                text-decoration: none;
            }
        
  
         
        </style>
	<script>
	var actionForm = $("#actionForm");
	
	
	$('.move').on('click', function(e){
		e.preventDefault();
		
		actionForm.append("<input type='hidden' name='businNo' value='" + 
						    $(this).attr('href') + "'>")
		
		actionForm.attr('action', '/busin/get');				    
		actionForm.submit();
	});
 	$('.info').on('click', function(e){
		e.preventDefault();
		
		actionForm.append("<input type='hidden' name='businNo' value='" + 
						    $(this).attr('href') + "'>")
		
		actionForm.attr('action', '/busin/regiGet');				    
		actionForm.submit();
	}); 
	</script>
<%@ include file="../include/footer.jsp" %>