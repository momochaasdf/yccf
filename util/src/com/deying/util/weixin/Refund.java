package com.deying.util.weixin;

import java.io.File;
import java.io.FileInputStream;

import java.net.URL;
import java.security.KeyStore;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.net.ssl.SSLContext;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLContexts;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;



public class Refund {
	public String  wechatRefund(String transaction_id,String out_refund_no,String total_fee,String refund_fee) throws Exception {
		try {
			/*String transaction_id = "1007870800201507230460386807";//微信订单号
			String out_refund_no = "2015072355555";// 退款单号
			String total_fee = "1";// 总金额
			String refund_fee = "1";// 退款金额
	*/		
			Date dt = new Date();  
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");  
	        String nonce_str = sdf.format(dt).toString();//"随机字符串";
			String appid = "wxda9130097b225283";
			String appsecret = "";
			String mch_id = "1233374102";
			String op_user_id = "1233374102";//就是MCHID
			String partnerkey = "ua895245cxxff3b136052f76e86d1209";//商户平台上的那个KEY
			String out_trade_no = "";// 订单号
			SortedMap<String, String> packageParams = new TreeMap<String, String>();
			packageParams.put("appid", appid);
			packageParams.put("mch_id", mch_id);
			packageParams.put("nonce_str", nonce_str);
			packageParams.put("out_trade_no", out_trade_no);
			packageParams.put("out_refund_no", out_refund_no);
			packageParams.put("total_fee", String.valueOf(total_fee));
			packageParams.put("refund_fee", String.valueOf(refund_fee));
			packageParams.put("op_user_id", op_user_id);
			packageParams.put("transaction_id", transaction_id);
			RequestHandler reqHandler = new RequestHandler(
					null, null);
			reqHandler.init(appid, appsecret, partnerkey);
	
			String sign = reqHandler.createSign(packageParams);
			String xml = "<xml>" + "<appid>" + appid + "</appid>" + "<mch_id>"
					+ mch_id + "</mch_id>" + "<nonce_str>" + nonce_str
					+ "</nonce_str>" + "<sign><![CDATA[" + sign + "]]></sign>"
					+ "<out_trade_no>" + out_trade_no + "</out_trade_no>"
					+ "<out_refund_no>" + out_refund_no + "</out_refund_no>"
					+ "<total_fee>" + total_fee + "</total_fee>"
					+ "<refund_fee>" + refund_fee + "</refund_fee>"
					+ "<transaction_id>" + transaction_id + "</transaction_id>"
					+ "<op_user_id>" + op_user_id + "</op_user_id>" + "</xml>";
			String createOrderURL = "https://api.mch.weixin.qq.com/secapi/pay/refund";
			
			URL base = this.getClass().getResource("");
			String path = base.getFile();
			path = path.substring(0, path.length()-31) + "apiclient_cert.p12";
			System.out.println("==================path================="+path);
			//ClientCustomSSL client = new ClientCustomSSL();
			String s= doRefund(createOrderURL, xml , path);
			String str = s.substring(27, 34);
			System.out.println("================s==================="+s);
			return str;
		} catch (Throwable e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public String doRefund(String url,String data,String filePath) throws Exception {
        KeyStore keyStore  = KeyStore.getInstance("PKCS12");
        FileInputStream instream = new FileInputStream(new File(filePath));
        try {
            keyStore.load(instream, "1233374102".toCharArray());//这里写密码..默认是你的MCHID
        } finally {
            instream.close();
        }

        // Trust own CA and all self-signed certs
        SSLContext sslcontext = SSLContexts.custom()
                .loadKeyMaterial(keyStore, "1233374102".toCharArray())//这里也是写密码的
                .build();
        // Allow TLSv1 protocol only
        SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(
                sslcontext,
                new String[] { "TLSv1" },
                null,
                SSLConnectionSocketFactory.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
        CloseableHttpClient httpclient = HttpClients.custom()
                .setSSLSocketFactory(sslsf)
                .build();
        try {
        	HttpPost httpost = new HttpPost(url); // 设置响应头信息
        	httpost.addHeader("Connection", "keep-alive");
        	httpost.addHeader("Accept", "*/*");
        	httpost.addHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
        	httpost.addHeader("Host", "api.mch.weixin.qq.com");
        	httpost.addHeader("X-Requested-With", "XMLHttpRequest");
        	httpost.addHeader("Cache-Control", "max-age=0");
        	httpost.addHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0) ");
    		httpost.setEntity(new StringEntity(data, "UTF-8"));
            CloseableHttpResponse response = httpclient.execute(httpost);
            try {
                HttpEntity entity = response.getEntity();

                String jsonStr = EntityUtils
    					.toString(response.getEntity(), "UTF-8");
                EntityUtils.consume(entity);
               return jsonStr;
            } finally {
                response.close();
            }
        } finally {
            httpclient.close();
        }
    }
//	public static void main(String[] args) {
//		Refund refund=new Refund();
//		BigDecimal total_fee = BigDecimal.valueOf(1.0);
//		BigDecimal refund_fee = BigDecimal.valueOf(1.0);
//		try {
//			refund.wechatRefund("1007870800201507230460386807","2015072355555",refund_fee,total_fee);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

}
