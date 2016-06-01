package com.deying.util.message;

import java.io.Serializable;

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
public class Message implements Serializable{
	
	private static final long serialVersionUID = 5454155825314635342L;
	
	private Long id;
	
	private String title;
	
	private String content;
	
	private String detailUrl;
	
	private String accepterType;
	
	private String accepterId;
	
	private String accepter;
	
	private String addressorType;
	
	private String addressorId;
	
	private String addressor;
	
	
	public Message(){
	
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
	
	public String getBackDetailUrl() {
		return StringUtils.isBlank(detailUrl) ? null : FileConstants.BACKEND_URL + Symbol.SLASH + detailUrl;
	}
	
	public String getFrontDetailUrl() {
		return StringUtils.isBlank(detailUrl) ? null : FileConstants.FRONTEND_URL + Symbol.SLASH + detailUrl;
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

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Title",getTitle())
			.append("Content",getContent())
			.append("DetailUrl",getDetailUrl())
			.append("AccepterType",getAccepterType())
			.append("AccepterId",getAccepterId())
			.append("Accepter",getAccepter())
			.append("AddressorType",getAddressorType())
			.append("AddressorId",getAddressorId())
			.append("Addressor",getAddressor())
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
}

