package com.deying.util.datawrapper;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author wangxj
 * Apr 6, 2013
 * 
 */
public class MapWrapper<K,V> {
	
	public static final short HASH_MAP = 1;
	public static final short HASH_TABLE = 2;
	public static final short CONCURRENT_HASH_MAP = 3;
	
	private Map<K,V> data;
	
	private MapWrapper(short type){
		switch(type){
			case HASH_MAP: data = new HashMap<K,V>(); return;
			case HASH_TABLE: data = new Hashtable<K,V>(); return;
			case CONCURRENT_HASH_MAP: data = new ConcurrentHashMap<K,V>(); return;
		}
	}
	
	public MapWrapper<K,V> add(K key, V val) {
		data.put(key, val);
		return this;
	}
	
	@SuppressWarnings("unchecked")
	public static MapWrapper newHashMap(){
		return new MapWrapper(MapWrapper.HASH_MAP);
	}
	
	@SuppressWarnings("unchecked")
	public static MapWrapper newHashTable(){
		return new MapWrapper(MapWrapper.HASH_TABLE);
	}
	
	@SuppressWarnings("unchecked")
	public static MapWrapper newConcurrentHashMap(){
		return new MapWrapper(MapWrapper.CONCURRENT_HASH_MAP);
	}

	public Map<K, V> getData() {
		return data;
	}

	public void setData(Map<K, V> data) {
		this.data = data;
	}

	
	

}
