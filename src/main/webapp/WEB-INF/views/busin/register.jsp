<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/businHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="jumbotron">
            <h1 class="display-3">점포등록</h1>
        </div>
		  <form action="/busin/register" role="form" method="post">
		<div class="info">
          
		<legend>점포등록</legend>
		
	<!-- 	<div class="form-group">
			<label class="col-form-label" for="inputDefault">유저id</label>
			<input type="text" class="form-control" placeholder="유저id" id="inputDefault"
			name="userId">
          </div> -->
		<div class="form-group">
			<label class="col-form-label" for="inputDefault">점포명</label>
			<input type="text" class="form-control" placeholder="점포 이름" id="inputDefault"
			name="businNm">
          </div>
         
          <div class="form-group">
          <label class="col-form-label">사업자등록번호</label>
			<input type="text" class="form-control" placeholder="10자리" id="inputDefault"
			name="lisenceNo">
          </div>
          <div class="form-group">
            <label class="col-form-label" for="inputDefault">점포전화번호</label>
              <input type="text" class="form-control" placeholder="0222222222" id="inputDefault"
              name="businTel">
            </div>
		  <label class="col-form-label" for="inputDefault">요리 종목</label>
		    <div class="form-group">
			<select class="custom-select" name="businFood">
			  	  <option selected>요리종목</option>
			  <option value="한식">한식</option>
			  <option value="중식">중식</option>
			  <option value="일식">일식</option>
			  <option value="양식">양식</option>
			  <option value="기타 및 디저트">기타 및 디저트</option>
			</select>
			</div>
			<div class="form-group">
				<label class="col-form-label" for="inputDefault">점포주소 - (지도)주소받기api를 이용하여 정확한 주소를 받아보자</label>
				<input type="text" class="form-control" placeholder="시" id="inputDefault"
				name="businAddr">
			  </div>
			  	<div class="form-group">
				<input type="text" class="form-control" placeholder="구" id="inputDefault"
				name="businAddr2">
			  </div>
			  	<div class="form-group">
				<input type="text" class="form-control" placeholder="상세주소" id="inputDefault"
				name="businAddr3">
			  </div>
			  <label class="col-form-label" for="inputDefault">휴무일</label>
			<div class="form-group">
			<select class="custom-select" name="businClosedDay">
			  <option selected>휴무일선택</option>
			  <option value="월">월</option> 
			  <option value="화">화</option>
			  <option value="수">수</option>
			  <option value="목">목</option>
			  <option value="금">금</option>
			  <option value="토">토</option>
			  <option value="일">일</option>
			</select>
			</div>
			<label class="col-form-label" for="inputDefault">영업시간</label>
			
			<div class="form-group">
				<div>
				<select class="custom-select" name="businOpen">
					<option selected>시간</option>
					<option value="00">00</option> 
					<option value="01">01</option> 
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option> 
					<option value="09">09</option> 
					<option value="10">10</option> 
					<option value="11">11</option> 
					<option value="12">12</option> 
					<option value="13">13</option> 
					<option value="14">14</option>
					<option value="15">15</option> 
					<option value="16">16</option> 
					<option value="17">17</option> 
					<option value="18">18</option> 
					<option value="19">19</option> 
					<option value="20">20</option> 
					<option value="21">21</option> 
					<option value="22">22</option> 
					<option value="23">23</option> 
					<option value="24">24</option> 
					

				  </select>
				  부터
				</div>
				<div>
					<select class="custom-select" name="businClosed">
					<option selected>시간</option>
					<option value="00">00</option> 
					<option value="01">01</option> 
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option> 
					<option value="09">09</option> 
					<option value="10">10</option> 
					<option value="11">11</option> 
					<option value="12">12</option> 
					<option value="13">13</option> 
					<option value="14">14</option>
					<option value="15">15</option> 
					<option value="16">16</option> 
					<option value="17">17</option> 
					<option value="18">18</option> 
					<option value="19">19</option> 
					<option value="20">20</option> 
					<option value="21">21</option> 
					<option value="22">22</option> 
					<option value="23">23</option> 
					<option value="24">24</option> 
						
	
					  </select>
					  까지
					</div>
				</div>
			
				<div class="form-group">
					<label class="col-form-label" for="inputDefault">수용가능인원수 - 숫자로만 기입해주세요.</label>
					<input type="text" class="form-control" placeholder="00" id="inputDefault"
					name="businScale">
				  </div>
				  <label class="col-form-label" for="inputDefault">주차장유무</label>
				<div class="form-group">
				<select class="custom-select" name="businPark">
				  <option selected>주차장 - 유/무</option>
				  <option value="유">유</option> 
				  <option value="무">무</option>
				</select>
					 </div>
					<!--  <div class="form-group">
						<label class="col-form-label" for="inputDefault">사업자등록증을 스캔해서 올려주세요.</label>
						<div class="input-group mb-3">
						  <div class="custom-file">
							<input type="file" class="custom-file-input" id="inputGroupFile02">
							<label class="custom-file-label" for="inputGroupFile02">스캔파일</label>
						  </div>
						
						</div>
					  </div> -->
					<!--   <div class="form-group">
						<label class="col-form-label" for="inputDefault">대표사진으로 설정할 사진을 올려주세요</label>
						<div class="input-group mb-3">
						  <div class="custom-file">
							<input type="file" class="custom-file-input" id="inputGroupFile02">
							<label class="custom-file-label" for="inputGroupFile02">대표사진</label>
						  </div>
						</div>
					  </div> -->
				 
                  <div class="form-group">
                    <label for="exampleTextarea">기타사항</label>
                    <textarea class="form-control" 
                    id="exampleTextarea" rows="3" 
                    placeholder="기타사항-개별룸있음 등"
                  			  name="businEtc" ></textarea>
                  </div>
		
                  <button type="submit" class="btn btn-secondary">신청</button>
                  <button type="submit" class="btn btn-secondary">취소</button>
			</div>	
			</form>
			<style>
				.info{
					width: 50%;
                    margin: auto;
				}
			</style>

<%@ include file="../include/footer.jsp" %>