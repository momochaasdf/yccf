package com.deying.core.util;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.annotations.StrutsTag;
import org.apache.struts2.views.annotations.StrutsTagAttribute;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.user.impl.DictServiceImpl;
import com.opensymphony.xwork2.util.ValueStack;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

@StrutsTag(name = "dict", tldTagClass = "com.util.view.jsp.DictTag", description = "字典标签")
public class Dict extends Component{
	private static final Logger LOG = LoggerFactory.getLogger(Dict.class);
	
	
	protected String type;
	protected String code;
	protected String language;
	private DictServiceImpl dictService;
	private HttpSession session;

	public Dict(ValueStack stack) {
		super(stack);
	}

	public Dict(ValueStack stack, HttpServletRequest request, HttpServletResponse response) {
		super(stack);
		session = request.getSession();
		WebApplicationContext  wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
		dictService = (DictServiceImpl) wac.getBean("dictService");
	}

	@StrutsTagAttribute(description="字典类型", type="String", required=true)
	public void setType(String type) {
		this.type = type;
	}
	@StrutsTagAttribute(description="字典代码", type="String", required=true)
	public void setCode(String code) {
		this.code = code;
	}
	@StrutsTagAttribute(description="语种", defaultValue="zh_CN", type="String")
	public void setLanguage(String language) {
		this.language = language;
	}

	@SuppressWarnings({ "unchecked"})
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		String actualValue = null;
		if (code != null) {
			code = this.stripExpressionIfAltSyntax(code);
			code = (String) getStack().findValue(code, String.class, throwExceptionOnELFailure);
			Map<String, String> map = (HashMap<String, String>) session.getAttribute(type);
			if (map == null) {
				map = new HashMap<String, String>();
				ComDict example = new ComDict();
				example.setDictTypeCode(type);
//				example.setLocaleId(language);
				try {
					List<ComDict> list = this.dictService.listAll(example, null, null, null);
					if (list != null && list.size() > 0) {
						for (ComDict c : list) {
							map.put(c.getDictCode(), c.getDictName());
						}
					}
					session.setAttribute(type, map);
				} catch (Exception e) {
					LOG.error(e.getMessage());
				}
				
			}
			actualValue = map.get(code);
		}
		try {
            if (actualValue != null) {
                writer.write(actualValue);
            } else {
                writer.write(code);
            }
        } catch (IOException e) {
        	LOG.error(e.getMessage());
        }
		
		return result;
	}
	public DictServiceImpl getDictService() {
		return dictService;
	}
	public void setDictService(DictServiceImpl dictService) {
		this.dictService = dictService;
	}


}
