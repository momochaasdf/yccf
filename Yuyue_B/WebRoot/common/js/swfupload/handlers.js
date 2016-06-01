
/* This is an example of how to cancel all the files queued up.  It's made somewhat generic.  Just pass your SWFUpload
object in to this method and it loops through cancelling the uploads. */
function cancelQueue(instance) {
	document.getElementById(instance.customSettings.cancelButtonId).disabled = true;
	instance.stopUpload();
	var stats;
	
	do {
		stats = instance.getStats();
		instance.cancelUpload();
	} while (stats.files_queued !== 0);
	
}


/* **********************
   Event Handlers
   These are my custom event handlers to make my
   web application behave the way I went when SWFUpload
   completes different tasks.  These aren't part of the SWFUpload
   package.  They are part of my application.  Without these none
   of the actions SWFUpload makes will show up in my application.
   ********************** */
function fileDialogStart() {
	/* I don't need to do anything here */
	//this.startUpload();   //我在这里设置了单个上传，并非一批上传
}
function fileQueued(file) {
	try {
		// You might include code here that prevents the form from being submitted while the upload is in
		// progress.  Then you'll want to put code in the Queue Complete handler to "unblock" the form
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setStatus("读取完成...");
		progress.toggleCancel(true, this);

	} catch (ex) {
		this.debug(ex);
	}

}

function fileQueueError(file, errorCode, message) {
	try {
		if (errorCode === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
			alert("你一次性上传了过多文件.\n" + (message === 0 ? "你已经达到文件上传极限." : "你可以重新 选择" + (message > 1 ? "上传小于 " + message + " 个文件." : "一个文件.")));
			return;
		}

		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setError();
		progress.toggleCancel(false);

		switch (errorCode) {
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			progress.setStatus("文件过大.");
			this.debug("错误代码: 文件过大, 文件名: " + file.name + ", 文件大小: " + file.size + ", 消息: " + message);
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			progress.setStatus("不可以上传0字节的文件.");
			this.debug("错误代码: Z文件为0字节, 文件名: " + file.name + ", 文件大小: " + file.size + ", 消息: " + message);
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			progress.setStatus("非法的文件类型.");
			this.debug("错误代码: 非法的文件类型, 文件名: " + file.name + ", 文件大小: " + file.size + ", 消息: " + message);
			break;
		case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:
			alert("你选中了过多的文件.  " +  (message > 1 ? "你只能添加 " +  message + " 过多文件" : "你暂时不可以添加任何文件."));
			break;
		default:
			if (file !== null) {
				progress.setStatus("无法处理的错误");
			}
			this.debug("E错误代码: " + errorCode + ", 文件名: " + file.name + ", 文件大小: " + file.size + ", 消息: " + message);
			break;
		}
	} catch (ex) {
        this.debug(ex);
    }
}

function fileDialogComplete(numFilesSelected, numFilesQueued) {
	try {
		if (this.getStats().files_queued > 0) {
			document.getElementById(this.customSettings.cancelButtonId).disabled = false;
		}
		
		/* I want auto start and I can do that here */
		//this.startUpload();   //注释这里，可以让其不自动上传         
	
	} catch (ex)  {
        this.debug(ex);
	}
}

function uploadStart(file) {
	try {
		/* I don't want to do any file validation or anything,  I'll just update the UI and return true to indicate that the upload should start */
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setStatus("上传中...");
		progress.toggleCancel(true, this);
	}
	catch (ex) {
	}
	
	return true;      
}

function uploadProgress(file, bytesLoaded, bytesTotal) {

	try {
		var percent = Math.ceil((bytesLoaded / bytesTotal) * 100);

		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setProgress(percent);
		progress.setStatus("上传中...");
		
	} catch (ex) {
		this.debug(ex);
	}
}

function uploadSuccess(file, serverData) {
	try {
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setComplete();
		progress.setStatus("完成.");
		progress.toggleCancel(false);
		var url = serverData.substring(0,serverData.indexOf("{"));
		var src = url.split("#@#")[0];
		var truesrc = url.split("#@#")[1];
		var fileName = url.split("#@#")[2];
		fileName = fileName.replace(/\+/g," ")
		fileName = unescape(decodeURI(fileName));
		addImage(src,truesrc,fileName);
		//alert(serverData);
	} catch (ex) {
		this.debug(ex);
	}
}

function addImage(src, truesrc , fileName) {
    var iptwidth = 100;
	var str = "<li style='float:left;width:100%;line-height: 30px;'>";
	str += '<img src="'+src+'"/>';
    str += "<img class='delbutton' src='../common/imgs/fancy_close.png' style='vertical-align:text-bottom;'>";
    str += '<input type="hidden"  name="fileAddress" value="'+truesrc+'"/>';
    //str += '<input type="hidden"  name="fileNames" value="'+fileName+'"/>';
    str += "</li>";
    
	var newElement = str;
	$("#pic_list").append(newElement);
	
	$(".delbutton").bind("click",function(){
		/*$.ajax({
	        type: "GET",   //访问WebService使用Post方式请求
	        url: 'tabletback_delPic.action?url='+truesrc, //调用WebService的地址和方法名称组合---WsURL/方法名
	        success: function (data)
			{
        	}
   		 });*/
		$(this).parent().remove();
	});
	
	/*$(".viewfile1").bind("click",function(){
		var address = $(this).attr("address");
		var fileName = $(this).attr("fileName");
		var url= "tabletback_viewFile.action?url="+address+"&fileName="+fileName;
		url=encodeURI(url); 
		url=encodeURI(url);
		window.location.href=url;
	});*/
}

function uploadComplete(file) {
	try {
		/*  I want the next upload to continue automatically so I'll call startUpload here */
		if (this.getStats().files_queued === 0) {
			document.getElementById(this.customSettings.cancelButtonId).disabled = true;
		} else {	
			this.startUpload();
		}
	} catch (ex) {
		this.debug(ex);
	}

}

function uploadError(file, errorCode, message) {
	try {
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setError();
		progress.toggleCancel(false);

		switch (errorCode) {
		case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
			progress.setStatus("上传错误: " + message);
			this.debug("错误代码: HTTP 错误, 文件名: " + file.name + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.MISSING_UPLOAD_URL:
			progress.setStatus("配置错误");
			this.debug("错误代码: 没有后台文件, 文件名: " + file.name + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
			progress.setStatus("上传失败.");
			this.debug("错误代码: 上传失败, 文件名: " + file.name + ", 文件大小: " + file.size + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.IO_ERROR:
			progress.setStatus("服务器 (IO) 错误");
			this.debug("错误代码: IO 错误, 文件名: " + file.name + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
			progress.setStatus("安全错误");
			this.debug("错误代码: 安全错误, 文件名: " + file.name + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
			progress.setStatus(".");
			this.debug("错误代码: 超过上传限制, 文件名: " + file.name + ", 文件大小: " + file.size + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.SPECIFIED_FILE_ID_NOT_FOUND:
			progress.setStatus("文件没找到.");
			this.debug("错误代码: 文件没找到, 文件名: " + file.name + ", 文件大小: " + file.size + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
			progress.setStatus("验证失败.  Upload skipped.上传略过.");
			this.debug("错误代码: 文件不通过验证, 文件名: " + file.name + ", 文件大小: " + file.size + ", 信息: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
			if (this.getStats().files_queued === 0) {
				document.getElementById(this.customSettings.cancelButtonId).disabled = true;
			}
			progress.setStatus("取消");
			progress.setCancelled();
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
			progress.setStatus("停止");
			break;
		default:
			progress.setStatus("无法处理的错误: " + error_code);
			this.debug("错误代码: " + errorCode + ", 文件名: " + file.name + ", 文件大小: " + file.size + ", 信息: " + message);
			break;
		}
	} catch (ex) {
        this.debug(ex);
    }
}