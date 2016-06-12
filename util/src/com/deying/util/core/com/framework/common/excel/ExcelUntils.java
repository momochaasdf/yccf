package com.deying.util.core.com.framework.common.excel;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class ExcelUntils {

	public static void  export() throws Exception {
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet("DEMO");
		HSSFRow row = sheet.createRow(0);
		row.createCell((short) 0).setCellValue(123);
		FileOutputStream out = new FileOutputStream("xx.xls");
		out.write(wb.getBytes());
		out.close();
		
	}
	//
}
