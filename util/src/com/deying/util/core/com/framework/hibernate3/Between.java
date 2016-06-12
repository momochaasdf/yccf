package com.deying.util.core.com.framework.hibernate3;

public class Between extends Condition {

	private static final long serialVersionUID = 1L;
	private Object gt;
	private Object lt;
	private boolean eq;

	public Between(String field, Object gt, Object lt, boolean eq) {
		this.field = field;
		this.gt = gt;
		this.lt = lt;
		this.eq = eq;
	}

	public static Between eq(String field, Object gt, Object lt) {
		return new Between(field, gt, lt, true);
	}
	public static Between notEq(String field, Object gt, Object lt) {
		return new Between(field, gt, lt, false);
	}
	
	public Object getGt() {
		return gt;
	}

	public void setGt(Object gt) {
		this.gt = gt;
	}

	public Object getLt() {
		return lt;
	}

	public void setLt(Object lt) {
		this.lt = lt;
	}

	public boolean isEq() {
		return eq;
	}

	public void setEq(boolean eq) {
		this.eq = eq;
	}

	
}
