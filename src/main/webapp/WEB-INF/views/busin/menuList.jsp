
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/businHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
      


<style>

		.body{
			width: 90%;
			margin: auto;
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
       


	.menu{
		
		
		display: flex;
	}
	
</style>
	<script src="/resources/js/menu.js"></script>
	  <div class="form-group" id="name">
                <fieldset>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businNm } 메뉴" readonly> 
               	  
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
           	<button type='button' id="modal">메뉴등록</button>
			
			
			
			
			<div class="modal" id="regi-modal">				<!-- 등록모달  -->
				
  			<div class="modal-dialog" role="document">
   		    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">메뉴등록</h5>
      </div>
      <div class="modal-body">
        <div class="form-group">
         <div class="form-group">
         			
						<label class="col-form-label" for="inputDefault">메뉴사진</label>
						<div class="input-group mb-3">
						<form action="uploadFormAction" method="post" enctype="multipart/form-data">
						  <div class="custom-file">
							<input type="file" class="custom-file-input" id="inputGroupFile02" name="uploadFile" multiple>
							<label class="custom-file-label" for="inputGroupFile02">메뉴사진</label>
						  </div>
						  <button>submit</button>
						  </form>
						</div>
		
          <label class="col-form-label">메뉴 이름</label>
			<input type="text" class="form-control" id="inputDefault"
			name="menuNm" placeholder="메뉴이름" value="메뉴!">
			<div class="form-group">
          <label class="col-form-label">메뉴 가격</label>
			<input type="text" class="form-control" id="inputDefault"
			name="menuPrice"  placeholder="9000 - 숫자만입력" value="10000">
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

			
</div>

			 
<script> //
	var modal = $('#modal');
	var modal = $('.modal');
	var registerBtn = $('#registerBtn');    //등록 버튼
	var modifyBtn = $('#modifyBtn');
	var removeBtn = $('#removeBtn');
	var inputMenuNm    = modal.find("input[name='menuNm']");   
	var inputMenuPrice   = modal.find("input[name='menuPrice']");
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
var menuUl = $(".chat");

showList();   //


function showList(){   //메뉴 목록 출력 함수 - <li>출력

  menuService.getList(   //menuService의 getList 함수 호출
      { businNo:businValue },
//       function(list){
      function(list){
      
 
      
         //메뉴 목록이 없는 경우
         if(list == null || list.length == 0){
        	 menuUl.html("등록된 메뉴 없음");
            return;
         }
         
         //메뉴 목록이 있는 경우
         var str = "";
         for(var i=0 ; i<list.length ; i++){   //<li> 구성
            str += 
            	"<div class='menuLi' data-mno='" + list[i].menuNo +"'><li class='list-group-item d-flex justify-content-between align-items-center'><img src='data:image/jpeg;base64,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'>"
            	+  "</li>" +
            	"<li class='list-group-item d-flex justify-content-between align-items-center' >" +
                    list[i].menuNm +
                 "   </li><li class='list-group-item d-flex justify-content-between align-items-center'>" + list[i].menuPrice + "원</li></div><br>";
            console.log(list[i].menuNo);
         }	
         menuUl.html(str);   //<ul>에 <li> 추가
         
      } 
  );//END getList
 
  //메뉴 등록 버튼 이벤트 처리
  $("#registerBtn").click(function() {
		
	
    var menu = { 
        businNo     : businValue, 
        menuNm   	: inputMenuNm.val(), 
        menuPrice   : inputMenuPrice.val()
     }
     
     //menuSerivce의 add 함수 호출
    menuService.add(
            menu,
            function(result){
               
               modal.find('input').val('');   //입력 양식 값 지우기
               modal.hide();         //모달창 숨기기
               location.reload(true);
            } 
     );//END add()
     
	 modal.hide(); // 모달창 감추기
  });//END 메뉴 등록 버튼 이벤트 처리
 
  $('.chat').on('click', 'div', function(){
	    
	  var menuNo = $(this).data('mno'); 
			
			console.log(menuNo); 
			
			  //menuService의 get 함수 호출
		       menuService.get(menuNo, function(data){
					console.log("get");	    	   
		    	   inputMenuNm.val(data.menuNm);     
		    	   inputMenuPrice.val(data.menuPrice);   
		    	   modal.data("mno",data.menuNo);
					
		    	
		          	console.log(modal.data("mno",data.menuNo));
		          modal.show();
				  modifyBtn.show();
				  removeBtn.show();
				  registerBtn.hide();
		       });//END get
		    });//END 메뉴 클릭 이벤트 처리
		    
 		 removeBtn.on("click", function(e){
		
		var menuNo = modal.data("mno"); 
		
		menuService.remove(menuNo , function(result){
			
			modal.hide();
			location.reload(true);
			});
		
		
		});
		    
 		modifyBtn.on("click" , function(e){
 			var menuNo = modal.data("mno"); 
			var menu = { menuNo : menuNo,
			 			 menuNm : inputMenuNm.val(), 
	       	             menuPrice : inputMenuPrice.val()
			}
			menuService.update(menu,function(result){
				
				modal.hide();
				location.reload(true);
			});
		});	//end 메뉴 수정 이벤트 
 			
}
 
	
</script>          
<%@ include file="../include/footer.jsp" %>
          