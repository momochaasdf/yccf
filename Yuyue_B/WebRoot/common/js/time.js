/**
 * created by wangxj
 */

var timeUtils = {
	INTERVAL_SET : {
		"0" : "06:00-10:00",
		"1" : "10:00-15:00",
		"2" : "15:00-21:00",
		"3" : "00:00-06:00,21:00-24:00"
	}
	
};

;(function(){
	
	var getTimeInterval = timeUtils.getTimeInterval = function(hours){
		var ja = new Array();
		//根据营业时间获取对应的时间段营业时间
		var timeInterval = {};
		if(hours) {
			var ot = hours.split(" ");
			for(var _t in timeUtils.INTERVAL_SET) {
				//指定时间段支持的时间
				var intervalTime = timeUtils.INTERVAL_SET[_t];
				//存放时间段的JSONOBJECT
				var timeObj = {};
				var existTime = false;
				//指定时间段支持的时间数组
				var intervals = intervalTime.split(",");
				for(var j = 0; j < intervals.length; j++) {
					var times = intervals[j].split("-");
					for(var k = 0; k < ot.length; k++) {
						//具体的营业时间数组
						var hours = ot[k].split("-");
						//执行比较逻辑后最新时间值
						var timeTmp = new Array(2);
						if(hours[0] <= times[0])
							timeTmp[0] = times[0];
						else if(hours[0] >= times[0] && hours[0] < times[1])
							timeTmp[0] = hours[0];
						else 
							continue;
						if(hours[1] <= times[0])
							continue;
						else if(hours[1] >= times[0] && hours[1] < times[1])
							timeTmp[1] = hours[1];
						else
							timeTmp[1] = times[1];
						timeObj.time = timeObj.time || new Array();	
						timeObj.time.push(timeTmp[0].concat("-", timeTmp[1]));
						if(!existTime)
							existTime = true;
					}
				}
				if(existTime) {
					timeObj.interval = _t;
					ja.push(timeObj);
				}
			}
		}
		return ja;
	};
	
})();

