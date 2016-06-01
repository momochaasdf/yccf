package com.deying.util.generator.exception;

/**
 * 
 * @author wangxj
 */
public class GenerationInterruptedException extends GenerationException {
	//
	private static final long serialVersionUID = -9091655781649090109L;

	/**
	 * 
	 */
	public GenerationInterruptedException() {
	}

	public GenerationInterruptedException(String s) {
		super(s);
	}

	public GenerationInterruptedException(Throwable t) {
		super(t);
	}

	public GenerationInterruptedException(String s, Throwable t) {
		super(s, t);
	}
}
