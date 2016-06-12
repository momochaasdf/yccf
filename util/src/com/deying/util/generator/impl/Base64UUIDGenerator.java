package com.deying.util.generator.impl;

import com.deying.util.codec.Base64UUID;
import com.deying.util.generator.IdGenerator;


/**
 * 
 * @author wangxj
 */
public final class Base64UUIDGenerator implements IdGenerator<String> {

	public String nextId() {
		return Base64UUID.compressUUID();
	}
	
    public static void main(String args[]) {
    	Base64UUIDGenerator g = new Base64UUIDGenerator();
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
