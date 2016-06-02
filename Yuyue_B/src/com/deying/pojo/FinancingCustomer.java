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
 * FinancingCustomer generated by hbm2java
 */
@Entity
@Table(name = "tbl_financing_customer",uniqueConstraints = @UniqueConstraint(columnNames = "CUSTOMER_NAME"))
public class FinancingCustomer implements java.io.Serializable {

	private String customerId;
	private String customerName;
	private Date birthday;
	private String cardType;
	private String cardId;
	private String telephone;
	private String address;
	private String companyId;
	private String crtUid;
	private Date crtTime;
	private String updUid;
	private Date updTime;

	public FinancingCustomer() {
	}

	public FinancingCustomer(String customerId, String customerName,
			String cardType, String cardId, String telephone) {
		this.customerId = customerId;
		this.customerName = customerName;
		this.cardType = cardType;
		this.cardId = cardId;
		this.telephone = telephone;
	}

	public FinancingCustomer(String customerId, String customerName,
			Date birthday, String cardType, String cardId, String telephone,
			String address, String companyId, String crtUid, Date crtTime,
			String updUid, Date updTime) {
		this.customerId = customerId;
		this.customerName = customerName;
		this.birthday = birthday;
		this.cardType = cardType;
		this.cardId = cardId;
		this.telephone = telephone;
		this.address = address;
		this.companyId = companyId;
		this.crtUid = crtUid;
		this.crtTime = crtTime;
		this.updUid = updUid;
		this.updTime = updTime;
	}

	@Id
	@Column(name = "CUSTOMER_ID", unique = true, nullable = false, length = 128)
	@GeneratedValue(generator = "financingCustomerGenerator")    
	@GenericGenerator(name = "financingCustomerGenerator", strategy = "uuid") 
	public String getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Column(name = "CUSTOMER_NAME", unique = true, nullable = false, length = 100)
	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "BIRTHDAY", length = 0)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "CARD_TYPE", nullable = false, length = 50)
	public String getCardType() {
		return this.cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	@Column(name = "CARD_ID", nullable = false, length = 50)
	public String getCardId() {
		return this.cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	@Column(name = "TELEPHONE", nullable = false, length = 20)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "ADDRESS", length = 200)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
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
