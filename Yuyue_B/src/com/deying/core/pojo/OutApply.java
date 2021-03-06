package com.deying.core.pojo;

// Generated 2016-6-2 15:03:25 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;

/**
 * OutApply generated by hbm2java
 */
@Entity
@Table(name = "tbl_out_apply",uniqueConstraints = @UniqueConstraint(columnNames = {
		"DEPARTMENT_ID", "DEPARTMENT_NAME" }))
public class OutApply implements java.io.Serializable {

	private String outApplyId;
	private String departmentId;
	private String departmentName;
	private String userId;
	private String userName;
	private String reason;
	private Date applyStartTime;
	private Date applyEndTime;
	private String status;
	private String reviewPerson;
	private Date reviewTime;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public OutApply() {
	}

	public OutApply(String outApplyId, String departmentId,
			String departmentName, String userId, String userName, String status) {
		this.outApplyId = outApplyId;
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.userId = userId;
		this.userName = userName;
		this.status = status;
	}

	public OutApply(String outApplyId, String departmentId,
			String departmentName, String userId, String userName,
			String reason, Date applyStartTime, Date applyEndTime,
			String status, String reviewPerson, Date reviewTime,
			String companyId, String crtUid, Date crtTime, String updUid,
			Date updTime) {
		this.outApplyId = outApplyId;
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.userId = userId;
		this.userName = userName;
		this.reason = reason;
		this.applyStartTime = applyStartTime;
		this.applyEndTime = applyEndTime;
		this.status = status;
		this.reviewPerson = reviewPerson;
		this.reviewTime = reviewTime;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.updTime = updTime;
	}

	@Id
	@Column(name = "OUT_APPLY_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "outApplyGenerator")    
	@GenericGenerator(name = "outApplyGenerator", strategy = "uuid") 
	public String getOutApplyId() {
		return this.outApplyId;
	}

	public void setOutApplyId(String outApplyId) {
		this.outApplyId = outApplyId;
	}

	@Column(name = "DEPARTMENT_ID", length = 128)
	public String getDepartmentId() {
		return this.departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	@Column(name = "DEPARTMENT_NAME", length = 100)
	public String getDepartmentName() {
		return this.departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	@Column(name = "USER_ID", nullable = false, length = 128)
	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Column(name = "USER_NAME", nullable = false, length = 100)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "REASON", length = 200)
	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "APPLY_START_TIME", length = 0)
	public Date getApplyStartTime() {
		return this.applyStartTime;
	}

	public void setApplyStartTime(Date applyStartTime) {
		this.applyStartTime = applyStartTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "APPLY_END_TIME", length = 0)
	public Date getApplyEndTime() {
		return this.applyEndTime;
	}

	public void setApplyEndTime(Date applyEndTime) {
		this.applyEndTime = applyEndTime;
	}

	@Column(name = "STATUS", nullable = false, length = 10)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "REVIEW_PERSON", length = 100)
	public String getReviewPerson() {
		return this.reviewPerson;
	}

	public void setReviewPerson(String reviewPerson) {
		this.reviewPerson = reviewPerson;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "REVIEW_TIME", length = 0)
	public Date getReviewTime() {
		return this.reviewTime;
	}

	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}

	@Column(name = "COMPANY_ID", length = 128)
	public String getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	@Column(name = "CRT_UID", length = 128)
	public String getCrtUid() {
		return this.crtUid;
	}

	public void setCrtUid(String crtUid) {
		this.crtUid = crtUid;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CRT_TIME", length = 0)
	public Date getCrtTime() {
		return this.crtTime;
	}

	public void setCrtTime(Date crtTime) {
		this.crtTime = crtTime;
	}

	@Column(name = "UPD_UID", length = 128)
	public String getUpdUid() {
		return this.updUid;
	}

	public void setUpdUid(String updUid) {
		this.updUid = updUid;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPD_TIME", length = 0)
	public Date getUpdTime() {
		return this.updTime;
	}

	public void setUpdTime(Date updTime) {
		this.updTime = updTime;
	}

}
