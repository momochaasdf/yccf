package com.deying.util.bo;
import java.io.Serializable;
import java.util.Date;
/**
 * 
 * This class is used for define 评论以及回复
 * 
 * @author mayulong
 */
public class CommentRep implements Serializable {

	private static final long serialVersionUID = 8267930305935076098L;
	/**
	 * 用户Id
	 */
	private String userId;
	/**
	 * 用户昵称
	 */
	private String nickname;
	/**
	 *用户头像 
	 * 
	 */
	private String portrait;
	
	/**
	 * 评论的主键
	 */
	private Long id;
	/**
	 * 评论人
	 */
	private String creator;
	/**
	 * 评论人ID
	 */
	private String creatorId;

	/**
	 * 评论人类型
	 */
	private Integer creatorType;
	/***
	 * 总体评价
	 * 
	 */
	private Integer totalEvaluation;
	/**
	 * 口味
	 */
	private Integer taste;
	/**
	 * 环境
	 */
	private Integer environment;
	/**
	 * 服务
	 */
	private Integer services;
	/**
	 * 评价
	 */
	private String evaluate;
	/**
	 * 创建日期
	 */
	private Date createTime;
	/**
	 * 回复ID
	 */
	private Long replyID;
	/**
	 * 回复人父ID
	 */
	private Long replyParentId;
	/**
	 * 回复内容
	 */
	private String replyContent;
	/**
	 * 回复人
	 */
	private String replyCretor;
	/**
	 * 回复人类型
	 */
	private Integer replyCreType;
	/**
	 * 回复时间
	 */
	private Date replyCreTime;
	/**
	 * 回复人ID
	 */
	private String replyCreatorID;
	/**
	 * 评论图片
	 */
	private String pictures;
	// ------------------------getter and setter -----------------------
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public String getCreatorId() {
		return creatorId;
	}
	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}
	public Integer getCreatorType() {
		return creatorType;
	}
	public void setCreatorType(Integer creatorType) {
		this.creatorType = creatorType;
	}
	public Integer getTotalEvaluation() {
		return totalEvaluation;
	}
	public void setTotalEvaluation(Integer totalEvaluation) {
		this.totalEvaluation = totalEvaluation;
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
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Long getReplyID() {
		return replyID;
	}
	public void setReplyID(Long replyID) {
		this.replyID = replyID;
	}
	public Long getReplyParentId() {
		return replyParentId;
	}
	public void setReplyParentId(Long replyParentId) {
		this.replyParentId = replyParentId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyCretor() {
		return replyCretor;
	}
	public void setReplyCretor(String replyCretor) {
		this.replyCretor = replyCretor;
	}
	public Integer getReplyCreType() {
		return replyCreType;
	}
	public void setReplyCreType(Integer replyCreType) {
		this.replyCreType = replyCreType;
	}
	public Date getReplyCreTime() {
		return replyCreTime;
	}
	public void setReplyCreTime(Date replyCreTime) {
		this.replyCreTime = replyCreTime;
	}
	public String getReplyCreatorID() {
		return replyCreatorID;
	}
	public void setReplyCreatorID(String replyCreatorID) {
		this.replyCreatorID = replyCreatorID;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public String getPictures() {
		return pictures;
	}
	public void setPictures(String pictures) {
		this.pictures = pictures;
	}
	
}
