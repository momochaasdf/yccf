package com.deying.util.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @author wangxj
 */
public abstract class JdbcUtils {
	//
	private static final Logger LOGGER = LoggerFactory.getLogger(JdbcUtils.class);

	/**
	 * 
	 */
	public static void closeQuietly(ResultSet rs) {
		//
		if(rs == null) {
			return;
		}
		
		//
		try {
			rs.close();
		} catch (SQLException e) {
			LOGGER.warn("failed to close result set", e);
		}
	}
	
	/**
	 * 
	 */
	public static void closeQuietly(Statement stat) {
		//
		if(stat == null) {
			return;
		}
		
		//
		try {
			stat.close();
		} catch (SQLException e) {
			LOGGER.warn("failed to close statement", e);
		}
	}
	
	/**
	 * 
	 */
	public static void closeQuietly(PreparedStatement pstat) {
		//
		if(pstat == null) {
			return;
		}
		
		//
		try {
			pstat.close();
		} catch (SQLException e) {
			LOGGER.warn("failed to close prepared statement", e);
		}
	}
	
	/**
	 * 
	 */
	public static void closeQuietly(Connection con) {
		//
		if(con == null) {
			return;
		}
		
		//
		try {
			con.close();
		} catch (SQLException e) {
			LOGGER.warn("failed to close connection", e);
		}
	}
}
