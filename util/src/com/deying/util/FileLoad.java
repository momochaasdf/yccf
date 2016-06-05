package com.deying.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

import javax.management.modelmbean.XMLParseException;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.xml.XmlDataParser;


/**
 * @author wangxj
 * Apr 15, 2013
 * 
 */
public class FileLoad {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(FileLoad.class);
	
	private static final String[] properties;
	private static final String[] xmls;
	private static Properties propertyFile = new Properties();

	static {
		properties = new String[]{
				"jdbc.properties",
				"base.properties",
				"url.properties"
		};
		xmls = new String[]{
				"validation-url.xml",
				"data.xml",
				"accessible-url.xml"
		};
		init();
	}
	
	private FileLoad(){
		
	}
	
	@SuppressWarnings("unchecked")
	private static void init(){
		for(String fileStr : properties) {
			InputStream i = FileLoad.class.getResourceAsStream("/sources/" + fileStr);
			try {
				propertyFile.load(i);
			} catch (IOException e) {
				LOGGER.error("Load file " + fileStr + " to Properties error!!", e);
			}finally {
				IOUtils.closeQuietly(i);
			}
		}
		for(String xmlStr : xmls) {
			InputStream in = FileLoad.class.getResourceAsStream("/sources/" + xmlStr);
			SAXReader reader = new SAXReader();
			try {
				Document document = reader.read(in);
				Element root = document.getRootElement();
				List<Element> subs = root.elements("data");
				for(int i = 0; i < subs.size(); i++) {
					Element e = subs.get(i);
					String nameVal = e.attributeValue("name");
					if(StringUtils.isNotBlank(nameVal))
						propertyFile.put(nameVal, XmlDataParser.parseDataElement(e));
				}
			} catch (DocumentException e) {
				LOGGER.error("Load file " + xmlStr + " to Properties error!!", e);
			} catch (XMLParseException e) {
				LOGGER.error("Load file " + xmlStr + " to Properties error!!", e);
			}finally {
				IOUtils.closeQuietly(in);
			}
		}
	}
	
	public static Object get(Object key) {
		return propertyFile.get(key);
	}
	
	public static Object get(Object key, String defaultValue) {
		Object val = propertyFile.get(key);
		if(val == null) val = defaultValue;
		return val;
	}
	
	public static String getProperty(String key) {
		return propertyFile.getProperty(key);
	}
	
	public static String getProperty(String key, String defaultValue) {
		return propertyFile.getProperty(key, defaultValue);
	}
	public static String getOrderMailContent(String fileName){
//		String fileName="orderEmailContent.txt";
		InputStream in = FileLoad.class.getResourceAsStream("/sources/" + fileName);
		byte[] buffer=new byte[1024];
		int length=0;
		ByteArrayOutputStream baos=new ByteArrayOutputStream();
		String content=null;
		try {
			while ((length=in.read(buffer))!=-1) {
				baos.write(buffer,0,length);
			}
			content=baos.toString("UTF-8");
		} catch (Exception e) {
			LOGGER.error("GetOrderMailContent error!!", e);
		}finally {
			IOUtils.closeQuietly(in);
			IOUtils.closeQuietly(baos);
		}
		return content;
	}

}
