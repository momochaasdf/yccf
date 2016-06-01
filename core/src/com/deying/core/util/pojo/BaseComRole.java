package com.deying.core.util.pojo;

import java.io.Serializable;

import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.pojo.user.ComUserRole;


/**
 * This is an object that contains data related to the COM_ROLE table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_ROLE"
 */

public abstract class BaseComRole  implements Serializable {

	public static String REF = "ComRole";
	public static String PROP_ROLE_NAME = "roleName";
	public static String PROP_ROLE_CODE = "roleCode";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_IS_SYS_ROLE = "isSysRole";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_ICON_URL = "iconUrl";
	public static String PROP_INFO = "info";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_CRT_UID = "crtUid";
	public static String PROP_ROLE_ID = "roleId";


	// constructors
	public BaseComRole () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComRole (java.lang.String roleId) {
		this.setRoleId(roleId);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String roleId;

	// fields
	private java.lang.String roleCode;
	private java.lang.String roleName;
	private java.lang.String isSysRole;
	private java.lang.String crtUid;
	private java.util.Date crtTime;
	private java.lang.String updUid;
	private java.util.Date updTime;
	private java.lang.String info;

	// collections
	private java.util.Set<ComUserRole> comUserRoles;
	private java.util.Set<ComRoleFunction> comRoleFunctions;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="uuid.hex"
     *  column="ROLE_ID"
     */
	public java.lang.String getRoleId () {
		return roleId;
	}

	/**
	 * Set the unique identifier of this class
	 * @param roleId the new ID
	 */
	public void setRoleId (java.lang.String roleId) {
		this.roleId = roleId;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: ROLE_CODE
	 */
	public java.lang.String getRoleCode () {
		return roleCode;
	}

	/**
	 * Set the value related to the column: ROLE_CODE
	 * @param roleCode the ROLE_CODE value
	 */
	public void setRoleCode (java.lang.String roleCode) {
		this.roleCode = roleCode;
	}



	/**
	 * Return the value associated with the column: ROLE_NAME
	 */
	public java.lang.String getRoleName () {
		return roleName;
	}

	/**
	 * Set the value related to the column: ROLE_NAME
	 * @param roleName the ROLE_NAME value
	 */
	public void setRoleName (java.lang.String roleName) {
		this.roleName = roleName;
	}



	/**
	 * Return the value associated with the column: IS_SYS_ROLE
	 */
	public java.lang.String getIsSysRole () {
		return isSysRole;
	}

	/**
	 * Set the value related to the column: IS_SYS_ROLE
	 * @param isSysRole the IS_SYS_ROLE value
	 */
	public void setIsSysRole (java.lang.String isSysRole) {
		this.isSysRole = isSysRole;
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
	 * Return the value associated with the column: INFO
	 */
	public java.lang.String getInfo () {
		return info;
	}

	/**
	 * Set the value related to the column: INFO
	 * @param info the INFO value
	 */
	public void setInfo (java.lang.String info) {
		this.info = info;
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
		if (!(obj instanceof ComRole)) return false;
		else {
			ComRole comRole = (ComRole) obj;
			if (null == this.getRoleId() || null == comRole.getRoleId()) return false;
			else return (this.getRoleId().equals(comRole.getRoleId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getRoleId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getRoleId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}