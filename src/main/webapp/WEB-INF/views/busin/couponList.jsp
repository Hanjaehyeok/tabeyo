
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/businHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
      


<style>	
		.body{
			margin: auto;
			width: 90%;
		}
    	.chat{
          	padding-left: 0px;
          	}
            .syasin{
                overflow:scroll;
               
            margin: auto;
            align-items: center;
            justify-content: center;
			width: 70%;
            height: 500px;
			  }
               .body-top{
				  height: 500px;
				  display:flex;
				  
              }
              .body-a{
                align-items: center;
            justify-content: center;
              }
			  
			  .body-btm{
				height: 500px;
				display:flex;
				width: 29%;
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
       


	.coupon{
		display: flex;
		}
	
</style>
	<script src="/resources/js/coupon.js"></script>
	  <div class="form-group" id="name">
                <fieldset>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businNm } 쿠폰" readonly> 
               	  <input class="form-control" id="Addr" type="hidden" value="${busin.businAddr }${busin.businAddr2 }${busin.businAddr3}">
                </fieldset>
               
              </div>
          <div class="body">
			<div class="body-top">
				<div class="syasin">
                     
                     <ul class="chat">
					<!-- li 시작 -->
					</ul>
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
           	<button type='button' id="modal">쿠폰등록</button>
			
			
			
			<div class="modal" id="regi-modal">				<!-- 등록모달  -->
  			<div class="modal-dialog" role="document">
   		    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">쿠폰관리</h5>
      </div>
      <div class="modal-body">
        <div class="form-group">
        
          <label class="col-form-label">쿠폰 이름</label>
			<input type="text" class="form-control" id="inputDefault"
			name="couponNm" placeholder="쿠폰이름" value="쿠폰!">
			<div class="form-group">
          <label class="col-form-label">쿠폰 설명</label>
			<input type="text" class="form-control" id="inputDefault"
			name="couponCt"  placeholder="쿠폰 설명 - ex)50%할인!" value="50% 할인">
          </div>
         
          </div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="registerBtn">등록</button>
        
<button type="button" class="btn btn-success disabled" id="modifyBtn">수정</button>
<button type="button" class="btn btn-danger disabled" id="removeBtn">삭제</button>
<button type="button" class="btn btn-secondary" data-dismiss="modal" id="regi_close_btn">닫기</button>
      </div>
    </div>
  </div>
</div>
</div>	<!--end 등록모달  --> 

<script>
	var modal = $('#modal');
	var modal = $('.modal');
	var registerBtn = $('#registerBtn');    //등록 버튼
	var modifyBtn = $('#modifyBtn');
	var removeBtn = $('#removeBtn');
	var inputcouponNm    = modal.find("input[name='couponNm']");   
	var inputcouponCt  = modal.find("input[name='couponCt']");
  	$("#modal").click(function() {
  		modal.show(); // 모달창 보여주기
  		modal.find('input').val('');
  		 modifyBtn.hide();
	     removeBtn.hide();
  		 registerBtn.show();
  		 
  	});
  	
  	$("#regi_close_btn").click(function() {
  		alert("창을 닫습니다.")
  	    modal.hide(); // 모달창 감추기
  	});
  	
var businValue = '<c:out value="${busin.businNo}"/>';
var couponUl = $(".chat");

showList();   //


function showList(){   //쿠폰 목록 출력 함수 - <li>출력

  couponService.getList(   //couponService의 getList 함수 호출
      { businNo:businValue },
//       function(list){
      function(list){
      
 
      
         //쿠폰 목록이 없는 경우
         if(list == null || list.length == 0){
        	 couponUl.html("등록된 쿠폰 없음");
            return;
         }
         
         //쿠폰 목록이 있는 경우
         var str = "";
         for(var i=0 ; i<list.length ; i++){   //<li> 구성
            str += 
            	"<div class='couponLi' data-mno='" + list[i].couponNo +"'>" +
            	"<li class='list-group-item d-flex justify-content-between align-items-center' >" +
                    list[i].couponNm +
                 "   </li><li class='list-group-item d-flex justify-content-between align-items-center'>" + list[i].couponCt + "</li></div><br>";
            console.log(list[i].couponNo);
         }	
         couponUl.html(str);   //<ul>에 <li> 추가
         
      } 
  );//END getList
 
  //쿠폰 등록 버튼 이벤트 처리
  $("#registerBtn").click(function() {
		
	
    var coupon = { 
        businNo     : businValue, 
        couponNm   	: inputcouponNm.val(), 
        couponCt   : inputcouponCt.val()
     }
     
     //couponService의 add 함수 호출
    couponService.add(
            coupon,
            function(result){
               
               modal.find('input').val('');   //입력 양식 값 지우기
               modal.hide();         //모달창 숨기기
               location.reload(true);
            } 
     );//END add()
     
	 modal.hide(); // 모달창 감추기
  });//END 쿠폰 등록 버튼 이벤트 처리
 
  $('.chat').on('click', 'div', function(){
	    
	  var couponNo = $(this).data('mno'); 
			
			console.log(couponNo); 
			
			  //couponService의 get 함수 호출
		       couponService.get(couponNo, function(data){
					console.log("겟되니?");	    	   
		    	   inputcouponNm.val(data.couponNm);      //쿠폰 표시
		    	   inputcouponCt.val(data.couponCt);   //쿠폰 내용 표시
		    	   modal.data("mno",data.couponNo);
					
		    	
		          	console.log(modal.data("mno",data.couponNo));
		          modal.show();
				  modifyBtn.show();
				  removeBtn.show();
				  registerBtn.hide();
		       });//END get
		    });//END 쿠폰 클릭 이벤트 처리
		    
 		 removeBtn.on("click", function(e){
		
		var couponNo = modal.data("mno"); 
		
		couponService.remove(couponNo , function(result){
			
			modal.hide();
			location.reload(true);
			});
		
		
		});
		    
 		modifyBtn.on("click" , function(e){
 			var couponNo = modal.data("mno"); 
			var coupon = { couponNo : couponNo,
			 			 couponNm : inputcouponNm.val(), 
	       	             couponCt : inputcouponCt.val()
			}
			couponService.update(coupon,function(result){
				
				modal.hide();
				location.reload(true);
			});
		});	//end 쿠폰 수정 이벤트 
 			
}
 
	
</script>          
<%@ include file="../include/footer.jsp" %>
          