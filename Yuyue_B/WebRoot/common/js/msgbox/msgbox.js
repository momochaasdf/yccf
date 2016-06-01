/**
 * created by wangxj
 */
;(function($){
	
	var defaults = {
		msgId		: false,
		title		: "提示信息",
		content		: "提示内容",
		detailUrl	: false,
		contentHeight	: false,	//为false时，自适应高度
		wordsNum	: false,	//显示的字数
		callback	: false
	};
	utils.loadCss(BaseData.path + "/common/js/msgbox/msgbox.css");
	var boxDom = ['<div class="msg_box" style="display: none;">',
						'<div class="title_div">',
					    	'<div class="title_icon"></div>',
					        '<div class="title_center">',
					        	'<div class="msg_title">',
					            '</div>',
					            '<div class="msg_close">',
					            	'<img src="' + BaseData.path + '/common/js/msgbox/imgs/pic_guanbi.gif" />',
					            '</div>',
					        '</div>',
					        '<div class="title_right"></div>',
					    '</div>',
					    '<div class="msg_center">',
					         '<div class="msg_content" >',
					         '</div>',
					    '</div>',
					    '<div style="width:100%; height:5px">',
					    	'<div class="bottom_left"></div>',
					        '<div class="bottom_center"></div>',
					        '<div class="bottom_right"></div>',
					    '</div>',
					'</div>'].join("");
	$.extend({msgbox: function(settings){
		var $boxDom = $(boxDom);
		settings = $.extend({}, defaults, settings);	
		$boxDom.find(".msg_title").text(settings.title);
		var $msg_con = $boxDom.find(".msg_content").attr("title", settings.content);
		if(settings.wordsNum)
			$msg_con.text(utils.textCut(settings.content, settings.wordsNum, "...", false))
		if(settings.contentHeight)
			$msg_con.css("height", settings.contentHeight);
		
		if(settings.detailUrl) {
			var detail = ['<div class="lookup_btn" style="width:100%; margin-top:10px; height:17px">',
								'<div style="width:40px; height:17px; float:left;text-align:right;">',
									'<a class="msg_ignore_msg" href="javascript:void(0);">忽略</a>',
								'</div>',
					         	'<div style="width:85px; height:17px; float:right;">',
					            	'<div class="fdj">',
					                '</div>',
					                '<div style="width:66px; height:17px; float:left">',
					                	'<a href="' + settings.detailUrl + '"><span style="margin-left:3px">点击查看</span></a>',
					                '</div>',
					            '</div>',
					         '</div>'].join("");
			$boxDom.find(".msg_content").after(detail);
		}
		$boxDom.find(".msg_close").click(function(){
			$boxDom.animate({"bottom": "-" + $boxDom.height() + "px"},"slow", function(){
				$(this).remove();
			})
			if(settings.callback)
				settings.callback();
		});
		$boxDom.find(".msg_ignore_msg").click(function(){
			//点击《忽略》时触发的函数，有_id时则此消息修改为已读
			if(settings.msgId){
				$.get(BaseData.path + "/jmessage/jmessage_readMsg.do",{id: settings.msgId});
			}
			$boxDom.animate({"bottom": "-" + $boxDom.height() + "px"},"slow", function(){
				$(this).remove();
			})
			if(settings.callback)
				settings.callback();
		});
		$("body").append($boxDom);	
		$boxDom.css("bottom","-" + $boxDom.height() + "px")
			.show().animate({"bottom": "0px"},"slow");
	}});
	
})(jQuery);