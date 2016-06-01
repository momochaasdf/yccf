package com.deying.util.file.exception;

/**
 * @author wangxj
 * 
 */
public class NonEnlargedException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public NonEnlargedException() {
		super();
	}

	public NonEnlargedException(String s) {
		super(s);
	}
	
	public NonEnlargedException(Throwable cause) {
        super(cause);
    }
	
	public NonEnlargedException(String s, Throwable cause) {
        super(s, cause);
    }
	
}
