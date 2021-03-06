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
 * FinancingApply generated by hbm2java
 */
@Entity
@Table(name = "tbl_financing_apply",uniqueConstraints = @UniqueConstraint(columnNames = {
		"CUSTOMER_ID", "CUSTOMER_NAME" }))
public class FinancingApply implements java.io.Serializable {

	private String financingApplyId;
	private String customerId;
	private String customerName;
	private String contractId;
	private String contractUrl;
	private Date contractSigningTime;
	private String signingAddress;
	private String type;
	private BigDecimal annualizedRate;
	private long money;
	private String noDebtsMoney;
	private String upperMoney;
	private BigDecimal expireMoney;
	private String upperExpireMoney;
	private String lendingWay;
	private Date financingStartTime;
	private Date financingEndTime;
	private String months;
	private String depositBank;
	private String bankCardId;
	private String employeeId;
	private String employeeName;
	private String status;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public FinancingApply() {
	}

	public FinancingApply(String financingApplyId, String customerId,
			String customerName, String type, BigDecimal annualizedRate,
			long money,String noDebtsMoney, Date financingStartTime, Date financingEndTime,
			String months, String depositBank, String employeeId,
			String employeeName, String status) {
		this.financingApplyId = financingApplyId;
		this.customerId = customerId;
		this.customerName = customerName;
		this.type = type;
		this.annualizedRate = annualizedRate;
		this.money = money;
		this.noDebtsMoney = noDebtsMoney;
		this.financingStartTime = financingStartTime;
		this.financingEndTime = financingEndTime;
		this.months = months;
		this.depositBank = depositBank;
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.status = status;
	}

	public FinancingApply(String financingApplyId, String customerId,
			String customerName, String contractId, String contractUrl,
			Date contractSigningTime, String signingAddress, String type,
			BigDecimal annualizedRate, long money, String upperMoney,
			BigDecimal expireMoney, String upperExpireMoney, String lendingWay,
			Date financingStartTime, Date financingEndTime, String months,
			String depositBank, String bankCardId, String employeeId,
			String employeeName, String status, String companyId, String noDebtsMoney,
			String crtUid, Date crtTime, String updUid, Date updTime) {
		this.financingApplyId = financingApplyId;
		this.customerId = customerId;
		this.customerName = customerName;
		this.contractId = contractId;
		this.contractUrl = contractUrl;
		this.contractSigningTime = contractSigningTime;
		this.signingAddress = signingAddress;
		this.type = type;
		this.annualizedRate = annualizedRate;
		this.money = money;
		this.upperMoney = upperMoney;
		this.expireMoney = expireMoney;
		this.upperExpireMoney = upperExpireMoney;
		this.lendingWay = lendingWay;
		this.financingStartTime = financingStartTime;
		this.financingEndTime = financingEndTime;
		this.months = months;
		this.depositBank = depositBank;
		this.bankCardId = bankCardId;
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.status = status;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.noDebtsMoney = noDebtsMoney;
		this.updTime = updTime;
	}

	@Id
	@Column(name = "FINANCING_APPLY_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "financingApplyGenerator")    
	@GenericGenerator(name = "financingApplyGenerator", strategy = "uuid") 
	public String getFinancingApplyId() {
		return this.financingApplyId;
	}

	public void setFinancingApplyId(String financingApplyId) {
		this.financingApplyId = financingApplyId;
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

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CONTRACT_SIGNING_TIME", length = 0)
	public Date getContractSigningTime() {
		return this.contractSigningTime;
	}

	public void setContractSigningTime(Date contractSigningTime) {
		this.contractSigningTime = contractSigningTime;
	}

	@Column(name = "SIGNING_ADDRESS", length = 100)
	public String getSigningAddress() {
		return this.signingAddress;
	}

	public void setSigningAddress(String signingAddress) {
		this.signingAddress = signingAddress;
	}

	@Column(name = "TYPE", nullable = false, length = 2)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "ANNUALIZED_RATE", nullable = false, precision = 10, scale = 1)
	public BigDecimal getAnnualizedRate() {
		return this.annualizedRate;
	}

	public void setAnnualizedRate(BigDecimal annualizedRate) {
		this.annualizedRate = annualizedRate;
	}

	@Column(name = "MONEY", nullable = false, precision = 10, scale = 0)
	public long getMoney() {
		return this.money;
	}

	public void setMoney(long money) {
		this.money = money;
	}
	
	@Column(name = "NO_DEBTS_MONEY", length = 100)
	public String getNoDebtsMoney() {
		return this.noDebtsMoney;
	}

	public void setNoDebtsMoney(String noDebtsMoney) {
		this.noDebtsMoney = noDebtsMoney;
	}

	@Column(name = "UPPER_MONEY", length = 100)
	public String getUpperMoney() {
		return this.upperMoney;
	}

	public void setUpperMoney(String upperMoney) {
		this.upperMoney = upperMoney;
	}

	@Column(name = "EXPIRE_MONEY", precision = 10, scale = 1)
	public BigDecimal getExpireMoney() {
		return this.expireMoney;
	}

	public void setExpireMoney(BigDecimal expireMoney) {
		this.expireMoney = expireMoney;
	}

	@Column(name = "UPPER_EXPIRE_MONEY", length = 100)
	public String getUpperExpireMoney() {
		return this.upperExpireMoney;
	}

	public void setUpperExpireMoney(String upperExpireMoney) {
		this.upperExpireMoney = upperExpireMoney;
	}

	@Column(name = "LENDING_WAY", length = 2)
	public String getLendingWay() {
		return this.lendingWay;
	}

	public void setLendingWay(String lendingWay) {
		this.lendingWay = lendingWay;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "FINANCING_START_TIME", nullable = false, length = 0)
	public Date getFinancingStartTime() {
		return this.financingStartTime;
	}

	public void setFinancingStartTime(Date financingStartTime) {
		this.financingStartTime = financingStartTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "FINANCING_END_TIME", nullable = false, length = 0)
	public Date getFinancingEndTime() {
		return this.financingEndTime;
	}

	public void setFinancingEndTime(Date financingEndTime) {
		this.financingEndTime = financingEndTime;
	}

	@Column(name = "MONTHS", nullable = false, length = 10)
	public String getMonths() {
		return this.months;
	}

	public void setMonths(String months) {
		this.months = months;
	}

	@Column(name = "DEPOSIT_BANK", nullable = false, length = 200)
	public String getDepositBank() {
		return this.depositBank;
	}

	public void setDepositBank(String depositBank) {
		this.depositBank = depositBank;
	}

	@Column(name = "BANK_CARD_ID", length = 100)
	public String getBankCardId() {
		return this.bankCardId;
	}

	public void setBankCardId(String bankCardId) {
		this.bankCardId = bankCardId;
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
