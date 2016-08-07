package com.deying.core.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Attendance;
import com.deying.core.service.AttendanceService;
import com.deying.util.core.com.framework.common.tools.DateUtil;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.excel.ExcelReader;
import com.deying.util.excel.ExcelUtil;
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
		dataPage = commonService.find(c, Attendance.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}

	public String importAttendanceExcel() throws Exception {

		String key = this.getCtxUser().getUserId();
		Json json = new Json();
		json = importExcel("Attendance", Attendance.class);
		if (json.isSuccess()) {
			returnJsonSuccess();
		} else {
			returnJsonFailure(json.getMsg());
		}
		return JSON;
	}

	private <T> Json importExcel(String className, Class<T> tClass) {
		Json json = new Json();
		try {
			Date startTime = null;
			Date endTime = null;
			FileInputStream finput = new FileInputStream(excelFile);
			POIFSFileSystem fs;
			fs = new POIFSFileSystem(finput);
			HSSFWorkbook wb = new HSSFWorkbook(fs);
			ExcelUtil<T> util = new ExcelUtil<T>();
			Map<Integer, String> map = ExcelReader.readExcel(wb);
			Set<Integer> keySet = map.keySet();
			List<Attendance> attenDanceList = new ArrayList<Attendance>();
			for (Integer key : keySet) {

				if (key.equals(1)) {
					String value = map.get(key);
					String[] values = value.split(",")[0].replace("统计日期：", "").split("～");
					startTime = DateUtil.parse(values[0], "yyyy-MM-dd");
					endTime = DateUtil.parse(values[1], "yyyy-MM-dd");
					;
				} else if (key.equals(2) || key.equals(3)) {
					continue;
				} else {
					Attendance a = new Attendance();
					String value = map.get(key);
					String[] values = value.split(",");
					if (null == values[0] || "".equals(values[0])) {
						continue;
					}
					a.setAbsentDays(values[13]);
					a.setAllDays(values[11].split("/")[0]);
					a.setAttendanceDays(values[11].split("/")[1]);
					a.setCompanyId(values[2]);
					a.setEndTime(endTime);
					a.setLatePoint(values[6]);
					a.setLateTimes(values[5]);
					a.setLeaveDays(values[13]);
					a.setLeaveEarlyPoint(values[8]);
					a.setLeaveEarlyTimes(values[7]);
					a.setOutDays(values[12]);
					a.setOverNormal(values[9]);
					a.setOverSpecial(values[10]);
					a.setStartTime(startTime);
					a.setUserId(values[0]);
					a.setUserName(values[1]);
					a.setWorkTimeNormal(values[3]);
					a.setWorkTimeReal(values[4]);
					this.commonService.save("Attendance", a);
				}
			}
			json.setSuccess(true);
			json.setMsg("导入成功");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
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
