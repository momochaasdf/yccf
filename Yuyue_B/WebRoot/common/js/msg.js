
	var msg = {
		suc: function(_p, settings){
			if(settings.sucMsg) 
				return settings.sucMsg
			else 
				return "操作成功！";
		},
		fail: function(_p, settings){ 
			if(settings.failMsg) 
				return settings.failMsg
			else 
				return "操作失败！";
		},
		parErr: function(_p, settings){ 
			if(settings.parErrMsg) 
				return settings.parErrMsg
			else 
				return "参数" + array2MsgStr(_p) + "错误!";
		},
		exist: function(_p, settings){ 
			if(settings.existMsg) 
				return settings.existMsg
			else 
				return array2MsgStr(_p) + "已存在，请填写其他内容！";
		}, 
		notExist: function(_p, settings){ 
			if(settings.notExistMsg) 
				return settings.notExistMsg
			else 
				return array2MsgStr(_p) + "不存在！";
		}, 
		used: function(_p, settings){ 
			if(settings.usedMsg) 
				return settings.usedMsg
			else 
				return array2MsgStr(_p) + "已被用！";
		}, 
		isNull: function(_p, settings){ 
			if(settings.isNullMsg) 
				return settings.isNullMsg
			else 
				return array2MsgStr(_p) + "不能为空！";
		}
	};
	
	var msgDefaults = {
		sucMsg		: false,
		failMsg		: false,
		parErrMsg	: false,
		existMsg	: false,
		notExistMsg	: false,
		usedMsg		: false,
		isNullMsg	: false
	};
	
	var params = {
		errorCode	: "errorCode",
		id 			: "ID标识",
		featName 	: "特色名",
		orderNum 	: "序号",
		atmosName 	: "氛围名",
		tagName 	: "标签名",
		elementName : "元素名",
		content 	: "内容"	,
		billNo 		: "消费码",
		couponNo	: "券号"	
	};
	
	/**
	 *data 为msg对应的数字，_p为传的参数
	 *
	 **/
	var obtionMsg = function(data, settings){
		settings = utils.extend(msgDefaults, settings || {});
		if(data) {
			var _ps = data.split(":");
			var fn = _ps.shift();
			return msg[fn](_ps, settings);
		}else
			return "";
		
	};
	
	/**
	 *数组转换成对相应的字符窜信息
	 *
	 **/
	var array2MsgStr = function(array){
		var _s = "";
		if(array) {
			for(var i = 0; i < array.length; i++) {
				if(i + 1 == array.length)
					_s += params[array[i]] === undefined ? array[i] : params[array[i]];
				else 
					_s += params[array[i]] === undefined ? array[i] : params[array[i]] + "、";
			}
		}
		return _s;
	};
	
	/**
	 *ajax请求返回数据的处理,例如异常处理
	 *settings 可参考msgDefaults 设置相应的错误信息
	 *data为ajax返回的数据，
	 *return true ==> 操作成功 return false ==> 操作失败
	 **/
	var dataProcess = function(_data, settings){
		settings = utils.extend(msgDefaults, settings || {});
		if(_data instanceof Object && !!_data[params.errorCode]){
			var errorMsg = _data[params.errorCode];
			if(errorMsg.indexOf("suc") == 0){
				$.colorbox.alert(obtionMsg(errorMsg, settings), settings.sucClose ? function(){settings.sucClose(_data)} : null);
			}else {
				$.colorbox.alert(obtionMsg(errorMsg, settings), settings.failClose ? function(){settings.failClose(_data)} : null);
				return false;
			}
		}
		return true;
	};
;(function($){
	
	/**
	 * settings = {
	 *		sucMsg		: "操做成功",
	 *		failMsg		: "操作有误",
	 *		sucClose	: function(data){}, //请求成功关闭alert框后执行的函数
	 *		failClose	: function(data){}, //请求失败关闭alert框后执行的函数
	 *		...
	 * };
	 */
	 //扩展post函数,用于处理返回code信息
	$.extend({post: function(url, data, callback, dataType, settings){
		if(typeof callback === "object"){
			settings = callback;
			callback = null;
		}
		if(typeof dataType === "object"){
			settings = dataType;
			dataType = null;
		}
		if(typeof data === "function") {
			callback = data;
			data = null;
		}
		settings = settings || {};
		$.extend(settings,{type: "POST",url: url,data: data,success: callback,dataType: dataType});	
		$.ajax(settings);
	}});
	//扩展get函数,用于处理返回code信息
	$.extend({get: function(url, data, callback, dataType, settings){
		if(typeof callback === "object"){
			settings = callback;
			callback = null;
		}
		if(typeof dataType === "object"){
			settings = dataType;
			dataType = null;
		}
		if(typeof data === "function") {
			callback = data;
			data = null;
		}
		settings = settings || {};
		$.extend(settings,{url: url,data: data,success: callback,dataType: dataType});	
		$.ajax(settings);
	}});
	//扩展ajax函数,用于处理返回code信息
	var ajaxTmp = $.ajax;
	$.extend({ajax: function(settings){
		settings = settings || {};
		var successTmp = settings.success;
		settings.success = function(data, textStatus, jqXHR){
			if(dataProcess(data,settings) 
					&& typeof successTmp == "function"){
				successTmp(data, textStatus, jqXHR);
			}
		};
		ajaxTmp(settings);
	}});
	
})(jQuery);