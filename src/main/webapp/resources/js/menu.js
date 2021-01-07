console.log("MENU MODULE....");

var menuService = (function(){
	
	//댓글 목록 가져오기 
	function getList(param , callback , error) {
		var businNo = param.businNo; 
		console.log("유진씨 안녕하세요");
		$.getJSON("/menu/list/" +businNo + ".json",
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
	
	function add(menu , callback , error) {
		console.log("reply add...");
		
		$.ajax({
			type: 'post', 
			url: '/menu/new',
			data: JSON.stringify(menu),
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
	
	function remove(menuNo , callback , error) {
		console.log("reply remove...");
		
		$.ajax({
			type: 'delete', 
			url: '/menu/' + menuNo,
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
	
	function get(menuNo, callback, error){
		$.get("/menu/" + menuNo + ".json",
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
	
	function update(menu , callback , error) {
		console.log("menuNo" + menu.menuNo);
		
		$.ajax({
			type: 'put', 
			url: '/menu/' + menu.menuNo,
			data: JSON.stringify(menu),
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















