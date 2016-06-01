package com.deying.util.tag;

import java.io.Writer;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.data.Symbol;
import com.deying.util.enums.PersistentEnum;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class ElseIfEnum extends ExtComponent{
	
	private static final Logger LOG = LoggerFactory.getLogger(ElseIfEnum.class);
	
	private Boolean answer;
	
	private String test;
    private String clazz;
    private String value;
	private String pkg = FileConstants.ENUM_PKG;
	
	private final String pkg_alter = FileConstants.ENUM_ALTER_PKG;
	
	public ElseIfEnum(ValueStack stack) {
		super(stack);
	}
	
	@SuppressWarnings("unchecked")
	public boolean start(Writer writer) {
		Boolean ifResult = (Boolean) stack.getContext().get(IfEnum.ANSWER);
		if ((ifResult == null) || (ifResult.booleanValue())) {
            return false;
        }
		
		Object testObj = null;
		try {
			testObj = obtainValue(test, PersistentEnum.class);
		} catch (Exception e2) {
			try {
				testObj = obtainValue(test, Integer.class);
			} catch (Exception e) {
				try {
					testObj = obtainValue(test, String.class);
				} catch (Exception e1) {
					LOG.error("IfEnum tag type convert error.");
				}
			}
		}
		value = value.replaceAll("\\s+", "") + Symbol.COMMA;
		if(testObj instanceof Enum 
				&& value.indexOf(((Enum) testObj).name() + Symbol.COMMA) != -1) {
			answer = Boolean.TRUE;
		}else if(testObj instanceof String && value.indexOf(testObj.toString() 
				+ Symbol.COMMA) != -1)
			answer = Boolean.TRUE;
		else if(testObj instanceof Number){
			String simpleName = obtainString(clazz);
			clazz = obtainString(pkg) + "." + simpleName;
			Class c = null;
			try {
				c = Class.forName(clazz);
			} catch (ClassNotFoundException e) {
				try {
					c = Class.forName(pkg_alter + "." + simpleName);
				} catch (ClassNotFoundException e1) {
					LOG.error("showEnumTag init error, caurse by the " + clazz + " parameter is error.", e);
				}
			}
			answer = Boolean.FALSE;	
			if(c != null && testObj != null) {
				String[] vals = value.split(Symbol.COMMA);
				for(int i = 0; i < vals.length; i++) {
					PersistentEnum pe = (PersistentEnum)Enum.valueOf(c, vals[i]);
					if(pe.getValue().equals(testObj)) {
						answer = Boolean.TRUE;	
						break;
					}
				}
			}
		}else
			answer = Boolean.FALSE;

		if (answer.booleanValue()) {
            stack.getContext().put(IfEnum.ANSWER, answer);
        }
        return answer.booleanValue();
    }

    public boolean end(Writer writer, String body) {
    	if (answer == null) {
            answer = Boolean.FALSE;
        }
        if (answer.booleanValue()) {
            stack.getContext().put(IfEnum.ANSWER, answer);
        }
        return super.end(writer, "");
    }
    
	public void setPkg(String pkg) {
		if(StringUtils.isNotBlank(pkg))
			this.pkg = pkg;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}
	
	public void setValue(String value) {
		this.value = obtainString(value);
	}
	
}
