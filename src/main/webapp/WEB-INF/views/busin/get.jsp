<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/businHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		  <div class="form-group" id="star">
			<div class="custom-control custom-switch">
			  <input type="checkbox" class="custom-control-input" id="customSwitch1" >
			  <label class="custom-control-label" for="customSwitch1">즐겨찾기등록/해제</label>
			  
			</div>
			<button type="button" class="btn btn-secondary"> 점포신고</button>
			</div>
			
		  <style>
			  #star{
				text-align: center;
			  }
			  .body-top{
				  height: 500px;
				  display:flex;
				  
			  }
			  .syasin{
				overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
			width: 70%;
            height: 500px;
			  }
			  .body-btm{
				height: 500px;
				display:flex;
				width: 30%;
			  }
			  .calender{
			
				overflow: hidden;
            display: flex;
            align-items: center;
			justify-content: center;
		
			  }
			  .map{
				
				overflow: hidden;
     	       display: flex;
       	   	  align-items: center;
   	      	   justify-content: center;
			
		}
			 
		  </style>
		  <div class="body">
			<div class="body-top">
				<div class="syasin">
				<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA1MTJfMjg1%2FMDAxNTg5Mjg3MTY3NDMy.FqJOq_x03tYxL_AhyDoD7AsUL6HPS6GVfSgWQmJJV3cg.P7vCqHwISJjnuVAko628VJ3_IpZdpgeYLd0oO74r1hsg.JPEG.uhg99144%2FDSC01434.JPG&type=sc960_832
				" >
				</div>
				<div class="body-top-asioe">
				<div class="calender">
				<img src="https://miro.medium.com/max/750/1*E2DUofMeDF2xmbfSb_pzkA.gif
				" >
				</div>
				<div class="map">
					<img src="https://th.bing.com/th/id/OIP.3_BOfw1mnhkdxrnbMzs1NwHaGA?w=251&h=204&c=7&o=5&dpr=1.25&pid=1.7">
				</div>
			</div>
			</div>
		</div>
			
			<div class="miseInfo">
			<div class="form-group">
				<table class="table table-hover">
					
					<thead>
									
						  <tr>
						<th scope="col">가게정보</th>
						<td>
							<form action="/busin/modify" id="actionForm" method="get">	
						<div class="modify">
						<a href="${busin.businNo }" class="modifyGo">
						<button type="button" class="btn btn-secondary"> 점포수정</button></a>
						</div>
						</form>
						</td>
						 </tr>
					</thead>
					
					<tbody>
					  <tr class="table-active">
						<th scope="row">점포이름</th>
						<td><input class="form-control" name="businNm"
					       value="${busin.businNm }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">전화번호</th>
						<td><input class="form-control" name="businTel"
					       value="${busin.businTel }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">점포등급</th>
						<td>★★★★★</td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">요리종목</th>
						<td><input class="form-control" name="businFood"
					       value="${busin.businFood }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">점포주소</th>
						<td><input class="form-control" name="businAddr"
					       value="${busin.businAddr }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">휴무일</th>
						<td><input class="form-control" name="businClosedDay"
					       value="${busin.businClosedDay }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">영업시간</th>
						<td><input class="form-control" name="businOpen"
					       value="${busin.businOpen }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">수용가능인원</th>
						<td><input class="form-control" name="businScale"
					       value="${busin.businScale }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">주차장여부</th>
						<td><input class="form-control" name="businPark"
					       value="${busin.businPark }" readonly></td>
					  </tr>
					  </tbody>
					</table>
					<div class="form-group">
						<label for="exampleTextarea">기타사항</label>
						<textarea class="form-control" id="exampleTextarea" rows="3" readonly name="businEtc"
						 >${busin.businEtc }</textarea>
					  </div>
					  </div>
					 </div>
					 <script>
					 var actionForm = $("#actionForm");
						$('.modifyGo').on('click', function(e){
							e.preventDefault();
							
							actionForm.append("<input type='hidden' name='businNo' value='" + 
											    $(this).attr('href') + "'>")
							
							actionForm.attr('action', '/busin/modify');				    
							actionForm.submit();
						});
						
					 </script>
<%@ include file="../include/footer.jsp" %>
          