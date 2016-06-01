package com.deying.core.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

import com.deying.util.FileConstants;

public class MyAuthenticatorForAgent extends Authenticator {
	String userName = null;
	String password = null;

	public MyAuthenticatorForAgent() {
	}

	public MyAuthenticatorForAgent(String username, String password) {
		this.userName = username;
		this.password = password;
	}

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(userName, password);
	}

	public static void sandEmail2Activate(String emailName) {
		MailSenderInfo mailInfo = new MailSenderInfo();
		String to = emailName;
		String[] receivers = to.split(";");
		mailInfo.setMailServerHost("smtp.exmail.qq.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("key1@kuaidianding.com");
		mailInfo.setPassword("deying1234");// 您的邮箱密码
		mailInfo.setFromAddress("key1@kuaidianding.com");
		mailInfo.setSubject("快点订(www.kuaidianding.com)商户激活成功");
		String context2 = "(如果链接无法点击，请将它复制并粘贴到浏览器的地址栏中访问)";
		String context3 = "本邮件是系统自动发送的，请勿直接回复！感谢您的访问，祝您使用愉快！ ";
		mailInfo
		.setContent("亲爱的快点订商家，<br/><br/>您好！恭喜您成功注册成为快点订商铺商家，" +
				"点击下面的链接即可登录后台商户页面：<br/><br/>"
				+"<a href='"+FileConstants.BACKEND_URL+"' >快点订商户登录</a>"
				+ "<br/><br/>"
				+ context2
				+ "<br/><br/>"
				+ context3);
		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		try {
			for (int i = 0; i < receivers.length; i++) {
				String s = receivers[i];
				// System.out.println(s);
				mailInfo.setToAddress(s);
				sms.sendHtmlMail(mailInfo);// 发送html格式
				// System.out.println("邮件发送成功！！！！！");
			}

			// sms.sendTextMail(mailInfo);//发送文体格式
			// sms.sendHtmlMail(mailInfo);//发送html格式
			// System.out.println("邮件发送成功！！！！！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void sandEmail(String emailName, String code) {
		MailSenderInfo mailInfo = new MailSenderInfo();
		String to = emailName;
		String[] receivers = to.split(";");
		/*
		 * 单发邮件<a herf="http://www.163.com">www.163.COM</a>
		 */
		// String context1 = "www.baidu.com">德赢软件</a>";
		String context1 = "德赢软件<a href='"+FileConstants.AGENTBACK_URL+"/global/Reg_twoStep.action?name="
				+ emailName
				+ "&code="
				+ code
				+ "'>"+FileConstants.AGENTBACK_URL+"/global/fgtpwd_forgetPasswordByEmail.action?name="
				+ emailName + "&code=" + code + "</a>";
		String context2 = "(如果链接无法点击，请将它复制并粘贴到浏览器的地址栏中访问)";
		String context3 = "本邮件是系统自动发送的，请勿直接回复！感谢您的访问，祝您使用愉快！ ";
		mailInfo.setMailServerHost("smtp.exmail.qq.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("key1@kuaidianding.com");
		mailInfo.setPassword("deying1234");// 您的邮箱密码
		mailInfo.setFromAddress("key1@kuaidianding.com");
		// mailInfo.setToAddress("wwq19999999@163.com");
		mailInfo.setSubject("快点订(www.kuaidianding.com)商家注册邮箱验证");
		mailInfo
				.setContent("亲爱的快点订商家，<br/><br/>您好！感谢您注册快点订帐号，点击下面的链接即可完成注册：<br/><br/>"
						+ context1
						+ "<br/><br/>"
						+ context2
						+ "<br/><br/>"
						+ context3);
		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		try {
			for (int i = 0; i < receivers.length; i++) {
				String s = receivers[i];
				// System.out.println(s);
				mailInfo.setToAddress(s);
				sms.sendHtmlMail(mailInfo);// 发送html格式
				// System.out.println("邮件发送成功！！！！！");
			}

			// sms.sendTextMail(mailInfo);//发送文体格式
			// sms.sendHtmlMail(mailInfo);//发送html格式
			// System.out.println("邮件发送成功！！！！！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void sandEmailCheckPassword(String emailName, String code) {
		MailSenderInfo mailInfo = new MailSenderInfo();
		String to = emailName;
		String[] receivers = to.split(";");

		/*
		 * 单发邮件<a herf="http://www.163.com">www.163.COM</a>
		 */
		// String context1 = "www.baidu.com">德赢软件</a>";
		String context1 = "快点订 <a href='"+FileConstants.AGENTBACK_URL+"/global/fgtpwd_validates.action?comUser.loginId="
				+ emailName
				+ "&comUser.activationCode="
				+ code
				+ "'>"+FileConstants.AGENTBACK_URL+"/global/fgtpwd_validates.action?comUser.loginId="
				+ emailName + "&comUser.activationCode=" + code + "</a>";
		String context2 = "(如果链接无法点击，请将它复制并粘贴到浏览器的地址栏中访问)";
		String context3 = "本邮件是系统自动发送的，请勿直接回复！感谢您的访问，祝您使用愉快！ ";
		// mailInfo.setMailServerHost("smtp.qq.com");
		mailInfo.setMailServerHost("smtp.exmail.qq.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("key1@kuaidianding.com");
		mailInfo.setPassword("deying1234");// 您的邮箱密码
		mailInfo.setFromAddress("key1@kuaidianding.com");
		// mailInfo.setToAddress("wwq19999999@163.com");
		mailInfo.setSubject("快点订(www.kuaidianding.com)商家修改密码邮箱验证");
		mailInfo.setContent("亲爱的快点订商家，<br/><br/>您好！点击下面的链接即可重新设置密码：<br/><br/>"
				+ context1 + "<br/><br/>" + context2 + "<br/><br/>" + context3);
		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		try {
			for (int i = 0; i < receivers.length; i++) {
				String s = receivers[i];
				// System.out.println(s);
				mailInfo.setToAddress(s);
				sms.sendHtmlMail(mailInfo);// 发送html格式
				// System.out.println("邮件发送成功！！！！！");
			}

			// sms.sendTextMail(mailInfo);//发送文体格式
			// sms.sendHtmlMail(mailInfo);//发送html格式
			// System.out.println("邮件发送成功！！！！！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		// sandEmailCheckPassword("lijybhj.1@163.com",
		// "a7dd05f2-d182-420d-ab44-65dc70bc63f7");
		// 这个类主要是设置邮件
		// MailSenderInfo mailInfo = new MailSenderInfo();

		/*
		 * 群发邮件设置 群发中加入多线程多线程的核心是多个代码块并发执行，本质特点是各代码块之间代码乱序执行。
		 * 综合其特点看出在群发邮件中实现多线程，将会大大提高发送效率。 这里分两部分来说明多线程的实现，如下：
		 * （１）实现Ｒｕｎｎａｂｌｅ接口Ｒｕｎｎａｂｌｅ接口只有一个方法ｒｕｎ（），
		 * 声明自己的类实现Ｒｕｎｎａｂｌｅ接口并提供这一方法，将我们的线程代码写入其中，就完成了这一部分的任务 public calss
		 * MutliThread implements Ｒｕｎｎａｂｌｅ｛ public synchronized void run()｛
		 * mailInfomInfo = new MailInfo(); ／／实例化２．１的 BeanString []
		 * userMail={＂地址１＂，…，＂地址ｎ＂｝； ／／群发地址 mInfo.setMutliTo(userMail);
		 * ／／得到群发地址，信件主题、内容略 MailHandlemail = new MailHandle()； ／／群发写的类
		 * mail.send(mInfo); ／／ｓｅｎｄ为２．２所有内容写入此方法｝｝ （２）创建Ｔｈｒｅａｄ类的实例 Thread[]
		 * thread ＝newThread[num]; ／／ｎｕｍ是要创建的线程数 for(int i=0;i<num;i++)｛
		 * thread[i] = new Thread()； thread[i].start(); ｝
		 * 
		 * String to = "lijybhj.1@163.com;lijybhj2@163.com";
		 * //创建邮件的接收者地址，并设置到邮件消息中 Address[] tos = null; //将要群发的邮箱地址存在了个字符串中 用
		 * ；隔开 String[] receivers =to.split(";"); if (receivers != null){ //
		 * 为每个邮件接收者创建一个地址 tos = new InternetAddress[receivers.length]; for (int
		 * i=0; i<receivers.length; i++){ String s=receivers[i]; tos[i] = new
		 * InternetAddress(s); } } //
		 * 将所有接收者地址都添加到邮件接收者属性中;943706221@qq.com;306762765@qq.com;13416154@qq.com
		 * mailInfo.setToAddress(Message.RecipientType.TO, tos);
		 */
		// String to = "wwq19999999@163.com";
		// String[] receivers =to.split(";");
		//    	  
		// /*
		// * 单发邮件<a herf="http://www.163.com">www.163.COM</a>
		// */
		// // String context1 = "www.baidu.com">德赢软件</a>";
		// String context1 = "德赢软件http://www.baidu.com";
		// String context2 = "(如果链接无法点击，请将它复制并粘贴到浏览器的地址栏中访问)";
		//          
		// mailInfo.setMailServerHost("smtp.163.com");
		// mailInfo.setMailServerPort("25");
		// mailInfo.setValidate(true);
		// mailInfo.setUserName("wwq19999999@163.com");
		// mailInfo.setPassword("wwq199999991");//您的邮箱密码
		// mailInfo.setFromAddress("wwq19999999@163.com");
		// // mailInfo.setToAddress("wwq19999999@163.com");
		// mailInfo.setSubject("这是我的邮箱测试标题--群发");
		// mailInfo.setContent("您好！感谢您注册德赢办公软件帐号，点击下面的链接即可完成注册：<br/>"+context1+"<br/>"+context2);
		// //这个类主要来发送邮件
		// SimpleMailSender sms = new SimpleMailSender();
		// try{
		// for(int i=0; i<receivers.length; i++){
		// String s=receivers[i];
		// System.out.println(s);
		// mailInfo.setToAddress(s);
		// sms.sendHtmlMail(mailInfo);//发送html格式
		// System.out.println("邮件发送成功！！！！！");
		// }
		//	     	
		// //sms.sendTextMail(mailInfo);//发送文体格式
		// //sms.sendHtmlMail(mailInfo);//发送html格式
		// //System.out.println("邮件发送成功！！！！！");
		// } catch(Exception e){
		// e.printStackTrace();
		// }
	}
}
/*
 * //创建邮件的接收者地址，并设置到邮件消息中 Address[] tos = null; //将要群发的邮箱地址存在了个字符串中 用 ；隔开
 * String[] receivers =org.apache.commons.lang.StringUtils.split(to,";"); if
 * (receivers != null){ // 为每个邮件接收者创建一个地址 tos = new
 * InternetAddress[receivers.length]; for (int i=0; i<receivers.length; i++){
 * String s=receivers[i]; tos[i] = new InternetAddress(s); } } } //
 * 将所有接收者地址都添加到邮件接收者属性中 message.setRecipients(Message.RecipientType.TO, tos);
 */