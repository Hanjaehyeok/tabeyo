console.log("COUPON MODULE....");

var couponService = (function(){
	
	//댓글 목록 가져오기 
	function getList(param , callback , error) {
		var businNo = param.businNo; 
		console.log("유진씨 안녕하세요");
		$.getJSON("/coupon/list/" +businNo + ".json",
				function(data) {
					if(callback){
						callback(data); //댓글 목록만 가져오는 경우 
						//callback(data.replyCnt,data.list); //댓글 숫자와 목록을 가져오는 경우 
					}
				}
		).fail(function(xhr,status,er) {
			if(error){
				error(er);
			}
		});//end getJson
	}//end getlist()
	
	function add(coupon , callback , error) {
		console.log("reply add...");
		
		$.ajax({
			type: 'post', 
			url: '/coupon/new',
			data: JSON.stringify(coupon),
			contentType : 'application/json; charset=UTF-8',
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr , status , er){
				if(error){
					error(er);
				}
			}
		});//end ajax()
	}//End add()
	
	function remove(couponNo , callback , error) {
		console.log("reply remove...");
		
		$.ajax({
			type: 'delete', 
			url: '/coupon/' + couponNo,
			//data: JSON.stringify(reply),
			//contentType : 'application/json; charset=UTF-8',
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr , status , er){
				if(error){
					error(er);
				}
			}
		});//end ajax()
	}//End remove()
	
	function get(couponNo, callback, error){
		$.get("/coupon/" + couponNo + ".json",
			function(data){
				if(callback){
					callback(data);
				}
			}
		).fail(function(xhr, status, er){
			if(error){
				error(er);
			}
		});//END get() fail()
	}//END get()
	
	function update(coupon , callback , error) {
		console.log("couponNo" + coupon.couponNo);
		
		$.ajax({
			type: 'put', 
			url: '/coupon/' + coupon.couponNo,
			data: JSON.stringify(coupon),
			contentType : 'application/json; charset=UTF-8',
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr , status , er){
				if(error){
					error(er);
				}
			}
		});//end ajax()
	}//End modify()
	return {getList : getList, add : add,
			remove : remove, get : get , update: update}
})();















