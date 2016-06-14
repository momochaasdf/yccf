package com.deying.util.data;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.exception.BaseException;


/**
 * @author wangxj
 * Mar 4, 2013
 * 
 */
public class DateUtils extends org.apache.commons.lang3.time.DateUtils {
	
	private static final Logger LOG = LoggerFactory.getLogger(DateUtils.class);
	
	public static final String DATE_FMT_STR = "yyyy-MM-dd HH:mm:ss";
	public static final String DATE_STR = "yyyy-MM-dd";
	public static final SimpleDateFormat DATE_FMT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static Calendar parse2Calenar(String date) {
		return parse2Calenar(date, DATE_FMT_STR);
	}
	
	public static Calendar parse2Calenar(String date, String formater) {
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(new SimpleDateFormat(formater).parse(date));
		} catch (ParseException e) {
			LOG.error("parse2Calenar method has error.",e);
			return null;
		}
		return c;
	}
	
	public static Date parse(String date) {
		return parse(date, DATE_FMT_STR);
	}
	
	public static Date parse(String date, String formater) {
		if(StringUtils.isBlank(formater) || StringUtils.isBlank(date)) {
			throw new IllegalArgumentException("date or formater is IllegalArgument.");
		}
		Date fd = null;
		try {
			fd = new SimpleDateFormat(formater).parse(date);
		} catch (ParseException e) {
			LOG.error("parse Date Exception.",e);
			return null;
		}
		return fd;
	}
	
	public static String format(Date d, String formater) {
		if(formater == null) throw new BaseException("formater is null.");
		if(d == null) throw new BaseException("date is null.");
		return new SimpleDateFormat(formater).format(d);
	}
	
	public static String format(Date d) {
		if(d == null) throw new BaseException("date is null.");
		return DATE_FMT.format(d);
	}
	
	public static Date format2Date(Date d, String formater) {
		if(d == null) throw new BaseException("date is null.");
		String fmt_str = format(d,formater);
		return parse(fmt_str,formater);
	}
	
	/**
	 * 返回当前的月份剩余的日期（包含今天）
	 * example： 今天2013-04-09 则返回[2013-04-09,2013-04-30]
	 * @return
	 */
	public static Date[] surplusDayOfMonth() {
		Calendar c1 = Calendar.getInstance();
		Calendar c2 = Calendar.getInstance();
		c2.add(Calendar.MONTH, 1);
		c2.set(Calendar.DATE, 0);
		Date beginDate = DateUtils.format2Date(c1.getTime(),DateUtils.DATE_STR);
		Date endDate = DateUtils.format2Date(c2.getTime(),DateUtils.DATE_STR);
		return new Date[]{beginDate, endDate};
	}
	
	/**
	 * 返回当天开始的时间
	 * 如：当前时间为 2013-07-09 15:33:50 将返回
	 * @return 2013-07-09 00:00:00
	 */
	public static Date getCurrentDay0(){
		Calendar begin = new GregorianCalendar(); 
		
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		return begin.getTime();
	}
	
	/**
	 * 返回昨天开始的时间
	 * 如：当前时间为 2013-07-09 15:33:50 将返回
	 * @return 2013-07-08 00:00:00
	 */
	public static Date getYesterdayDay0(){
		Calendar begin = new GregorianCalendar(); 
		
		begin.add( Calendar.DATE,  -1 );
		
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		return begin.getTime();
	}
	
	/**
	 * 返回接下来一个月开始的时间
	 * 如：当前时间为 2013-07-09 15:33:50 将返回
	 * @return 2013-08-09 00:00:00
	 */
	public static Date getNextMonthDay0(){
		Calendar begin = new GregorianCalendar(); 
		
		begin.add( Calendar.MONTH,  1 );
		
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		return begin.getTime();
	}
	
	/**
	 * 返回当天开始和结束的时间
	 * 如：当前时间为 2013-07-09 15:33:50 将返回
	 * @return 2013-07-09 00:0:00   ，  2013-07-09 23:59:59 
	 */
	public static Date[] getCurrentDayRange(){
		Calendar begin = new GregorianCalendar(); 
		Calendar end= (Calendar)begin.clone();
		
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		end.set(Calendar.HOUR_OF_DAY, 23);
		end.set(Calendar.MINUTE, 59);
		end.set(Calendar.SECOND, 59);
		
		return new Date[]{begin.getTime(), end.getTime()};
	}
	
	/**
	 * 返回指定日期的开始和结束时间
	 * date为 2013-07-09 15:33:50 将返回
	 * @return 2013-07-09 00:0:00 ，2013-07-09 23:59:59 
	 */
	public static Date[] getDayRange(Date date){
		Calendar begin = Calendar.getInstance(); 
		begin.setTime(date);
		Calendar end= (Calendar)begin.clone();
		
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		end.set(Calendar.HOUR_OF_DAY, 23);
		end.set(Calendar.MINUTE, 59);
		end.set(Calendar.SECOND, 59);
		
		return new Date[]{begin.getTime(), end.getTime()};
	}
	
	/**
	 * 获取指定日期的时间范围
	 * @param begin	2013-07-09 15:33:50
	 * @param end 2013-07-12 15:33:50
	 * @return	[2013-07-09 00:00:00,2013-07-12 23:59:59]
	 */
	public static Date[] getDayRange(Date begin, Date end){
		if(begin.after(end))
			throw new BaseException("param begin(Date) is after end(Date). This is invalid.");
		Calendar bc = Calendar.getInstance(); 
		bc.setTime(begin);
		Calendar ec = Calendar.getInstance();
		ec.setTime(end);
		
		bc.set(Calendar.HOUR_OF_DAY, 0);
		bc.set(Calendar.MINUTE, 0);
		bc.set(Calendar.SECOND, 0);
		
		ec.set(Calendar.HOUR_OF_DAY, 23);
		ec.set(Calendar.MINUTE, 59);
		ec.set(Calendar.SECOND, 59);
		
		return new Date[]{bc.getTime(), ec.getTime()};
	}
	
	/**
	 * 把日期和时间 拼成一个完整的日期
	 * @param date	日期
	 * @param time	时间
	 * @return
	 */
	public static Date scrableDate(Date date, Date time) {
		String d = format(date, "yyyy-MM-dd");
		String t = format(time, "HH:mm:ss");
		return parse(d + Symbol.SPACE + t);
	}
	
	/**
	 * 给指定时间 指定的field增加指定的值
	 * @param field		Calendar.field
	 * @param amount	正数或者负数
	 * @return
	 */
	public static Date add(Date date, int field, int amount) {
		Calendar cur = Calendar.getInstance();
		cur.setTime(date);
		cur.add(field, amount);
		return cur.getTime();
	}
	
	/**
	 * 给当前时间 指定的field增加指定的值 与compared比较
	 * @param compared	被比较的日期
	 * @param field		Calendar.field
	 * @param amount	正数或者负数
	 * @return	a negative integer, zero, or a positive integer as the date 
     *  is less than, equal to, or greater than the compared.
	 */
	public static int addAndCompare(Date compared, int field, int amount) {
		return add(field, amount).compareTo(compared);
	}
	
	/**
	 * 给指定时间 指定的field增加指定的值 与compared比较
	 * @param date	date对象add指定field的amount值
	 * @param compared	被比较的日期
	 * @param field		Calendar.field
	 * @param amount	正数或者负数
	 * @return	a negative integer, zero, or a positive integer as the date 
     *  is less than, equal to, or greater than the compared.
	 */
	public static int addAndCompare(Date date, Date compared, int field, int amount) {
		return add(date, field, amount).compareTo(compared);
	}
	
	/**
	 * 给当前时间 指定的field增加指定的值
	 * @param field		Calendar.field
	 * @param amount	正数或者负数
	 * @return
	 */
	public static Date add(int field, int amount) {
		Calendar cur = Calendar.getInstance();
		cur.add(field, amount);
		return cur.getTime();
	}
	
	   /**
     * 功能：获取本周的开始时间
     * 示例：2013-05-13 00:00:00
     */   
    public  static Date getWeekStart() {// 当周开始时间
            Calendar currentDate = Calendar.getInstance();
            currentDate.setFirstDayOfWeek(Calendar.MONDAY);
            currentDate.set(Calendar.HOUR_OF_DAY, 0);
            currentDate.set(Calendar.MINUTE, 0);
            currentDate.set(Calendar.SECOND, 0);
            currentDate.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
            return (Date) currentDate.getTime();
    }
    
    /**
     * 功能：获取本周的结束时间
     * 示例：2013-05-19 23:59:59
     */   
    public static Date getWeekEnd() {// 当周结束时间
            Calendar currentDate = Calendar.getInstance();
            currentDate.setFirstDayOfWeek(Calendar.MONDAY);
            currentDate.set(Calendar.HOUR_OF_DAY, 23);
            currentDate.set(Calendar.MINUTE, 59);
            currentDate.set(Calendar.SECOND, 59);
            currentDate.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
            return (Date) currentDate.getTime();
    }
    
    /**
     * 获取本月第一天
     * @return
     */
    public static Date getMonthStart(){
    	// 本月的第一天
    	  Calendar calendar  =   new  GregorianCalendar();
    	  calendar.set( Calendar.DATE,  1 );
    	 return (Date)calendar.getTime();
    }
    
    public static Date getMonthEnd(){
    	Calendar calendar  =   new  GregorianCalendar();
    	calendar.set( Calendar.DATE,  1 );
    	calendar.roll(Calendar.DATE,  - 1 );
    	return (Date)calendar.getTime();
    }
    /***
     * 获取传入日期的结束日期
     * 示例：2013-09-23 23:59:59
     */
    public static Date changIsIncreasedMinutes(Date d){
		String strD = DateUtils.format(d,"yyyy-MM-dd ");
		strD = strD + "23:59:59";
		return DateUtils.parse(strD, "yyyy-MM-dd HH:mm:ss");
	}
    
    /**
     * 取得两个日期之间相差的天数
     * @param begin_date
     * @param end_date
     * @return
     */
    public static Long getTwoDay(Date begin_date, Date end_date) {
    	Long day = new Long(0);
    	try {
	    	SimpleDateFormat format = new SimpleDateFormat(DATE_STR);
	    	String sdate = format.format(Calendar.getInstance().getTime());
	
	    	if (begin_date == null) {
	    		begin_date = format.parse(sdate);
	    	} else {
	    		String begin_date_str = format(begin_date, DATE_STR);
	    		begin_date = parse(begin_date_str, DATE_STR);
	    	}
	    	if (end_date == null) {
	    		end_date = format.parse(sdate);
	    	} else {
	    		String end_date_str = format(end_date, DATE_STR);
	    		end_date = parse(end_date_str, DATE_STR);
	    	}
	    	day = (end_date.getTime() - begin_date.getTime()) / (24 * 60 * 60 * 1000);
    	} catch (Exception e) {
    	 return new Long(-1);
    	}
    	return day;
	}
    
    public static void main(String[] args) {
    	Date data = parse("2014-03-28 13:00:00");
    	Date data2 = parse("2014-03-29 13:06:00");
		System.out.println(getTwoDay(data,data2));
	}

}
