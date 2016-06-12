package com.deying.util.annotation;

/**
 * @author wangxj
 * 
 */
public final class LockMode {
	
	private final String name;

	private LockMode(String name) {
		this.name=name;
	}
	
	public String getName() {
		return name;
	}
	
	public String toString() {
		return name;
	}
	
	/**
	 * No lock required. If an object is requested with this lock
	 * mode, a <tt>READ</tt> lock will be obtained if it is
	 * necessary to actually read the state from the database,
	 * rather than pull it from a cache.<br>
	 * <br>
	 * This is the "default" lock mode.
	 */
	public static final LockMode NONE = new LockMode("NONE");
	
	/**
	 * A shared lock. Objects in this lock mode were read from
	 * the database in the current transaction, rather than being
	 * pulled from a cache.
	 */
	public static final LockMode READ = new LockMode("READ");
	/**
	 * An upgrade lock. Objects loaded in this lock mode are
	 * materialized using an SQL <tt>select ... for update</tt>.
	 */
	public static final LockMode UPGRADE = new LockMode("UPGRADE");
	/**
	 * Attempt to obtain an upgrade lock, using an Oracle-style
	 * <tt>select for update nowait</tt>. The semantics of
	 * this lock mode, once obtained, are the same as
	 * <tt>UPGRADE</tt>.
	 */
	public static final LockMode UPGRADE_NOWAIT = new LockMode("UPGRADE_NOWAIT");
	/**
	 * A <tt>WRITE</tt> lock is obtained when an object is updated
	 * or inserted.   This lock mode is for internal use only and is
	 * not a valid mode for <tt>load()</tt> or <tt>lock()</tt> (both
	 * of which throw exceptions if WRITE is specified).
	 */
	public static final LockMode WRITE = new LockMode("WRITE");

	/**
	 * Similiar to {@link #UPGRADE} except that, for versioned entities,
	 * it results in a forced version increment.
	 */
	public static final LockMode FORCE = new LockMode("FORCE" );

}
