/**
 * created by wangxj
 */
; (function($){
	$.extend($.fn.validatebox.defaults.rules, {  
	    matchNum: {  
	        validator: function(_val,param){  
	        	if(_val){
	        		var num_reg = /^[0-9]+$/g;
					return num_reg.test(_val);
	        	}
				return true;
	        },  
	        message: '只能填写数字。'  
	    },
	    exists : {
	    	validator: function(_val,_p){
	    		var data = {
	    				url: "",
	    				name: "",
	    				param: {}
	    		}; 
	    		$.extend(data, _p);
	    		$.post(data.url, data.param, function(data){
	    			
	    		});
	    	},
	    	message : "'{0}' 已经存在，请填写其他值。"
	    }
	}); 
})(jQuery);
