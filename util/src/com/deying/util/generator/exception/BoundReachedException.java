package com.deying.util.generator.exception;

/**
 * 
 * @author wangxj
 */
public class BoundReachedException extends GenerationException {
	//
	private static final long serialVersionUID = 8459345253975296144L;

	/**
	 * 
	 */
	public BoundReachedException() {
	}

	public BoundReachedException(String s) {
		super(s);
	}

	public BoundReachedException(Throwable t) {
		super(t);
	}

	public BoundReachedException(String s, Throwable t) {
		super(s, t);
	}
}
