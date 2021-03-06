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
		  	.body {
		  		width: 90%;
		  		margin: auto;
		  	}
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
			   #map{
			 margin: auto;
			 }
			 
		  </style>
		  <div class="body">
			<div class="body-top">
				<div class="syasin">
				<img src="/resources/img/no-image.png
				" >
				</div>
				<div class="body-top-asioe">
				<div class="calender">
				<img src="https://miro.medium.com/max/750/1*E2DUofMeDF2xmbfSb_pzkA.gif
				" >
				</div>
			<div id="map" style="width:95%;height:200px;"></div>
			<input class="form-control" id="Addr" type="hidden" value="${busin.businAddr } ${busin.businAddr2 } ${busin.businAddr3}">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	522889fb7597ea750b4b4f2f434e2773&libraries=services"></script>
<script>
var Addr = $('#Addr').val();
console.log(Addr);
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(Addr , function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${busin.businNm }</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
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
						<td>
						  <c:set var="star" value="${busin.reviewAdd / busin.reviewCnt }"/>
           <c:choose>
           	<c:when test="${5 <= star }">
           	${ star}  ★★★★★
           	</c:when>
           	<c:when test="${4 <= star }">
           	${ star}  ★★★★☆
           	3
           	</c:when>
           	<c:when test="${3 <= star }">
           	${ star}  ★★★☆☆
           	</c:when>
           	<c:when test="${2 <= star }">
           	${ star}  ★★☆☆☆
           	</c:when>
           	<c:otherwise>
           	${ star}  ★☆☆☆☆
           	</c:otherwise>
           </c:choose>
						</td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">요리종목</th>
						<td><input class="form-control" name="businFood"
					       value="${busin.businFood }" readonly></td>
					  </tr>
					  <tr class="table-active">
						<th scope="row">점포주소</th>
						<td><input class="form-control" name="businAddr"
					       value="${busin.businAddr} ${busin.businAddr2} ${busin.businAddr3}" readonly></td>
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
          