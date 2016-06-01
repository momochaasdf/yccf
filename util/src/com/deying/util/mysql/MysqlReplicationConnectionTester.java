package com.deying.util.mysql;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.atomic.AtomicBoolean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mchange.v2.c3p0.AbstractConnectionTester;

/**
 * 
 * @author wangxj
 */
public final class MysqlReplicationConnectionTester extends AbstractConnectionTester {
	//
	private static final Logger LOGGER = LoggerFactory.getLogger(MysqlReplicationConnectionTester.class);
	
	//
	private static final long serialVersionUID = -7348778746126099053L;
	
	//
	private static final String DEFAULT_QUERY = "SELECT 1";
	private static final AtomicBoolean verbose = new AtomicBoolean(false);
	

	/**
	 * 
	 */
	public static boolean isVerbose() {
		return verbose.get();
	}
	
	public static void setVerbose(boolean v) {
		verbose.set(v);
	}
	
	/**
	 * 
	 */
	public boolean equals(Object o) {
		return (o != null && o.getClass() == MysqlReplicationConnectionTester.class);
	}

	public int hashCode() {
		return MysqlReplicationConnectionTester.class.getName().hashCode();
	}
	    
	public int activeCheckConnection(Connection c, String query, Throwable[] outParamCause) {
		//
		boolean readOnly = false;
		boolean needRestoreReadOnly = false;
		try {
			//
			readOnly = c.isReadOnly();
			
			//
			int r = checkConnection(c, query, outParamCause, readOnly);
			if(r == CONNECTION_IS_OKAY) {
				needRestoreReadOnly = true;
				r = checkConnection(c, query, outParamCause, !readOnly);
			}
			return r;
		} catch(Exception e) {
			//
			LOGGER.warn("the connection: " + c + " was marked invalid", e);
			if (outParamCause != null) {
				outParamCause[0] = e;
			}
			return CONNECTION_IS_INVALID;
		} finally {
			try {
				if(needRestoreReadOnly) {
					c.setReadOnly(readOnly);
				}
			} catch (SQLException e) {
				LOGGER.error("failed to restore read only: " + readOnly + " on connection", e);
			}
		}
	}

	public int statusOnException(Connection c, Throwable t, String query, Throwable[] outParamCause) {
		return checkConnection(c, query, outParamCause, null);
	}

	/**
	 * 
	 */
	private final int checkConnection(Connection c, String query, Throwable[] outParamCause, Boolean readOnly) {
		//
		if (query == null || query.equals("")) {
			query = DEFAULT_QUERY;
		}
		
		//
		ResultSet rs = null;
		Statement stmt = null;
		try {
			//
			boolean ro = c.isReadOnly();
			if(readOnly != null && readOnly != ro) {
				c.setReadOnly(readOnly);
			}
			
			//
			if(isVerbose() && LOGGER.isInfoEnabled()) {
				LOGGER.info("testing connection: {} with query: {}, read only: {}", new Object[]{c, query, ro});
			}
			
			//
			stmt = c.createStatement();
			rs = stmt.executeQuery(query);
			return CONNECTION_IS_OKAY;
		} catch (SQLException e) {
			LOGGER.warn("failed to test connection: " + c + " with query: " + query + ", state: " + e.getSQLState(), e);
			if (outParamCause != null) {
				outParamCause[0] = e;
			}
			return CONNECTION_IS_INVALID;
		} catch (Exception e) {
			LOGGER.warn("failed to test connection: " + c + " with query: " + query, e);
			if (outParamCause != null) {
				outParamCause[0] = e;
			}
			return CONNECTION_IS_INVALID;
		} finally {
			JdbcUtils.closeQuietly(rs);
			JdbcUtils.closeQuietly(stmt);
		}
	}
}