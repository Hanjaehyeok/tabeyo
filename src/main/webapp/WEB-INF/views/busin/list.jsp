<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <div class="jumbotron">
            <h1 class="display-3">검색 결과 - 10개 까지 표시됩니다.</h1>
        </div>
        <div class="businInfo">
       
        <c:forEach items="${list }" var="busin">
          <table class="table table-hover">
            <tr>
              <td scope="col" colspan="2" ><img src="/resources/img/no-image.png"></td>
            </tr>
            <tr>
          <td>점포명</td>
     		 <td><a href="${busin.businNo}" class="move">${busin.businNm }</a></td>
           </tr>
           <tr>
           <td>별점</td>
           <td>
           <c:set var="star" value="${busin.reviewAdd / busin.reviewCnt }"/>
           <c:choose>
           	<c:when test="${5 <= star }">
           	${ star} / ★★★★★
           	</c:when>
           	<c:when test="${4 <= star }">
           	${ star} / ★★★★☆
           	</c:when>
           	<c:when test="${3 <= star }">
           	${ star} / ★★★☆☆
           	</c:when>
           	<c:when test="${2 <= star }">
           	${ star} / ★★☆☆☆
           	</c:when>
           	<c:otherwise>
           	${ star} / ★☆☆☆☆
           	</c:otherwise>
           </c:choose>
           </td>
          </tr>
          
          <tr>
            <td>종목</td>
            <td>${busin.businFood}</td>
           </tr>
          </table>
       </c:forEach>
    </div>
    	
        
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
    <form action="/busin/list" id="actionForm" method="get">
<%--     	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
    	<input type="hidden" name="amount"  value="${pageMaker.cri.amount }">
    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
    	<input type="hidden" name="type"    value="${pageMaker.cri.type }"> --%>
    </form><!-- END 페이지 번호 링크 처리 -->
       
       <style>
        .businInfo{
    	margin:auto;
       	 width:50%;
            text-align: center;
        }
         img{
           width: 200px;
           height: 200px;
         }
       </style>
	
	

<%@ include file="../include/footer.jsp" %>

<script>
//점포명 a 태그 동작 처리
var actionForm = $("#actionForm");
	$('.move').on('click', function(e){
		e.preventDefault();
		
		actionForm.append("<input type='hidden' name='businNo' value='" + 
						    $(this).attr('href') + "'>")
		
		actionForm.attr('action', '/busin/get');				    
		actionForm.submit();
	});
	

</script>
