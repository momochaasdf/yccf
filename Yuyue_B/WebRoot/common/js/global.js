
$(function(){
	//复选框全部勾选
	$(".check-all").click(function(){
		$("input[name=ids]").prop("checked", $(this).prop("checked"));
	});
});

function post(_url, _data, _setting){
	$.post(_url,_data,_setting);
}

/**
 * 删除
 * _info 	删除确认框的提示信息
 * _sucMsg	删除成功后的提示信息
 * _failMsg 删除失败后的提示信息
 */
function remove(_url, _id, _info, _sucMsg, _failMsg) {
	$.colorbox.confirm({
		content: _info || "确定删除？",
		width: "350", 
		height: "200",
		handle: function(_bool){
			if(_bool){
				$.post(_url,{id:_id},function(data){
					$("tr[trid='"+_id+"']").remove();
					$("#totalCount").text($("#totalCount").text()-1);
				},{sucMsg: _sucMsg || "删除成功!", failMsg: _failMsg || "删除失败!"});
			}
		}
	});
}



/**
 * 批量删除
 * _info 	删除确认框的提示信息
 * _sucMsg	删除成功后的提示信息
 * _failMsg 删除失败后的提示信息
 */
function batchRemove(_url, _info, _sucMsg, _failMsg) {
	$.colorbox.confirm({
		content: _info || "确定批量删除？",
		width: "350", 
		height: "200",
		handle: function(_bool){
			if(_bool){
				var idsDom = $("input[name=ids]:checked");
				if(idsDom.length === 0){
					$.colorbox.alert("请选择您要删除的对象！");
					return;
				}
				$.post(_url,$("input[name=ids]:checked"),{
					sucMsg: _sucMsg || "批量删除成功!", 
					failMsg: _failMsg || "批量删除失败!",
					sucClose: function(){
						window.location.reload();
					}
				});
			}
		}
	});
}

/**
 * 设置为开启状态
 * _type id 的数据类型 _type不填默认为integer类型
 * _entity 为 模块名.实体类名 user.Role 
 * _enumClass为枚举类名 可为空
 * _openEnum开启状态枚举值名 可为空
 */
function openState(_id, _entity, _type, _enumClass, _openEnum, _closeEnum) {
	var $src = $(utils.obtainEventSrc());
	$.post(BaseData.path + "/json/global/global_openState.do",
		{
			'info.id':_id,
			'info.type': _type,
			'info.entity': _entity,
			'info.enumClass': _enumClass,
			'info.enumEntity': _openEnum
		},function(data){
			$src.html("关闭");
			$src[0].onclick = function(){closeState(_id, _entity, _type, _enumClass, _openEnum, _closeEnum);};
			$("td[stateid=" + _id + "]").text("开启");
	},{sucMsg:"开启成功!"});
}

/**
 * 设置为关闭状态
 * _type id 的数据类型 _type不填默认为integer类型
 * _entity 为 模块名.实体类名 user.Role
 * _enumClass为枚举类名 可为空
 * _closeEnum关闭状态枚举值名 可为空
 */
function closeState(_id, _entity, _type, _enumClass, _openEnum, _closeEnum) {
	var $src = $(utils.obtainEventSrc());
	$.post(BaseData.path + "/json/global/global_closeState.do",
		{
			'info.id':_id,
			'info.type': _type,
			'info.entity': _entity,
			'info.enumClass': _enumClass,
			'info.enumEntity': _closeEnum
		},function(data){
			$src.html("开启");
			$src[0].onclick = function(){openState(_id, _entity, _type, _enumClass, _openEnum, _closeEnum);};
			$("td[stateid=" + _id + "]").text("关闭");
	},{sucMsg:"关闭成功!"});
}

;(function($){
	function ajaxProcess(settings) {
		var self = this;
		settings = settings || {};
		settings.cache = false;
		if(settings.confirmMsg){
			$.colorbox.confirm({
				content: settings.confirmMsg,
				width: "350", 
				height: "200",
				handle: function(_bool){
					if(_bool){
						$.ajax(settings);
					}
				}
			});
		}else{
			$.ajax(settings);
		}
	}
	$.fn.extend({
		//更换对象处理逻辑
		changeHandler : function(settings) {
			var index = 0,
				self = this,
				obverse,
				reverse;
			for(var cls in settings){
				if(index === 0){
					obverse = cls;
				}else if(index === 1){
					reverse = cls;
				}else{
					break;
				}
				index++;
			}
			
			self.on("click", function(){
				var _this = this;
				if($(_this).hasClass(obverse)){
					var s;
					if(!(s = $(_this).data("obverse"))){
						s = $.extend({}, settings[obverse] || {});
						var successTmp = s.success;
						s.success = function(data, textStatus, jqXHR){
							if(data.errorCode == "suc"){
								if(s.sucText)
									$(_this).html(s.sucText);
								$(_this).removeClass(obverse);
								$(_this).addClass(reverse);
							}
							successTmp.call(_this, data, textStatus, jqXHR);
						};
						$(_this).data("obverse", s);
					}
					if(s.beforeAjax){
						var back = s.beforeAjax.call(_this, s);
						if(back === false)
							return;
					}
					s.data = s.data || {};
					s.data.id = $(_this).attr("attrid");
					ajaxProcess.call(_this, s);
				}else if($(_this).hasClass(reverse)){
					var s;
					if(!(s = $(_this).data("reverse"))){
						s = $.extend({}, settings[reverse] || {});
						var successTmp = s.success;
						s.success = function(data, textStatus, jqXHR){
							if(data.errorCode == "suc"){
								if(s.sucText)
									$(_this).html(s.sucText);
								$(_this).removeClass(reverse);
								$(_this).addClass(obverse);
							}
							successTmp.call(_this, data, textStatus, jqXHR);
						};
						$(_this).data("reverse", s);
					}
					if(s.beforeAjax){
						var back = s.beforeAjax.call(_this, s);
						if(back === false)
							return;
					}
					s.data = s.data || {};
					s.data.id = $(_this).attr("attrid");
					ajaxProcess.call(_this, s);
				}
			});
			return this;
		}
	});
	
})(jQuery);
