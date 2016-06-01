/**
 * created by wangxj
 */
var BaseData = {
	path: "",				//项目的根路径
	topMenu: "MENU_ID",		//选中top menu存cookie的key
	init: function(init_data){
		//初始化数据
		if(init_data && init_data.path)
			BaseData.path = init_data.path;
	}
};

var utils = {
	extend: function(target, source){
		 for (var p in source) {
		     if (source.hasOwnProperty(p)) {
		         target[p] = source[p];
		     }
		 }
		 return target;
	},
	loadJs: function(url, callback){
		var done = false;
		var script = document.createElement('script');
		script.type = 'text/javascript';
		script.language = 'javascript';
		script.src = url;
		script.onload = script.onreadystatechange = function(){
			if (!done && (!script.readyState || script.readyState == 'loaded' || script.readyState == 'complete')){
				done = true;
				script.onload = script.onreadystatechange = null;
				if (callback){
					callback.call(script);
				}
			}
		};
		document.getElementsByTagName("head")[0].appendChild(script);
	},
	runJs: function(url, callback){
		loadJs(url, function(){
			document.getElementsByTagName("head")[0].removeChild(this);
			if (callback){
				callback();
			}
		});
	},
	loadCss: function(url, callback){
		var link = document.createElement('link');
		link.rel = 'stylesheet';
		link.type = 'text/css';
		link.media = 'screen';
		link.href = url;
		document.getElementsByTagName('head')[0].appendChild(link);
		if (callback){
			callback.call(link);
		}
	},
	isParamUrl: function(url){
		//判断指定的URL是否带参数
		if(url) {
			var index = url.indexOf("?");
			if(index != -1) {
				url = url.substring(index + 1);
				if(url.indexOf("=") != -1)
					return true;
			}
		}
		return false;
	},
	upload : function(settings){
		//需要加载kindedit js、css
		settings = settings || {};
		if(!settings.picType){
			$.colorbox.alert("请设置上传图片路径!");
			return false;
		}
		var defaults = {
			url : BaseData.path + "/json/upload.do",
			fieldName : "files",
			picType : false,
			data : {},
			button : "uploadButton",
			imgWidth : 130,
			imgHeight : 130,
			picInput : "picture",
			picDiv : "picture_div",
			afterUpload : function(data) {
				if (data.error === 0) {
					var url = data.url[0];
					$('#'+ defaults.picInput).val(url);
					$('#' + defaults.picDiv).html('<img width="' + defaults.imgWidth 
						+ '" height="' + defaults.imgHeight + '" src="'+ BaseData.path 
						+ '/' + url + '">');
				} else {
					$.colorbox.alert("上传失败！");
				}
			}
		};
		utils.extend(defaults, settings);
		defaults.data.picType = defaults.picType;
		var uploadbutton = KindEditor.uploadbutton({
				button : $('#'+defaults.button)[0],
				fieldName : defaults.fieldName,
				url : defaults.url,
				extraParams : defaults.data,
				afterUpload : defaults.afterUpload,
				afterError : function(str) {
					$.colorbox.alert(str);
				}
			});
		uploadbutton.fileBox.change(function(e) {
				$('#'+defaults.picDiv).find(".ke-button-common.ke-button").hide();
				var $img = $('#' + defaults.picDiv + ' .uploadImg');
				$img.attr("src",BaseData.path  + '/common/imgs/loading_1.gif').css({"width":"32px","height":"32px","margin":"48px 0 0 68px"}).show();
				uploadbutton.submit();
		});
	},
	uploadMulti : function(settings){
		//上传多张图片
		//需要加载kindedit js、css
		settings = settings || {};
		if(!settings.picType){
			$.colorbox.alert("请设置上传图片路径!");
			return false;
		}
		var defaults = {
			url : BaseData.path + "/json/upload.do",
			fieldName : "files",
			picType : false,
			data : {},
			button : "uploadButton",
			imgStyle : "border: 1px solid black;margin: 5px 0 0 5px;width:130px;height:130px",
			picInput : "picture",
			picDiv : "picture_div",
			picIncrease : true,			//新增的图片是否累计
			imageSizeLimit : undefined,		//文件大小限制
			imageUploadLimit : undefined,	//文件上传个数限制	
			afterUpload : function(urlList) {
				if(!urlList) return false;
				if(!urlList instanceof Array)
					urlList = [urlList];
				var div = $('#'+defaults.picDiv),
					picVal = "";
				if(!defaults.picIncrease)
					div.html('');
				for(var i = 0; i < urlList.length; i++){
					if(i < urlList.length - 1)
						picVal += urlList[i].url + ",";
					else
						picVal += urlList[i].url;
					div.append('<img style="' + defaults.imgStyle + '" src="' + BaseData.path + "/" + urlList[i].url + '" />');
				}
				$("#"+defaults.picInput).val(picVal);
			}
		};
		utils.extend(defaults, settings);
		defaults.data.picType = defaults.picType;
		var editor = KindEditor.editor({
			allowFileManager : false,
			uploadJson : defaults.url,
			filePostName: defaults.fieldName,
			extraFileUploadParams: defaults.data,
			imageSizeLimit: defaults.imageSizeLimit,
			imageUploadLimit: defaults.imageUploadLimit
		});
		$('#'+defaults.button).click(function() {
			editor.loadPlugin('multiimage', function() {
				editor.plugin.multiImageDialog({
					clickFn : function(urlList){
						defaults.afterUpload(urlList);
						editor.hideDialog();
					}
				});
			});
		});
	},
	placeholder: function(value){
		//替换字符窜中{0}、{1}等占位符为指定的数据
    	if(!value) return "";
    	if(value.match(new RegExp("[^(\\{\\d+\\})]*\\{\\d+\\}.*"))
    		&& arguments.length > 1){
    		for(var i = 0; i < arguments.length - 1; i++) {
        		value = value.replace(new RegExp("\\{" + i + "\\}","g"), arguments[i+1]);
        	}
    	}
		return value;
    },
    //获取文件类型
    fileType: function(file){
    	return file && file.substring(file.lastIndexOf(".") + 1).toLowerCase();
    },
    clone: function(obj){
	    if(obj === null 
	    	|| obj === undefined
	    	|| typeof obj !== "object") return obj;
	    var o = obj.constructor === Array ? [] : {};
	    for(var i in obj){
            o[i] = typeof obj[i] === "object" ? utils.clone(obj[i]) : obj[i];
	    }
	    return o;
	},
	urlFormat : function(url, mode, path){
		//path需要增加或删除的路径
		if((url = $.trim(url)) === "") return "";
		mode = (mode || 'remove').toLowerCase();
		path = path || SMALL_IMG;
		if(mode === 'remove'){
			return url.replace(new RegExp("(/|\\\\)" + path + "([/\\\\]|$)", "g"), "" + "$2");
		}else if(mode === 'add'){
			return url.replace(new RegExp("^((https?://)?(/|\\\\)?([^/\\\\]+(/|\\\\))*?)([^/\\\\]+(/|\\\\)?)$", "g"), "$1" + path + "/$6");
		}
	},
	isArray: function(val) {
		if (!val) {
			return false;
		}
		return Object.prototype.toString.call(val) === '[object Array]';
	},
	isFunction: function(val) {
		if (!val) {
			return false;
		}
		return Object.prototype.toString.call(val) === '[object Function]';
	},
	isUndefined: function(val){
		return typeof(val) === "undefined";
	},
	isString: function(val){
		return typeof(val) === "string";
	},
	isNumber: function(val){
		return typeof(val) === "number";
	},
	isBoolean: function(val){
		return typeof(val) === "boolean";
	},
	isObject: function(val){
		return typeof(val) === "object";
	},
	//返回字符窜
	fmtDecimal: function(val, digit, removeZero){
		if(!utils.isNumber(val))
			val = parseFloat(val)
		if(isNaN(val)) val = 0;
		if(digit < 0) return val;
		var factor = Math.pow(10,digit),
			newVal = Math.round(val*factor)/factor + "";
		if(removeZero || digit == 0) {
			return newVal;
		} else {
			var index = newVal.indexOf(".");
			if(index == -1){
				return newVal + "." + (Math.pow(10,digit) + "").substr(1);
			}else{
				var tmpdig = newVal.length - (index + 1);
				return newVal + (Math.pow(10,digit - tmpdig) + "").substr(1);
			}
		}
	},
	//添加单位（默认px）
	addUnit: function (val, unit) {
		unit = unit || 'px';
		return val && /^\d+$/.test(val) ? val + unit : val;
	},
	//删除单位
	removeUnit: function (val) {
		var match;
		return val && (match = /(\d+)/.exec(val)) ? parseInt(match[1], 10) : 0;
	},
	escape: function (val) {
		return val.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
	},
	unescape: function (val) {
		return val.replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&quot;/g, '"').replace(/&amp;/g, '&');
	},
	//创建dom元素
	dom: function(domTag, id, className, css) {
		var element = document.createElement(domTag);
		if(id)
			element.id = id;
		if(css)
			element.style.cssText = css;
		if(className)
			element.className = className;
		return element;
	},
	//创建dom元素jquery对象
	$dom: function(domTag, id, className, css){
		return $(utils.dom(domTag, id, className, css));
	},
    //截取一定字符的字符串
	textCut: function(str,remainNum,replaceSymble,escape){
		var output = new Array();
		if(!str || !typeof remainNum == "number")
			return false;
		if(str.length >0 ){
			var n = 0;
			var pattern = /^[\u4E00-\u9FA5]+$/;
			for(var i = 0; i < str.length; i ++) {
				var strTemp = str.substring(i,i + 1);
				if(pattern.test(strTemp)) {
					n += 2;
				}else {
					n ++;
				}
				if(n > remainNum) {
					if(utils.isString(replaceSymble)) {
						output.push(replaceSymble);
					}
					break;
				}
				output.push(strTemp);
			}
		}
		if(!!escape) {
			return escapeHTML(output.join(""));
		}
		return output.join("");
	},
	//缩放图片
	zoomImg: function(img, w , h, scale, magnify){
		//proportion 指定是否等比缩放，默认是true
		//magnify 指定是否能够放大图片，默认是可以的true
		var imgW = $(img).width(),
			imgH = $(img).height(),
			zoomW, zoomH,
			magnify = magnify === false ? false : true,
			scale = scale === false ? false : true,
			w = utils.isNumber(w) ? w : parseFloat(w),
			h = utils.isNumber(h) ? h : parseFloat(h);
		if(scale){
			if(imgW <= w && imgH <= h && !magnify)
				return;
			var scaleW = imgW/w,
				scaleH = imgH/h;
			if(scaleW > scaleH){
				zoomW = w;
				zoomH = imgH/scaleW;
			}else{
				zoomH = h;
				zoomW = imgW/scaleH;
			}
		}else{
			zoomH = h;
			zoomW = w;
		}
		$(img).height(zoomH);
		$(img).width(zoomW);
	}
};

/**
 * 打开一个新窗口
 */
var openUrl = function(_url, is_full){
	var _full = true;
	if(is_full === false) _full = false;
	if(_url){
		if(_full)
			window.location.href = _url;
		else{
			var i = location.href.lastIndexOf("/");
			window.location.href = location.href.substring(0,i+1) + _url;
		}
	}
}

;(function($){
	$.extend({
		matchNum: function(_val){
			if(!_val) return false;
			_val = _val + "";
			var num_reg = /^[0-9]+$/g;
			return num_reg.test(_val);
		}
	});
	
	$.fn.extend({
		afterChange : function(fn) {
			this.keyup(function(e) {
				if (!e.ctrlKey && !e.altKey) {
					fn.call(this,e);
				}
			});
			this.mouseup(fn);
			return this;
		},
		textCount: function(settings){
			//当textArea输入框文字字数变化时，自动显示字数
			settings = $.extend({}, textCountSettings, settings);
			return this.afterChange(function(){
				if(settings.func) 
					settings.func.call(this);
				else{
					var len = $(this).val().replace(/\r\n|\n|\r|(\s+)/g, '').length;
					if(len > settings.totalCount) {
						var str = $(this).val().match(new RegExp("^([(\r\n)\n\r(\\s+)]*([^(\r\n)\n\r(\\s+)][(\r\n)\n\r(\\s+)]*){" + settings.totalCount + "})", "g"));
						$(this).val(str);
						$("#" + settings.countId).text(settings.totalCount);
					}else
						$("#" + settings.countId).text(len);
				}
			});
		}
	});
	
	var textCountSettings = {
		countId: "icer_text_count_id",
		totalCount: 500,
		process:false
	};
})(jQuery);
