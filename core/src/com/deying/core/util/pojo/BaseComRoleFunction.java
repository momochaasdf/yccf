package com.deying.core.util.pojo;

import java.io.Serializable;

import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComRoleFunction;


/**
 * This is an object that contains data related to the COM_ROLE_FUNCTION table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_ROLE_FUNCTION"
 */

public abstract class BaseComRoleFunction  implements Serializable {

	public static String REF = "ComRoleFunction";
	public static String PROP_COM_ROLE = "comRole";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_ID = "id";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_COM_FUNCTION = "comFunction";
	public static String PROP_CRT_UID = "crtUid";


	// constructors
	public BaseComRoleFunction () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComRoleFunction (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String crtUid;
	private java.util.Date crtTime;
	private java.lang.String updUid;
	private java.util.Date updTime;

	// many to one
	private ComRole comRole;
	private ComFunction comFunction;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="uuid.hex"
     *  column="ID"
     */
	public java.lang.String getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (java.lang.String id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
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
	 * Return the value associated with the column: ROLE_ID
	 */
	public ComRole getComRole () {
		return comRole;
	}

	/**
	 * Set the value related to the column: ROLE_ID
	 * @param comRole the ROLE_ID value
	 */
	public void setComRole (ComRole comRole) {
		this.comRole = comRole;
	}



	/**
	 * Return the value associated with the column: FUNCTION_ID
	 */
	public ComFunction getComFunction () {
		return comFunction;
	}

	/**
	 * Set the value related to the column: FUNCTION_ID
	 * @param comFunction the FUNCTION_ID value
	 */
	public void setComFunction (ComFunction comFunction) {
		this.comFunction = comFunction;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof ComRoleFunction)) return false;
		else {
			ComRoleFunction comRoleFunction = (ComRoleFunction) obj;
			if (null == this.getId() || null == comRoleFunction.getId()) return false;
			else return (this.getId().equals(comRoleFunction.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}