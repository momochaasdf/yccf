package com.deying.core.util.pojo;

import java.io.Serializable;

import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;


/**
 * This is an object that contains data related to the COM_USER_ROLE table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_USER_ROLE"
 */

public abstract class BaseComUserRole  implements Serializable {

	public static String REF = "ComUserRole";
	public static String PROP_COM_USER = "comUser";
	public static String PROP_COM_ROLE = "comRole";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_ID = "id";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_CRT_UID = "crtUid";


	// constructors
	public BaseComUserRole () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComUserRole (java.lang.String id) {
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
	private ComUser comUser;
	private ComRole comRole;



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
	 * Return the value associated with the column: USER_ID
	 */
	public ComUser getComUser () {
		return comUser;
	}

	/**
	 * Set the value related to the column: USER_ID
	 * @param comUser the USER_ID value
	 */
	public void setComUser (ComUser comUser) {
		this.comUser = comUser;
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




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof ComUserRole)) return false;
		else {
			ComUserRole comUserRole = (ComUserRole) obj;
			if (null == this.getId() || null == comUserRole.getId()) return false;
			else return (this.getId().equals(comUserRole.getId()));
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