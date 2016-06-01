package com.deying.util.generator.impl;

import java.util.concurrent.atomic.AtomicLong;
import com.deying.util.generator.IdGenerator;
import com.deying.util.generator.exception.BoundReachedException;


/**
 * 
 * @author wangxj
 */
public final class LongGenerator implements IdGenerator<Long> {
	//
	private final AtomicLong id;
	
	/**
	 * 
	 */
	public LongGenerator() {
		this(0);
	}
	
	public LongGenerator(long initialValue) {
		this.id = new AtomicLong(initialValue);
	}

	/**
	 * 
	 */
	public Long nextId() {
		//
		if(id.get() == Long.MAX_VALUE) {
			throw new BoundReachedException();
		} 
		
		//
		return id.incrementAndGet();
	}

	/**
     * 
     */
    public static void main(String args[]) {
    	LongGenerator g = new LongGenerator(1);
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
