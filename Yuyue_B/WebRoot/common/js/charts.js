
function showPie(title,subtitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
     doPie(title,subtitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2);
     $('#container').toggle(1000);
     $('#container_line').hide();
     $('#container_bar').hide();
     $('#shengcheng').toggle(1000);
     $('#quxiao').toggle(1000);
     $('#shengcheng1').css('display','block');
     $('#quxiao1').css('display','none');
     $('#shengcheng2').css('display','block');
     $('#quxiao2').css('display','none');            
}

function showLine(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
     doLine(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2)
     $('#container_line').toggle(1000);
     $('#container').hide();
     $('#container_bar').hide();
     $('#shengcheng1').toggle(1000);
     $('#quxiao1').toggle(1000);
     $('#shengcheng2').css('display','block');
     $('#quxiao2').css('display','none');
     $('#shengcheng').css('display','block');
     $('#quxiao').css('display','none');
}    

function showBar(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
     doBar(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2);
     $('#container_bar').toggle(1000);
     $('#container').hide();
     $('#container_line').hide();
     $('#shengcheng2').toggle(1000);
     $('#quxiao2').toggle(1000);
     $('#shengcheng1').css('display','block');
     $('#quxiao1').css('display','none');
     $('#shengcheng').css('display','block');
     $('#quxiao').css('display','none');
}

//  生成曲线图
    function doLine(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
    	var chart;
    	chart = new Highcharts.Chart({
			chart: {
				renderTo: lineContainer, 
                type: 'line',
                marginRight: 130,
                marginBottom: 50
            },			
            title: {
                text: title,      
                x: -20 
            },
            xAxis: {
                title: {
                    text: xAxisTitle
                },
				categories: []
            },
            yAxis: {
                title: {
                    text: yAxisTitle,
                    style : {
                       whiteSpace: 'pre-wrap',
                       filter:''
                    }
                },
                min: 0, 
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '('+valueSuffix+')'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -10,
                y: 100,
                borderWidth: 0
            },
            series: [{                               
                name: seriesName,
				data:[]
			}]
			});
			
			var URL = getURL();
			getDataByAjax(chart,URL)
			
    	}   	
    
    	
//生成柱状图
    function doBar(title,subtitle,xAxisTitle,yAxisTitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
    	var chart;
    	chart = new Highcharts.Chart({
			chart: {
				renderTo: "container_bar", 
                type: 'column',
                marginBottom: 50
            },			
            title: {
                text: title,      
                x: -20 
            },
            xAxis: {
                title: {
                    text: xAxisTitle
                },
				categories: []
            },
            yAxis: {
                title: {
                    text: yAxisTitle,
                    style : {
                       whiteSpace: 'pre-wrap',
                       filter:''
                    }
                },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '('+valueSuffix+')'
            },
            legend: {
                layout: 'horizontal',
                align: 'right',
                verticalAlign: 'top',
                x: -10,
                y: 100,
                borderWidth: 0
            },
             plotOptions: {
	                series: {
                		allowPointSelect: true
            		}
	            },
            series: [{                               
                name: seriesName,
				data:[]
			}]
			});
			
			var URL = getURL();
			getDataByAjax(chart,URL);
			
    	}    
    	
//曲线图和柱状图公用的ajax
    	function getDataByAjax(chart,URL){
    		var titleArray = [];
			var dataArray =  [];
    		$.ajax( {
		            type :'post',
		            url: URL,
		            //data : {id :id},
		            dataType: "json",
		            success : function(result) {
		                    $.each(result, function(entryIndex, entry) {
		                       	var title = entry['title'];
						  		var data = entry['data'];
						  		var data2 = parseInt(data);
						  		//alert("title="+title+",data="+data);
						  		titleArray.push(title );
						  		dataArray.push(data2);   
		                     });
						chart.xAxis[0].setCategories(titleArray);
						chart.series[0].setData(dataArray); 
		            },
		            error:function(e){
                        alert(e);
                    }
		       });
			
    		
    	}    	
    	
//生成饼状图
    	function doPie(title,subtitle,valueSuffix,seriesName,lineContainer,pieContainer,barContainer,shengcheng,quxiao,shengcheng1,quxiao1,shengcheng2,quxiao2){
    	var chart;
    	chart = new Highcharts.Chart({
			chart: {
				renderTo: "container", 
                type: 'pie',
                plotBackgroundColor: null,
	            plotBorderWidth: null,
	            plotShadow: false,
	            marginBottom: 100
            },			
            title: {
                text: title      
            },
            plotOptions: {
	                pie: {
	                    allowPointSelect: true,
	                    cursor: 'pointer',
	                    dataLabels: {
	                        enabled: false,
	                        color : '#000000'
	                    },
	                    showInLegend: true
	                }
	            },
            
            tooltip: {
                valueSuffix: '('+valueSuffix+')',
                percentageDecimals: 0
            },
            
            series: [{ 
            	type: 'pie',                              
                name: seriesName,
				data:[]
			}]
			});
			
			var URL = getURL();
			
			var data;
			var dataArray = new Array();
			
			$.ajax( {
		            type :'post',
		            url: URL,
		            //data : {id :id},
		            dataType: "json",
		            success : function(result) {
		                    $.each(result, function(entryIndex, entry) {
		                       	var title = entry['title'];
						  		var data = entry['data'];
						  		var data2 = parseInt(data);
						  		//alert("title="+title+",data="+data);
						  		data = new Array(title,data2); 
						  		dataArray.push(data);
		                     });
						//chart.xAxis[0].setCategories(titleArray);
						chart.series[0].setData(dataArray); 
		            },
		            error:function(e){
                        alert(e);
                    }
		       });
			
    	}    	

	
         
        
        
       
         
     
        