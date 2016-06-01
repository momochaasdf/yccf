package com.deying.core.util.pojo;

import java.io.Serializable;

import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRoleFunction;


/**
 * This is an object that contains data related to the COM_FUNCTION table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_FUNCTION"
 */

public abstract class BaseComFunction  implements Serializable {

	public static String REF = "ComFunction";
	public static String PROP_DESCRIPTION = "description";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_FUNCTION_ID = "functionId";
	public static String PROP_TREE_CODE = "treeCode";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_PARENT_FUNCTION_ID = "parentFunctionId";
	public static String PROP_CRT_UID = "crtUid";
	public static String PROP_URL = "url";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_FUNCTION_NAME = "functionName";


	// constructors
	public BaseComFunction () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComFunction (java.lang.String functionId) {
		this.setFunctionId(functionId);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String functionId;

	// fields
	private java.lang.String functionName;
	private java.lang.String parentFunctionId;
	private java.lang.String treeCode;
	private java.lang.String url;
	private java.lang.String description;
	private java.lang.String companyId;
	private java.lang.Integer sortNo;
	private java.lang.String crtUid;
	private java.util.Date crtTime;
	private java.lang.String updUid;
	private java.util.Date updTime;

	// collections
	private java.util.Set<ComRoleFunction> comRoleFunctions;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="uuid.hex"
     *  column="FUNCTION_ID"
     */
	public java.lang.String getFunctionId () {
		return functionId;
	}

	/**
	 * Set the unique identifier of this class
	 * @param functionId the new ID
	 */
	public void setFunctionId (java.lang.String functionId) {
		this.functionId = functionId;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: FUNCTION_NAME
	 */
	public java.lang.String getFunctionName () {
		return functionName;
	}

	/**
	 * Set the value related to the column: FUNCTION_NAME
	 * @param functionName the FUNCTION_NAME value
	 */
	public void setFunctionName (java.lang.String functionName) {
		this.functionName = functionName;
	}



	/**
	 * Return the value associated with the column: PARENT_FUNCTION_ID
	 */
	public java.lang.String getParentFunctionId () {
		return parentFunctionId;
	}

	/**
	 * Set the value related to the column: PARENT_FUNCTION_ID
	 * @param parentFunctionId the PARENT_FUNCTION_ID value
	 */
	public void setParentFunctionId (java.lang.String parentFunctionId) {
		this.parentFunctionId = parentFunctionId;
	}



	/**
	 * Return the value associated with the column: TREE_CODE
	 */
	public java.lang.String getTreeCode () {
		return treeCode;
	}

	/**
	 * Set the value related to the column: TREE_CODE
	 * @param treeCode the TREE_CODE value
	 */
	public void setTreeCode (java.lang.String treeCode) {
		this.treeCode = treeCode;
	}



	/**
	 * Return the value associated with the column: URL
	 */
	public java.lang.String getUrl () {
		return url;
	}

	/**
	 * Set the value related to the column: URL
	 * @param url the URL value
	 */
	public void setUrl (java.lang.String url) {
		this.url = url;
	}



	/**
	 * Return the value associated with the column: DESCRIPTION
	 */
	public java.lang.String getDescription () {
		return description;
	}

	/**
	 * Set the value related to the column: DESCRIPTION
	 * @param description the DESCRIPTION value
	 */
	public void setDescription (java.lang.String description) {
		this.description = description;
	}



	/**
	 * Return the value associated with the column: COMPANY_ID
	 */
	public java.lang.String getCompanyId () {
		return companyId;
	}

	/**
	 * Set the value related to the column: COMPANY_ID
	 * @param COMPANY_ID the COMPANY_ID value
	 */
	public void setCompanyId (java.lang.String companyId) {
		this.companyId = companyId;
	}



	public java.lang.Integer getSortNo() {
		return sortNo;
	}

	public void setSortNo(java.lang.Integer sortNo) {
		this.sortNo = sortNo;
	}

	/**
	 * Return the value associated with the column: CRT_UID
	 */
	public java.lang.String getCrtUid () {
		return crtUid;
	}

	/**
	 * Set the value related to the column: CRT_UID
	 * @param crtUid the CRT_UID value
	 */
	public void setCrtUid (java.lang.String crtUid) {
		this.crtUid = crtUid;
	}



	/**
	 * Return the value associated with the column: CRT_TIME
	 */
	public java.util.Date getCrtTime () {
		return crtTime;
	}

	/**
	 * Set the value related to the column: CRT_TIME
	 * @param crtTime the CRT_TIME value
	 */
	public void setCrtTime (java.util.Date crtTime) {
		this.crtTime = crtTime;
	}



	/**
	 * Return the value associated with the column: UPD_UID
	 */
	public java.lang.String getUpdUid () {
		return updUid;
	}

	/**
	 * Set the value related to the column: UPD_UID
	 * @param updUid the UPD_UID value
	 */
	public void setUpdUid (java.lang.String updUid) {
		this.updUid = updUid;
	}



	/**
	 * Return the value associated with the column: UPD_TIME
	 */
	public java.util.Date getUpdTime () {
		return updTime;
	}

	/**
	 * Set the value related to the column: UPD_TIME
	 * @param updTime the UPD_TIME value
	 */
	public void setUpdTime (java.util.Date updTime) {
		this.updTime = updTime;
	}



	/**
	 * Return the value associated with the column: comRoleFunctions
	 */
	public java.util.Set<ComRoleFunction> getComRoleFunctions () {
		return comRoleFunctions;
	}

	/**
	 * Set the value related to the column: comRoleFunctions
	 * @param comRoleFunctions the comRoleFunctions value
	 */
	public void setComRoleFunctions (java.util.Set<ComRoleFunction> comRoleFunctions) {
		this.comRoleFunctions = comRoleFunctions;
	}

	public void addTocomRoleFunctions (ComRoleFunction comRoleFunction) {
		if (null == getComRoleFunctions()) setComRoleFunctions(new java.util.TreeSet<ComRoleFunction>());
		getComRoleFunctions().add(comRoleFunction);
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof ComFunction)) return false;
		else {
			ComFunction comFunction = (ComFunction) obj;
			if (null == this.getFunctionId() || null == comFunction.getFunctionId()) return false;
			else return (this.getFunctionId().equals(comFunction.getFunctionId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getFunctionId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getFunctionId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}