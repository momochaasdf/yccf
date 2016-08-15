package com.deying.util.timer;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;

import com.deying.core.pojo.BirthdayRemind;
import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.FinancingRemind;
import com.deying.core.pojo.FinancingStatistic;
import com.deying.core.pojo.Holiday;
import com.deying.core.pojo.HolidayRemind;
import com.deying.core.pojo.LoanApply;
import com.deying.core.pojo.LoanCollection;
import com.deying.core.pojo.LoanCustomer;
import com.deying.util.annotation.AnnIService;
import com.deying.util.data.DateUtils;
import com.deying.util.datawrapper.CriteriaWrapper;

/**
 * 提醒定时器（1，节假日提醒，），每天 00:20:00 执行
 */
public class RemindTimer implements Timer {

	private static final Logger LOG = LoggerFactory.getLogger(RemindTimer.class);

	@Resource
	protected AnnIService commonService;

	@Override
	public void execute() {
		LOG.info("=====定时任务开始=====");

		try {
			// 1，节假日提醒
			holidayRemind();
		} catch (Exception e) {
			LOG.error("节假日提醒 -定时任务失败.", e);
		}
		try {
			// 2, 生日提醒 [提前一天 发短信&送蛋糕]
			birthdayRemind();
		} catch (Exception e) {
			LOG.error(" 生日提醒-定时任务失败.", e);
		}
		try {
			// 3, 借款催收提醒
			loanCollectionRemind();
		} catch (Exception e) {
			LOG.error("借款催收提醒-定时任务失败.", e);
		}
		try {
			// 4, 理财到期提醒
			normalRemind();
		} catch (Exception e) {
			LOG.error("理财到期提醒-定时任务失败.", e);
		}
		try {
			// 5, 年年红提醒
			nnhRemind();
		} catch (Exception e) {
			LOG.error("年年红提醒-定时任务失败.", e);
		}
		try {
			// 6, 理财统计
			financingStatistics();
		} catch (Exception e) {
			LOG.error("理财统计-定时任务失败.", e);
		}
		LOG.info("=====定时任务结束=====");
	}

	@SuppressWarnings("deprecation")
	private void financingStatistics() throws Exception {
		// 该月月初时间
		Date monthStart = DateUtils.format2Date(DateUtils.getMonthStart(), DateUtils.DATE_STR);
		// 该月月末时间
		Date monthEnd = DateUtils.format2Date(DateUtils.getMonthEnd(), DateUtils.DATE_STR);

		Date nowDate = DateUtils.format2Date(new Date(), DateUtils.DATE_STR);
		if (nowDate.equals(monthEnd)) {
			String year = Integer.valueOf(nowDate.getYear()).toString();
			// 1.计算每个月业绩
			Map<Integer, String> month = new HashMap<Integer, String>();
			month.put(1, "一月份");
			month.put(2, "二月份");
			month.put(3, "三月份");
			month.put(4, "四月份");
			month.put(5, "五月份");
			month.put(6, "六月份");
			month.put(7, "七月份");
			month.put(8, "八月份");
			month.put(9, "九月份");
			month.put(10, "十月份");
			month.put(11, "十一月份");
			month.put(12, "十二月份");
			CriteriaWrapper c1 = CriteriaWrapper.newInstance();
			c1.ge("financingStartTime", monthStart);
			c1.le("financingStartTime", monthEnd);
			String time1 = month.get(monthEnd.getMonth());
			// 周期[月]
			String timeRange1 = "1";
			saveStatistic(c1, time1, year, timeRange1);

			// 2.按季度计算业绩
			Map<Integer, String> quarters = new HashMap<Integer, String>();
			quarters.put(3, "第一季度");
			quarters.put(6, "第二季度");
			quarters.put(9, "第三季度");
			quarters.put(12, "第四季度");
			if (quarters.containsKey(monthEnd.getMonth())) {
				CriteriaWrapper c2 = CriteriaWrapper.newInstance();
				c2.ge("financingStartTime", DateUtils.add(monthStart, Calendar.MONTH, -2));
				c2.le("financingStartTime", monthEnd);
				String time2 = quarters.get(monthEnd.getMonth());
				// 周期 [季度]
				String timeRange2 = "2";
				saveStatistic(c2, time2, year, timeRange2);
			}

			// 3,半年业绩统计
			Map<Integer, String> halfYear = new HashMap<Integer, String>();
			halfYear.put(6, "上半年");
			halfYear.put(12, "下半年");

			if (halfYear.containsKey(monthEnd.getMonth())) {
				CriteriaWrapper c2 = CriteriaWrapper.newInstance();
				c2.ge("financingStartTime", DateUtils.add(monthStart, Calendar.MONTH, -5));
				c2.le("financingStartTime", monthEnd);
				String time2 = halfYear.get(monthEnd.getMonth());
				// 周期 [半年]
				String timeRange2 = "3";
				saveStatistic(c2, time2, year, timeRange2);
			}

			// 4,一年业绩统计
			Map<Integer, String> allYear = new HashMap<Integer, String>();
			allYear.put(12, year + "年");

			if (halfYear.containsKey(monthEnd.getMonth())) {
				CriteriaWrapper c2 = CriteriaWrapper.newInstance();
				c2.ge("financingStartTime", DateUtils.add(monthStart, Calendar.MONTH, -11));
				c2.le("financingStartTime", monthEnd);
				String time2 = allYear.get(monthEnd.getMonth());
				// 周期 [全年]
				String timeRange2 = "4";
				saveStatistic(c2, time2, year, timeRange2);
			}
		}

	}

	public void saveStatistic(CriteriaWrapper c1, String time, String year, String timeRange) throws Exception {
		List<FinancingApply> financingList = commonService.find(c1, FinancingApply.class);
		Map<String, String> employeeIds = new HashMap<String, String>();
		Map<String, String> employeeCompany = new HashMap<String, String>();
		Map<String, Long> employeeMoney = new HashMap<String, Long>();
		Map<String, Integer> employeeCustomer = new HashMap<String, Integer>();
		for (FinancingApply apply : financingList) {
			if (employeeIds.containsKey(apply.getEmployeeId())) {
				Long sourceMoney = employeeMoney.get(apply.getEmployeeId());
				Long allMoney = apply.getMoney() + sourceMoney;
				employeeMoney.put(apply.getEmployeeId(), allMoney);

				Integer sourceCustomer = employeeCustomer.get(apply.getEmployeeId());
				sourceCustomer++;
				employeeCustomer.put(apply.getEmployeeId(), sourceCustomer);
			} else {
				employeeIds.put(apply.getEmployeeId(), apply.getEmployeeName());
				employeeMoney.put(apply.getEmployeeId(), apply.getMoney());
				employeeCustomer.put(apply.getEmployeeId(), 1);
				employeeCompany.put(apply.getEmployeeId(), apply.getCompanyId());
			}
		}

		for (String key : employeeIds.keySet()) {
			FinancingStatistic statistic = new FinancingStatistic();
			statistic.setCompanyId(employeeCompany.get(key));
			statistic.setCustomerNums(employeeCustomer.get(key).toString());
			statistic.setEmployeeId(key);
			statistic.setEmployeeName(employeeIds.get(key));
			statistic.setMoneyAll(employeeMoney.get(key).toString());
			statistic.setTime(time);
			statistic.setTimeRange(timeRange);
			statistic.setYear(year);
			commonService.save("FinancingStatistic", statistic);
		}
	}

	/**
	 * 理财到期提醒
	 * 
	 * @throws Exception
	 */
	private void normalRemind() throws Exception {
		// 提前7天
		Date date1 = DateUtils.format2Date(DateUtils.add(Calendar.DATE, 7), DateUtils.DATE_STR);
		// 提前1天
		Date date2 = DateUtils.format2Date(DateUtils.add(Calendar.DATE, 1), DateUtils.DATE_STR);
		// 获取要提醒的生日
		CriteriaWrapper c1 = CriteriaWrapper.newInstance();

		c1.eq("financingEndTime", date2);

		CriteriaWrapper c2 = CriteriaWrapper.newInstance();

		c2.eq("financingEndTime", date1);
		c1.or(c2);
		List<FinancingApply> financingList = commonService.find(c1, FinancingApply.class);

		for (FinancingApply financingApply : financingList) {
			CriteriaWrapper c = CriteriaWrapper.newInstance();

			FinancingRemind remind = new FinancingRemind();
			c.eq("customerId", financingApply.getCustomerId());
			FinancingCustomer customer = commonService.get(c, FinancingCustomer.class);

			BeanUtils.copyProperties(financingApply, remind);
			Long day = DateUtils.getTwoDay(DateUtils.format2Date(new Date(), DateUtils.DATE_STR),
					financingApply.getFinancingEndTime());
			if (day.equals(7L)) {
				// 七天提醒
				remind.setDayType("1");
			} else {
				// 一天提醒
				remind.setDayType("2");
			}

			float shouyi = getMoney(financingApply.getMonths(), financingApply.getMoney(),
					financingApply.getAnnualizedRate(), financingApply.getType());
			// 收益
			remind.setIncome(String.valueOf(shouyi));
			remind.setStartTime(financingApply.getFinancingEndTime());
			remind.setStatus("1");
			if (null != customer) {
				remind.setTelephone(customer.getTelephone());
			}
			commonService.save("FinancingRemind", remind);
		}

		// 获取即将过期的收益提醒
		CriteriaWrapper c3 = CriteriaWrapper.newInstance();
		c3.eq("startTime", DateUtils.getYesterdayDay0());
		List<FinancingRemind> remindList = commonService.find(c3, FinancingRemind.class);
		for (FinancingRemind remind : remindList) {
			remind.setStatus("0");
			commonService.update("FinancingRemind", remind);
		}
	}

	/**
	 * 年年红提醒
	 * 
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	private void nnhRemind() throws Exception {
		// 每个月1号统计出该月收益到期的
		Date monthStart = DateUtils.format2Date(DateUtils.getMonthStart(), DateUtils.DATE_STR);
		// 该月月末时间
		Date monthEnd = DateUtils.format2Date(DateUtils.getMonthEnd(), DateUtils.DATE_STR);
		Date nowDate = DateUtils.format2Date(new Date(), DateUtils.DATE_STR);
		// 如果今天是 该月的第一天 则开始统计该月内收益到期的 月月红
		if (nowDate.equals(monthStart)) {
			CriteriaWrapper c3 = CriteriaWrapper.newInstance();
			c3.gt("financingStartTime", monthStart);
			c3.le("financingEndTime", monthEnd);
			List<FinancingApply> financingList = commonService.find(c3, FinancingApply.class);

			for (FinancingApply apply : financingList) {
				Date financingStartTime = apply.getFinancingStartTime();
				Integer nowDay = monthStart.getDay();
				Integer startDay = financingStartTime.getDay();
				Integer count = startDay - nowDay;
				// 提醒收益时间
				Date remindTime = DateUtils.add(Calendar.DATE, count);
				FinancingRemind remind = new FinancingRemind();
				CriteriaWrapper c2 = CriteriaWrapper.newInstance();
				c2.eq("customerId", apply.getCustomerId());
				FinancingCustomer customer = commonService.get(c2, FinancingCustomer.class);

				BeanUtils.copyProperties(apply, remind);
				float shouyi = getMoney(apply.getMonths(), apply.getMoney(), apply.getAnnualizedRate(),
						apply.getType());
				// 收益
				remind.setIncome(String.valueOf(shouyi));
				remind.setStartTime(remindTime);
				remind.setStatus("1");
				if (null != customer) {
					remind.setTelephone(customer.getTelephone());
				}
				// 月月红[每月]提醒
				remind.setDayType("3");

				commonService.save("FinancingRemind", remind);
			}

			// 取消提醒
			// 获取即将过期的收益提醒
			CriteriaWrapper c4 = CriteriaWrapper.newInstance();
			// 提醒日期小于今天的[月初]
			c4.lt("startTime", nowDate);
			List<FinancingRemind> remindList = commonService.find(c4, FinancingRemind.class);
			for (FinancingRemind remind : remindList) {
				remind.setStatus("0");
				commonService.update("FinancingRemind", remind);
			}
		}

	}

	public static void main(String[] args) {
		System.out.println(DateUtils.getMonthEnd());
	}

	/**
	 * 借款催收提醒
	 * 
	 * @throws Exception
	 */
	private void loanCollectionRemind() throws Exception {
		// 获取当天的日期
		String nowDate = DateUtils.format(new Date(), "dd");

		CriteriaWrapper c3 = CriteriaWrapper.newInstance();
		List<LoanApply> loanList = commonService.find(c3, LoanApply.class);

		for (LoanApply apply : loanList) {
			Date endDate = apply.getLoanEndTime();
			Date startDate = apply.getLoanStartTime();
			if (apply.getRepaymentType().equals("1")) {
				String day = DateUtils.format(startDate, "dd");
				if (day.equals(nowDate)) {
					CriteriaWrapper c = CriteriaWrapper.newInstance();
					c.eq("customerId", apply.getCustomerId());
					List<LoanCustomer> customerList = commonService.find(c, LoanCustomer.class);
					
                   LoanCollection collection = new LoanCollection();
                   //collection.setCardPassword(apply.get);
                   collection.setCompanyId(apply.getCompanyId());
                   collection.setCustomerName(apply.getCustomerName());
                   //collection.setGivenMoney(givenMoney);
                   collection.setIsOverdue("0");
                   collection.setIsPrepayment("0");
                   collection.setLoanApplyId(apply.getLoanApplyId());
                   collection.setMoney(apply.getAgreeMoney());
                   collection.setStatus("0");
                   collection.setType(apply.getType());
                   if(!customerList.isEmpty()){
                	   LoanCustomer customer =  customerList.get(0);
                	   collection.setTelephone(customer.getTelephone());
                   }else {
                	   collection.setTelephone("12345678901");
                   }
                   commonService.save("loanCollection", collection);
				}
			}
		}

	}

	/**
	 * 生日提醒[提前一天]
	 * 
	 * @throws Exception
	 */
	private void birthdayRemind() throws Exception {
		// 获取明天的日期 [yyyy-MM-dd] 阳历
		Date date = DateUtils.format2Date(DateUtils.add(Calendar.DATE, 1), "yyyy-MM-dd");
		// 获取明天的 日期 农历
		SimpleLunarCalendar calendar = new SimpleLunarCalendar(date);
		Date date1 = DateUtils.parse(calendar.getDate(), "yyyy-MM-dd");
		// 获取要提醒的生日
		CriteriaWrapper c1 = CriteriaWrapper.newInstance();
		CriteriaWrapper c5 = CriteriaWrapper.newInstance();
		c1.eq("birthday", date);
		c1.eq("birthdayType", "0");
		CriteriaWrapper c2 = CriteriaWrapper.newInstance();
		c2.eq("birthday", date1);
		c2.eq("birthdayType", "1");
		c1.or(c2);
		List<FinancingCustomer> customerList = commonService.find(c5, FinancingCustomer.class);
		for (FinancingCustomer customer : customerList) {
			Date birthday = customer.getBirthday();
			if (null != birthday) {
				boolean remindBoolean = false;
				String monthDay = DateUtils.format(birthday, "MM-dd");
				String date_yang = DateUtils.format(date, "MM-dd");
				String date_nong = DateUtils.format(date1, "MM-dd");
				if (StringUtils.isNotBlank(customer.getBirthdayType())) {
					if ("0".equals(customer.getBirthdayType()) && monthDay.equals(date_yang)) {
						remindBoolean = true;
					} else if ("1".equals(customer.getBirthdayType()) && monthDay.equals(date_nong)) {
						remindBoolean = true;
					}
				}
				if (remindBoolean) {
					BirthdayRemind remind = new BirthdayRemind();
					remind.setBirthdayTime(customer.getBirthday());
					remind.setName(customer.getCustomerName());
					// 1：提醒中，0：废止
					remind.setStatus("1");
					StringBuffer sb = new StringBuffer();
					sb.append(customer.getCustomerName()).append(" 生日马上要到了 ！ 日期:")
							.append(DateUtils.format(customer.getBirthday(), DateUtils.DATE_STR));
					if ("0".equals(customer.getBirthdayType())) {
						sb.append("【阳历生日】");
					} else {
						sb.append("【农历生日】");
					}
					CriteriaWrapper c = CriteriaWrapper.newInstance();
					c.eq("customerId", customer.getCustomerId());
					List<FinancingApply> applyList = commonService.find(c, FinancingApply.class);
					if (!applyList.isEmpty()) {
						FinancingApply apply = applyList.get(0);
						if ("1".equals(apply.getStatus())) {
							sb.append("-【记得送蛋糕】");
						} else {
							sb.append("-【记得发短信】");
						}
					} else {
						sb.append("-【记得发短信】");
					}
					remind.setInfo(sb.toString());
					commonService.save("BirthdayRemind", remind);
				}
			}
		}

		// 获取即将过期的生日提醒
		CriteriaWrapper c3 = CriteriaWrapper.newInstance();
		c3.eq("birthdayTime", DateUtils.getYesterdayDay0());
		List<BirthdayRemind> remindList = commonService.find(c3, BirthdayRemind.class);
		for (BirthdayRemind remind : remindList) {
			remind.setStatus("0");
			commonService.update("BirthdayRemind", remind);
		}
	}

	/**
	 * 节假日提醒
	 * 
	 * @throws Exception
	 */
	public void holidayRemind() throws Exception {

		// 获取接下来一个月要提醒的节假日
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("startTime", DateUtils.getNextMonthDay0());
		Holiday holiday = commonService.get(c, Holiday.class);

		if (holiday != null) {
			HolidayRemind holidayRemind = new HolidayRemind();
			BeanUtils.copyProperties(holiday, holidayRemind);
			holidayRemind.setStatus("1");
			commonService.save("HolidayRemind", holidayRemind);
		}

		// 获取即将过期的节假日
		CriteriaWrapper c1 = CriteriaWrapper.newInstance();
		c1.eq("startTime", DateUtils.getYesterdayDay0());
		HolidayRemind holidayRemind1 = commonService.get(c1, HolidayRemind.class);
		if (holidayRemind1 != null) {
			// 废止
			holidayRemind1.setStatus("0");
			commonService.update("HolidayRemind", holidayRemind1);
		}
	}

	public void setCommonService(AnnIService commonService) {
		this.commonService = commonService;
	}

	public static float getMoney(String months, float money, BigDecimal rate, String type) {
		Integer time = Integer.valueOf(months);
		// Money 是万元 rate 是 不带%的数值, months 是总月数
		float returnMoney = 0;
		if (type.equals("4")) {
			// 利率 * 总钱数 /12
			returnMoney = money * rate.floatValue() * 10000 / 12 / 100;
		} else {
			returnMoney = money * time * rate.floatValue() * 10000 / 12 / 100;
		}
		return returnMoney;

	}

}
