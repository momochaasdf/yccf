package com.deying.util.tag;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.components.Component;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.enums.PersistentEnum;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class ShowEnum extends Component{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ShowEnum.class);
	
	private String type;
	
	private String value;
	
	private String clazz;

	private String pkg = FileConstants.ENUM_PKG;
	private final String pkg_alter = FileConstants.ENUM_ALTER_PKG;
	
	public ShowEnum(ValueStack stack) {
		super(stack);
	}
	
	
	@Override
	@SuppressWarnings("all")
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		value = parse(value);
		String simpleName = parse(clazz);
		if(StringUtils.isBlank(value) || StringUtils.isBlank(simpleName)) 
			return result;
		clazz = parse(pkg) + "." + simpleName;
		Class<? extends PersistentEnum> c = null;
		try {
			try {
				c = (Class<? extends PersistentEnum>)Class.forName(clazz);
			} catch (ClassNotFoundException e) {
				try {
					c = (Class<? extends PersistentEnum>)Class.forName(pkg_alter + "." + simpleName);
				} catch (ClassNotFoundException e1) {
					LOGGER.error("showEnumTag init error, caurse by the " + clazz + " parameter is error.", e);
				}
			}
			String ty = type.trim().toLowerCase();
			String wStr = "";
			if("valtoname".equals(ty)) {
				for(PersistentEnum p :c.getEnumConstants()) {
					if((p.getValue().toString()).equals(value))
						wStr = p.getDisplayName();
				}
			}else if("objtoval".equals(ty)) {
				PersistentEnum p = (PersistentEnum)Enum.valueOf((Class)c, value);
				wStr = p.getValue().toString();
			}else if("objtoname".equals(ty)) {
				PersistentEnum p = null;
				try {
					p = (PersistentEnum)Enum.valueOf((Class)c, value);
					wStr = p.getDisplayName();
				} catch (IllegalArgumentException e) {
					LOGGER.info("Enum " + clazz + " has no enum const" + value);
				}
				
			}else if("nametoval".equals(ty)) {
				for(PersistentEnum p :c.getEnumConstants()) {
					if((p.getDisplayName()).equals(value))
						wStr = p.getValue() + "";
				}
			}
			writer.write(wStr);
		}catch (IOException e) {
			LOGGER.error("showEnumTag IOException.", e);
		}
		return result;
	}
	
	private String parse(String value) {
		if(StringUtils.isBlank(value)) return null;
		if(altSyntax() && value.startsWith("%{") && value.endsWith("}")) {
			value = value.substring(2, value.length() - 1);
			return (String)getStack().findValue(value, String.class);
		}else {
			String stackVal = (String)getStack().findValue(value, String.class);
			return stackVal == null ? value : stackVal;
		}
	}
	
	
	public void setType(String type) {
		this.type = type;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public void setPkg(String pkg) {
		this.pkg = pkg;
	}
}
