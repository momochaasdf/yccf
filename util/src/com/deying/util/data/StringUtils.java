package com.deying.util.data;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.deying.util.FileConstants;


/**
 * @author wangxj
 * 
 */
public class StringUtils {
	
	public static final String REG_SCRIPT = "<\\s*script[^>]*>(.*?<\\s*/\\s*script[^>]*>)?";
	public static final String REG_STYLE = "<\\s*style[^>]*>(.*?<\\s*/\\s*style[^>]*>)?";
	public static final String REG_FRAME = "<\\s*((frameset)|(frame)|(iframe))[^>]*>(.*?<\\s*/\\s*((frameset)|(frame)|(iframe))[^>]*>)?";
	public static final String REG_HTML_TAG = "<[^>]+>";
	
	public static final String[] ALPHA_LOWER = {
		"A", "B", "C", "D", "E", "F", "G", 
		"H", "J", "K", "L", "M", "N",
		"P", "Q", "R", "S", "T",
		"W", "X", "Y", "Z"
	};
	
	
	public static String string2unicode(String str) {
		if(str == null) return null;
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < str.length(); i++) {
			char ch = str.charAt(i);
			if (ch < 0x10) {
				sb.append("\\u000" + Integer.toHexString(ch));
	        } else if (ch < 0x100) {
	        	sb.append("\\u00" + Integer.toHexString(ch));
	        } else if (ch < 0x1000) {
	        	sb.append("\\u0" + Integer.toHexString(ch));
	        }else
	        	sb.append("\\u" + Integer.toHexString(ch));
		}
        return sb.toString();
    }
	
	
	public static String unicode2string(String str) {
		if(str == null) return null;
		String[] strs = str.toLowerCase().split("\\\\u");
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < strs.length; i++) {
			if(strs[i].trim().equals("")) continue;
			char ch = (char)Integer.parseInt(strs[i].trim(),16);
			sb.append(ch);
		}
        return sb.toString();
    }
	
	/**
	 * 格式化字符窜占位符 aaa{0}bbb{1}ccc ==> aaa-bbb+ccc
	 * @param str
	 * @return
	 */
	public static String formatPlaceholder(String str, String... args) {
		if(org.apache.commons.lang3.StringUtils.isBlank(str)) 
			return str;
		for(int i = 0; i< args.length; i++) {
			str = str.replaceAll("\\{" + i + "\\}", args[i]);
		}
		return str;
    }
	
	/**
	 * 改字符窜增加"" stringVal ==> "stringVal"
	 * @param string 为null时 返回 ""
	 * @return
	 */
	public static String quote(String string) {
		if (string == null || string.length() == 0) {
			return "\"\"";
		}
		char b;
		char c = 0;
		int i;
		int len = string.length();
		StringBuffer sb = new StringBuffer(len + 4);
		String t;
		sb.append('"');
		for (i = 0; i < len; i += 1) {
			b = c;
			c = string.charAt(i);
			switch (c) {
			case '\\':
				sb.append(c);
				break;
			case '"':
				sb.append('\\');
				sb.append(c);
				break;
			case '/':
				if (b == '<') {
					sb.append('\\');
				}
				sb.append(c);
				break;
			case '\b':
				sb.append("\\b");
				break;
			case '\t':
				sb.append("\\t");
				break;
			case '\n':
				sb.append("\\n");
				break;
			case '\f':
				sb.append("\\f");
				break;
			case '\r':
				sb.append("\\r");
				break;
			default:
				if (c < ' ') {
					t = "000" + Integer.toHexString(c);
					sb.append("\\u").append(t.substring(t.length() - 4));
				} else {
					sb.append(c);
				}
			}
		}
		sb.append('"');
		return sb.toString();
	}
	
	/**
	 * 把json的value转换成字符选
	 * @param value
	 * @return
	 */
	public static String valueToString(Object value) {
		if (value == null)
			return "null";
		else if (value instanceof Boolean 
				|| value instanceof Number
				|| value instanceof JSONObject
				|| value instanceof JSONArray)
			return value.toString();
		else
			return quote(value.toString());
	}
	
	/**
	 * 过滤字符窜的html标签。
	 * 删除<script>/<style>标签以及标签中所有的内容，
	 * 其他的只删除html标签，开始标签和介素标签的内容不过滤
	 * @return
	 */
	public static String filterHtml(String str) {
		if(org.apache.commons.lang3.StringUtils.isBlank(str)) 
			return str;
		Pattern p = null;
		Matcher m = null;
		p = Pattern.compile(REG_SCRIPT,Pattern.CASE_INSENSITIVE);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		p = Pattern.compile(REG_STYLE,Pattern.CASE_INSENSITIVE);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		p = Pattern.compile(REG_HTML_TAG);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		return str;
	}
	
	/**
	 * 过滤htnl中不安全的标签
	 * @param str
	 * @return
	 */
	public static String filterUnsafeHtml(String str) {
		if(org.apache.commons.lang3.StringUtils.isBlank(str)) 
			return str;
		Pattern p = null;
		Matcher m = null;
		p = Pattern.compile(REG_SCRIPT,Pattern.CASE_INSENSITIVE);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		p = Pattern.compile(REG_STYLE,Pattern.CASE_INSENSITIVE);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		p = Pattern.compile(REG_FRAME,Pattern.CASE_INSENSITIVE);
		m = p.matcher(str);
		str = m.replaceAll(Symbol.EMPTY);
		return str;
	}
	
	/**
	 * 提供给jsp直接调用
	 * @param obj 为null返回空字符窜
	 * @param digit 小数的位数
	 * @param removeZero 是否删除小数后面的0
	 * @return
	 */
	public static String formatDecimal(Object data, int digit, boolean removeZero) {
		if(data == null) return "";
		DecimalFormat df = obatainDecimalFormat(digit, removeZero);
		return df.format(data);
	}
	
	/**
	 * data x mul
	 * 计算两个数据相乘，返回小数
	 * @param mul,data 为null返回空字符窜
	 * @param digit 小数的位数
	 * @param removeZero 是否删除小数后面的0
	 * @return
	 */
	public static String formatDecimalMultiply(Object data, Object mul, int digit, boolean removeZero) {
		if(data == null || mul == null) return "";
		DecimalFormat df = obatainDecimalFormat(digit, removeZero);
		return df.format(new BigDecimal(data.toString())
					.multiply(new BigDecimal(mul.toString())));
	}
	
	/**
	 * data/divide
	 * 计算两个数据相除，返回小数
	 * @param mul,data 为null返回空字符窜
	 * @param digit 小数的位数
	 * @param removeZero 是否删除小数后面的0
	 * @return
	 */
	public static String formatDecimalDivide(Object data, Object divide, int digit, boolean removeZero) {
		if(data == null || divide == null) return "";
		DecimalFormat df = obatainDecimalFormat(digit, removeZero);
		return df.format(new BigDecimal(data.toString())
					.divide(new BigDecimal(divide.toString())));
	}
	
	/**
	 * data+add
	 * 计算两个数据相加，返回小数
	 * @param mul,data 为null返回空字符窜
	 * @param digit 小数的位数
	 * @param removeZero 是否删除小数后面的0
	 * @return
	 */
	public static String formatDecimalAdd(Object data, Object add, int digit, boolean removeZero) {
		if(data == null || add == null) return "";
		DecimalFormat df = obatainDecimalFormat(digit, removeZero);
		return df.format(new BigDecimal(data.toString())
					.add(new BigDecimal(add.toString())));
	}
	
	/**
	 * data-add
	 * 计算两个数据相减，返回小数
	 * @param mul,data 为null返回空字符窜
	 * @param digit 小数的位数
	 * @param removeZero 是否删除小数后面的0
	 * @return
	 */
	public static String formatDecimalSubtract(Object data, Object subtract, int digit, boolean removeZero) {
		if(data == null || subtract == null) return "";
		DecimalFormat df = obatainDecimalFormat(digit, removeZero);
		return df.format(new BigDecimal(data.toString())
					.subtract(new BigDecimal(subtract.toString())));
	}
	
	private static DecimalFormat obatainDecimalFormat(int digit, boolean removeZero) {
		String decimalFmt = "";
		if(removeZero)
			decimalFmt = org.apache.commons.lang3.StringUtils.repeat("#", digit);
		else
			decimalFmt = org.apache.commons.lang3.StringUtils.repeat("0", digit);
		if(decimalFmt.length() > 0)
			decimalFmt = Symbol.PERIOD + decimalFmt;
		DecimalFormat df = new DecimalFormat("0" + decimalFmt);
		df.setRoundingMode(RoundingMode.HALF_UP);
		return df;
	}
	
	/**
	 * 判断String型是否NULL
	 * @param value
	 * @return
	 */
	public static Boolean isNull(String value) {
		if (value == null || "".equals(value.trim()))
			return true;
		else
			return false;
	}
	
	/**
	 * String型','组合拼接字符串转换成Integer型数组
	 * @param value
	 * @return
	 * @author wangchangchun
	 * @create 2015-9-15 下午6:38:13
	 */
	public static Integer[] arrayStringToInteger(String value) {
		if (isNull(value)) {
			return null;
		}
		String[] goodIds = value.split(",");
		Integer[] ia=new Integer[goodIds.length];
		for(int i=0;i<goodIds.length;i++){
		   ia[i]=Integer.parseInt(goodIds[i]);
		}
		return ia;
	}
	
	/**
	 * String型','组合拼接字符串转换成Short型数组
	 * @param value
	 * @return
	 * @author wangchangchun
	 * @create 2015-9-15 下午6:38:13
	 */
	public static Short[] stringToShortArray(String value) {
		if (isNull(value)) {
			return null;
		}
		String[] values = value.split(",");
		Short[] ia=new Short[values.length];
		for(int i=0;i<values.length;i++){
		   ia[i]=Short.parseShort(values[i]);
		}
		return ia;
	}
	
	/**
	 * 组合图片路径添加url，并返回JSONArray
	 * @param value
	 * @return
	 * @author wangchangchun
	 * @create 2015-9-15 下午6:38:13
	 */
	public static JSONArray picsPathAddUrl(String value) {
		if (isNull(value)) {
			return null;
		}
		JSONArray ja = new JSONArray();
		String[] pics = value.split(",");
		String url = FileConstants.MOBILE_IMG_URL;
		for(int i=0;i<pics.length;i++){
			JSONObject jo = new JSONObject();
			jo.element("pic", url+pics[i]);
			ja.add(jo);
		}
		return ja;
	}
	
	/**
	 * 两位整数相除保留整数位（四舍五入）
	 * @param val1
	 * @param val2
	 * @return
	 * @author wangchangchun
	 * @create 2015-9-18 下午1:11:25
	 */
	public static int round(int val1, int val2) {
		// 进行四舍五入操作
		BigDecimal b1 = new BigDecimal(val1);
		BigDecimal b2 = new BigDecimal(val2);
		// ROUND_HALF_UP是BigDecimal的一个常量，表示进行四舍五入的操作
		return b1.divide(b2, 0, BigDecimal.ROUND_HALF_UP).intValue();
	}
	
	/**
	 * 获取随机整数
	 * @param digit:位数
	 * @return
	 * @author wangchangchun
	 * @create 2015-9-21 上午8:54:18
	 */
	public static String getRandomByDigit(int digit) {
		String result = "";
		Random random = new Random();
		for (int i = 0; i < digit; i++) {
			// 随机一位整数
			result += random.nextInt(10);
		}
		return result;
	}
	
	/**
	 * 获取日期的前多少天后多少天
	 * @param d
	 * @param day
	 * @return
	 * @author wangchangchun
	 * @create 2015-10-23 上午9:11:10
	 */
	public static Date getDateBeforeOrAfter(Date d, int day) {      
        Calendar now = Calendar.getInstance();      
        now.setTime(d);      
        now.set(Calendar.DATE, now.get(Calendar.DATE) + day);      
        return now.getTime();      
     }
	
}
