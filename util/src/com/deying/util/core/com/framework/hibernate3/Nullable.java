package com.deying.util.core.com.framework.hibernate3;

public class Nullable extends Condition {

	private static final long serialVersionUID = 1L;
	private boolean isNull;

	public Nullable(String field, boolean isNull) {
		this.field = field;
		this.isNull = isNull;
	}

	public static Nullable isNull(String field) {
		return new Nullable(field, true);
	}

	public static Nullable isNotNull(String field) {
		return new Nullable(field, false);
	}

	public boolean isNull() {
		return isNull;
	}
}
