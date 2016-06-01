package com.deying.util.bo;

import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * @author wangxj
 * Apr 18, 2013
 * 预订桌子
 */
public class ReserveTable {

	private Long shopId;
	private Long tableId;
	private Date reserveDate;
	private Integer timeInterval;
	
	public ReserveTable(Long shopId, Long tableId, Date reserveDate, 
			 Integer timeInterval) {
		this.shopId = shopId;
		this.tableId = tableId;
		this.reserveDate = reserveDate;
		this.timeInterval = timeInterval;
	}

	public Long getShopId() {
		return shopId;
	}

	public Long getTableId() {
		return tableId;
	}

	public Date getReserveDate() {
		return reserveDate;
	}

	public Integer getTimeInterval() {
		return timeInterval;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("ShopId",getShopId())
			.append("tableId",getTableId())
			.append("ReserveDate",getReserveDate())
			.append("TimeInterval",getTimeInterval())
			.toString();
	}

	
}
