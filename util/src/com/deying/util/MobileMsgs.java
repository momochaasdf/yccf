package com.deying.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MobileMsgs {
	
	private static final Logger LOG = LoggerFactory.getLogger(MobileMsgs.class);
	
	/**
	 * 异步发送消息
	 */
	public static void asynSend(String phone, String content) {
		final String ph = phone;
		final String c = content + "【快点订】"; 
		LOG.info("发送短信：{} 内容：{}", ph, c);
		new Thread(new Runnable(){

			@Override
			public void run() {
				SMS_Center sms = new SMS_Center();
				String code = "-1";
				for(int i = 0; i < 3; i++) {
					if("1".equals(code)) break;
					try {
						code = sms.sendSMS(ph, c, "");
					} catch (Exception e) {
						LOG.error("发送短信失败...", e);
					}
				}
			}
			
		}).start();
	}
	
	/**
	 * 同步发送消息
	 * return 1 成功 -1 失败
	 */
	public static String send(String phone, String content) {
		content += "【快点订】";
		LOG.info("发送短信：{} 内容：{}", phone, content);
		SMS_Center sms = new SMS_Center();
		String code = "-1";
		for(int i = 0; i < 3; i++) {
			if("1".equals(code)) break;
			try {
				code = sms.sendSMS(phone, content, "");
			} catch (Exception e) {
				LOG.error("发送短信失败...", e);
			}
		}
		return code;
	}
	
	public static void main(String[] args) {
		send("15190283317,18651513601,13912605956,18651513601","短信测试");
	}

}
