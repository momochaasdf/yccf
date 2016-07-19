
package com.deying.util.core.com.framework.struts2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.data.TextUtils;

public class BaseMgrAction extends BaseAction {
	/**
	 * 静态资源根地址
	 */
	public static final String ASSERTS_ROOT_DIR = "/home/";
	/**
	 * 图片资源相对地址
	 */
	public static final String ASSERTS_IMAGES_DIR = "images/";
	

	private static final long serialVersionUID = 1L;

	private UserContext coreUser = null;
	
	protected ContextCore ctx = new ContextCoreImpl();
	private InputStream excelStream=null;
    
	public String type ="0";
	public UserContext getCtxUser() {
		this.coreUser = (UserContext)this.ctx.getSessionAttr(Constants.USER_KEY);
		if (this.coreUser == null) {
			this.coreUser = new UserContextImpl();
			this.coreUser.setUserId("none");
			this.coreUser.setLoginId("none");
			this.coreUser.setUserName("匿名用户");
		}
		return this.coreUser;
	}
	
	protected void workbook2InputStream(HSSFWorkbook workbook,String filename) throws Exception{
        
		info.put("fileName", TextUtils.toUtf8String(filename));//.fileName = filename; //设置fileName
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        workbook.write(baos); 
        baos.flush(); 
        byte[] filesize = baos.toByteArray();
        excelStream = new ByteArrayInputStream(filesize, 0, filesize.length);
        baos.close();
   }

	public InputStream getExcelStream() {
		return excelStream;
	}

	public void setExcelStream(InputStream excelStream) {
		this.excelStream = excelStream;
	}

    public String getType()
    {
        return type;
    }

    public void setType(String type)
    {
        this.type = type;
    }
	
}
