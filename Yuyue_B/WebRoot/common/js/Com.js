//var comPort;
var userCode1 = 11;
var userCode2 = 22;
var userCode3 = 33;
$(document).ready(function(){
	$("#span_icon").click(function(){
		var ec = $("#span_icon").attr('class');
		if (ec!='span_e') {$("#mainleft").show();} else {$("#mainleft").hide();}
		$("#span_icon").toggleClass("span_c", 'span_e');
		$.cookie('_abc', $("#span_icon").attr('class'),{expires:7});
	});
	var clz = $.cookie('_abc')!='' ? $.cookie('_abc') : 'span_e';
	$("#span_icon").addClass(clz);
	if (clz!='span_e' && clz!=null) {
		$("#mainleft").hide();
	}
	$("#updown").click(function(){
		var t = $("#" + $("#updown").attr("target"));
		t.toggle();
		$("#updown").text($("#updown").text()=='[展开]' ? '[隐藏]' : '[展开]');
		$.cookie($("#updown").attr("target"), t.filter(":hidden").size()>0,{expires:7});
	});
	if($("#updown").length>0 && $.cookie($("#updown").attr("target"))=='true') {
		$("#" + $("#updown").attr("target")).hide();
		$("#updown").text("[展开]");
	}
	
});
function doAction(formId, action, vl) {
	var _ns = $("#_ns").val();
	var ac=jsCtx + _ns + action + ".do";
	$("#"+formId).attr("action", ac);
	$("#"+formId).submit();
}

function doRequest(target, action, vl) {
	var _ns = $("#_ns").val();
	var ac=jsCtx + _ns + action + ".do";
	target.location = ac;
}

function showAndHid(id, target) {
	$("#" + id).text($("#" + id).text() == '[展开]' ? '[隐藏]' : '[展开]');
	$("#" + target).toggle();
}
//验证
$(document).ready(function(){
	jQuery.validator.addMethod("maxbytelen", function(value, element, param) {
	var length = value.replace(/[^\x00-\xff]/g,"**").length;
	return this.optional(element) || (length < param);
	}, $.validator.format("请输入一个长度最多是 {0} 字节数的字符串"));
	
	jQuery.validator.addMethod("minbytelen", function(value, element, param) {
	var length = value.replace(/[^\x00-\xff]/g,"**").length;
	return this.optional(element) || (length >= param[0] && length <= param[1]);
	}, $.validator.format("请输入一个长度最少是 {0} 字节数的字符串"));
	
	jQuery.validator.addMethod("rangebytelen", function(value, element, param) {
	var length = value.replace(/[^\x00-\xff]/g,"**").length;
	return this.optional(element) || (length > param);
	}, $.validator.format("请输入一个长度介于 {0} 和 {1} 字节数之间的字符串"));
	
	jQuery.validator.addMethod("chinese", function(value, element, param) {
	return this.optional(element) || (value.match("/[^\u4e00-\u9fa5]/g"));
	}, $.validator.format("请输入中文"));
	
	jQuery.validator.addMethod("dateComp", function(value, element, param) {
		var t = $(param).val();t = t=='' ? $(param).datetimebox('getValue') : t;
		return parseFloat(value.replace(/:/g,'').replace(/-/g,'').replace(/ /g,''))-parseFloat(t.replace(/:/g,'').replace(/-/g,'').replace(/ /g,'')) >= 0;
	}, $.validator.format("结束时间不能小于开始时间"));
	jQuery.validator.addMethod("compTo", function(value, element, param) {
		if (value=='' || value==undefined)return true;
		return parseFloat(value)<=parseFloat($(param).val());
	}, $.validator.format("超过规定值"));
});


/*
function getnfCardCom()
{     
      try     
      {     
          var   fso   =   new   ActiveXObject("Scripting.FileSystemObject")     
      }     
      catch(e){     
  
          alert("您的浏览器安全级别太高，无法保存，请调整您的安全级别到低");     
          return 'err';
      }     
      var ts,s;     
      var ForReading = 1;         
         
      //定义字符串   
       var str;
  
      //读取文件的内容。   
       if(!fso.FileExists("C:\\nfCard\\nfCardCom.ini")){
    	    alert("未找到端口配置文件C:\\nfCard\\nfCardCom.ini");     
           return 'err';
       }
      ts = fso.OpenTextFile("C:\\nfCard\\nfCardCom.ini",ForReading,false); 
       
      
      while(!ts.AtEndOfStream){   
  
          s  = ts.ReadLine();     
          str  =str+s;  
          //document.write(s);   
      }   
      ts.Close();     
     
      //迭代弹出读取文件的数据   
     if(str==null || str.length<1 || str.indexOf('comm=')<0 || str.indexOf(';')<0){
    	 alert("配置内容错误,内容应为  comm=13; 样式");
    	  return 'err';
     }else{
    	 port = str.substring(str.indexOf('comm=')+5,str.indexOf(';'));
     }     
     return port;
    }
*/
(function(){ 
$.extend($.fn,{ 
mask: function(){ 
this.unmask(); 
$("<div class=\"datagrid-mask\"></div>").css({display:"block",width:"100%",height:$(window).height()}).appendTo("body"); 
$("<div class=\"datagrid-mask-msg\"></div>").html("正在处理，请稍候。。。").appendTo("body").css({display:"block",left:($(document.body).outerWidth(true)) / 2,top:($(window).height() - 45) / 2}); 

}, 
unmask: function(){ 
var original=$(document.body); 
if(this[0] && this[0]!==window.document){ 
original=$(this[0]); 
} 
 
original.find("> div.datagrid-mask").remove();
original.find("> div.datagrid-mask-msg").remove();
 
} 
}); 
})(); 
