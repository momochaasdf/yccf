package com.deying.util.generator.impl;

import java.util.Random;
import com.deying.util.generator.IdGenerator;

/**
 * 
 * @author wangxj
 */
public abstract class AbstractStringGenerator implements IdGenerator<String> {
	
    protected static final int DEFAULT_SIZE = 8;
    
    protected static final char Z = 'z';
    
    protected static final char NINE = '9';
    
    protected final Random r = new Random();
    
    //下个主键增加的随机数范围
    protected int randomRange = 9;
    
    /**
     * 获取增加的随机数{1-randomRange}
     * @return
     */
    protected int getRandomInt() {
    	return r.nextInt(randomRange) + 1;
    }
    
}
