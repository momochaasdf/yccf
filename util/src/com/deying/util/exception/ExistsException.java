package com.deying.util.exception;

public class ExistsException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public ExistsException() {
		super();
	}

	public ExistsException(String s) {
		super(s);
	}
	
	public ExistsException(Throwable t) {
		super(t);
	}
	
	public ExistsException(String s, Throwable cause) {
        super(s, cause);
    }
	
	public String getMessage() {
		return super.getMessage();	
	}
	
}
