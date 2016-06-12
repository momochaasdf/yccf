package com.deying.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.codec.RC4Util;
import com.deying.util.data.Symbol;

/**
 * 短信包方法
 * @author lqw
 *
 */
public class SMS_Center {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SMS_Center.class);

	String double_server_ip = FileConstants.DOUBLE_SERVER_IP;
	String dx_server_ip = FileConstants.DX_SERVER_IP;
	String port = FileConstants.PORT;
	String corp_id = FileConstants.CORPID;
	String name = FileConstants.NAME;
	String password = FileConstants.PWD;
//	private static final String[] xmls;
	RC4Util rc4Util = new RC4Util(FileConstants.RC4_KEY);
	
	StringBuffer sb = new StringBuffer("http://"+double_server_ip+":"+port+"/");
	StringBuffer sb_temp = new StringBuffer("http://116.255.238.170:10016/sms.aspx");
	
	
	/**
	 * 发送短信
	 * @param MOBILE 目标号码：用逗号分隔，100内
	 * @param CONTENT 短信内容：一般70个汉字
	 * @param EXTNO 子号(如没有回复功能时此项为空根据分配的数值来写如没分配则为空)
	 * @return
	 * @throws Exception 
	 * 老的通道，暂且搁置年后启动
	 */
	//http://211.147.242.161:8080/?CORPID=tm0001&USERNAME=test&PASSWORD=2222&EXTNO=&MOBILE=15900000000&CONTENT=TestMessage
	public String sendSMS(String mobile,String content,String extno) throws Exception{
		sb.append("?CORPID="+corp_id);
		sb.append("&USERNAME="+name);
		sb.append("&PASSWORD="+password);
		sb.append("&EXTNO="+extno);
		// 向StringBuffer追加手机号码
		sb.append("&MOBILE="+mobile);
		
		// 向StringBuffer追加消息内容转URL标准码
		sb.append("&content="+URLEncoder.encode(content, "GB2312"));
		LOGGER.info("发送请求："+sb.toString());
		String code = dothing(sb).split(Symbol.COLON)[0];
		if(StringUtils.isNotBlank(code))
			code = code.split(Symbol.COLON)[0];
		LOGGER.info("Back mobile {} code {}.",mobile , code);
		if(!code.equals("1")) {
			code = dothing(sb);
			LOGGER.info("Back mobile {} code {}.",mobile , code);
		}
		return code;
		// 返回结果:成功将返回1；+消息编号，失败返回错误码,这里消息编号和状态报告对应
	}
	

	/**
	 * 发送短信--春节通道
	 * @param MOBILE 目标号码：用逗号分隔，100内
	 * @param CONTENT 短信内容：一般70个汉字
	 * @param SENDTIME 定时发送时间-为空表示立即发送，定时发送格式2010-10-24 09:08:10
	 * @param EXTNO 子号(如没有回复功能时此项为空根据分配的数值来写如没分配则为空)
	 * @return
	 * @throws Exception 
	 */
	//http://116.255.238.170:10016/sms.aspx?action=send&userid=12&account=账号&password=密码&mobile=15023239810,13527576163&content=内容&sendTime=&extno=
	public String sendSMS_temp(String mobile,String content,String extno) throws Exception{
		sb_temp.append("?action="+"send");
		sb_temp.append("&userid="+"347");
		sb_temp.append("&account="+"kuaidianding");
		sb_temp.append("&password="+"kuaidianding123");
		// 向StringBuffer追加手机号码
		sb_temp.append("&mobile="+mobile);
		// 向StringBuffer追加消息内容转URL标准码
		sb_temp.append("&content="+URLEncoder.encode(content, "UTF-8"));
		//定时发送时间-为空表示立即发送，定时发送格式2010-10-24 09:08:10
		sb_temp.append("&sendTime="+"");
		//扩展子号-请先询问配置的通道是否支持扩展子号，如果不支持，请填空。子号只能为数字，且最多5位数。
		sb_temp.append("&extno="+"");
		LOGGER.info("发送请求："+sb.toString());
		String code = dothing_temp(sb_temp);
		if(code.substring(code.indexOf("<message>")+9, code.indexOf("</message>")).equals("ok")){
			code = "1";
		}else{
			code = "999";
		}
		return code;
		// 返回结果:成功将返回1；
	}
	
	/**
	 * Mo接口（接收回复接口）
	 * 提交之后，无上行记录则返回0，用户名密码认证失败返回错误码，成功返回上行记录.
	 * 上行记录以 |;| 分隔，字段间以 |^| 分隔，
	 * 格式为：扩展号|^|用户号码|^|短信内容|^|接收时间|;|…|;
	 */
	//http://211.147.242.161:8080 /Mo.asp?CORPID=tm0001&USERNAME=UserName&PASSWORD=2222
	public String mo() throws Exception{
		sb.append("Mo.asp?");
		sb.append("CORPID="+corp_id);
		sb.append("&USERNAME="+name);
		sb.append("&PASSWORD="+password);
		String code = dothing(sb).split(Symbol.COLON)[0];
		if(!code.equals("1"))
			code = dothing(sb);
		return code;
	}
	
	/**
	 * 查询用户短信余量
	 * @throws Exception
	 */
	//http://211.147.242.161:8080/Balance.asp?CORPID=tm0001&USERNAME=UserName&PASSWORD=2222
	public String query_user_message() throws Exception{
		
		sb.append("Balance.asp?");
		sb.append("CORPID="+corp_id);
		sb.append("&USERNAME="+name);
		sb.append("&PASSWORD="+password);
		String code = dothing(sb);
		System.out.println("用户短信余量:"+code);
		if(!code.equals("1"))
			code = dothing(sb);
		return code;
		// 成功返回短信剩余条数记录
	} 
	
	/**
	 * d)	Upassword修改密码接口
	 * 提交之后，用户名密码认证失败返回错误码，修改成功返回1
	 */
	//http://211.147.242.161:8080/Upassword.asp?CORPID=***&USERNAME=***&PASSWORD=123456&NEWPASSWORD=654321
	public String upwd(String newpwd) throws Exception{
		sb.append("Upassword.asp?");
		sb.append("CORPID="+corp_id);
		sb.append("&USERNAME="+name);
		sb.append("&PASSWORD="+password);
		sb.append("&NEWPASSWORD="+newpwd);
		String code = dothing(sb);
		System.out.println("密码修改:"+code);
		if(!code.equals("1"))
			code = dothing(sb);
		return code;
	}
	
	/**
	 * 提交之后，无状态记录则返回0，用户名密码认证失败返回错误码，成功返回状态记录
	 * 状态记录以 |;| 分隔，字段间以 |^| 分隔，
	 * 格式为：状态|^|用户号码|^|消息ID|^|接收时间|;|…|;|
	 * @throws Exception
	 */
	//http://211.147.242.161:8080/Report.asp?CORPID=tm0001&USERNAME=UserName&PASSWORD=2222
	public String report() throws Exception{
		sb.append("Report.asp?");
		sb.append("CORPID="+corp_id);
		sb.append("&USERNAME="+name);
		sb.append("&PASSWORD="+password);
		String code = dothing(sb);
		System.out.println("接收状态报告:"+code);
		if(!code.equals("1"))
			code = dothing(sb);
		return code;
	}
	
	public String dothing(StringBuffer sb) throws Exception{
		URL url = new URL(sb.toString());
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));
		String inputline = in.readLine();
		return inputline;
	}
	public String dothing_temp(StringBuffer sb) throws Exception{
		URL url = new URL(sb.toString());
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
		String str="";
		String reMsg="";
		while((str=in.readLine())!=null){
			reMsg += str;
		}
		return reMsg;
	}
	public static void main(String[] args) throws Exception {

		SMS_Center sms = new SMS_Center();
//		sms.mo();
//		sms.report();
//		sms.sendSMS("18118907002", "尊敬的快点订用户，您好。欢迎使用快点订云平台，我们的平台包括快点订网站（会员、商铺中心、代理中心）、快点订客户端（Android、IOS），我们会越做越好，希望大家多支持！！！。【快点订】", "");
		sms.sendSMS("13912605956", "尊敬的快点订用户，您好。欢迎使用快点订云平台！！【快点订】", "");
//		Runnable r1=new Runnable(){
//			public void run() {
//				Thread t2=new Thread(
//						new Runnable(){
//							public void run() {
//								try {
////									Thread.sleep(1000*3);
//									SMS_Center sms = new SMS_Center();
////									sms.query_user_message();
//									String code=sms.sendSMS("18118907002", "尊敬的快点订用户，您好。欢迎使用快点订云平台！！【快点订】", "");
//									System.out.println("返回code:"+code);
//									new Thread(new Runnable(){
//										@Override
//										public void run() {
//											System.out.println("再次发送短信"+"--"+Thread.currentThread().getId());
//										}
//									}).start();
//									System.out.println("子线程结束：t2:"+Thread.currentThread().getId());
//								} catch (Exception e) {
//									e.printStackTrace();
//								}
//							}
//							
//						},"子线程"
//				);
//				t2.start();
//			}
//			
//		};
//		Thread t1=new Thread(r1,"主线程");
//		t1.start();
//		System.out.println("主线程结束：t1 id:"+t1.getId());
//		t1.stop();
//		
	}
}
