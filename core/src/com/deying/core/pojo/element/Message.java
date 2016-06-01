package com.deying.core.pojo.element;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.deying.util.FileConstants;
import com.deying.util.data.Symbol;

/**
 * @author wangxj
 * 
 */
@Entity
@Table(name="m_message")
public class Message implements Serializable{
	
	private static final long serialVersionUID = 5454155825314635342L;
	//消息接收人为所有时accepterId = "-1"
	public static final String ACCEPTER_ID_ALL = "-1";
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String state;
	
	private String msgModule;
	
	private String msgType;
	
	private String entityId;	//消息相关连的实体ID，可以是预订订单、外卖订单等ID
	
	private String title;
	
	private String content;
	
	private String detailUrl;
	
	private String accepterType;
	
	private String accepterId;
	
	private String accepter;
	
	private String addressorType;	
	
	private String addressorId;	//如果是系统发送的消息就用FileConstants.SysUser
	
	private String addressor;
	
	private String realAddressorId;
	
	private String realAddressor;
	
	private String remark;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date createTime;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date modifyTime;
	

	public Message(){
	
	}

	public Message(Long id){
		this.id = id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	
	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public String getMsgModule() {
		return msgModule;
	}

	public void setMsgModule(String msgModule) {
		this.msgModule = msgModule;
	}

	public String getMsgType() {
		return msgType;
	}

	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}

	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getDetailUrl() {
		return detailUrl;
	}
	
	public String getFormatDetailUrl() {
		return StringUtils.isBlank(detailUrl) ? null : FileConstants.BACKEND_URL + Symbol.SLASH + detailUrl;
	}

	public void setDetailUrl(String detailUrl) {
		this.detailUrl = detailUrl;
	}

	public String getAccepterType() {
		return accepterType;
	}
	
	public void setAccepterType(String accepterType) {
		this.accepterType = accepterType;
	}
	
	public String getAccepterId() {
		return accepterId;
	}
	
	public void setAccepterId(String accepterId) {
		this.accepterId = accepterId;
	}
	
	public String getAccepter() {
		return accepter;
	}
	
	public void setAccepter(String accepter) {
		this.accepter = accepter;
	}
	
	public String getAddressorType() {
		return addressorType;
	}
	
	public void setAddressorType(String addressorType) {
		this.addressorType = addressorType;
	}
	
	public String getAddressorId() {
		return addressorId;
	}
	
	public void setAddressorId(String addressorId) {
		this.addressorId = addressorId;
	}
	
	public String getAddressor() {
		return addressor;
	}
	
	public void setAddressor(String addressor) {
		this.addressor = addressor;
	}
	
	public String getRealAddressorId() {
		return realAddressorId;
	}

	public void setRealAddressorId(String realAddressorId) {
		this.realAddressorId = realAddressorId;
	}

	public String getRealAddressor() {
		return realAddressor;
	}

	public void setRealAddressor(String realAddressor) {
		this.realAddressor = realAddressor;
	}

	public String getRemark() {
		return remark;
	}
	
	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("State",getState())
			.append("MsgModule",getMsgModule())
			.append("MsgType",getMsgType())
			.append("Title",getTitle())
			.append("Content",getContent())
			.append("DetailUrl",getDetailUrl())
			.append("AccepterType",getAccepterType())
			.append("AccepterId",getAccepterId())
			.append("Accepter",getAccepter())
			.append("AddressorType",getAddressorType())
			.append("AddressorId",getAddressorId())
			.append("Addressor",getAddressor())
			.append("RealAddressorId",getRealAddressorId())
			.append("RealAddressor",getRealAddressor())
			.append("Remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		Object id = getId();
		if(id == null)
			return this.hashCode();
		else
			return new HashCodeBuilder().append(id).toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Message == false) return false;
		if(this == obj) return true;
		Message other = (Message)obj;
		if(getId() == null || other.getId() == null) 
			return false;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}

	public String getEntityId() {
		return entityId;
	}

	public void setEntityId(String entityId) {
		this.entityId = entityId;
	}
	
	
}

