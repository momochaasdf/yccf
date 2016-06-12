package com.deying.util.data;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

import org.apache.commons.lang.StringUtils;

import com.deying.util.FileConstants;


/**
 * Utilities for common String manipulations.
 *
 * This is a class contains static methods only and is not meant to be instantiated.
 * It was brought in from oscore trunk revision 147, and trimmed to only contain
 * methods used by XWork.
 *
 * @author <a href="mailto:joe@truemesh.com">Joe Walnes</a>
 * @author <a href="mailto:pkan@internet.com">Patrick Kan</a>
 * @author <a href="mailto:mcannon@internet.com">Mike Cannon-Brookes</a>
 * @author <a href="mailto:hani@fate.demon.co.uk">Hani Suleiman</a>
 * @author <a href="mailto:joeo@adjacency.org">Joseph B. Ottinger</a>
 * @author <a href="mailto:scott@atlassian.com">Scott Farquhar</a>
 *
 * @version $Revision: 147 $
 */
@SuppressWarnings("unchecked")
public class TextUtils {

    public final static String htmlEncode(String s) {
        return htmlEncode(s, true);
    }

    /**
     * Escape html entity characters and high characters (eg "curvy" Word quotes).
     * Note this method can also be used to encode XML.
     * @param s the String to escape.
     * @param encodeSpecialChars if true high characters will be encode other wise not.
     * @return the escaped string
     */
    public final static String htmlEncode(String s, boolean encodeSpecialChars) {
        s = noNull(s);

        StringBuffer str = new StringBuffer();

        for (int j = 0; j < s.length(); j++) {
            char c = s.charAt(j);

            // encode standard ASCII characters into HTML entities where needed
            if (c < '\200') {
                switch (c) {
                case '"':
                    str.append("&quot;");

                    break;

                case '&':
                    str.append("&amp;");

                    break;

                case '<':
                    str.append("&lt;");

                    break;

                case '>':
                    str.append("&gt;");

                    break;

                default:
                    str.append(c);
                }
            }
            // encode 'ugly' characters (ie Word "curvy" quotes etc)
            else if (encodeSpecialChars && (c < '\377')) {
                String hexChars = "0123456789ABCDEF";
                int a = c % 16;
                int b = (c - a) / 16;
                String hex = "" + hexChars.charAt(b) + hexChars.charAt(a);
                str.append("&#x" + hex + ";");
            }
            //add other characters back in - to handle charactersets
            //other than ascii
            else {
                str.append(c);
            }
        }

        return str.toString();
    }
    
    /**
     * Join an Iteration of Strings together.
     *
     * <h5>Example</h5>
     *
     * <pre>
     *   // get Iterator of Strings ("abc","def","123");
     *   Iterator i = getIterator();
     *   out.print( TextUtils.join(", ",i) );
     *   // prints: "abc, def, 123"
     * </pre>
     *
     * @param glue Token to place between Strings.
     * @param pieces Iteration of Strings to join.
     * @return String presentation of joined Strings.
     */
    public final static String join(String glue, Iterator pieces) {
        StringBuffer s = new StringBuffer();

        while (pieces.hasNext()) {
            s.append(pieces.next().toString());

            if (pieces.hasNext()) {
                s.append(glue);
            }
        }

        return s.toString();
    }

    /**
     * Join an array of Strings together.
     *
     * @param glue Token to place between Strings.
     * @param pieces Array of Strings to join.
     * @return String presentation of joined Strings.
     *
     * @see #join(String, java.util.Iterator)
     */
    public final static String join(String glue, String[] pieces) {
        return join(glue, Arrays.asList(pieces).iterator());
    }

    /**
     * Join a Collection of Strings together.
     *
     * @param glue Token to place between Strings.
     * @param pieces Collection of Strings to join.
     * @return String presentation of joined Strings.
     *
     * @see #join(String, java.util.Iterator)
     */
    public final static String join(String glue, Collection pieces) {
        return join(glue, pieces.iterator());
    }

    /**
     * Return <code>string</code>, or <code>defaultString</code> if
     * <code>string</code> is <code>null</code> or <code>""</code>.
     * Never returns <code>null</code>.
     *
     * <p>Examples:</p>
     * <pre>
     * // prints "hello"
     * String s=null;
     * System.out.println(TextUtils.noNull(s,"hello");
     *
     * // prints "hello"
     * s="";
     * System.out.println(TextUtils.noNull(s,"hello");
     *
     * // prints "world"
     * s="world";
     * System.out.println(TextUtils.noNull(s, "hello");
     * </pre>
     *
     * @param string the String to check.
     * @param defaultString The default string to return if <code>string</code> is <code>null</code> or <code>""</code>
     * @return <code>string</code> if <code>string</code> is non-empty, and <code>defaultString</code> otherwise
     * @see #stringSet(java.lang.String)
     */
    public final static String noNull(String string, String defaultString) {
        return (stringSet(string)) ? string : defaultString;
    }

    /**
     * Return <code>string</code>, or <code>""</code> if <code>string</code>
     * is <code>null</code>. Never returns <code>null</code>.
     * <p>Examples:</p>
     * <pre>
     * // prints 0
     * String s=null;
     * System.out.println(TextUtils.noNull(s).length());
     *
     * // prints 1
     * s="a";
     * System.out.println(TextUtils.noNull(s).length());
     * </pre>
     * @param string the String to check
     * @return a valid (non-null) string reference
     */
    public final static String noNull(String string) {
        return noNull(string, "");
    }

    /**
     * Check whether <code>string</code> has been set to
     * something other than <code>""</code> or <code>null</code>.
     * @param string the <code>String</code> to check
     * @return a boolean indicating whether the string was non-empty (and non-null)
     */
    public final static boolean stringSet(String string) {
        return (string != null) && !"".equals(string);
    }

    /**
     * Verify That the given String is in valid URL format.
     * @param url The url string to verify.
     * @return a boolean indicating whether the URL seems to be incorrect.
     */
    public final static boolean verifyUrl(String url) {
        if (url == null) {
            return false;
        }

        if (url.startsWith("https://")) {
            // URL doesn't understand the https protocol, hack it
            url = "http://" + url.substring(8);
        }

        try {
            new URL(url);

            return true;
        } catch (MalformedURLException e) {
            return false;
        }
    }
    /**
	  * 方法描述: 字符串转换：如为null则转换成""。
	  * 
	  * @param str
	  * @return
	  */
	 public static String null2String(String str) {
	     if( str == null ) {
	         return "";
	     }
	     else {
	         return str;
	     }
	 }
    //导出excel表格文件名中文乱码的问题
    public static String toUtf8String(String s) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			if (c >= 0 && c <= 255) {
				sb.append(c);
			} else {
				byte[] b;
				try {
					b = Character.toString(c).getBytes("utf-8");
				} catch (Exception ex) {
					System.out.println(ex);
					b = new byte[0];
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0)
						k += 256;
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}
    public static String encodingFileName(String fileName)  {
        String returnFileName = "";
        try {
            returnFileName = URLEncoder.encode(fileName, "UTF-8");
            returnFileName = StringUtils.replace(returnFileName, "+", "%20");
            if (returnFileName.length() > 150) {
                returnFileName = new String(fileName.getBytes("GB2312"), "ISO8859-1");
                returnFileName = StringUtils.replace(returnFileName, " ", "%20");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return returnFileName; 
    }
    
    /**
     * Filter The Content Which User Commit Include Some Text Has "艹 操"
     * @param String
     * @return String 
     * 
     */
    public final static String filterWords(String sensitives){
    	Set<String> s = FileConstants.SENSITIVE_WORDS;
    	
    	String tmp = sensitives;
    	for (String s1 : s) {
    		String[] reps = s1.split(Symbol.COMMA);
    		tmp = tmp.replaceAll(reps[0],reps[1]);
		}
    	return tmp.trim();
    }
    
    /**
     * 替换字符窜中的占位符
     * EX："this is {0}." ==> "this is test."
     * @param value
     * @param args
     * @return
     */
    public final static String placeholder(String value, Object... args){
    	if(value == null) return null;
    	if(value.matches("[^(\\{\\d+\\})]*\\{\\d+\\}.*")) {
    		for(int i = 0; i < args.length; i++) {
        		value = value.replaceAll("\\{" + i + "\\}", args[i].toString());
        	}
    	}
		return value;
    }
    
    public static String String2money(String money){
		if (money == null)
			return "";
		int length=money.length();
		if(length>3){
			for(int i=1;i<=length;i++){
				if(i%3==0&&i!=length){
					int index=length-i;
					String str_start=money.substring(0,index);
					String str_last=money.substring(index);
					money=str_start+","+str_last;
				}
			}
		}
		return money;
	}
    
    public static void main(String[] args) {
		String t = "操 艹 傻吊 傻b 傻屄 2货 草泥马 滚蛋 滚";
		String s = filterWords(t);
		System.out.println(s);
	}
}

