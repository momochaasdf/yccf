package com.deying.pojo;

// Generated 2016-6-2 15:03:25 by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
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
 * UserSalary generated by hbm2java
 */
@Entity
@Table(name = "tbl_user_salary",uniqueConstraints = @UniqueConstraint(columnNames = {
		"USER_ID", "USER_NAME" }))
public class UserSalary implements java.io.Serializable {

	private String salaryId;
	private String userId;
	private String userName;
	private String month;
	private String theMonthLevel;
	private String secondMonthLevel;
	private Integer attendanceRecords;
	private long baseSalary;
	private BigDecimal fiveInsurance;
	private Long accumulationFund;
	private Long sickLeave;
	private Long latePrinciple;
	private BigDecimal realBaseSalary;
	private Long performance;
	private BigDecimal percentage;
	private BigDecimal subtotal;
	private BigDecimal realSalary;
	private String info;
	private String status;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public UserSalary() {
	}

	public UserSalary(String salaryId, String userId, String userName,
			String month, String theMonthLevel, long baseSalary,
			BigDecimal realBaseSalary, String status) {
		this.salaryId = salaryId;
		this.userId = userId;
		this.userName = userName;
		this.month = month;
		this.theMonthLevel = theMonthLevel;
		this.baseSalary = baseSalary;
		this.realBaseSalary = realBaseSalary;
		this.status = status;
	}

	public UserSalary(String salaryId, String userId, String userName,
			String month, String theMonthLevel, String secondMonthLevel,
			Integer attendanceRecords, long baseSalary,
			BigDecimal fiveInsurance, Long accumulationFund, Long sickLeave,
			Long latePrinciple, BigDecimal realBaseSalary, Long performance,
			BigDecimal percentage, BigDecimal subtotal, BigDecimal realSalary,
			String info, String status, String companyId, String crtUid,
			Date crtTime, String updUid, Date updTime) {
		this.salaryId = salaryId;
		this.userId = userId;
		this.userName = userName;
		this.month = month;
		this.theMonthLevel = theMonthLevel;
		this.secondMonthLevel = secondMonthLevel;
		this.attendanceRecords = attendanceRecords;
		this.baseSalary = baseSalary;
		this.fiveInsurance = fiveInsurance;
		this.accumulationFund = accumulationFund;
		this.sickLeave = sickLeave;
		this.latePrinciple = latePrinciple;
		this.realBaseSalary = realBaseSalary;
		this.performance = performance;
		this.percentage = percentage;
		this.subtotal = subtotal;
		this.realSalary = realSalary;
		this.info = info;
		this.status = status;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.updTime = updTime;
	}

	@Id
	@Column(name = "SALARY_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "userSalaryGenerator")    
	@GenericGenerator(name = "userSalaryGenerator", strategy = "uuid") 
	public String getSalaryId() {
		return this.salaryId;
	}

	public void setSalaryId(String salaryId) {
		this.salaryId = salaryId;
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

	@Column(name = "MONTH", nullable = false, length = 10)
	public String getMonth() {
		return this.month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	@Column(name = "THE_MONTH_LEVEL", nullable = false, length = 10)
	public String getTheMonthLevel() {
		return this.theMonthLevel;
	}

	public void setTheMonthLevel(String theMonthLevel) {
		this.theMonthLevel = theMonthLevel;
	}

	@Column(name = "SECOND_MONTH_LEVEL", length = 10)
	public String getSecondMonthLevel() {
		return this.secondMonthLevel;
	}

	public void setSecondMonthLevel(String secondMonthLevel) {
		this.secondMonthLevel = secondMonthLevel;
	}

	@Column(name = "ATTENDANCE_RECORDS")
	public Integer getAttendanceRecords() {
		return this.attendanceRecords;
	}

	public void setAttendanceRecords(Integer attendanceRecords) {
		this.attendanceRecords = attendanceRecords;
	}

	@Column(name = "BASE_SALARY", nullable = false, precision = 10, scale = 0)
	public long getBaseSalary() {
		return this.baseSalary;
	}

	public void setBaseSalary(long baseSalary) {
		this.baseSalary = baseSalary;
	}

	@Column(name = "FIVE_INSURANCE", precision = 10, scale = 1)
	public BigDecimal getFiveInsurance() {
		return this.fiveInsurance;
	}

	public void setFiveInsurance(BigDecimal fiveInsurance) {
		this.fiveInsurance = fiveInsurance;
	}

	@Column(name = "ACCUMULATION_FUND", precision = 10, scale = 0)
	public Long getAccumulationFund() {
		return this.accumulationFund;
	}

	public void setAccumulationFund(Long accumulationFund) {
		this.accumulationFund = accumulationFund;
	}

	@Column(name = "SICK_LEAVE", precision = 10, scale = 0)
	public Long getSickLeave() {
		return this.sickLeave;
	}

	public void setSickLeave(Long sickLeave) {
		this.sickLeave = sickLeave;
	}

	@Column(name = "LATE_PRINCIPLE", precision = 10, scale = 0)
	public Long getLatePrinciple() {
		return this.latePrinciple;
	}

	public void setLatePrinciple(Long latePrinciple) {
		this.latePrinciple = latePrinciple;
	}

	@Column(name = "REAL_BASE_SALARY", nullable = false, precision = 10, scale = 1)
	public BigDecimal getRealBaseSalary() {
		return this.realBaseSalary;
	}

	public void setRealBaseSalary(BigDecimal realBaseSalary) {
		this.realBaseSalary = realBaseSalary;
	}

	@Column(name = "PERFORMANCE", precision = 10, scale = 0)
	public Long getPerformance() {
		return this.performance;
	}

	public void setPerformance(Long performance) {
		this.performance = performance;
	}

	@Column(name = "PERCENTAGE", precision = 10, scale = 3)
	public BigDecimal getPercentage() {
		return this.percentage;
	}

	public void setPercentage(BigDecimal percentage) {
		this.percentage = percentage;
	}

	@Column(name = "SUBTOTAL", precision = 10)
	public BigDecimal getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}

	@Column(name = "REAL_SALARY", precision = 10)
	public BigDecimal getRealSalary() {
		return this.realSalary;
	}

	public void setRealSalary(BigDecimal realSalary) {
		this.realSalary = realSalary;
	}

	@Column(name = "INFO", length = 200)
	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Column(name = "STATUS", nullable = false, length = 2)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
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
