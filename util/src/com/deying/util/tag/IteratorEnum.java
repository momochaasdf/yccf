package com.deying.util.tag;

import java.io.Writer;
import java.util.Collection;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.IteratorStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.data.CollectionUtils;
import com.deying.util.data.Symbol;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class IteratorEnum extends Component{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(IteratorEnum.class);
	
    protected IteratorStatus status;
    protected Object oldStatus;
    protected IteratorStatus.StatusState statusState;
    protected String statusAttr;
    protected String value;
    protected String beginStr;
    protected Integer begin;
    protected String endStr;
    protected Integer end;
    protected String stepStr;
    protected Integer step;
    protected String var;
    protected String[] exclude;
    protected String[] include;
    
    
    private int currentIndex;
    private int length;
    private List<Enum<?>> enumsList;
	
	private String pkg = FileConstants.ENUM_PKG;
	private final String pkg_alter = FileConstants.ENUM_ALTER_PKG;
	
	public IteratorEnum(ValueStack stack) {
		super(stack);
	}
	
	@SuppressWarnings("unchecked")
	public boolean start(Writer writer) {
        if (statusAttr != null) {
            statusState = new IteratorStatus.StatusState();
            status = new IteratorStatus(statusState);
        }
        if (stepStr != null) step = (Integer) findValue(stepStr,  Integer.class);
        if (beginStr != null) begin = (Integer) findValue(beginStr,  Integer.class);
        if (endStr != null) end = (Integer) findValue(endStr,  Integer.class);
        
        ValueStack stack = getStack();
        Class<? extends Enum<?>> c = null;
        try {
			c = (Class<? extends Enum<?>>)Class.forName(pkg + "." + value);
		} catch (ClassNotFoundException e) {
			try {
				c = (Class<? extends Enum<?>>)Class.forName(pkg_alter + "." + value);
			} catch (ClassNotFoundException e1) {
				LOGGER.error("showEnumTag init error, caurse by the " + pkg + value + " parameter is error.", e);
			}
		}
		
		Enum<?>[] enums = c.getEnumConstants();
		enumsList = CollectionUtils.toList(enums);
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
			
        length = enumsList == null ? 0 : enumsList.size();
        if(step == null) step = 1;
        if(begin == null) begin = 0;
        if(end == null) 
        	end = (length == 0 || step < 1) ? -1 : length - 1;
        else 
        	end = end > length - 1 ? length - 1 : end;
    	currentIndex = begin - step;
        if ((enumsList != null) && hasNext()) {
            Object currentValue = next();
            stack.push(currentValue);

            if ((var != null) && (currentValue != null)) {
                putInContext(currentValue);
            }

            if (statusAttr != null) {
                statusState.setLast(!hasNext());
                oldStatus = stack.getContext().get(statusAttr);
                stack.getContext().put(statusAttr, status);
            }

            return true;
        } else {
            super.end(writer, "");
            return false;
        }
    }

    public boolean end(Writer writer, String body) {
        ValueStack stack = getStack();
        if (enumsList != null) {
            stack.pop();
        }

        if (enumsList != null && hasNext()) {
            Object currentValue = next();
            stack.push(currentValue);
            putInContext(currentValue);

            if (status != null) {
                statusState.next(); // Increase counter
                statusState.setLast(!hasNext());
            }

            return true;
        } else {
            // Reset status object in case someone else uses the same name in another iterator tag instance
            if (status != null) {
                if (oldStatus == null) {
                    stack.getContext().put(statusAttr, null);
                } else {
                    stack.getContext().put(statusAttr, oldStatus);
                }
            }
            super.end(writer, "");
            return false;
        }
    }
    
    protected void putInContext(Object value) {
        if (var != null && var.length() > 0) {
            stack.getContext().put(var, value);
        }
    }

    private boolean hasNext(){
    	if(currentIndex + step <= end)
    		return true;
    	else
    		return false;
    }
    
    private Object next(){
    	Object curVal = enumsList.get(currentIndex + step);
    	currentIndex += step;
    	return curVal;
    }
    
    public void setStatus(String status) {
        this.statusAttr = status;
    }

    public void setValue(String value) {
        if (value != null) {
            this.value = findString(value);
        }
    }

    public void setBegin(String begin) {
        this.beginStr = begin;
    }

    public void setEnd(String end) {
        this.endStr = end;
    }

    public void setStep(String step) {
        this.stepStr = step;
    }
    
    @SuppressWarnings("unchecked")
    public void setExclude(String exclude) {
    	if(StringUtils.isBlank(exclude)) 
    		this.exclude = new String[0];
    	else{
    		Object stackVal = exclude;
    		if(altSyntax() && exclude.startsWith("%{") && exclude.endsWith("}")) {
    			exclude = exclude.substring(2, exclude.length() - 1);
    			stackVal = (Object)getStack().findValue(exclude);
    		}
    		if(stackVal instanceof String) {
    			String valStr = ((String)stackVal);
    			this.exclude = valStr.split(Symbol.COMMA);
    		}else if(stackVal instanceof Collection) {
    			this.exclude = ((Collection<String>)stackVal).toArray(this.exclude);
    		}else if(stackVal.getClass().isArray())
    			this.exclude = (String[])stackVal;
    	}
	}
    
    @SuppressWarnings("unchecked")
    public void setInclude(String include) {
    	if(StringUtils.isBlank(include)) 
    		this.include = new String[0];
    	else{
    		Object stackVal = include;
    		if(altSyntax() && include.startsWith("%{") && include.endsWith("}")) {
    			include = include.substring(2, include.length() - 1);
    			stackVal = (Object)getStack().findValue(include);
    		}
    		if(stackVal instanceof String) {
    			String valStr = ((String)stackVal);
    			this.include = valStr.split(Symbol.COMMA);
    		}else if(stackVal instanceof Collection) {
    			this.include = ((Collection<String>)stackVal).toArray(this.include);
    		}else if(stackVal.getClass().isArray())
    			this.include = (String[])stackVal;
    	}
	}
    
    public void setVar(String var) {
        if (var != null) {
            this.var = findString(var);
        }
    }
    
    protected String getVar() {
        return this.var;
    }

	public void setPkg(String pkg) {
		if(StringUtils.isBlank(pkg)) return;
		if(altSyntax() && pkg.startsWith("%{") && pkg.endsWith("}")) 
			pkg = pkg.substring(2, pkg.length() - 1);
		String stackVal = (String)getStack().findValue(pkg, String.class);
		if(StringUtils.isNotBlank(stackVal))
			this.pkg = stackVal;
	}
	
}
