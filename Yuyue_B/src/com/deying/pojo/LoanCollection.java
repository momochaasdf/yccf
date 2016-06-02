package com.deying.pojo;

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
 * LoanCollection generated by hbm2java
 */
@Entity
@Table(name = "tbl_loan_collection",uniqueConstraints = @UniqueConstraint(columnNames = {
		"LOAN_APPLY_ID", "CUSTOMER_NAME" }))
public class LoanCollection implements java.io.Serializable {

	private String loanCollectionId;
	private String loanApplyId;
	private String customerName;
	private String type;
	private long money;
	private int repaymentMonths;
	private long givenMoney;
	private long surplusMoney;
	private long permonthGivenMoney;
	private String isPrepayment;
	private String telephone;
	private String cardPassword;
	private String isOverdue;
	private String status;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public LoanCollection() {
	}

	public LoanCollection(String loanCollectionId, String loanApplyId,
			String customerName, String type, long money, int repaymentMonths,
			long givenMoney, long surplusMoney, long permonthGivenMoney,
			String isPrepayment, String telephone, String status) {
		this.loanCollectionId = loanCollectionId;
		this.loanApplyId = loanApplyId;
		this.customerName = customerName;
		this.type = type;
		this.money = money;
		this.repaymentMonths = repaymentMonths;
		this.givenMoney = givenMoney;
		this.surplusMoney = surplusMoney;
		this.permonthGivenMoney = permonthGivenMoney;
		this.isPrepayment = isPrepayment;
		this.telephone = telephone;
		this.status = status;
	}

	public LoanCollection(String loanCollectionId, String loanApplyId,
			String customerName, String type, long money, int repaymentMonths,
			long givenMoney, long surplusMoney, long permonthGivenMoney,
			String isPrepayment, String telephone, String cardPassword,
			String isOverdue, String status, String companyId, String crtUid,
			Date crtTime, String updUid, Date updTime) {
		this.loanCollectionId = loanCollectionId;
		this.loanApplyId = loanApplyId;
		this.customerName = customerName;
		this.type = type;
		this.money = money;
		this.repaymentMonths = repaymentMonths;
		this.givenMoney = givenMoney;
		this.surplusMoney = surplusMoney;
		this.permonthGivenMoney = permonthGivenMoney;
		this.isPrepayment = isPrepayment;
		this.telephone = telephone;
		this.cardPassword = cardPassword;
		this.isOverdue = isOverdue;
		this.status = status;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.updTime = updTime;
	}

	@Id
	@Column(name = "LOAN_COLLECTION_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "loanCollectionGenerator")    
	@GenericGenerator(name = "loanCollectionGenerator", strategy = "uuid") 
	public String getLoanCollectionId() {
		return this.loanCollectionId;
	}

	public void setLoanCollectionId(String loanCollectionId) {
		this.loanCollectionId = loanCollectionId;
	}

	@Column(name = "LOAN_APPLY_ID", nullable = false, length = 128)
	public String getLoanApplyId() {
		return this.loanApplyId;
	}

	public void setLoanApplyId(String loanApplyId) {
		this.loanApplyId = loanApplyId;
	}

	@Column(name = "CUSTOMER_NAME", nullable = false, length = 100)
	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Column(name = "TYPE", nullable = false, length = 2)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "MONEY", nullable = false, precision = 10, scale = 0)
	public long getMoney() {
		return this.money;
	}

	public void setMoney(long money) {
		this.money = money;
	}

	@Column(name = "REPAYMENT_MONTHS", nullable = false)
	public int getRepaymentMonths() {
		return this.repaymentMonths;
	}

	public void setRepaymentMonths(int repaymentMonths) {
		this.repaymentMonths = repaymentMonths;
	}

	@Column(name = "GIVEN_MONEY", nullable = false, precision = 10, scale = 0)
	public long getGivenMoney() {
		return this.givenMoney;
	}

	public void setGivenMoney(long givenMoney) {
		this.givenMoney = givenMoney;
	}

	@Column(name = "SURPLUS_MONEY", nullable = false, precision = 10, scale = 0)
	public long getSurplusMoney() {
		return this.surplusMoney;
	}

	public void setSurplusMoney(long surplusMoney) {
		this.surplusMoney = surplusMoney;
	}

	@Column(name = "PERMONTH_GIVEN_MONEY", nullable = false, precision = 10, scale = 0)
	public long getPermonthGivenMoney() {
		return this.permonthGivenMoney;
	}

	public void setPermonthGivenMoney(long permonthGivenMoney) {
		this.permonthGivenMoney = permonthGivenMoney;
	}

	@Column(name = "IS_PREPAYMENT", nullable = false, length = 2)
	public String getIsPrepayment() {
		return this.isPrepayment;
	}

	public void setIsPrepayment(String isPrepayment) {
		this.isPrepayment = isPrepayment;
	}

	@Column(name = "TELEPHONE", nullable = false, length = 20)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "CARD_PASSWORD", length = 20)
	public String getCardPassword() {
		return this.cardPassword;
	}

	public void setCardPassword(String cardPassword) {
		this.cardPassword = cardPassword;
	}

	@Column(name = "IS_OVERDUE", length = 2)
	public String getIsOverdue() {
		return this.isOverdue;
	}

	public void setIsOverdue(String isOverdue) {
		this.isOverdue = isOverdue;
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
