<#--
	type1:当前第2页/共计100页400条记录     <<  <  1 2 3 4 5 >  >>   [ ] GO
	type2:当前第2页(20—29)/共计100页400条记录     首页  上一页   下一页  末页   [ ] GO
 -->

<@pagination pageSize=pageSize start=start totalCount=totalCount type=type?string url=url?string/>

<#macro pagination pageSize start totalCount type url>
<#setting number_format="0"/>
<#assign type=type />
<#assign p=start-pageSize/>
<#assign n=start+pageSize/>
<#if p lt 0><#assign p=0/></#if>
<#if n gt totalCount><#assign n=totalCount/></#if>
<#assign cp=(start/pageSize)?int + 1/>
<#assign tp=1/>
<#if totalCount % pageSize == 0><#assign tp=totalCount/pageSize/><#else><#assign tp=(totalCount/pageSize)?int + 1/></#if>
<table width="90%" cellpadding="0" cellspacing="0" border="0"><tr>
<td width="10px;">&nbsp;</td>
<td nowrap="nowrap" align="left">
当前第${cp}页(${start+1}—${n})/共计${tp}页${totalCount}条记录
</td><td nowrap="nowrap" align="right">
<#if type=="0">
	<#if start gt 0>
		<a href="${url}?start=0">首页</a>
	<#else>
		<span style="color:#dddddd">首页</span>
	</#if>
	<#if start gt 0>
		<a href="${url}?start=${p}">上一页</a>
	<#else>
		<span style="color:#dddddd">上一页</span>
	</#if>
	<#if n lt totalCount>
		<a href="${url}?start=${n}">下一页</a>
	<#else>
		<span style="color:#dddddd">下一页</span>
	</#if>
	<#if n lt totalCount>
		<#if totalCount%pageSize == 0>
		<a href="${url}?start=${totalCount-pageSize}">末页</a>
		<#else>
		<a href="${url}?start=${totalCount-(totalCount%pageSize)}">末页</a>
		</#if>
	<#else>
		<span style="color:#dddddd">末页</span>
	</#if>
</#if>
第<input name="_toPage" type="text" style="width:20px;" value="${cp}" onkeyup="pnavGo(${totalCount},${pageSize},this.value,'${url}')"/>页
<a href="javascript:void(0);" id="_pnavGo">GO</a>
</td><td width="10px;">&nbsp;</td></tr></table>
</#macro>
<script type="text/javascript" charset="javascript">
function pnavGo(totalCount,pageSize,pNo,url) {
	var patrn=/^[0-9]{1,10}$/;
	if (!patrn.exec(pNo)) {alert("页数必须为数字！");return false;}
	if ((pNo - 1) * pageSize > totalCount) {$("#_pnavGo").attr("href","javascript:void(0);");alert("不能超过总页数！");return false;}
	$("#_pnavGo").attr("href", url + "?start=" +((pNo - 1) * pageSize));
}
</script>
