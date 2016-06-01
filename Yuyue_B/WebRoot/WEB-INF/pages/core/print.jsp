<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<script type="text/javascript">
	function printer() {
		document.body.innerHTML=document.getElementById("printContent").innerHTML;
		window.print();
		initPrint();
	}
	function initPrint() {
		document.body.innerHTML = document.body.innerHTML + '<br/><a id="btPrint" href="javascript:printer();" target="_self">打印</a>';
	}
	</script>
	<body style="padding: 0px;margin: 0px;width: 6cm;font-size: 16px" onload="initPrint();">
	<span id="printContent"><s:property value="content" escape="false"/><input type="hidden" name="content" value="<s:property value="content"/>"/></span><br/>
	</body>
</html>
