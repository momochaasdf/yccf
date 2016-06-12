package com.deying.util.bo;

import java.math.BigDecimal;
import java.util.Date;

public class PurchaseOrders {
	private Long shopId;
	private Long id;
	private String creator;
	private Date createTime;
	private BigDecimal price;
	private BigDecimal cashPrice;
	private BigDecimal boundKB;			
	private BigDecimal freeKB;
	public Long getShopId() {
		return shopId;
	}
	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getCashPrice() {
		return price;
	}
	public void setCashPrice(BigDecimal cashPrice) {
		this.cashPrice = cashPrice;
	}
	public BigDecimal getBoundKB() {
		return boundKB;
	}
	public void setBoundKB(BigDecimal boundKB) {
		this.boundKB = boundKB;
	}
	public BigDecimal getFreeKB() {
		return freeKB;
	}
	public void setFreeKB(BigDecimal freeKB) {
		this.freeKB = freeKB;
	}	
	public BigDecimal getFormatPrice() {
		return price == null ? new BigDecimal(0.00) : price.setScale(2, BigDecimal.ROUND_HALF_UP);
	}
	public BigDecimal getFormatCashPrice() {
		cashPrice = price == null ? new BigDecimal(0.00) : price.setScale(2, BigDecimal.ROUND_HALF_UP);
		return cashPrice;
	}
	public BigDecimal getFormatBoundKB() {
		return boundKB == null ? (new BigDecimal(0)).setScale(2, BigDecimal.ROUND_HALF_UP) : boundKB.setScale(2, BigDecimal.ROUND_HALF_UP);
	}
	public BigDecimal getFormatFreeKB() {
		return freeKB == null ? (new BigDecimal(0)).setScale(2, BigDecimal.ROUND_HALF_UP) : freeKB.setScale(2, BigDecimal.ROUND_HALF_UP);
	}
}
