package com.deying.core.util.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.deying.core.pojo.user.ComDict;


/**
 * This is an object that contains data related to the COM_DICT table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COM_DICT"
 */
@Entity
@Table(name = "com_dict")
public abstract class BaseComDict  implements Serializable {

	public static String REF = "ComDict";
	public static String PROP_CRT_TIME = "crtTime";
	public static String PROP_UPD_UID = "updUid";
	public static String PROP_DICT_CODE = "dictCode";
	public static String PROP_DICT_ID = "dictId";
	public static String PROP_DICT_NAME = "dictName";
	public static String PROP_SORT_NO = "sortNo";
	public static String PROP_INFO = "info";
	public static String PROP_UPD_TIME = "updTime";
	public static String PROP_CRT_UID = "crtUid";
	public static String PROP_DICT_TYPE_CODE = "dictTypeCode";


	// constructors
	public BaseComDict () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseComDict (java.lang.String dictId) {
		this.setDictId(dictId);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	@Id
	@GeneratedValue
	private java.lang.String dictId;

	// fields
	private java.lang.String dictTypeCode;
	private java.lang.String dictCode;
	private java.lang.String dictName;
	private java.lang.String info;
	private java.lang.String info2;
	private java.lang.Integer sortNo;
	private java.lang.String crtUid;
	private java.util.Date crtTime;
	private java.lang.String updUid;
	private java.util.Date updTime;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="sequence"
     *  column="DICT_ID"
     */
	public java.lang.String getDictId () {
		return dictId;
	}

	/**
	 * Set the unique identifier of this class
	 * @param dictId the new ID
	 */
	public void setDictId (java.lang.String dictId) {
		this.dictId = dictId;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: DICT_TYPE_CODE
	 */
	public java.lang.String getDictTypeCode () {
		return dictTypeCode;
	}

	/**
	 * Set the value related to the column: DICT_TYPE_CODE
	 * @param dictTypeCode the DICT_TYPE_CODE value
	 */
	public void setDictTypeCode (java.lang.String dictTypeCode) {
		this.dictTypeCode = dictTypeCode;
	}



	/**
	 * Return the value associated with the column: DICT_CODE
	 */
	public java.lang.String getDictCode () {
		return dictCode;
	}

	/**
	 * Set the value related to the column: DICT_CODE
	 * @param dictCode the DICT_CODE value
	 */
	public void setDictCode (java.lang.String dictCode) {
		this.dictCode = dictCode;
	}



	/**
	 * Return the value associated with the column: DICT_NAME
	 */
	public java.lang.String getDictName () {
		return dictName;
	}

	/**
	 * Set the value related to the column: DICT_NAME
	 * @param dictName the DICT_NAME value
	 */
	public void setDictName (java.lang.String dictName) {
		this.dictName = dictName;
	}



	/**
	 * Return the value associated with the column: INFO2
	 */
	public java.lang.String getInfo2 () {
		return info2;
	}

	/**
	 * Set the value related to the column: INFO2
	 * @param INFO2 the INFO2 value
	 */
	public void setInfo2 (java.lang.String info2) {
		this.info2 = info2;
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
	 * Return the value associated with the column: SORT_NO
	 */
	public java.lang.Integer getSortNo () {
		return sortNo;
	}

	/**
	 * Set the value related to the column: SORT_NO
	 * @param sortNo the SORT_NO value
	 */
	public void setSortNo (java.lang.Integer sortNo) {
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




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof ComDict)) return false;
		else {
			ComDict comDict = (ComDict) obj;
			if (null == this.getDictId() || null == comDict.getDictId()) return false;
			else return (this.getDictId().equals(comDict.getDictId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getDictId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getDictId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}