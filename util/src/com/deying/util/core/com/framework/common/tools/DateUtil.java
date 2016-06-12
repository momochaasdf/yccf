package com.deying.util.core.com.framework.common.tools;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import com.deying.util.FileConstants;
import com.deying.util.data.DateUtils;

/**
 * @author xiaoy
 *
 */
public class DateUtil {

    public static final String FIELD_WEEK = "WEEK";

    public static final String FIELD_MONTH = "MONTH";

    public static final String FIELD_YEAR = "YEAR";

    private static final String[] formats = { "yy-MM-dd", "EEE MMM dd HH:mm:ss zzz yyyy", // Date.toString()Ĭ�ϸ�ʽ
            "y-M-d H:m:s", "y-M-d", "M/d/y H:m:s", "M/d/y", "yyyyMMddHHmmss", "yyyyMMdd" ,"yyMMdd" ,"yyyy-MM-dd","yyyy-MM-dd HH:mm:ss"};

    private static final int[] styles = { DateFormat.FULL, DateFormat.LONG, DateFormat.MEDIUM, DateFormat.SHORT };

    private static final Locale[] locales = { Locale.US, Locale.PRC };

    public static Date getDate(Date baseDate, String field, int interval, int add) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(baseDate);
        int fld1, fld2;
        if( ("WEEK").equals(field) ) {
            fld1 = Calendar.WEEK_OF_MONTH;
            fld2 = Calendar.DAY_OF_WEEK;
        }
        else if( ("MONTH").equals(field) ) {
            fld1 = Calendar.MONTH;
            fld2 = Calendar.DAY_OF_MONTH;
        }
        else if( ("YEAR").equals(field) ) {
            fld1 = Calendar.YEAR;
            fld2 = Calendar.DAY_OF_YEAR;
        }
        else {
            fld1 = Calendar.YEAR;
            fld2 = Calendar.DAY_OF_YEAR;
        }
        int off = cal.getMinimum(fld2) - 1 + add;
        if( off > cal.getMaximum(fld2) || off < cal.getMinimum(fld2) )
            off = cal.getMaximum(fld2);
        cal.add(fld1, interval);
        cal.set(fld2, off);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    public static Date addDate(Date date, int field, int amount) {
        Calendar cld = Calendar.getInstance();
        cld.setTime(date);
        cld.add(field, amount);
        return cld.getTime();
    }
    public static String date2String(Date date, String format) {
        try {
            return new SimpleDateFormat(format).format(date);
        }
        catch (Exception e) {
            return null;
        }
    }

    public static Timestamp getNowTimeStamp() {
        return new Timestamp((new Date()).getTime());
    }

    public static Timestamp string2Timestamp(String datestr) {
        Date dt = string2Date(datestr);
        return dt == null ? null : new Timestamp(dt.getTime());
    }

    public static Date string2SqlDate(String datestr) {
        Date dt = string2Date(datestr);
        if( dt != null )
            dt = new Timestamp(dt.getTime());
        return dt;
    }

    public static Date string2Date(String datestr) {
        if( datestr == null )
            return null;
        try {
            return DateFormat.getInstance().parse(datestr);
        }
        catch (Exception e) {
        }
        for (int j = 0; j < locales.length; j++) {
            for (int i = 0; i < styles.length; i++)
                try {
                    return DateFormat.getDateInstance(styles[i], locales[j]).parse(datestr);
                }
                catch (Exception e) {
                }
            for (int i = 0; i < styles.length; i++)
                try {
                    return DateFormat.getDateTimeInstance(styles[i], styles[i], locales[j]).parse(datestr);
                }
                catch (Exception e) {
                }
            for (int i = 0; i < formats.length; i++)
                try {
                    return new SimpleDateFormat(formats[i], locales[j]).parse(datestr);
                }
                catch (ParseException e) {
                }
        }
        return null;
    }

    public static Date parse(String datestr) {
    	return parse(datestr, "yyyy-MM-dd HH:mm:ss");
    }
    
    public static Date parse(String datestr,String p) {
    	SimpleDateFormat sdf = new SimpleDateFormat(p);
		try {
			return  sdf.parse(datestr);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
    }
    /**
     * 获得日期的前一天
     * @param d
     * @return  
     * @author mayulong
     */
    public static Date getPrevDay(Date d){
    	Calendar calendar = Calendar.getInstance();
    	calendar.setTime(d);
    	calendar.add(Calendar.DAY_OF_MONTH, -1);
    	String date = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
    	return string2SqlDate(date);
    	
    }
    
    public static void main(String[] a){
    	Date d1 = DateUtils.parse("2013-04-28", "yyyy-MM-dd");
    	Date d2 = DateUtils.parse("17:30:30", "HH:mm:ss");
    	String s1 = DateUtils.format(d1, "yyyy-MM-dd ");
    	String s2 = DateUtils.format(d2, "HH:mm:ss");
    	String s = s1+s2;
    	System.out.println(s);
    	Calendar calendar = Calendar.getInstance();
    	//calendar.add(Calendar.HOUR_OF_DAY,FileConstants.CASH_BACK_TIME);
    	///String d = DateUtils.format(calendar.getTime(), "yyyy-MM-dd HH:mm:ss" );
    	calendar.setTime(new Date());
    	calendar.add(Calendar.HOUR_OF_DAY,FileConstants.CASH_BACK_TIME);
    	String d = DateUtils.format(calendar.getTime(), "yyyy-MM-dd HH:mm:ss" );
    	System.out.println(d);
    }

}
