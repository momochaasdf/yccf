/*   
 * Copyright (c) 2010-2020 Founder Ltd. All Rights Reserved.   
 *     
 * This software is the confidential and proprietary information of   
 * Founder. You shall not disclose such Confidential Information   
 * and shall use it only in accordance with the terms of the agreements   
 * you entered into with Founder.   
 *   
 */     

package com.deying.util.bo;

import java.util.Date;
import java.util.List;

import com.deying.util.FileConstants;
import com.deying.util.data.Symbol;

/**此辅助类是帮助查找所有评论以及涉及到的商铺信息和用户信息外加商铺管理员回复信息**/
public class UserCommentShopWrap {
	private String userId;//用户主键
	private String userNickName;//用户姓名
	private String portrait;//用户头像
	private Long shopId;//商铺主键
	private String shopName;//商铺名称
	private String address;//商铺地址
	private Long commentId;//评论主键
	private Long orderId;//订单id
	private Integer totalEvaluation;//总体评价
	private Integer taste;// 口味
	private Integer environment;// 环境
	private Integer services;// 服务
	private String consumption;// 人均消费	
	private String evaluateContent;//评论内容
	private Date evaluateDate;//评论日期
	private String content;//回复内容
	private String replier;//管理员回复
	private Date replyTime; //回复时间
	private List<String> pictures;//评论所使用的图片
	private String picture;//评论图片字段所有属性
	
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getPortrait() {
		return FileConstants.FRONTEND_URL + Symbol.SLASH + portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEvaluateContent() {
		return evaluateContent;
	}
	public void setEvaluateContent(String evaluateContent) {
		this.evaluateContent = evaluateContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Long getShopId() {
		return shopId;
	}
	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
	public Long getCommentId() {
		return commentId;
	}
	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}
	public Integer getTotalEvaluation() {
		return totalEvaluation;
	}
	public void setTotalEvaluation(Integer totalEvaluation) {
		this.totalEvaluation = totalEvaluation;
	}
	public Date getEvaluateDate() {
		return evaluateDate;
	}
	public void setEvaluateDate(Date evaluateDate) {
		this.evaluateDate = evaluateDate;
	}
	public Integer getTaste() {
		return taste;
	}
	public void setTaste(Integer taste) {
		this.taste = taste;
	}
	public Integer getEnvironment() {
		return environment;
	}
	public void setEnvironment(Integer environment) {
		this.environment = environment;
	}
	public Integer getServices() {
		return services;
	}
	public void setServices(Integer services) {
		this.services = services;
	}
	public String getConsumption() {
		return consumption;
	}
	public void setConsumption(String consumption) {
		this.consumption = consumption;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReplier() {
		return replier;
	}
	public void setReplier(String replier) {
		this.replier = replier;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public List<String> getPictures() {
		return pictures;
	}
	public void setPictures(List<String> pictures) {
		this.pictures = pictures;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	

}
