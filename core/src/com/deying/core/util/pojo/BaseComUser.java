package com.deying.core.util.pojo;

import java.io.Serializable;

import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;


/**
 * This is an object that contains data related to the COM_USER table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_USER"
 */

public abstract class BaseComUser  implements Serializable {

	public static String REF = "ComUser";
	public static String PROP_STATUS = "status";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_COMPANY_ID = "companyId";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_LOGIN_ID = "loginId";
	public static String PROP_PASSWORD = "password";
	public static String PROP_USER_NAME = "userName";
	public static String PROP_USER_ID = "userId";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_CRT_UID = "crtUid";


	// constructors
	public BaseComUser () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComUser (java.lang.String userId) {
		this.setUserId(userId);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String userId;

	// fields
	private java.lang.String loginId;
	private java.lang.String userName;
	private java.lang.String companyId;
	private java.lang.String password;
	private java.lang.String status;
	private java.lang.String crtUid;
	private java.util.Date crtTime;
	private java.lang.String updUid;
	private java.util.Date updTime;


	// collections
	private java.util.Set<ComUserRole> comUserRoles;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="uuid.hex"
     *  column="USER_ID"
     */
	public java.lang.String getUserId () {
		return userId;
	}

	/**
	 * Set the unique identifier of this class
	 * @param userId the new ID
	 */
	public void setUserId (java.lang.String userId) {
		this.userId = userId;
		this.hashCode = Integer.MIN_VALUE;
	}


	/**
	 * Return the value associated with the column: LOGIN_ID
	 */
	public java.lang.String getLoginId () {
		return loginId;
	}

	/**
	 * Set the value related to the column: LOGIN_ID
	 * @param loginId the LOGIN_ID value
	 */
	public void setLoginId (java.lang.String loginId) {
		this.loginId = loginId;
	}



	/**
	 * Return the value associated with the column: USER_NAME
	 */
	public java.lang.String getUserName () {
		return userName;
	}

	/**
	 * Set the value related to the column: USER_NAME
	 * @param userName the USER_NAME value
	 */
	public void setUserName (java.lang.String userName) {
		this.userName = userName;
	}



	public java.lang.String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(java.lang.String companyId) {
		this.companyId = companyId;
	}

	/**
	 * Return the value associated with the column: PASSWORD
	 */
	public java.lang.String getPassword () {
		return password;
	}

	/**
	 * Set the value related to the column: PASSWORD
	 * @param password the PASSWORD value
	 */
	public void setPassword (java.lang.String password) {
		this.password = password;
	}



	/**
	 * Return the value associated with the column: STATUS
	 */
	public java.lang.String getStatus () {
		return status;
	}

	/**
	 * Set the value related to the column: STATUS
	 * @param status the STATUS value
	 */
	public void setStatus (java.lang.String status) {
		this.status = status;
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
	 * Return the value associated with the column: comUserRoles
	 */
	public java.util.Set<ComUserRole> getComUserRoles () {
		return comUserRoles;
	}

	/**
	 * Set the value related to the column: comUserRoles
	 * @param comUserRoles the comUserRoles value
	 */
	public void setComUserRoles (java.util.Set<ComUserRole> comUserRoles) {
		this.comUserRoles = comUserRoles;
	}

	public void addTocomUserRoles (ComUserRole comUserRole) {
		if (null == getComUserRoles()) setComUserRoles(new java.util.TreeSet<ComUserRole>());
		getComUserRoles().add(comUserRole);
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof ComUser)) return false;
		else {
			ComUser comUser = (ComUser) obj;
			if (null == this.getUserId() || null == comUser.getUserId()) return false;
			else return (this.getUserId().equals(comUser.getUserId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getUserId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getUserId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}