package com.deying.util.tag;

import java.io.Writer;
import java.util.Map;
import org.apache.struts2.components.If;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class ElseEnum extends ExtComponent{
	
	public ElseEnum(ValueStack stack) {
		super(stack);
	}
	
	@SuppressWarnings("unchecked")
	public boolean start(Writer writer) {
        Map context = stack.getContext();
        Boolean ifResult = (Boolean) context.get(IfEnum.ANSWER);

        context.remove(If.ANSWER);

        return !((ifResult == null) || (ifResult.booleanValue()));
    }

	
}
