package com.deying.util.generator.impl;

import java.util.concurrent.atomic.AtomicInteger;

import com.deying.util.generator.IdGenerator;
import com.deying.util.generator.exception.BoundReachedException;


/**
 * 
 * @author wangxj
 */
public final class IntegerGenerator implements IdGenerator<Integer> {
	//
	private final AtomicInteger id;
	
	/**
	 * 
	 */
	public IntegerGenerator() {
		this(0);
	}
	
	public IntegerGenerator(int initialValue) {
		this.id = new AtomicInteger(initialValue);
	}

	/**
	 * 
	 */
	public Integer nextId() {
		//
		if(id.get() == Integer.MAX_VALUE) {
			throw new BoundReachedException();
		} 
		
		//
		return id.incrementAndGet();
	}

	/**
     * 
     */
    public static void main(String args[]) {
    	IntegerGenerator g = new IntegerGenerator(1);
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
