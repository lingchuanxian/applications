/**
 * 
 */
$.checkIslogin = function(){
	$.ajax({
	        method : 'GET',
	        url : 'GetCurrentSession',
	        async : false,
	        dataType : 'json',
	        success : function(data2) {
	        	console.log(data2);
	        },
	        error : function() {
	            alert('系统异常，请稍候再试');
	        }
	    });
};
