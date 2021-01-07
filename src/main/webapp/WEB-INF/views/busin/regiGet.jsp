<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/mainHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="jumbotron">
            <h1 class="display-3">점포 상세 정보</h1>
        </div>
	
		<div class="info">
            <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">사업자명</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businNm }" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">사업자 번호</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.lisenceNo }" readonly>
                </fieldset>
              </div>       
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">점포 주소</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businAddr }" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">점포 전화 번호</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businTel }" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">요리종목</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businFood}"  readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">휴무일</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businClosedDay}" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">영업시간</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businOpen}" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">점포규모</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businScale}" readonly>
                </fieldset>
              </div>
              <div class="form-group">
                <fieldset>
                  <label class="control-label" for="readOnlyInput">주차장여부</label>
                  <input class="form-control" id="readOnlyInput" type="text" value="${busin.businPark}" readonly>
                </fieldset>
              </div>
              <label class="control-label" for="readOnlyInput">점포정보사진</label>
              <table>
                  <tr>
                      <td>
                        <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA1MTJfMjg1%2FMDAxNTg5Mjg3MTY3NDMy.FqJOq_x03tYxL_AhyDoD7AsUL6HPS6GVfSgWQmJJV3cg.P7vCqHwISJjnuVAko628VJ3_IpZdpgeYLd0oO74r1hsg.JPEG.uhg99144%2FDSC01434.JPG&type=sc960_832
                        ">
                      </td>
                      <td>
                        <img src="https://th.bing.com/th/id/OIP.IWBdfKW4H-yvofwMN_lmyQHaKZ?w=203&h=286&c=7&o=5&dpr=1.25&pid=1.7">
                      </td>
                  </tr>
              </table>
              <div class="form-group">
                <label for="exampleTextarea">기타사항</label>
                <input class="form-control" id="readOnlyInput" type="text" value="${busin.businEtc}" readonly>
              </div>
                <br>

                  <button type="button" class="btn btn-secondary">수락</button>
                  <button type="button" class="btn btn-secondary">거절</button>
		</div>	

			<style>
               
				.info{
					width: 50%;
                    margin: auto;
				}
                img{
                    height: 50%;
                    width: 50%;
                 
                }
			</style>

<%@ include file="../include/footer.jsp" %>