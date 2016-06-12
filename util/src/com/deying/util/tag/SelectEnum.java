package com.deying.util.tag;

import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.data.CollectionUtils;
import com.deying.util.data.DataConvert;
import com.deying.util.enums.PersistentEnum;
import com.opensymphony.xwork2.util.ValueStack;

public class SelectEnum extends HtmlUIBean {
	
	private static final Logger LOG = LoggerFactory.getLogger(SelectEnum.class);
	
	private static String DATA_TYPE_NAME = "NAME";
	private static String DATA_TYPE_VALUE = "VALUE";
	private String dataType = DATA_TYPE_NAME;	//生成radio中value的类型，两种选择 1.NAME 例：OPEN(0, "开启") 指的是OPEN。 2.VALUE 例：OPEN(0, "开启") 指的是0。默认dataType为 NAME
	private String value;
	private String selectedValue;
	private String headerKey;	
	private String headerValue;	
	private Integer begin;
	private Integer end;
	private String[] exclude;
	private String[] include;
	private String pkg = FileConstants.ENUM_PKG;
	
	private final String pkg_alter = FileConstants.ENUM_ALTER_PKG;
	
	public SelectEnum(ValueStack stack) {
		super(stack);
	}

	@Override
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		if(StringUtils.isNotBlank(value)) {
			if(begin != null && end != null && begin > end) 
				return result;
			Class<? extends Enum<?>> c = null;
	        try {
				c = (Class<? extends Enum<?>>)Class.forName(pkg + "." + value);
			} catch (ClassNotFoundException e) {
				try {
					c = (Class<? extends Enum<?>>)Class.forName(pkg_alter + "." + value);
				} catch (ClassNotFoundException e1) {
					LOG.error("showEnumTag init error, caurse by the " + pkg + value + " parameter is error.", e);
				}
			}
			Enum<?>[] enums = c.getEnumConstants();
			List<Enum<?>> enumsList = CollectionUtils.toList(enums);
			//排除enums需要排除的值
			if(enums != null && enums.length > 0) {
				if(include != null && include.length > 0) {
					boolean clear = false;
					for(int i = 0; i < include.length; i++) {
						if(!clear) {
							enumsList.clear();
							clear = true;
						}
						enumsList.add(Enum.valueOf((Class)c, include[i]));
					}
				}
				if(exclude != null && exclude.length > 0) {
					for(int j = 0; j < exclude.length; j++) {
						Enum e = Enum.valueOf((Class)c, exclude[j]);
						enumsList.remove(e);
					}
				}
			}
			begin = begin == null ? 0 : begin;
			end = end == null ? enumsList.size() - 1 : end;
			
			StringBuffer sb = new StringBuffer();
			if(id == null)
				id = "e_select_" + value;
			sb.append("<select " + super.generateHtml() + ">");
			if(headerValue != null) {
				sb.append("<option value='" + (headerKey == null ? "" : headerKey) + "' >" + headerValue + "</option>");
			}
			for(; begin <= end; begin++) {
				PersistentEnum cur = (PersistentEnum)enumsList.get(begin);
				String enumName = enumsList.get(begin).name();		//枚举实体的名字
				String selectValue = dataType.equals(DATA_TYPE_VALUE) ? cur.getValue().toString() : enumName;
				sb.append("<option value='" + selectValue + "' ");
				if(selectedValue != null && (enumName.equals(selectedValue) || cur.getValue().toString().equals(selectedValue)))
					sb.append("  selected='selected' ");
				sb.append(" > ");
				sb.append(cur.getDisplayName());
				sb.append("</option>");
			}
			sb.append("</select>");
			try {
				writer.write(sb.toString());
			} catch (IOException e) {
				LOG.error("RadioEnum Tag processing error.", e);
			}
		}
		return result;
		
	}

	public void setValue(String value) {
		this.value = obtainString(value);
	}

	public void setSelectedValue(String selectedValue) {
		if(StringUtils.isBlank(selectedValue)) {
			this.selectedValue = null;
			return;
		}
		Object selected = obtainValue(selectedValue);
		if(selected == null)
			this.selectedValue = null;
		else if(selected instanceof Enum)
			this.selectedValue = ((Enum<?>)selected).name();
		else
			this.selectedValue = selected.toString();
	}

	public void setBegin(Integer begin) {
		this.begin = begin;
	}

	public void setEnd(Integer end) {
		this.end = end;
	}

	public void setExclude(String exclude) {
		if(StringUtils.isNotBlank(exclude)) {
    		Object stackVal = obtainValue(exclude);
    		if(stackVal instanceof String) {
    			String valStr = ((String)stackVal);
    			this.exclude = DataConvert.convertArray(valStr, String[].class);
    		}else if(stackVal instanceof Collection) {
    			this.exclude = ((Collection<String>)stackVal).toArray(this.exclude);
    		}else if(stackVal.getClass().isArray())
    			this.exclude = (String[])stackVal;
    	}
	}
	
	public void setInclude(String include) {
		if(StringUtils.isNotBlank(include)) {
    		Object stackVal = obtainValue(include);
    		if(stackVal instanceof String) {
    			String valStr = ((String)stackVal);
    			this.include = DataConvert.convertArray(valStr, String[].class);
    		}else if(stackVal instanceof Collection) {
    			this.include = ((Collection<String>)stackVal).toArray(this.include);
    		}else if(stackVal.getClass().isArray())
    			this.include = (String[])stackVal;
    	}
	}
	
	public void setPkg(String pkg) {
		if(StringUtils.isNotBlank(pkg))
			this.pkg = pkg;
	}

	public void setDataType(String dataType) {
		if(StringUtils.isNotBlank(dataType))
			this.dataType = dataType;
	}

	public void setHeaderKey(String headerKey) {
		this.headerKey = headerKey;
	}

	public void setHeaderValue(String headerValue) {
		this.headerValue = headerValue;
	}
	
}
