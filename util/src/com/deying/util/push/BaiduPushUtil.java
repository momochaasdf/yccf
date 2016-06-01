package com.deying.util.push;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baidu.yun.channel.auth.ChannelKeyPair;
import com.baidu.yun.channel.client.BaiduChannelClient;
import com.baidu.yun.channel.exception.ChannelClientException;
import com.baidu.yun.channel.exception.ChannelServerException;
import com.baidu.yun.channel.model.PushUnicastMessageRequest;
import com.baidu.yun.channel.model.PushUnicastMessageResponse;
import com.baidu.yun.core.log.YunLogEvent;
import com.baidu.yun.core.log.YunLogHandler;

public class BaiduPushUtil {
	private static final Logger LOG = LoggerFactory
			.getLogger(BaiduPushUtil.class);

	/**
	 * android单播-推送消息
	 * @param messageCenter
	 * @param userBean
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean singleAndroidPush(MessageCenter messageCenter) {
		boolean flag = true;
		// 1. 设置developer平台的ApiKey/SecretKey
		String apiKey = "QSbuavhEtBswEMU0dLNQZ4Gl";
		String secretKey = "g1Mvlh5FrLy0f0GuKCsTbatNnLmgqzEY";
		ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

		// 2. 创建BaiduChannelClient对象实例
		BaiduChannelClient channelClient = new BaiduChannelClient(pair);

		// 3. 若要了解交互细节，请注册YunLogHandler类
		channelClient.setChannelLogHandler(new YunLogHandler() {
			@Override
			public void onHandle(YunLogEvent event) {
				// TODO Auto-generated method stub
				System.out.println(event.getMessage());
			}
		});

		try {
			// 4. 创建请求类对象
			PushUnicastMessageRequest request = new PushUnicastMessageRequest();
			request.setDeviceType(messageCenter.getDeviceType()); // device_type => 1：浏览器设备；  3：Andriod设备；4：iOS设备；  4:ios 5:wp   
			request.setChannelId(Long.getLong(messageCenter.getAppChannelID()));
			request.setUserId(messageCenter.getAppUserID());
			// 若要显示通知，
			request.setMessageType(1); // 默认是0    
			// 此格式不可更改
			LOG.info("android推送消息：" + messageCenter.getMessage());
			request.setMessage(messageCenter.getMessage());

			// 5. 调用pushMessage接口
			PushUnicastMessageResponse response = channelClient
					.pushUnicastMessage(request);

			// 6. 认证推送成功
			if(response.getSuccessAmount() != 1) {
				flag = false;
			}else{
				LOG.info("推送成功");
			}
			//Assert.assertEquals(1, response.getSuccessAmount());

		} catch (ChannelClientException e) {
			// 处理客户端错误异常
			flag = false;
			LOG.error("client error." + e);
		} catch (ChannelServerException e) {
			// 处理服务端错误异常
			flag = false;
			LOG.error("request_id: %d, error_code: %d, error_message: %s", e
					.getRequestId()
					+ ":" + e.getErrorCode() + ":" + e.getErrorMsg());
		} finally {
			return flag;
		}
	}
	
	/**
	 * 后台IOS单播-推送消息
	 * @param messageCenter
	 * @param userBean
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean singleIOSPush(MessageCenter messageCenter) {
		boolean flag = true;
		// 1. 设置developer平台的ApiKey/SecretKey
		String apiKey = "QSbuavhEtBswEMU0dLNQZ4Gl";
		String secretKey = "g1Mvlh5FrLy0f0GuKCsTbatNnLmgqzEY";
		ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

		// 2. 创建BaiduChannelClient对象实例
		BaiduChannelClient channelClient = new BaiduChannelClient(pair);

		// 3. 若要了解交互细节，请注册YunLogHandler类
		channelClient.setChannelLogHandler(new YunLogHandler() {
			@Override
			public void onHandle(YunLogEvent event) {
				// TODO Auto-generated method stub
				System.out.println(event.getMessage());
			}
		});

		try {
			// 4. 创建请求类对象
			PushUnicastMessageRequest request = new PushUnicastMessageRequest();
			request.setDeviceType(4); // device_type => 1：浏览器设备；  3：Andriod设备；4：iOS设备；  4:ios 5:wp   
			request.setChannelId(Long.getLong(messageCenter.getAppChannelID()));
			request.setDeployStatus(2);  //1 测试  2 生产
			// 若要显示通知，
			request.setMessageType(1); // 默认是0    
			// 此格式不可更改
			System.out.println("IOS推送消息：" + messageCenter.getMessage());
			System.out.println("IOS--UserId：" + messageCenter.getAppUserID());
			LOG.info("IOS推送消息：" + messageCenter.getMessage());
			request.setUserId(messageCenter.getAppUserID());
			request.setMessage(messageCenter.getMessage());

			// 5. 调用pushMessage接口
			PushUnicastMessageResponse response = channelClient
					.pushUnicastMessage(request);

			// 6. 认证推送成功
			if(response.getSuccessAmount() != 1) {
				flag = false;
			}else{
				LOG.info("推送成功");
			}
			//Assert.assertEquals(1, response.getSuccessAmount());

		} catch (ChannelClientException e) {
			// 处理客户端错误异常
			flag = false;
			LOG.error("client error." + e);
		} catch (ChannelServerException e) {
			// 处理服务端错误异常
			flag = false;
			LOG.error("request_id: %d, error_code: %d, error_message: %s", e
					.getRequestId()
					+ ":" + e.getErrorCode() + ":" + e.getErrorMsg());
		} finally {
			return flag;
		}
	}
	
	/**
	 * android单播-推送消息
	 * @param messageCenter
	 * @param userBean
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean singleMemberAndroidPush(MessageCenter messageCenter) {
		boolean flag = true;
		// 1. 设置developer平台的ApiKey/SecretKey
		String apiKey = "4mrmDL6xq1mayGMysjIzUvLg";
		String secretKey = "9eDSWPq7DUa4bZ47wInuWm6rPZUy2oZ5";
		ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

		// 2. 创建BaiduChannelClient对象实例
		BaiduChannelClient channelClient = new BaiduChannelClient(pair);

		// 3. 若要了解交互细节，请注册YunLogHandler类
		channelClient.setChannelLogHandler(new YunLogHandler() {
			@Override
			public void onHandle(YunLogEvent event) {
				// TODO Auto-generated method stub
				System.out.println(event.getMessage());
			}
		});

		try {
			// 4. 创建请求类对象
			PushUnicastMessageRequest request = new PushUnicastMessageRequest();
			request.setDeviceType(messageCenter.getDeviceType()); // device_type => 1：浏览器设备；  3：Andriod设备；4：iOS设备；  4:ios 5:wp   
			request.setChannelId(Long.getLong(messageCenter.getAppChannelID()));
			request.setUserId(messageCenter.getAppUserID());
			// 若要显示通知，
			request.setMessageType(1); // 默认是0    
			// 此格式不可更改
			LOG.info("android推送消息：" + messageCenter.getMessage());
			request.setMessage(messageCenter.getMessage());

			// 5. 调用pushMessage接口
			PushUnicastMessageResponse response = channelClient
					.pushUnicastMessage(request);

			// 6. 认证推送成功
			if(response.getSuccessAmount() != 1) {
				flag = false;
			}else{
				LOG.info("推送成功");
			}
			//Assert.assertEquals(1, response.getSuccessAmount());

		} catch (ChannelClientException e) {
			// 处理客户端错误异常
			flag = false;
			LOG.error("client error." + e);
		} catch (ChannelServerException e) {
			// 处理服务端错误异常
			flag = false;
			LOG.error("request_id: %d, error_code: %d, error_message: %s", e
					.getRequestId()
					+ ":" + e.getErrorCode() + ":" + e.getErrorMsg());
		} finally {
			return flag;
		}
	}
	
	/**
	 * 后台IOS单播-推送消息
	 * @param messageCenter
	 * @param userBean
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean singleMemberIOSPush(MessageCenter messageCenter) {
		boolean flag = true;
		// 1. 设置developer平台的ApiKey/SecretKey
		String apiKey = "4mrmDL6xq1mayGMysjIzUvLg";
		String secretKey = "9eDSWPq7DUa4bZ47wInuWm6rPZUy2oZ5";
		ChannelKeyPair pair = new ChannelKeyPair(apiKey, secretKey);

		// 2. 创建BaiduChannelClient对象实例
		BaiduChannelClient channelClient = new BaiduChannelClient(pair);

		// 3. 若要了解交互细节，请注册YunLogHandler类
		channelClient.setChannelLogHandler(new YunLogHandler() {
			@Override
			public void onHandle(YunLogEvent event) {
				// TODO Auto-generated method stub
				System.out.println(event.getMessage());
			}
		});

		try {
			// 4. 创建请求类对象
			PushUnicastMessageRequest request = new PushUnicastMessageRequest();
			request.setDeviceType(4); // device_type => 1：浏览器设备；  3：Andriod设备；4：iOS设备；  4:ios 5:wp   
			request.setChannelId(Long.getLong(messageCenter.getAppChannelID()));
			request.setDeployStatus(2);  //1 测试  2 生产
			// 若要显示通知，
			request.setMessageType(1); // 默认是0    
			// 此格式不可更改
			System.out.println("IOS推送消息：" + messageCenter.getMessage());
			System.out.println("IOS--UserId：" + messageCenter.getAppUserID());
			LOG.info("IOS推送消息：" + messageCenter.getMessage());
			request.setUserId(messageCenter.getAppUserID());
			request.setMessage(messageCenter.getMessage());

			// 5. 调用pushMessage接口
			PushUnicastMessageResponse response = channelClient
					.pushUnicastMessage(request);

			// 6. 认证推送成功
			if(response.getSuccessAmount() != 1) {
				flag = false;
			}else{
				LOG.info("推送成功");
			}
			//Assert.assertEquals(1, response.getSuccessAmount());

		} catch (ChannelClientException e) {
			// 处理客户端错误异常
			flag = false;
			LOG.error("client error." + e);
		} catch (ChannelServerException e) {
			// 处理服务端错误异常
			flag = false;
			LOG.error("request_id: %d, error_code: %d, error_message: %s", e
					.getRequestId()
					+ ":" + e.getErrorCode() + ":" + e.getErrorMsg());
		} finally {
			return flag;
		}
	}
	
	/**
	 * 异步商家版发送推送
	 * @param phone
	 * @param content
	 */
	public static void asynPushAndroidMessage(MessageCenter mg) {
		final MessageCenter messageCenter = mg;
		LOG.info("推送商家：{} 内容：{}", mg);
		new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			public void run() {
				BaiduPushUtil bpu = new BaiduPushUtil();
				boolean flag = false;
				for(int i = 0; i < 3; i++) {
					if(flag == true) break;
					try {
						flag = bpu.singleAndroidPush(messageCenter);
					} catch (Exception e) {
						LOG.error("推送商家失败...", e);
					}
				}
			}
			
		}).start();
	}
	
	/**
	 * 异步商家版发送推送IOS
	 * @param phone
	 * @param content
	 */
	public static void asynPushIOSMessage(MessageCenter mg) {
		final MessageCenter messageCenter = mg;
		LOG.info("推送商家：{} 内容：{}", mg);
		new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			public void run() {
				BaiduPushUtil bpu = new BaiduPushUtil();
				boolean flag = false;
				for(int i = 0; i < 3; i++) {
					if(flag == true) break;
					try {
						flag = bpu.singleIOSPush(messageCenter);
					} catch (Exception e) {
						LOG.error("推送商家失败...", e);
					}
				}
			}
			
		}).start();
	}
	
	/**
	 * 异步会员发送推送
	 * @param phone
	 * @param content
	 */
	public static void asynPushMemberAndroidMessage(MessageCenter mg) {
		final MessageCenter messageCenter = mg;
		LOG.info("推送会员：{} 内容：{}", mg);
		new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			public void run() {
				BaiduPushUtil bpu = new BaiduPushUtil();
				boolean flag = false;
				for(int i = 0; i < 3; i++) {
					if(flag == true) break;
					try {
						flag = bpu.singleMemberAndroidPush(messageCenter);
					} catch (Exception e) {
						LOG.error("推送会员失败...", e);
					}
				}
			}
			
		}).start();
	}
	
	/**
	 * 异步会员发送推送IOS
	 * @param phone
	 * @param content
	 */
	public static void asynPushMemberIOSMessage(MessageCenter mg) {
		final MessageCenter messageCenter = mg;
		LOG.info("推送会员：{} 内容：{}", mg);
		new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			public void run() {
				BaiduPushUtil bpu = new BaiduPushUtil();
				boolean flag = false;
				for(int i = 0; i < 3; i++) {
					if(flag == true) break;
					try {
						flag = bpu.singleMemberIOSPush(messageCenter);
					} catch (Exception e) {
						LOG.error("推送会员失败...", e);
					}
				}
			}
			
		}).start();
	}



}
