package com.deying.core.action;

import org.apache.struts2.ServletActionContext;

import com.deying.util.core.com.framework.struts2.BaseMgrAction;

public class CheckIdentifyingCodeAction extends BaseMgrAction{
	private static final long serialVersionUID = 1L;
	private int flag;
	private String codes;
	
	//注册是确认验证码
	public String check() throws Exception {
		String str=(String) ServletActionContext.getContext().getSession().get("verifyCode");
		if(str.equalsIgnoreCase(codes)){
			flag=1;
		}else{
			flag=0;
		}
		return "check";
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getCodes() {
		return codes;
	}

	public void setCodes(String codes) {
		this.codes = codes;
	}
	
}
