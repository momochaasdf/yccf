package com.deying.util.generator.exception;

import org.apache.commons.lang.exception.NestableRuntimeException;

/**
 * 
 * @author wangxj
 */
public class GenerationException extends NestableRuntimeException {
	//
	private static final long serialVersionUID = -2035750903553305767L;

	/**
	 * 
	 */
	public GenerationException() {
	}

	public GenerationException(String s) {
		super(s);
	}

	public GenerationException(Throwable t) {
		super(t);
	}

	public GenerationException(String s, Throwable t) {
		super(s, t);
	}
}
