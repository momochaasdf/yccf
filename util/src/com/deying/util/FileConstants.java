package com.deying.util;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author wangxj
 * Apr 28, 2013
 * 
 */
@SuppressWarnings("unchecked")
public class FileConstants {
	
	public static String JDBC_DRIVEE_CLASS;
	
	public static String JDBC_URL;
	
	public static String JDBC_USER_NAME;
	
	public static String JDBC_PASSWORD;
	
	public static Integer BATCH_SIZE;
	
	//后台登录失败指定次数就锁住该用户
	public static final Integer LOGIN_FAIL = Integer.parseInt(FileLoad.getProperty("login_fail"));
	
	public static final String DOUBLE_SERVER_IP = FileLoad.getProperty("double_server_ip");
	
	public static final String DX_SERVER_IP = FileLoad.getProperty("dx_server_ip");
	
	public static final String PORT = FileLoad.getProperty("port");
	
	public static final String CORPID = FileLoad.getProperty("corp_id");
	
	public static final String NAME = FileLoad.getProperty("corp_name");
	
	public static final String PWD = FileLoad.getProperty("corp_pwd");
	
	public static final String SMS_CONTENT = FileLoad.getProperty("sms_content");
	
	public static final String MAP_ADDRESS = FileLoad.getProperty("baidu_map_addr");
	
	//城市名 存cookie的名字
	public static final String CITY_NAME_COOKIE ="cityName";
	
	//城市ID 存cookie的名字
	public static final String CITY_ID_COOKIE ="cityId";
	
	public static final String DEFAULT_CITY = FileLoad.getProperty("default_city_name");
	
	//默认城市ID
	public static final Integer DEFAULT_CITY_ID = Integer.parseInt(FileLoad.getProperty("default_city_id"));
	
	public static final String DEFAULT_PROVINCE = FileLoad.getProperty("default_province_name");
	
	//订餐最大预订时间
	public static final Integer RESERVE_DAYS = Integer.parseInt(FileLoad.getProperty("reserve_days"));
	
	//订餐保留的最大时间（分钟）
	public static final Integer RESERVE_MAX_MINUTE = Integer.parseInt(FileLoad.getProperty("reserve_max_minute"));
	
	//付款等待的最大时间（分钟）
	public static final Integer PAY_WAIT_TIME = Integer.parseInt(FileLoad.getProperty("pay_wait_time"));
	
	//保留订单消费的最大时间（分钟），超过这个时间，“为消费”的订单修改成“已完成”
	public static final Integer CONSUME_KEEP_TIME = Integer.parseInt(FileLoad.getProperty("consume_keep_time"));
	
	//外卖 送餐时间必须在30分钟之后
	public static final Integer OUTMEAL_ADVANCED_TIME = Integer.parseInt(FileLoad.getProperty("outmeal_advanced_time"));
	
	public static final Integer SURE_GETGOODS_DAYS = Integer.parseInt(FileLoad.getProperty("sure_getgoods_days"));
	
	//外卖下单后 商家最大确认(接单)时间 分钟
	public static final Integer OUTMEAL_ORDER_WAIT_ACCEPT = Integer.parseInt(FileLoad.getProperty("outmeal_order_wait_accept"));
	
	//配送中的外卖最长180分钟内送达， 超过180分钟 状态改为 “未送达”
	public static final Integer OUTMEAL_ORDER_MAX_SEND_TIME = Integer.parseInt(FileLoad.getProperty("outmeal_order_max_send_time"));
	
	//打款给商铺的周期 7天
	public static final Integer SHOP_REMIT_DAYS = Integer.parseInt(FileLoad.getProperty("shop_remit_days"));
	
	//需要验证的URL
	public static final List<String> VALIDATION_URL = (List<String>)FileLoad.get("validation-url");

	//backend可以直接访问的URL 
	public static final List<String> ACCESSIBLE_URL = (List<String>)FileLoad.get("accessible-url");
	
	//枚举类的包名
	public static final String ENUM_PKG = FileLoad.getProperty("enum_pkg");
	
	//枚举类备选包名
	public static final String ENUM_ALTER_PKG = FileLoad.getProperty("enum_alter_pkg");
	
	//敏感字
	public static final Set<String> SENSITIVE_WORDS = (Set<String>)FileLoad.get("sensitive-words");
	
	//手机图片路径后缀
	public static final String MOBILE_IMG_PATH = FileLoad.getProperty("mobile_img_path");
	
	//用户默认头像
	public static final String USER_FACE = FileLoad.getProperty("user_face");
	
	//加密/解密 密钥
	public static final String RC4_KEY = FileLoad.getProperty("rc4_key");

	//frontend免登陆cookie保存时间
	public static final Integer LOGIN_COOKIE_TIME = Integer.parseInt(FileLoad.getProperty("login_cookie_time"));

	//frontend免登陆cookie保存名
	public static final String LOGIN_COOKIE_NAME = "DY_MEMBER_INFO";

	//无穷大的表现值
	public static final Integer INFINITY = -1;
	
	//frontend url 地址
	public static final String FRONTEND_URL = FileLoad.getProperty("frontend_url");

	//代理商后台
	public static final String AGENTBACK_URL = FileLoad.getProperty("agentback_url");
	
	//backend url 地址
	public static final String BACKEND_URL = FileLoad.getProperty("backend_url");
	
	//backend url 地址--为银联返回
	public static final String IP_BACKEND_URL = FileLoad.getProperty("ip_backend_url");
	
	public static final String 	SPREAD_SHOP_URL = FileLoad.getProperty("spread_shop_url");
	//图片根地址
	public static final String IMG_URL = FileLoad.getProperty("img_url");

	//激活码有效时间
	public static final Integer ACTIVE_CODE_TIMEOUT = Integer.parseInt(FileLoad.getProperty("active_code_timeout"));
	
	//手机软件存放的根目录
	public static final String APP_SOFT_FOLDER = FileLoad.getProperty("app_soft_folder");
	
	//手机软件欢迎页面图片地址
	public static final String WELCOME_IMG_PATH = FileLoad.getProperty("welcome_img_path");
	
	//后台top menu 存放session的key
	public static final String TOP_MENU_KEY = "TOP_MENU_KEY";
	
	////常用地址限额
	public static final Integer COMMONLY_ADDRESS_COUNT =  Integer.parseInt(FileLoad.getProperty("commonlyAddressCount"));
	
	//后台选中的top menu 存放cookie的key
	public static final String TOP_MENU_ID_COOKIE = "MENU_ID";
	
	//商家预约菜单二维码生成路径
	public static final String QRCODE_FOOD_PATH = "upload/qrcode/food";
	
	//商家外卖菜单二维码生成路径
	public static final String QRCODE_OUT_MEAL_PATH = "upload/qrcode/outmeal";
	
	//商家桌子二维码生成路径
	public static final String QRCODE_TABLE_PATH = "upload/qrcode/table";
	
	//商家加急提现比率
	public static final BigDecimal URGENTREMIT = new BigDecimal(FileLoad.getProperty("urgentRemit"));

	//用户订单邮件内容模板
	public static final String ORDER_MAIL_CONTENT = FileLoad.getOrderMailContent("orderEmailContent.txt");
	
	//用户付款成功邮件内容模板
	public static final String ORDER_SUC_MAIL_CONTENT = FileLoad.getOrderMailContent("orderSucEmailContent.txt");
	
	//公司邮箱
	public static final String DEYING_EMAIL = FileLoad.getProperty("deyingEmail");
	
	//手机正则
	public static final String MOBILE_PATTON = FileLoad.getProperty("mobilePatton");
	//公司邮箱
	public static final String DEYING_EMAIL_PASSWORD = FileLoad.getProperty("deyingEmailPassword");
	//公司邮箱
	public static final String MAIL_SERVERHOST = FileLoad.getProperty("mailServerHost");
	//公司邮箱
	public static final String MAIL_SERVERPORT = FileLoad.getProperty("mailServerPort");
	
	//响应的跳转路径
	public static final String RESPONSE_PATH = "responsePath";

	//退款 返回现金到银行卡的最小时间（小时）
	public static final Integer CASH_BACK_TIME =  Integer.parseInt(FileLoad.getProperty("cash_back_time"));
	
	//手机端log名字
	public static final String LOG_MOBILE = "mobile";
	
	//订单log名字
	public static final String LOG_ORDER = "order";
	
	//后台IP
	public static final String IP_BACKEND = FileLoad.getProperty("ip_backend");
	
	//发送消息需要弹出信息提示框的信息类型
	public static final String ALERT_MSG_BOX = FileLoad.getProperty("alert_msg_box");
	
	//弹出信息个数KEY值
	public static final String UNREAD_MSG_COUNT = "unreadMsg";
	
	/***************************************************************************************************/
	
	//客户端，生成推广用户指定apk包的，build.xml路径的
	public static final String KDD_APP_BUILD_PATH = FileLoad.getProperty("kdd_app_build_path");
	
	//客户端，打包成功后，存放的路径
	public static final String APPFILE_SAVE_PATH = FileLoad.getProperty("appfile_save_path");
	
	//客户端，打包程序 配置文件 local.properties 存放的路径
	public static final String LOCALPROPERTIES_PATH = FileLoad.getProperty("localproperties_path");
	
	/***************************************************************************************************/
	
	//用户订单付款后执行商家获得总价对应的积分比例
	public static final BigDecimal SHOP_INTEGRAL_SCALE = new BigDecimal(FileLoad.getProperty("shop_integral_scale"));
	
	//上传文件的路径
	public static final Map<String, String> UPLOAD_PATH = (Map<String, String>)FileLoad.get("upload_path");
	
	//摇一摇加积分
	public static final Integer SHAKE_SHOP_NUM =  Integer.parseInt(FileLoad.getProperty("shake_shop_num"));
	
	//广告连接地址路径
	public static final String AD_SHOP_URL = FileLoad.getProperty("ad_shop_url");
	
	//系统用户
	public static class SysUser {
		
		public static final String USER_TYPE = "";
		public static final String USER_ID = "0";
		public static final String USER_NAME = "快点订";
		
	}
	
	//系统
	public static class Sys {
		
		public static final String ID = "0";
		public static final String ENTITY_TYPE = "";
		public static final String NAME = "快点订";
		
	}
	
	//所有（对象）
	public static class Global {
		
		public static final String ID = "-1";
		public static final String ENTITY_TYPE = "";
		public static final String NAME = "所有";
		
	}
	
	/**
	 * 获取imgPath的全路径地址
	 * @param imgPath
	 * @return
	 */
	public static String getImgURL(String imgPath) {
		if(imgPath == null) return null;
		return IMG_URL + imgPath;
	}
	
	/**
	 * 获取个人推广0.2%收益
	 */
	public static final double SPREAD_INTRAGER =  Double.parseDouble(FileLoad.getProperty("spread_integral"));
	
	/**
	 * 快点订佣金比例 6%
	 */
	public static final BigDecimal SPREAD_SHOP_COMPANY = new BigDecimal(FileLoad.getProperty("spread_shop_company"));
	
	/**
	 * 商铺推广公司获取 10%
	 */
	public static final BigDecimal SPREAD_SHOP_USER = new BigDecimal(FileLoad.getProperty("spread_shop_user"));
	
	/**
	 * 推广申请退后一天
	 */
	public static final int SPREAD_ADD_DAY = Integer.parseInt(FileLoad.getProperty("spread_add_day"));
	
	/**
	 * 获取指尖游戏文字
	 */
	public static final String FINGERTIPS_OF_GAME = FileLoad.getProperty("fingertips_ganme");
	
	/******************  set方法   *************************/
	
	public void setDriveClass(String driveClass) {
		FileConstants.JDBC_DRIVEE_CLASS = driveClass;
	}
	
	public void setJdbcUrl(String jdbcUrl) {
		FileConstants.JDBC_URL = jdbcUrl;
	}
	
	public void setJdbcUser(String jdbcUser) {
		FileConstants.JDBC_USER_NAME = jdbcUser;
	}
	
	public void setJdbcPassword(String jdbcPassword) {
		FileConstants.JDBC_PASSWORD = jdbcPassword;
	}
	
	public void setBatchSize(Integer batchSize) {
		FileConstants.BATCH_SIZE = batchSize;
	}
	

	public static final String 	TEST_CERTIFY_FRONT = "front.cer";
	
	public static final String TEST_PASS = "123456";
	
	public static final String PUBLIC_CERTIFY_CER = "898320257341033.cer";
	
	public static final String PUBLIC_CERTIFY_PFX = "898320257341033.pfx";
	
	public static final String MERCHANT_ID = "898320257341033";   // 测试商号
	
	public static final String TRANS_TIMEOUT = "20131028130828";	//默认超时时间
	
	public static final SimpleDateFormat DATE_FMT = new SimpleDateFormat("yyyyMMddHHmmss");

	public static final String BACK_END_URL = FileConstants.IP_BACKEND_URL+"/com/deying/action/mobileUnionPay/UnionPayAPP.action";
	
	public static final String RESULT_SUCCESS = "0000";
	
	public static final String TRANS_TYPE_REVOCATION = "31"; //撤销
	
	public static final String TRANS_TYPE_CANCEL = "04";
	
	public static final String TRANS_TYPE = "01";//消费情况
	
	public static final String OBTION_REIMBURSE_KB = "退款成功，增加K币";
	
	//手机接口订单类型区分 1 为预定订单  2 为外卖订单
	
	public static final Integer RESERVE_ORDER_TYPE = 1;
	
	public static final Integer TAKEOUT_ORDER_TYPE = 2;
	
	/**
	 * 常量文字
	 */
	public static final String LINK_TEXT = "还在为订不到吃饭的位置着急吗？手机安装快点订，注册账号，预定位置，付款，只需这几步轻松搞定..";
	
	/**
	 * 摇一摇返回类型 0为商铺
	 */
	public static final String SHAKE_SHOP_TYPE = "0";
	
	//忘记密码 类型 0 手机  1  邮箱
	public static final String FORGET_MOBILE_TYPE = "0";
		
	public static final String FORGET_EMAIL_TYPE = "1";
	
	//推广列表 type 0 个人  1  商铺
	public static final String SPREAD_USER_TYPE = "0";
	public static final String SPREAD_SHOP_TYPE = "1";
	
	/******************  积分商城利用   *************************/
	//代理商后台
	public static final String MOBILE_IMG_URL = FileLoad.getProperty("mobile_img_url");
}
