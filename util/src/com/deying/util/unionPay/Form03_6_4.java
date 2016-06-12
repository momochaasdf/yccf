package com.deying.util.unionPay;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.unionpay.acp.sdk.SDKConfig;

/**
 * 名称：第3部分 互联网支付无跳转支付产品——银联侧开通<br>
 * 功能：6.4　发送短信验证码交易<br>
 * 版本： 5.0<br>
 * 日期： 2014-07<br>
 * 作者： 中国银联ACP团队<br>
 * 版权： 中国银联<br>
 * 说明：以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己需要，按照技术文档编写。该代码仅供参考。<br>
 */
public class Form03_6_4 extends DemoBase {

	/**
	 * 6.4　发送短信验证码交易 表单填写
	 * 
	 * @return
	 */

	public Map<String, Object> setFormDate(String mobile,String accNo,String price,String txnSubType) {

		Map<String, Object> contentData = new HashMap<String, Object>();

		Date date = new Date();
		DateFormat dt = new SimpleDateFormat("yyyyMMddHHmmss");
		String orderId = String.valueOf(date.getTime());
		String txnTime = dt.format(date);
		
		String merId = "898320257340125";
//		String txnTime = "20140820145625";// --订单发送时间
//		String orderId = "201408201508395217";// --商户订单号

		// 固定填写
		contentData.put("version", version);// M

		// 默认取值：UTF-8
		contentData.put("encoding", encoding);// M
		//
		// //通过MPI插件获取
		// contentData.put("certId", certId);//M
		//
		// //填写对报文摘要的签名
		// contentData.put("signature", signature);//M

		// 01RSA02 MD5 (暂不支持)
		contentData.put("signMethod", "01");// M

		// 取值:77
		contentData.put("txnType", "77");// M

		// 用于区分发送短信的类型：00——开通短信02——消费短信04——预授权
		contentData.put("txnSubType", txnSubType);// M

		contentData.put("bizType", "000000");// M

		// //基于委托的支付交易上送
		// contentData.put("bindId", bindId);//C

		contentData.put("channelType", "07");// M

		// 0：普通商户直连接入2：平台类商户接入
		contentData.put("accessType", "0");// M

		// 　
		contentData.put("merId", merId);// M

		// //商户类型为平台类商户接入时必须上送
		// contentData.put("subMerId", subMerId);//C
		//
		// //商户类型为平台类商户接入时必须上送
		// contentData.put("subMerName", subMerName);//C
		//
		// //商户类型为平台类商户接入时必须上送
		// contentData.put("subMerAbbr", subMerAbbr);//C
		//
		// //　
		contentData.put("accType", "01");
		//
		// //消费、预授权交易，收单机构端采集账号时必填，上送全卡号若与银联有约定，可上送卡号后4位
		 contentData.put("accNo", accNo);//C

		// 需与后续消费交易订单号一致
		contentData.put("orderId", orderId);// M

		// 需与后续消费交易订单发送时间一致
		contentData.put("txnTime", txnTime);// M

		// 默认156（参考公参）可选，若交易金额上送，币种必上送，默认156
		contentData.put("currencyCode", "156");// C

		// //短信模板中涉及金额的需上送,金额 单位分
		contentData.put("txnAmt",price);//C
		//
		// //商户自定义保留域，交易应答时会原样返回
		// contentData.put("reqReserved", reqReserved);//O
		//
		// //格式如下：{子域名1=值&子域名2=值&子域名3=值} 移动支付参考消费
		// contentData.put("reserved", reserved);//O
		//
		// //有风险级别要求的商户必填 风险级别 {riskLevel=XX}
		// contentData.put("riskRateInfo", riskRateInfo);//O
		//
		DemoBase db = new DemoBase();
		// //除跨行收单外其他上送手机号时，放于此域
		 contentData.put("customerInfo", db.getCustomer(encoding,mobile));//C
		//
		// //当使用银联公钥加密密码等信息时，需上送加密证书的CertID
		// contentData.put("encryptCertId", encryptCertId);//C
		return contentData;
	}

	

}
