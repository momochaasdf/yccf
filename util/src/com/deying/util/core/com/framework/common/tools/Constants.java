/**
 * com.framework.common.tools.AdminBaseAction.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		2010-10-12		新建
 */
package com.deying.util.core.com.framework.common.tools;

public interface Constants {
	
	public static String USER_KEY = "_COM_FRAMEWORK_USER_KEY";
	
	public static String BT_TYPE = "_COM_TYPE";
	
	public static String SEARCH_COND = "_COM_FRAMEWORK_SEARCH_COND";
	public static String SEARCH_COND_1 = "_COM_FRAMEWORK_SEARCH_COND_1";
	
	public static String INTEGRAL_SEARCH_COND = "_COM_INTEGRAL_SEARCH_COND";
	
	public static String LBDJ_CARD = "_NF_LBDJ_CARD";
	
	public static String MENU_KEY = "_COM_MENU_KEY";
	
	public static String DB_MJ = "MJ";
	public static String DB_DEFAULT = "DEFAULT";
	public static String BLACKLIST_ADD = "1";
	public static String BLACKLIST_DEL = "0";
	
	//定义充值消费类操作参数
	public static String TRANS_CHARGE = "0";//充值
	public static String TRANS_CONSUME = "1";//消费
	public static String TRANS_PayBlackClear = "2";//洗黑罚款<暂不用>
	public static String TRANS_PayYj = "3";//卡扣押金<暂不用>
	public static String TRANS_ReturnYj = "4";//卡内押金返还<暂不用>
	public static String TRANS_ReturnFee = "5";//退款
	public static String TRANS_PayEscape = "6";//逃卡扣除押金<暂不用>
	public static String TRANS_PayRes = "7";//食堂消费<暂不用>
	public static String TRANS_Flush = "8";//冲正交易
	public static String TRANS_PerTime = "9";//按次计费<暂不用>
	
	
	public static String TRAN_ONLINE="1";//联机交易
	public static String TRAN_OFFLINE = "2";//脱机交易
	
	
	//临时交易数据状态
	public static String TP_SYNCNo = "0";
	public static String TP_SYNCYes = "1";
	public static String TP_SYNCError= "9";
	public static String TP_SYNCRpt = "3";//可能因时间差引起的同步重复数据
	//发送给厂商数据库的交易数据处理状态
	public static String TP_TransEXCSuccess = "1";
	public static String TP_TransEXCFail = "0";
	
	//交易数据验证结果
	public static String ValTrans_Success = "000000";
	public static String ValTrans_ErrPOS = "900001";
	public static String ValTrans_ErrCardStatus = "900002";
	//与厂商数据库进行卡状态交互操作结果
	public static String Card_Success = "000000";
	
	//报表记录级别
	public static String RPT_Detail = "0";
	public static String RPT_Total = "9";
	
	
	//证件类型
	public static String Paper_stu = "0";//学生证
	public static String Paper_id = "1";//身份证
	public static String Paper_police = "2";//军官
	public static String Paper_foreign = "3";//护照
	public static String Paper_other = "4";//其它
	
	//预录入 记录 状态
	public static String cardPre_imp = "0";
	public static String cardPre_made = "1";
	public static String cardPre_err = "9";
	//人群
	public static String UserType_stu = "10";//学生
	public static String UserType_teacher = "12";//老师
	//卡类型
	public static String CardType_school = "10";//校园卡
	
	//返回值
	public static String RETURN_SUCCESS = "1";//成功
	public static String RETURN_FAILURE = "0";//失败	
	
	//shop状态
	public static Integer SHOP_NOTACTIVATE=0;//未激活
	public static Integer SHOP_ACTIVATE=1;	//以激活
	public static Integer SHOP_TERMINATE=2;	//解约
	public static Integer SHOP_DELETE=3;	//删除
	public static Integer SHOP_CLOSED = 4;//暂停营业
	
	//手机小图片存储路径
	public static String MOBILE_IMAGE_PATH = "mobilePath";
	
	//首页右侧广告显示
	public static Integer MIAN_RIGHT_ADVERTISEMENT =3;
	//首页头部广告显示 最多六条广告
	public static Integer MIAN_TOP_ADVERTISEMENT =6;
	//网站公告页面中部5条
	public static Integer SYS_CENTER_ADVERTISEMENT =5;
	//网站公告页面右部10条
	public static Integer SYS_RIGHT_ADVERTISEMENT =10;
	
	/*****************抽红包*****************/
	public static String BONUS_NO_ORDER = "s1";//订单不存在
	public static String BONUS_TIME_PASSED = "s2";//红包已过期
	public static String BONUS_MONEY_LOSE = "s3";//订单金额不满足要求
	public static String BONUS_SHAKE_RECORD = "s4";//已抽中过奖
	public static String BONUS_NUM_PASSED = "s5";//大于第5单
	
	public static String BONUS_CREATOR = "s6";//下单人
	public static String BONUS_USER = "s7";//同行人
}
