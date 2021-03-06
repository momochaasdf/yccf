package com.deying.util.generator.impl;

import com.deying.util.generator.exception.BoundReachedException;

/**
 * 
 * @author wangxj
 */
public final class AlphaNumericGenerator extends AbstractStringGenerator {
    //
    private final char[] id;
    private final boolean padding;

    /**
     * 
     */
    public AlphaNumericGenerator() {
        this(DEFAULT_SIZE, true);
    }
    
    public AlphaNumericGenerator(boolean padding) {
        this(DEFAULT_SIZE, padding);
    }

    public AlphaNumericGenerator(int size, boolean padding) {
    	// Precondition checking 
        if (size < 1) {
            throw new IllegalArgumentException("The size must be at least one");
        }
        
        //
        this.padding = padding;
        this.id = new char[size];
        for (int i = 0; i < this.id.length; i++) {
            id[i] = '0';
        }
    }

    public AlphaNumericGenerator(String initialValue) {
    	// Precondition checking 
    	char[] tmp = initialValue.toCharArray();
        for (int i = 0; i < tmp.length; i++) {
            char ch = tmp[i];
            if (ch >= '0' && ch <= '9') continue;
            if (ch >= 'a' && ch <= 'z') continue;
            throw new IllegalArgumentException("invalid initialValue: " + initialValue);
        }
        
        //
        this.id = tmp;
        this.padding = true;
    }
    
    /**
     * 
     */
    public int getSize() {
        return id.length;
    }
    
    public synchronized String nextId() {
    	//
        for (int i = id.length - 1; i >= 0; i--) {
            switch (id[i]) {
                case Z:
                    if (i == 0) {
                        throw new BoundReachedException();
                    }
                    id[i] = '0';
                    break;
                case NINE:
                    id[i] = 'a';
                    i = -1;
                    break;
                default:
                    id[i]++;
                    i = -1;
                    break;
            }
        }
        
        //
        if(padding) {
        	return new String(id);
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
    	AlphaNumericGenerator g = new AlphaNumericGenerator("1234abcd");
    	for(int i = 0; i < 100; i++) {
    		System.out.println(g.nextId());
    	}
    }
}
