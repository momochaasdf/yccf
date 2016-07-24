package com.deying.core.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Attendance;
import com.deying.core.service.AttendanceService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.excel.ExcelUtils;
import com.deying.util.excel.Json;
public class AttendanceAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private AttendanceService holidayService;
	
	private String id;
	private File excelFile;
	
	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		
		 
		
		dataPage = commonService.find(c
				, Attendance.class,  currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}
	
	public String importAttendanceExcel() throws Exception {

		String key = this.getCtxUser().getUserId();
		Json json = new Json();
		json = importExcel("Attendance",Attendance.class);
		if(json.isSuccess()){
			@SuppressWarnings("unchecked")
			List<Attendance> list = (List<Attendance>)json.getObj();
			json = holidayService.saveAttendance(list,key);
			if(json.isSuccess()){
				returnJsonSuccess();
			}else{
				returnJsonFailure(json.getMsg());
			}
		} else {
			returnJsonFailure(json.getMsg());
		}
		return JSON;
	}
	
	public void exportAttendanceExcel() throws Exception {

		String name = obtionInfoVal("name", String.class);
		Date minStartTime = obtionInfoVal("minStartTime", Date.class);
		Date maxStartTime = obtionInfoVal("maxStartTime", Date.class);
		
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		
		if(name != null){
			c.like("name", name);
		}
		if(minStartTime != null){
			c.ge("startTime", minStartTime);
		}
		if(maxStartTime != null){
			c.le("startTime", maxStartTime);
		}
		List<Attendance> list = commonService.find(c, Attendance.class);
		
		exportExcel(list,"Attendance");
	}
	
	private <T> Json importExcel(String className , Class<T> tClass){
		Json json = new Json();
		try {
			FileInputStream finput = new FileInputStream(excelFile);
			POIFSFileSystem fs;
			fs = new POIFSFileSystem(finput);
			HSSFWorkbook wb = new HSSFWorkbook(fs);
			ExcelUtils<T> util = new ExcelUtils<T>();
			json = util.importExcelExt(wb, className+".xml", tClass, "");
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	private <T> void exportExcel(List<T> list,String className){
		ExcelUtils<T> util = new ExcelUtils<T>();
		response.setContentType("application/msexcel");
		String fileName = "attachment;filename="+className+".xls";
		response.setHeader("Content-Disposition", fileName);
		try {
			OutputStream out = response.getOutputStream();
			util.exportExcel(className + ".xml", list, out);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public AttendanceService getAttendanceService() {
		return holidayService;
	}

	public void setAttendanceService(AttendanceService holidayService) {
		this.holidayService = holidayService;
	}

	public File getExcelFile() {
		return excelFile;
	}

	public void setExcelFile(File excelFile) {
		this.excelFile = excelFile;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
