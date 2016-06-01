package com.deying.util.exception;

public class BaseException extends RuntimeException{

	private static final long serialVersionUID = 1L;
	
	private boolean debug = false;
	private String trace;
	private int code = -1;

	public BaseException() {
		super();
		init();
	}

	public BaseException(String s) {
		super(s);
		init();
	}
	
	public BaseException(String s, Throwable cause) {
        super(s, cause);
        init();
    }
	
	public BaseException(int code, String s) {
		super(s);
		this.code = code;
		init();
	}
	
	public int getCode() {
		return this.code;
	}
	
	public String getMessage() {
		return (debug?trace:"") + super.getMessage();	
	}
	
	private void init() {
		StackTraceElement traces[] = getStackTrace();
		String className = traces[0].getClassName();
		int n = className.lastIndexOf('.');
		if(n > 0) className = className.substring(n + 1);
		trace = className + "." + traces[0].getMethodName() + "[line: " + traces[0].getLineNumber() + "]: ";
	}
}
