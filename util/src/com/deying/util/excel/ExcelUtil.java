package com.deying.util.excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import jxl.write.WriteException;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.ErrorConstants;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ExcelUtil<T> {
	private String path = (this.getClass().getResource("/").getPath() + "sources/excel_xml/").replaceAll("%20", " ");

	private static Integer headRow = 2;
	private static Integer headRowTotal = 5;
	private static Integer headBegin = 2;
	private static Integer headEnd = 6;
	private static Integer dataRow = 5;
	private static Integer dataBegin = 2;
	private static Integer dataEnd = 6;
	
	@SuppressWarnings("unused")
	private static HSSFCellStyle headEndStyle;
	@SuppressWarnings("unused")
	private static HSSFCellStyle headStyle;
	@SuppressWarnings("unused")
	private static HSSFCellStyle dataBeginStyle;
	@SuppressWarnings("unused")
	private static HSSFCellStyle dataEndStyle;
	@SuppressWarnings("unused")
	private static HSSFCellStyle dataStyle;
	public Json json = new Json();
	
	private static  Integer  maxNum = 65535 ;
	
	private String updateFlag = null;

	@SuppressWarnings("unused")
	private HSSFWorkbook readExcel() throws WriteException, IOException {
		HSSFWorkbook common = new HSSFWorkbook();
		try {
			FileInputStream finput = new FileInputStream(path + "common.xls");
			POIFSFileSystem fs = new POIFSFileSystem(finput);
			HSSFWorkbook wb = new HSSFWorkbook(fs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return common;
	}
	
	public Json importExcelExt(HSSFWorkbook wb, String fileName, Class<T> tClass, String updateFlag) {
		this.updateFlag = updateFlag;
		return importExcel(wb, fileName, tClass);
	}

	@SuppressWarnings("unchecked")
	public Json importExcel(HSSFWorkbook wb, String fileName, Class<T> tClass) {
		json = new Json();
		json.setSuccess(true);
		try {
			List<T> list = new ArrayList<T>();
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(path + fileName);
			NodeList sheets = doc.getElementsByTagName("sheet");
			@SuppressWarnings("rawtypes")
			List<String> fieldNameList = new ArrayList();
			@SuppressWarnings("rawtypes")
			List<String> columnNameList = new ArrayList();
			Map<String, Map<String, String>> optionMap = new HashMap<String, Map<String, String>>();
			Map<String, String> regexMap = new HashMap<String, String>();
			Map<String, String> errorMap = new HashMap<String, String>();
			for (int i = 1; i < 1; i++) {
				Element row = (Element) sheets.item(i);
				fileName = row.getAttribute("name");
				NodeList cells = row.getElementsByTagName("cell");
				for (short j = 0; j < cells.getLength(); j++) {
					Node cell = cells.item(j);
					Element elem = (Element) cell;
					fieldNameList.add(elem.getAttribute("fieldName"));
					columnNameList.add(elem.getAttribute("columnName"));
					NodeList options = elem.getElementsByTagName("option");
					regexMap.put(elem.getAttribute("fieldName"), elem.getAttribute("regex"));
					errorMap.put(elem.getAttribute("fieldName"), elem.getAttribute("errorMsg"));
					if (options.getLength() > 0) {
						Map<String, String> mapOption = new HashMap<String, String>();
						for (short k = 0; k < options.getLength(); k++) {
							Element elemOption = (Element) options.item(k);
							mapOption.put(options.item(k).getTextContent(), elemOption.getAttribute("id"));
						}
						optionMap.put(elem.getAttribute("fieldName"), mapOption);
					}
				}
			}
			HSSFSheet sheet = wb.getSheet(fileName);
			HSSFRow row = sheet.getRow(headRow);
			 
			if(json.isSuccess()){
				list = getExcelData(sheet, fieldNameList, optionMap, regexMap, errorMap, tClass);
				json.setObj(list);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}

	public List<T> getExcelData(HSSFSheet sheet, List<String> fieldNameList, Map<String, Map<String, String>> optionMap,
			Map<String, String> regexMap, Map<String, String> errorMap, Class<T> tClass) {
		List<T> list = new ArrayList<T>();
		try {
			for (int i = dataRow; i <= sheet.getLastRowNum(); i++) {
//				String errorMsg = "";
				@SuppressWarnings("unchecked")
				T t = (T) Class.forName(tClass.getName()).newInstance();
				boolean blankLineflg = false;
				if (i == sheet.getLastRowNum() - 1) {
					// System.out.println("fieldName : " + i);
				}
				for (int j = 0; j < fieldNameList.size(); j++) {
					Object value = t;
					String setMethodName = null;
					@SuppressWarnings("rawtypes")
					Class fieldTypeName = null;
					String excelValue = null;
	 
					try {
						HSSFCell temp = sheet.getRow(i).getCell(j + dataBegin - 1);
						if(temp.getCellType() == Cell.CELL_TYPE_STRING){
							if (null == sheet.getRow(i) || null == sheet.getRow(i).getCell(j + dataBegin - 1)
									|| "".equals(sheet.getRow(i).getCell(j + dataBegin - 1).getRichStringCellValue().toString().trim())) {
								excelValue = null;
							} else {
								blankLineflg = true;
								excelValue = sheet.getRow(i).getCell(j + dataBegin - 1).getRichStringCellValue().toString().trim();
								excelValue = excelValue.replace("，", ",");
							}
						}
						if(temp.getCellType() == Cell.CELL_TYPE_NUMERIC){
							blankLineflg = true;
							excelValue = sheet.getRow(i).getCell(j + dataBegin - 1).getNumericCellValue() + "";
							excelValue = excelValue.toString().trim();
							//处理日期 
							if(HSSFDateUtil.isCellDateFormatted(sheet.getRow(i).getCell(j + dataBegin - 1))){
								double dateTemp = sheet.getRow(i).getCell(j + dataBegin - 1).getNumericCellValue();
								Date date = HSSFDateUtil.getJavaDate(dateTemp);
//								SimpleDateFormat format =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								SimpleDateFormat format =new SimpleDateFormat("yyyy-MM-dd");
								excelValue = format.format(date);
							}
							//科学计数法转纯数字文本
							String regex = "^((\\d+.?\\d+)[Ee]{1}(\\d+))$";
							Pattern tempPattern = Pattern.compile(regex);
							Matcher tempMatcher = tempPattern.matcher(excelValue);
							if(tempMatcher.matches()){
								DecimalFormat df = new DecimalFormat("0");  
								excelValue = df.format(sheet.getRow(i).getCell(j + dataBegin - 1).getNumericCellValue());  
							}
						}
						if(temp.getCellType() == Cell.CELL_TYPE_ERROR){
							//判断是否是错误单元格
							if(ErrorConstants.isValidCode(sheet.getRow(i).getCell(j + dataBegin - 1).getErrorCellValue())){
								excelValue = "";
								blankLineflg = true;
							}
						}
					} catch (Exception e) {
					}
					if (null == excelValue || excelValue.isEmpty()) {
						excelValue = "";
					}
					if (updateFlag != null && "1".equals(updateFlag) && (
							"customer.idNumber".equals(fieldNameList.get(j))
							|| "customer.phone".equals(fieldNameList.get(j))
							|| "customer.familyphone".equals(fieldNameList.get(j)))) {
						
					} else {
						Pattern pattern = Pattern.compile(regexMap.get(fieldNameList.get(j)));
						Matcher matcher = pattern.matcher(excelValue);
//						System.out.println("fieldName : " + fieldNameList.get(j) + " value :" + excelValue + " regex :"
//								+ regexMap.get(fieldNameList.get(j)) + " Msg : " + errorMap.get(fieldNameList.get(j)));
						if (!matcher.matches()) {
							if(!"".equals(excelValue)){
								json.setSuccess(false);
								json.setMsg(json.getMsg() + "第【" + (i-2) + "】行" + "第【" + (j + dataBegin - 1) + "】列，数据【" + excelValue + "】,"
										+ errorMap.get(fieldNameList.get(j)) + "<br>");
//								errorMsg = errorMsg + "第" + (j + dataBegin - 1) + "列数据" + excelValue + "," + errorMap.get(fieldNameList.get(j));
							}
							continue;
						}
					}
					if (null == excelValue || excelValue.isEmpty()) {
						continue;
					}
					for (int k = 0; k < fieldNameList.get(j).split("\\.").length; k++) {
						String field = fieldNameList.get(j).split("\\.")[k];
						if (k == fieldNameList.get(j).split("\\.").length - 1) {
							setMethodName = "set" + field.substring(0, 1).toUpperCase() + field.substring(1);
							fieldTypeName = value.getClass().getDeclaredField(field).getType();
							continue;
						}
						String getMethodName = "get" + field.substring(0, 1).toUpperCase() + field.substring(1);
						Method getMethod = value.getClass().getMethod(getMethodName, new Class[] {});
						if (null == getMethod.invoke(value, new Object[] {})) {
							setMethodName = "set" + field.substring(0, 1).toUpperCase() + field.substring(1);
							Method setMethodTemp = value.getClass().getMethod(setMethodName, getMethod.getReturnType());
							setMethodTemp.invoke(value, Class.forName(getMethod.getReturnType().getName()).newInstance());
						}
						value = getMethod.invoke(value, new Object[] {});
					}
					if (null != setMethodName && null != value) {
						@SuppressWarnings("rawtypes")
						Class tCls = value.getClass();
						@SuppressWarnings("unchecked")
						Method setMethod = tCls.getMethod(setMethodName, fieldTypeName);
						if (optionMap.containsKey(fieldNameList.get(j))) {
							if (optionMap.get(fieldNameList.get(j)).containsKey(excelValue)) {
								excelValue = optionMap.get(fieldNameList.get(j)).get(excelValue);
							} else {
								json.setSuccess(false);
								json.setMsg(json.getMsg() + "第【" + (i-2) + "】行" + "第【" + (j + dataBegin - 1) + "】列，发生数据有效性问题。请确认！<br>");
//								errorMsg = errorMsg + "第" + (j + dataBegin - 1) + "列数据" + excelValue + ","
//										+ errorMap.get(fieldNameList.get(j));
							}
						}
						try {
							if (Integer.class.getName().equals(fieldTypeName.getName())) {
								setMethod.invoke(value, (int) Double.parseDouble(excelValue));
							} else if (Double.class.getName().equals(fieldTypeName.getName())) {
								setMethod.invoke(value, Double.parseDouble(excelValue));
							} else if (String.class.getName().equals(fieldTypeName.getName())) {
								setMethod.invoke(value, excelValue.toString());
							} else if (Date.class.getName().equals(fieldTypeName.getName())) {
//								SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
								setMethod.invoke(value, sdf.parse(excelValue));
							} else if (List.class.getName().equals(fieldTypeName.getName())) {
							}
						} catch (ParseException e) {
							json.setSuccess(false);
							json.setMsg(json.getMsg() + "第【" + (i-2) + "】行" + "第【" + (j + dataBegin - 1) + "】列，发生数据类型有问题。请确认！<br>");
//							errorMsg = errorMsg + "第" + (j + dataBegin - 1) + "列数据" + excelValue + ","
//									+ errorMap.get(fieldNameList.get(j));
						}
					}
				}
				if (blankLineflg) {
					list.add(t);
				}
			}
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void exportExcel(String fileName, Collection<T> dataset, OutputStream out) {
		try {
			HSSFWorkbook workbook = this.writeExcel(fileName, dataset);
			workbook.write(out);
		} catch (WriteException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public HSSFWorkbook  exportExcel(String fileName, Collection<T> dataset) {
		HSSFWorkbook workbook=null;
		try {
		    workbook = this.entityWriteExcel(fileName, dataset);
		} catch (WriteException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return workbook;
	}
	
	public HSSFWorkbook writeExcel(String fileName, Collection<T> dataset) throws WriteException, IOException {
		Integer dataRows = dataset.size();
		HSSFWorkbook common = new HSSFWorkbook();
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		String templet = "Holiday.xls";
		try {
			FileInputStream finput = new FileInputStream(path + templet);
			POIFSFileSystem fs = new POIFSFileSystem(finput);
			common = new HSSFWorkbook(fs);
			HSSFSheet commonST = common.getSheetAt(0);
			headStyle = commonST.getRow(headRow).getCell(headBegin + 1).getCellStyle();
			headEndStyle = commonST.getRow(headRow).getCell(headEnd).getCellStyle();
			dataStyle = commonST.getRow(dataRow).getCell(headBegin + 1).getCellStyle();
			dataBeginStyle = commonST.getRow(dataRow).getCell(dataBegin).getCellStyle();
			dataEndStyle = commonST.getRow(dataRow).getCell(dataEnd).getCellStyle();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(path + fileName);
			NodeList sheets = doc.getElementsByTagName("sheet");
			for (int i = 0; i < sheets.getLength(); i++) {
				@SuppressWarnings({ "rawtypes", "unchecked" })
				List<String> fieldList = new ArrayList();
				Element row = (Element) sheets.item(i);
				HSSFSheet excelSheet = null;
				excelSheet = commonST;
				common.setSheetName(i, row.getAttribute("name"));
//				excelSheet = common.cloneSheet(0);
//				common.setSheetName(i + 1, row.getAttribute("name"));
				NodeList cells = row.getElementsByTagName("cell");
				Map<String, Map<String, String>> map = new HashMap<String, Map<String, String>>();
				if (cells.getLength() > headRowTotal) {
					excelSheet = insertColumn(dataRows, cells.getLength() - headRowTotal, excelSheet);
				} else {
					excelSheet = insertColumn(dataRows, 0, excelSheet);
				}
				for (short j = 0; j < cells.getLength(); j++) {
					Node cell = cells.item(j);
					Element elem = (Element) cell;
					fieldList.add(elem.getAttribute("fieldName"));
					HSSFRow excelRow = excelSheet.getRow(headRow);
					HSSFCell excelCell = excelRow.getCell(j + 1);
					excelSheet.setColumnWidth((short) j + 1, Integer.parseInt(elem.getAttribute("columnWidth")) * 256);
					String columnName = elem.getAttribute("columnName");
					excelCell.setCellValue(columnName);
					NodeList options = elem.getElementsByTagName("option");
					if (options.getLength() > 0) {
						Map<String, String> mapOption = new HashMap<String, String>();
						for (short k = 0; k < options.getLength(); k++) {
							Element elemOption = (Element) options.item(k);
							mapOption.put(elemOption.getAttribute("id"), options.item(k).getTextContent());
						}
						map.put(elem.getAttribute("fieldName"), mapOption);
					}
				}
				// 单个表导出
			    excelSheet = writeDataExcel(fieldList, excelSheet, dataset, map);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return common;
	}
	
	public HSSFWorkbook entityWriteExcel(String fileName, Collection<T> dataset) throws WriteException, IOException {
		HSSFWorkbook common= new HSSFWorkbook();
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			FileInputStream finput = new FileInputStream(path + "common.xls");
			POIFSFileSystem fs = new POIFSFileSystem(finput);
		    common = new HSSFWorkbook(fs);
			HSSFSheet commonST = common.getSheetAt(0);
			int num  =  commonST.getLastRowNum();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(path + fileName);
			NodeList sheets = doc.getElementsByTagName("sheet");
			for (int i = 0; i < sheets.getLength(); i++) {
				List<String> fieldList = new ArrayList<String>();
				Map<String, Map<String, String>> map = null;
				Element row = (Element) sheets.item(i);
				NodeList cells = row.getElementsByTagName("cell");
				int  temp = 0;
				Iterator<T> it = dataset.iterator();
				int rownumb = 0;
				Collection<T> current = new ArrayList<T>();  
				boolean isAddSheet = false;
				while (it.hasNext()) {
					rownumb++;
					T t = (T) it.next();
					current.add(t);
					if ((rownumb + num) % maxNum == 0) {
						isAddSheet= true;
						temp++;
						map = new HashMap<String, Map<String, String>>();
						HSSFSheet excelSheet = common.cloneSheet(0);
						common.setSheetName(temp, row.getAttribute("name") + temp);
						if (cells.getLength() > headRowTotal) {
							excelSheet = insertColumn(rownumb, cells.getLength() - headRowTotal, excelSheet);
						} else {
							excelSheet = insertColumn(rownumb, 0, excelSheet);
						}
						for (short j = 0; j < cells.getLength(); j++) {
							Node cell = cells.item(j);
							Element elem = (Element) cell;
							fieldList.add(elem.getAttribute("fieldName"));
							HSSFRow excelRow = excelSheet.getRow(headRow);
							HSSFCell excelCell = excelRow.getCell(j + 1);
							excelSheet.setColumnWidth((short) j + 1, Integer.parseInt(elem.getAttribute("columnWidth")) * 256);
							excelCell.setCellValue(elem.getAttribute("columnName"));
							NodeList options = elem.getElementsByTagName("option");
							if (options.getLength() > 0) {
								Map<String, String> mapOption = new HashMap<String, String>();
								for (short k = 0; k < options.getLength(); k++) {
									Element elemOption = (Element) options.item(k);
									mapOption.put(elemOption.getAttribute("id"), options.item(k).getTextContent());
								}
								map.put(elem.getAttribute("fieldName"), mapOption);
							}
						}
						  excelSheet = writeDataExcel(fieldList, excelSheet, current, map);
						  current.clear();
						  fieldList.clear();
						  map.clear();
					      rownumb = 0;
					}
				}
				temp++;
				HSSFSheet excelSheet = common.cloneSheet(0);
				map = new HashMap<String, Map<String, String>>();
				if(isAddSheet){
					common.setSheetName(temp, row.getAttribute("name") + temp);
				}else{
					common.setSheetName(temp, row.getAttribute("name"));
				}
				if (cells.getLength() > headRowTotal) {
					excelSheet = insertColumn(rownumb, cells.getLength() - headRowTotal, excelSheet);
				} else {
					excelSheet = insertColumn(rownumb, 0, excelSheet);
				}
				for (short j = 0; j < cells.getLength(); j++) {
					Node cell = cells.item(j);
					Element elem = (Element) cell;
					fieldList.add(elem.getAttribute("fieldName"));
					HSSFRow excelRow = excelSheet.getRow(headRow);
					HSSFCell excelCell = excelRow.getCell(j + 1);
					excelSheet.setColumnWidth((short) j + 1, Integer.parseInt(elem.getAttribute("columnWidth")) * 256);
					excelCell.setCellValue(elem.getAttribute("columnName"));
					NodeList options = elem.getElementsByTagName("option");
					if (options.getLength() > 0) {
						Map<String, String> mapOption = new HashMap<String, String>();
						for (short k = 0; k < options.getLength(); k++) {
							Element elemOption = (Element) options.item(k);
							mapOption.put(elemOption.getAttribute("id"), options.item(k).getTextContent());
						}
						map.put(elem.getAttribute("fieldName"), mapOption);
					}
				}		
				excelSheet = writeDataExcel(fieldList, excelSheet, current, map);
			}
			common.removeSheetAt(0);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return common;
	}

	@SuppressWarnings("rawtypes")
	public HSSFSheet writeDataExcel(List<String> fieldList, HSSFSheet sheet, Collection<T> dataset, Map<String, Map<String, String>> map) {
		try {
			Iterator<T> it = dataset.iterator();
			int index = dataRow;
			while (it.hasNext()) {
				T t = (T) it.next();
				for (int i = 0; i < fieldList.size(); i++) {
					Object value = t;
					String currentfield = fieldList.get(i);
					if (value == null)
						continue;
					if(value instanceof Map){
						value = ((Map) value).get(currentfield);
					}else{
						for (String field : currentfield.split("\\.")) {
							if (value == null)
								continue;
							if(value instanceof Map){
								value = ((Map) value).get(field);
							}else {
								String getMethodName = "get" + field.substring(0, 1).toUpperCase() + field.substring(1);
								Class tCls = value.getClass();
								@SuppressWarnings("unchecked")
								Method getMethod = tCls.getMethod(getMethodName, new Class[]{});
								value = getMethod.invoke(value, new Object[]{});
							}
						}
					}

					String textValue = null;
					HSSFCell cell = sheet.getRow(index).getCell(dataBegin + i - 1);
					if (value instanceof Date) {
						Date date = (Date) value;
//						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
						textValue = sdf.format(date);
					} else if (value instanceof List<?>) {
					} else {
						if (value != null) {
							textValue = value.toString();
						} else {
							textValue = "";
						}
					}
					if (map.containsKey(fieldList.get(i))) {
						if (map.get(fieldList.get(i)).containsKey(textValue)) {
							textValue = map.get(fieldList.get(i)).get(textValue);
						} else {
							// System.out.println("数据有效性错误！");
						}
					}
					if (textValue != null) {
						Pattern p = Pattern.compile("^//d+(//.//d+)?$");
						Matcher matcher = p.matcher(textValue);
						if (matcher.matches()) {
							cell.setCellValue(Double.parseDouble(textValue));
						} else {
							HSSFRichTextString richString = new HSSFRichTextString(textValue);
							cell.setCellValue(richString);
						}
					}
				}
				index++;
			}
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return sheet;
	}

	@SuppressWarnings("deprecation")
	public static HSSFSheet insertColumn(int rowsNum, int insertNum, HSSFSheet sheet) {
		for (int i = 0; i < rowsNum; i++) {
			sheet.createRow(dataRow + 2 + i);
		}
		for (int i = 0; i < rowsNum; i++) {
			for (short j = 0; j < sheet.getRow(dataRow).getLastCellNum(); j++) {
				HSSFCell tempCell = sheet.getRow(sheet.getLastRowNum() - 1 - i).createCell(j);
				if (i == 0) {
					tempCell.setCellStyle(sheet.getRow(dataRow + 1).getCell(j).getCellStyle());
				} else {
					tempCell.setCellStyle(sheet.getRow(dataRow).getCell(j).getCellStyle());
				}
			}
		}
		return sheet;
	}
	
}
