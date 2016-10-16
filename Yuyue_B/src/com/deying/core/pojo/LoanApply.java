package com.deying.core.pojo;

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
 * LoanApply generated by hbm2java
 */
@Entity
@Table(name = "tbl_loan_apply",uniqueConstraints = @UniqueConstraint(columnNames = {
		"CUSTOMER_ID", "CUSTOMER_NAME" }))
public class LoanApply implements java.io.Serializable {

	private String loanApplyId;
	private String customerId;
	private String customerName;
	private String lenderName;
	private String lenderCardId;
	private String lenderAddress;
	private String repaymentName1;
	private String repaymentDepositBank1;
	private String repaymentBankCardId1;
	private String repaymentName2;
	private String repaymentDepositBank2;
	private String repaymentBankCardId2;
	private String repaymentName3;
	private String repaymentDepositBank3;
	private String repaymentBankCardId3;
	private String repaymentType;
	private String contractId;
	private String contractUrl;
	private String type;
	private String employeeId;
	private String employeeName;
	private Date loanStartTime;
	private Date loanEndTime;
	private String months;
	private BigDecimal rate;
	private long applyMoney;
	private String noRelMoney;
	private String loanReason;
	private String status;
	private String repayDay;
	private String repaymentStatus;
	private Integer overdueNums;
	private Long agreeMoney;
	private String upperMoney;
	private BigDecimal permonthMoney;
	private String upperPermonthMoney;
	private String refuseReason;
	private String reviewPerson;
	private Date reviewTime;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public LoanApply() {
	}

	public LoanApply(String loanApplyId, String customerId,
			String customerName, String type, String employeeId,
			String employeeName, Date loanStartTime, Date loanEndTime,
			String months, BigDecimal rate, long applyMoney, String status) {
		this.loanApplyId = loanApplyId;
		this.customerId = customerId;
		this.customerName = customerName;
		this.type = type;
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.loanStartTime = loanStartTime;
		this.loanEndTime = loanEndTime;
		this.months = months;
		this.rate = rate;
		this.applyMoney = applyMoney;
		this.status = status;
	}

	public LoanApply(String loanApplyId, String customerId,
			String customerName, String lenderName, String lenderCardId,
			String lenderAddress, String repaymentName1,
			String repaymentDepositBank1, String repaymentBankCardId1,
			String repaymentName2, String repaymentDepositBank2,
			String repaymentBankCardId2, String repaymentName3,
			String repaymentDepositBank3, String repaymentBankCardId3,
			String repaymentType, String contractId, String contractUrl,
			String type, String employeeId, String employeeName,
			Date loanStartTime, Date loanEndTime, String months,
			BigDecimal rate, long applyMoney, String loanReason, String status,
			String repaymentStatus, Integer overdueNums, Long agreeMoney,
			String upperMoney, BigDecimal permonthMoney,
			String upperPermonthMoney, String refuseReason,
			String reviewPerson, Date reviewTime, String companyId,
			String crtUid, Date crtTime, String updUid, Date updTime,String repayDay,String noRelMoney) {
		this.loanApplyId = loanApplyId;
		this.customerId = customerId;
		this.customerName = customerName;
		this.lenderName = lenderName;
		this.lenderCardId = lenderCardId;
		this.lenderAddress = lenderAddress;
		this.repaymentName1 = repaymentName1;
		this.repaymentDepositBank1 = repaymentDepositBank1;
		this.repaymentBankCardId1 = repaymentBankCardId1;
		this.repaymentName2 = repaymentName2;
		this.repaymentDepositBank2 = repaymentDepositBank2;
		this.repaymentBankCardId2 = repaymentBankCardId2;
		this.repaymentName3 = repaymentName3;
		this.repaymentDepositBank3 = repaymentDepositBank3;
		this.repaymentBankCardId3 = repaymentBankCardId3;
		this.repaymentType = repaymentType;
		this.contractId = contractId;
		this.contractUrl = contractUrl;
		this.type = type;
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.loanStartTime = loanStartTime;
		this.loanEndTime = loanEndTime;
		this.months = months;
		this.rate = rate;
		this.applyMoney = applyMoney;
		this.loanReason = loanReason;
		this.status = status;
		this.repaymentStatus = repaymentStatus;
		this.overdueNums = overdueNums;
		this.agreeMoney = agreeMoney;
		this.upperMoney = upperMoney;
		this.permonthMoney = permonthMoney;
		this.upperPermonthMoney = upperPermonthMoney;
		this.refuseReason = refuseReason;
		this.reviewPerson = reviewPerson;
		this.reviewTime = reviewTime;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.updTime = updTime;
		this.repayDay = repayDay;
		this.noRelMoney = noRelMoney;
	}

	@Id
	@Column(name = "LOAN_APPLY_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "loanApplyGenerator")    
	@GenericGenerator(name = "loanApplyGenerator", strategy = "uuid") 
	public String getLoanApplyId() {
		return this.loanApplyId;
	}

	public void setLoanApplyId(String loanApplyId) {
		this.loanApplyId = loanApplyId;
	}

	@Column(name = "CUSTOMER_ID", nullable = false, length = 128)
	public String getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Column(name = "CUSTOMER_NAME", nullable = false, length = 100)
	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Column(name = "LENDER_NAME", length = 100)
	public String getLenderName() {
		return this.lenderName;
	}

	public void setLenderName(String lenderName) {
		this.lenderName = lenderName;
	}

	@Column(name = "LENDER_CARD_ID", length = 20)
	public String getLenderCardId() {
		return this.lenderCardId;
	}

	public void setLenderCardId(String lenderCardId) {
		this.lenderCardId = lenderCardId;
	}

	@Column(name = "LENDER_ADDRESS", length = 200)
	public String getLenderAddress() {
		return this.lenderAddress;
	}

	public void setLenderAddress(String lenderAddress) {
		this.lenderAddress = lenderAddress;
	}
	
	@Column(name = "NO_REL_MONEY", length = 200)
	public String getNoRelMoney() {
		return this.noRelMoney;
	}

	public void setNoRelMoney(String noRelMoney) {
		this.noRelMoney = noRelMoney;
	}

	@Column(name = "REPAYMENT_NAME1", length = 100)
	public String getRepaymentName1() {
		return this.repaymentName1;
	}

	public void setRepaymentName1(String repaymentName1) {
		this.repaymentName1 = repaymentName1;
	}

	@Column(name = "REPAYMENT_DEPOSIT_BANK1", length = 200)
	public String getRepaymentDepositBank1() {
		return this.repaymentDepositBank1;
	}

	public void setRepaymentDepositBank1(String repaymentDepositBank1) {
		this.repaymentDepositBank1 = repaymentDepositBank1;
	}

	@Column(name = "REPAYMENT_BANK_CARD_ID1", length = 100)
	public String getRepaymentBankCardId1() {
		return this.repaymentBankCardId1;
	}

	public void setRepaymentBankCardId1(String repaymentBankCardId1) {
		this.repaymentBankCardId1 = repaymentBankCardId1;
	}

	@Column(name = "REPAYMENT_NAME2", length = 100)
	public String getRepaymentName2() {
		return this.repaymentName2;
	}

	public void setRepaymentName2(String repaymentName2) {
		this.repaymentName2 = repaymentName2;
	}

	@Column(name = "REPAYMENT_DEPOSIT_BANK2", length = 200)
	public String getRepaymentDepositBank2() {
		return this.repaymentDepositBank2;
	}

	public void setRepaymentDepositBank2(String repaymentDepositBank2) {
		this.repaymentDepositBank2 = repaymentDepositBank2;
	}

	@Column(name = "REPAYMENT_BANK_CARD_ID2", length = 100)
	public String getRepaymentBankCardId2() {
		return this.repaymentBankCardId2;
	}

	public void setRepaymentBankCardId2(String repaymentBankCardId2) {
		this.repaymentBankCardId2 = repaymentBankCardId2;
	}

	@Column(name = "REPAYMENT_NAME3", length = 100)
	public String getRepaymentName3() {
		return this.repaymentName3;
	}

	public void setRepaymentName3(String repaymentName3) {
		this.repaymentName3 = repaymentName3;
	}

	@Column(name = "REPAYMENT_DEPOSIT_BANK3", length = 200)
	public String getRepaymentDepositBank3() {
		return this.repaymentDepositBank3;
	}

	public void setRepaymentDepositBank3(String repaymentDepositBank3) {
		this.repaymentDepositBank3 = repaymentDepositBank3;
	}

	@Column(name = "REPAYMENT_BANK_CARD_ID3", length = 100)
	public String getRepaymentBankCardId3() {
		return this.repaymentBankCardId3;
	}

	public void setRepaymentBankCardId3(String repaymentBankCardId3) {
		this.repaymentBankCardId3 = repaymentBankCardId3;
	}

	@Column(name = "REPAYMENT_TYPE", length = 2)
	public String getRepaymentType() {
		return this.repaymentType;
	}

	public void setRepaymentType(String repaymentType) {
		this.repaymentType = repaymentType;
	}

	@Column(name = "CONTRACT_ID", length = 128)
	public String getContractId() {
		return this.contractId;
	}

	public void setContractId(String contractId) {
		this.contractId = contractId;
	}

	@Column(name = "CONTRACT_URL", length = 200)
	public String getContractUrl() {
		return this.contractUrl;
	}

	public void setContractUrl(String contractUrl) {
		this.contractUrl = contractUrl;
	}

	@Column(name = "TYPE", nullable = false, length = 2)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "EMPLOYEE_ID", nullable = false, length = 128)
	public String getEmployeeId() {
		return this.employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	@Column(name = "EMPLOYEE_NAME", nullable = false, length = 100)
	public String getEmployeeName() {
		return this.employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "LOAN_START_TIME", nullable = false, length = 0)
	public Date getLoanStartTime() {
		return this.loanStartTime;
	}

	public void setLoanStartTime(Date loanStartTime) {
		this.loanStartTime = loanStartTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "LOAN_END_TIME", nullable = false, length = 0)
	public Date getLoanEndTime() {
		return this.loanEndTime;
	}

	public void setLoanEndTime(Date loanEndTime) {
		this.loanEndTime = loanEndTime;
	}

	@Column(name = "MONTHS", nullable = false, length = 10)
	public String getMonths() {
		return this.months;
	}

	public void setMonths(String months) {
		this.months = months;
	}

	@Column(name = "RATE", nullable = false, precision = 3, scale = 1)
	public BigDecimal getRate() {
		return this.rate;
	}

	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}

	@Column(name = "APPLY_MONEY", nullable = false, precision = 10, scale = 0)
	public long getApplyMoney() {
		return this.applyMoney;
	}

	public void setApplyMoney(long applyMoney) {
		this.applyMoney = applyMoney;
	}

	@Column(name = "LOAN_REASON", length = 200)
	public String getLoanReason() {
		return this.loanReason;
	}

	public void setLoanReason(String loanReason) {
		this.loanReason = loanReason;
	}

	@Column(name = "STATUS", nullable = false, length = 2)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "REPAYMENT_STATUS", length = 2)
	public String getRepaymentStatus() {
		return this.repaymentStatus;
	}

	public void setRepaymentStatus(String repaymentStatus) {
		this.repaymentStatus = repaymentStatus;
	}

	@Column(name = "OVERDUE_NUMS")
	public Integer getOverdueNums() {
		return this.overdueNums;
	}

	public void setOverdueNums(Integer overdueNums) {
		this.overdueNums = overdueNums;
	}

	@Column(name = "AGREE_MONEY", precision = 10, scale = 0)
	public Long getAgreeMoney() {
		return this.agreeMoney;
	}

	public void setAgreeMoney(Long agreeMoney) {
		this.agreeMoney = agreeMoney;
	}

	@Column(name = "UPPER_MONEY", length = 100)
	public String getUpperMoney() {
		return this.upperMoney;
	}

	public void setUpperMoney(String upperMoney) {
		this.upperMoney = upperMoney;
	}

	@Column(name = "PERMONTH_MONEY", precision = 10, scale = 1)
	public BigDecimal getPermonthMoney() {
		return this.permonthMoney;
	}

	public void setPermonthMoney(BigDecimal permonthMoney) {
		this.permonthMoney = permonthMoney;
	}

	@Column(name = "UPPER_PERMONTH_MONEY", length = 100)
	public String getUpperPermonthMoney() {
		return this.upperPermonthMoney;
	}

	public void setUpperPermonthMoney(String upperPermonthMoney) {
		this.upperPermonthMoney = upperPermonthMoney;
	}

	@Column(name = "REFUSE_REASON", length = 200)
	public String getRefuseReason() {
		return this.refuseReason;
	}

	public void setRefuseReason(String refuseReason) {
		this.refuseReason = refuseReason;
	}

	@Column(name = "REVIEW_PERSON", length = 100)
	public String getReviewPerson() {
		return this.reviewPerson;
	}

	public void setReviewPerson(String reviewPerson) {
		this.reviewPerson = reviewPerson;
	}
	
	@Column(name = "REPAY_DAY", length = 10)
	public String getRepayDay() {
		return this.repayDay;
	}

	public void setRepayDay(String repayDay) {
		this.repayDay = repayDay;
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
