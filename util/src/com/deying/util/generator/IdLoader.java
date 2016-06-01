package com.deying.util.generator;

import java.util.List;

/**
 * 
 * @author wangxj
 */
public interface IdLoader<T> {
	
	List<T> load() throws Exception;
}
