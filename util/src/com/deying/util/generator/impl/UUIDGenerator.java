package com.deying.util.generator.impl;

import java.util.UUID;
import com.deying.util.generator.IdGenerator;


/**
 * 
 * @author wangxj
 */
public final class UUIDGenerator implements IdGenerator<UUID> {

	public UUID nextId() {
		return UUID.randomUUID();
	}
	
    public static void main(String args[]) {
    	UUIDGenerator g = new UUIDGenerator();
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
