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
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tbl_holiday_remind")
public class HolidayRemind implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	@Column(name = "HOLIDAY_REMIND_ID", unique = true, nullable = false, length = 128)
	private String holidayRemindId;
	@Column(name = "NAME", nullable = false, length = 100)
	private String name;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "START_TIME", nullable = false, length = 0)
	private Date startTime;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "END_TIME", length = 0)
	private Date endTime;
	@Column(name = "DAYS", length = 3)
	private Integer days;
	@Column(name = "INFO", length = 200)
	private String info;
	@Column(name = "STATUS", nullable = false, length = 2)
	private String status;
	@Column(name = "CRT_UID", length = 128)
	private String crtUid;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CRT_TIME", length = 0)
	private Date crtTime;
	@Column(name = "UPD_UID", length = 128)
	private String updUid;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPD_TIME", length = 0)
	private Date updTime;
	@Transient
	private Long intervalDays;
	public String getHolidayRemindId() {
		return holidayRemindId;
	}
	public void setHolidayRemindId(String holidayRemindId) {
		this.holidayRemindId = holidayRemindId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public String getCrtUid() {
		return crtUid;
	}
	public void setCrtUid(String crtUid) {
		this.crtUid = crtUid;
	}
	public Date getCrtTime() {
		return crtTime;
	}
	public void setCrtTime(Date crtTime) {
		this.crtTime = crtTime;
	}
	public String getUpdUid() {
		return updUid;
	}
	public void setUpdUid(String updUid) {
		this.updUid = updUid;
	}
	public Date getUpdTime() {
		return updTime;
	}
	public void setUpdTime(Date updTime) {
		this.updTime = updTime;
	}
	public Long getIntervalDays() {
		return intervalDays;
	}
	public void setIntervalDays(Long intervalDays) {
		this.intervalDays = intervalDays;
	}

}
