package com.deying.util.generator.impl;

import org.apache.commons.lang.ArrayUtils;
import com.deying.util.generator.exception.BoundReachedException;

/**
 * 
 * @author wangxj
 */
public final class NumericStringGenerator extends AbstractStringGenerator {
    
    private int[] id;
    private final boolean padding;
    private boolean strict = false;	//等于true则值不能超过指定的DEFAULT_SIZE长度
    

    public NumericStringGenerator() {
        this(DEFAULT_SIZE, true);
    }
    
    public NumericStringGenerator(boolean padding) {
        this(DEFAULT_SIZE, padding);
    }

    public NumericStringGenerator(int size, boolean padding) {
        if (size < 1) {
            throw new IllegalArgumentException("The size must be at least one");
        }
        
        this.padding = padding;
        this.id = new int[size];
        for (int i = 0; i < this.id.length; i++) {
            id[i] = 0;
        }
    }

    public NumericStringGenerator(String initialValue) {
    	this(initialValue, true);
    }
    
    public NumericStringGenerator(String initialValue, boolean padding) {
    	char[] tmp = initialValue.toCharArray();
        for (int i = 0; i < tmp.length; i++) {
            char ch = tmp[i];
            if (ch >= '0' && ch <= '9') continue;
            throw new IllegalArgumentException("invalid initialValue: " + initialValue);
        }
        
       // this.id = tmp;
        this.padding = padding;
    }
    
    public int getSize() {
        return id.length;
    }
    
    public void setRandomRange(int randomRange) {
    	this.randomRange = randomRange;
    }
    
    public void setStrict(boolean strict) {
    	this.strict = strict;
    }
    
    public synchronized String nextId() {
        for (int i = id.length - 1; i >= 0; i--) {
            switch (id[i]) {
                case NINE:
                    if (i == 0) {
                    	if(strict)
                    		throw new BoundReachedException();
                    	else {
                    		id[i] = '0';
                    		id = ArrayUtils.add(id, 0, '1');
                    	}
                    }else
                    	id[i] = '0';
                    break;
                default:
                    id[i]++;
                    i = -1;
                    break;
            }
        }
        
        if(padding) {
        	return null;
//        	return new String(id);
        } else {
        	int index = 0;
        	for (; index < id.length; index++) {
        		if(id[index] != '0') {
        			break;
        		}
        	}
        	return new String(id, index, id.length - index);
        }
    }

    /**
     * 
     */
    public static void main(String args[]) {
    	NumericStringGenerator g = new NumericStringGenerator("1234abcd");
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
