package com.deying.core.base;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.LockMode;

import com.deying.util.enums.PersistentEnum;

/**
 * 通用Dao接口
 * @author Administrator
 *
 */
public interface BaseDao<T> {

	/**
	 * 添加
	 */
	public void saveEntity(T entity);
	
	/**
	 * 根据id删除
	 */
	public void delete(Long id);
	
	/**
	 * 根据id修改
	 */
	public void updateEntity(T entity);
	
	/**
	 * 根据id查询
	 */
	public T getById(Long id);
	
	/**
	 * 一次查询多个对象
	 */
	public List<T> getByIds(Long[] ids);
	
	/**
	 * 查询所有
	 */
	public List<T> findAll();
	
}
