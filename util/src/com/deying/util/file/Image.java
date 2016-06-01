package com.deying.util.file;

import java.io.Serializable;

/**
 * @author wangxj
 * 
 */
public class Image implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String imagePath;
	
	private int codec;
	
	private int height;
	
	private int width;
	
	private int size;

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getCodec() {
		return codec;
	}

	public void setCodec(int codec) {
		this.codec = codec;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}
	
}
