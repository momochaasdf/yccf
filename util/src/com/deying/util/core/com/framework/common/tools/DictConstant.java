package com.deying.util.core.com.framework.common.tools;

public interface DictConstant {
	/**
	 * 卡状态 10:->正常
	 */
	public static String CARD_STATUS_10 = "10";//正常
	/**
	 * 卡状态 11:->挂失
	 */
	public static String CARD_STATUS_11 = "11";//挂失
	/**
	 * 卡状态 12:->冻结
	 */
	public static String CARD_STATUS_12 = "12";//冻结
	/**
	 * 卡状态 13:->注销
	 */
	public static String CARD_STATUS_13 = "13";//注销
	/**
	 * 卡状态 14:->补卡
	 */
	public static String CARD_STATUS_14 = "14";//补卡
	/**
	 * 卡状态 15:->换卡
	 */
	public static String CARD_STATUS_15 = "15";//换卡
	/**
	 * 交易类型 0->充值
	 */
	public static String CARD_TRANS_TYPE_0 = "0";
	/**
	 * 交易类型 1->消费
	 */
	public static String CARD_TRANS_TYPE_1 = "1";
	/**
	 * 交易类型 2->洗黑
	 */
	public static String CARD_TRANS_TYPE_2 = "2";
	/**
	 * 交易类型 3->卡口押金
	 */
	public static String CARD_TRANS_TYPE_3 = "3";
	/**
	 * 交易类型 4->卡内押金返回
	 */
	public static String CARD_TRANS_TYPE_4 = "4";
	/**
	 * 交易类型 5->退款
	 */
	public static String CARD_TRANS_TYPE_5 = "5";
	/**
	 * 交易类型 6->系统自动对逃卡不结算的扣除押金
	 */
	public static String CARD_TRANS_TYPE_6 = "6";
	
	
	public static String DEPOSIT_TYPE_0 = "0";//卡内扣除押金
	public static String DEPOSIT_TYPE_1 = "1";//现金支付押金
	
	/**
	 * 开单状态：0->未结算
	 */
	public static String ORDER_STATUS_0 = "0";
	/**
	 * 开单状态：1->预订中
	 */
	public static String ORDER_STATUS_1 = "1";
	/**
	 * 开单状态：2->结算完
	 */
	public static String ORDER_STATUS_2 = "2";

}
