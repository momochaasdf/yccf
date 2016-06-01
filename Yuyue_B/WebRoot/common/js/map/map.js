
/**
 *@author wangxj
 *
 **/
 
var MapTool = window.MapTool = MapTool || {};

(function(){
	MapTool = {
		NavCtrl: function(map){
			// 添加平移缩放控件
			var nav = new BMap.NavigationControl({
						anchor:BMAP_ANCHOR_TOP_RIGHT,type: BMAP_NAVIGATION_CONTROL_ZOOM
			});
			map.addControl(nav);
		},
		MapTypeCtrl: function(_map,_cityName){
			_map.addControl(new BMap.MapTypeControl({anchor:BMAP_ANCHOR_TOP_LEFT}));  
			_map.setCurrentCity(_cityName); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
			
		},
		OverviewCtrl: function(_map){
			//添加缩略地图控件
			_map.addControl(new BMap.OverviewMapControl());              
		},
		MarkCtrl: function(_map){
			//添加自定义标记控件
			_map.addControl(new MapExt.MarkControl({anchor:BMAP_ANCHOR_TOP_RIGHT,offset: new BMap.Size(150, 5)}));
		},
		SearchCtrl: function(_map,_setting){
			//添加自定义搜索控件
			var setting = {right: 200, top:5};
			utils.extend(setting, _setting);
			_map.addControl(new MapExt.SearchControl({anchor:BMAP_ANCHOR_TOP_RIGHT,offset: new BMap.Size(setting.right, setting.top)}));
		},
		LocalSearchObj: null,
		TextIconMarker: {
			styles: [
					{
						url: 'http://api.map.baidu.com/library/TextIconOverlay/1.2/examples/images/heart30.png',
				        size: new BMap.Size(30, 26),
				        textColor: '#ff00ff',
				        textSize: 10
				     }
				 ],
			showText: ['A','B','C','D','E','F','G','H','I','J','K','L','M',
						'N','O','P','Q','I','S','T','U','V','W','X','Y','Z']
		},
		SelfRichMark: {
			_opts:{
				flag: "",				//富标注前段显示标志
				cont: "",				//富标注显示的内容
				point: "",				//坐标或城市名
				anchor: new BMap.Size(0, 0),
				enableDragging: false,
				event: {
					onmouseover: function(e){
						$(e.currentTarget._container).find(".rm3_image").attr("src",BaseData.path + "/common/images/map/back2.png");
					},
					onmouseout: function(e){
						$(e.currentTarget._container).find(".rm3_image").attr("src",BaseData.path + "/common/images/map/back1.png");
					}
				}
			},
			Rect: function(_opts){
				var _o = utils.extend(MapTool.SelfRichMark._opts, _opts);
				var flagLeftSize = "6px"; //flag 数字 向左偏移量
				if((_o.flag+"").length == 1)
					flagLeftSize = "10px";
				var html = '<div style="position: absolute; margin: 0pt; padding: 0pt; width: 80px; height: 26px; left: -10px; top: -35px;">'
                			+ '<img class="rm3_image" style="border:none;left:0px; top:0px; position:absolute;display: block;" src="' + BaseData.path + '/common/images/map/back1.png" /> <span style="position:absolute;top:0;left:' + flagLeftSize + ';z-index:100;color:#FFF;font-size:14px;">' + _o.flag + '</span>'
							+ '<div class=" BMapLabel" unselectable="on" style="position: absolute; -moz-user-select: none; display: block; cursor: inherit; white-space: nowrap; z-index: 80; color: rgb(255, 102, 0); left: 25px; top: 1px;border: 1px solid #FF6600;background-color: #FFF;padding: 0 5px;min-width:40px;height:16px;">'
							+ _o.cont
							+ '</div>'
							+ '</div>';
      			var _rich = new BMapLib.RichMarker(html, _o.point ,_o);
      			for(var _f in _o.event) {
      				_rich.addEventListener(_f, _o.event[_f]);
      			}
      			return _rich;
			},
			DefultMarker: function(_opts){
				var dft_opts = {
					point: null,
					imgUrl: BaseData.path + "/common/images/map/marker.png",
					size: new BMap.Size(16, 25),
					anchor: new BMap.Size(8, 25),
					dragable: false 	
				};
				utils.extend(dft_opts, _opts);
				var icon = new BMap.Icon(dft_opts.imgUrl, dft_opts.size, {  
					// 指定定位位置。  
					// 当标注显示在地图上时，其所指向的地理位置距离图标左上  
				   // 角各偏移10像素和25像素。您可以看到在本例中该位置即是  
				   // 图标中央下端的尖角位置。  
				   anchor: dft_opts.anchor
				 });    
				var marker = new BMap.Marker(dft_opts.point, {icon: icon}); 
				if(dft_opts.dragable)
					marker.enableDragging();
				return marker;
			}
		},
		viewCtrl: {
			updatePoint: function(_x,_y){
				 var _divX = document.getElementById("coordinateX");
	  			 var _divY = document.getElementById("coordinateY");
		  		 if(_divX)
		  			_divX.value = _x + "";
		  		 if(_divY)
		  			_divY.value = _y + "";
			},
			addr2Point: function(_addr,_map,_cityName){
				// 创建地址解析器实例  
				var geo = new BMap.Geocoder();  
				// 将地址解析结果显示在地图上，并调整地图视野  
				geo.getPoint(_addr, function(point){  
				 	if (point) {  
				 		_map.clearOverlays();
				 		var marker = MapTool.SelfRichMark.DefultMarker({point: point,dragable: true});
						marker.addEventListener("dragend", function(e){  
							MapTool.viewCtrl.updatePoint(e.point.lng,e.point.lat);
						});
				   		_map.centerAndZoom(point, 16);  
				   		_map.addOverlay(marker);  
				 		MapTool.viewCtrl.updatePoint(point.lng,point.lat);
				 	}  
				}, _cityName);
			},
			point2Addr: function(_x,_y, _back_fun){
				//_back_fun ==> function(result){ if(result) return result.address}
				//创建地理编码实例  
				var myGeo = new BMap.Geocoder();  
				// 根据坐标得到地址描述  
				myGeo.getLocation(new BMap.Point(_x, _y), _back_fun);
			}
		}
	};
})();



/*
 *
 *地图扩展控件
 */
var MapExt = window.MapExt = MapExt || {};

/**
 *创建MarkControl（标记）控件
 *
 */
(function(){
	// 标记控件
	var MarkControl = MapExt.MarkControl = function(_set){  
	    // 设置默认停靠位置和偏移量  
	    this.defaultAnchor = _set.anchor;  
	    this.defaultOffset = _set.offset;  
	};  
	MarkControl.prototype = new BMap.Control();  
	MarkControl.prototype.initialize = function(map){  
	 	var div = document.createElement("div");  
	 	div.title = "标记";
	 	div.style.width = '50px';
	 	div.style.height = '50px';
	 	div.style.cursor = "pointer";  
	 	div.style.textIndent = "-1000px"; 
	 	div.style.background = "url(" + BaseData.path + "/common/images/map/markIcon.png) no-repeat scroll center center transparent";  
	 	div.innerHTML = "标注";
	 	div.onclick = function(e){
	  		map.clearOverlays();
	  		map.disableDragging();
	  		MapTool.viewCtrl.updatePoint("","");
	  		map.getContainer().firstChild.firstChild.style.cursor = "crosshair";
	  		map.addEventListener("click",_marker);
		};  
		var _marker = function(e){ 
			var marker = MapTool.SelfRichMark.DefultMarker({point: e.point,dragable: true});
			map.addOverlay(marker);          
			marker.addEventListener("dragend", function(e){  
				MapTool.viewCtrl.updatePoint(e.point.lng,e.point.lat);
			});
			 MapTool.viewCtrl.updatePoint(e.point.lng,e.point.lat);
			 map.getContainer().firstChild.firstChild.style.cursor = "pointer";
			 map.enableDragging() ;
			 map.removeEventListener("click",_marker);
			 //测试百度默认marker与自定义marker位置是否一致
			 //var marker = new BMap.Marker(e.point);
			 //map.addOverlay(marker); 
		};  
	 	map.getContainer().appendChild(div);  
	 	return div;  
	};  
})();




/**
 *创建SearchControl（搜索控件）
 *
 */
(function(){
	var SC = MapExt.SearchControl = function(_set){  
	    this.defaultAnchor = _set.anchor;  
	    this.defaultOffset = _set.offset;  
	};  
	SC.prototype = new BMap.Control();  
	SC.prototype.initialize = function(map){  
	 	var div = document.createElement("div"); 
	 	div.style.width = "270px";
	 	div.style.cursor = "pointer";
	 	div.innerHTML = '<div id="search_btn"  style="cursor:pointer;width:32px;height: 32px;margin: auto;background:url(' + BaseData.path + '/common/images/map/search.png) no-repeat scroll center center transparent;text-indent:-1000px">搜索</div>' +
	 					'<div  id ="search_control" style="cursor:default;display:none;width:inherit;margin: auto;border:1px solid gray;">' +
	 					'<input type="text" id="search_text" /> <input type="button" style="background:url(' + BaseData.path + '/common/images/map/search_button.png) no-repeat scroll center center transparent;cursor:pointer;border: 0 none;width:25px;height:25px;" id="search_map_btn" /><input type="button" style="background:url(' + BaseData.path + '/common/images/map/cancel.png) no-repeat scroll center center transparent;cursor:pointer;border: 0 none;width:25px;height:25px;" id="search_close_btn" />' +
	 					'</div>';
	 	var _sc = this;
	 	map.getContainer().appendChild(div);  
	 	document.getElementById("search_btn").onclick = function(){
	 		_sc.toggle();
		};
		document.getElementById("search_close_btn").onclick = function(){
	 		_sc.close();
		};
		document.getElementById("search_map_btn").onclick = function(){
			map.clearOverlays();
			if(!MapTool.LocalSearchObj) {
				var local = new BMap.LocalSearch("无锡市", {
					  renderOptions:{
						  autoViewport: true,  
						  selectFirstResult: true 
					  },
					  pageCapacity: 10,
					  onSearchComplete: function(results){  
						   if (local.getStatus() == BMAP_STATUS_SUCCESS){  
						   		 var points = [];
							     for(var i = 0; i < results.getCurrentNumPois(); i++){  
							         var marker = new BMapLib.TextIconOverlay(results.getPoi(i).point, MapTool.TextIconMarker.showText[i], { styles: MapTool.TextIconMarker.styles});
							         var info_str = "<div style='line-height:1.8em;font-size:12px;'><b>名称:</b>"+results.getPoi(i).title+"</br><b>地址:</b>"+results.getPoi(i).address+"</br>";
							         if(results.getPoi(i).phoneNumber) info_str += "<b>电话:</b>" + results.getPoi(i).phoneNumber + "</br>";
							         info_str += "</div>";
							         var infoWindow = new BMap.InfoWindow(info_str);  
								     marker.addEventListener("click",function(){
								          map.openInfoWindow(infoWindow,this.getPosition());
								     });
							         map.addOverlay(marker); 
							         points.push(results.getPoi(i).point);
							     }  
							     map.setViewport(points);
						   }else if(local.getStatus() == BMAP_STATUS_PERMISSION_DENIED) {
						   		$.colorbox.alert("您没有权限！");
						   }else if(local.getStatus() == BMAP_STATUS_SERVICE_UNAVAILABLE) {
						   		$.colorbox.alert("当前服务不可用！");
						   }else if(local.getStatus() == BMAP_STATUS_TIMEOUT) {
						   		$.colorbox.alert("请求超时！");
						   }else if(local.getStatus() == BMAP_STATUS_UNKNOWN_LOCATION) {
						   		$.colorbox.alert("[" + results.keyword + "] 位置未知！");
						   }else if(local.getStatus() == BMAP_STATUS_UNKNOWN_ROUTE) {
						   		$.colorbox.alert("导航结果未知！");
						   }else if(local.getStatus() == BMAP_STATUS_INVALID_KEY) {
						   		$.colorbox.alert("非法密钥！");
						   }else {
						   		$.colorbox.alert("非法请求！");
						   }
						   _sc.close(); 
					  }
				});
				MapTool.LocalSearchObj = local;
			}
			MapTool.LocalSearchObj.search(document.getElementById("search_text").value,{forceLocal:true}); 
		};
	 	return div;  
	};  
	
	SC.prototype.open = function(){  
		 var search = document.getElementById("search_control");
	     search.style.display = "block";    
	};
	
	SC.prototype.close = function(){  
		 var search = document.getElementById("search_control");
	     search.style.display = "none";
	};
	
	SC.prototype.toggle = function(){  
		 var search = document.getElementById("search_control");
		 if (search){  
		   if (search.style.display == "none") 
			   search.style.display = "block";    
		   else 
			   search.style.display = "none";
		 }  
	};
	
	if(typeof BMapLib != "undefined" 
		&& typeof BMapLib.TextIconOverlay != "undefined") {
		/**
		 *重写TextIconOverlay的getStyleByText方法
		 *
		 **/
		BMapLib.TextIconOverlay.prototype.getStyleByText = function (text, styles) {
	        return styles[0];
	    };
	}
	
	
})();
