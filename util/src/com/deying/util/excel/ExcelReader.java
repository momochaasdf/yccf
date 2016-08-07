package com.deying.util.excel;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ExcelReader {
	public static Map<Integer, String> readExcel(HSSFWorkbook common) {
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
 
		Map<Integer, String> map = new HashMap<Integer, String>();
		try {
	 

			// int sheetCount = common.getNumberOfSheets(); // Sheet的数量
			// 遍历每个Sheet

			Sheet sheet = common.getSheetAt(1);
			int rowCount = sheet.getPhysicalNumberOfRows(); // 获取总行数
			// 遍历每一行
			for (int r = 1; r < rowCount; r++) {
				String var = "";
				Row row = sheet.getRow(r);
				int cellCount = row.getPhysicalNumberOfCells(); // 获取总列数
				// 遍历每一列
				for (int c = 0; c < cellCount; c++) {
					Cell cell = row.getCell(c);
					int cellType = cell.getCellType();
					String cellValue = null;
					cellValue = cell.toString();
					var += cellValue + ",";
				}
				map.put(r, var);
			}
		} catch (

		Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	public static void main(String[] args) {
		//ExcelReader.readExcel("E:\\text.xls");
	}
}
