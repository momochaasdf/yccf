package com.deying.core.action;

import java.util.Date;

import com.deying.core.pojo.Backup;
import com.deying.core.pojo.user.ComDict;
import com.deying.util.backupMysql.BackupMysql;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
public class BackupAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");
		
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		dataPage = commonService.find(c
				, Backup.class,  currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}
	
	public String backup() throws Exception {
		
		//查询数据库备份情报
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("dictTypeCode", "database_backup");
		ComDict databaseBackup= commonService.get(c, ComDict.class);
		
		Backup backup = new Backup();
		backup.setDbName(databaseBackup.getInfo());
		backup.setPath(databaseBackup.getInfo2());
		backup.setBackupName(databaseBackup.getInfo() + new Date().getTime() + ".sql");
		backup.setCrtUid(this.getCtxUser().getUserId());
		backup.setCrtTime(new Date());
		backup.setUpdUid(this.getCtxUser().getUserId());
		backup.setUpdTime(new Date());
		commonService.save("Backup", backup);
		
		BackupMysql.backup(backup.getPath(), backup.getBackupName(), backup.getDbName());
		return list();
	}
	
	public String restore() throws Exception {
		
		//查询需恢复的数据记录
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("backupId", id);
		Backup backup= commonService.get(c, Backup.class);
		
		BackupMysql.restore(backup.getPath(), backup.getBackupName(), backup.getDbName());
		return list();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
