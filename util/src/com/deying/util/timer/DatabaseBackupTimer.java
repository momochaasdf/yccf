package com.deying.util.timer;

import java.util.Date;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.core.pojo.Backup;
import com.deying.core.pojo.user.ComDict;
import com.deying.util.annotation.AnnIService;
import com.deying.util.backupMysql.BackupMysql;
import com.deying.util.datawrapper.CriteriaWrapper;

/**
 * 数据库备份定时器，每天 23:45:00 执行
 */
public class DatabaseBackupTimer implements Timer{
	
	private static final Logger LOG = LoggerFactory.getLogger(DatabaseBackupTimer.class);

	@Resource
	protected AnnIService commonService;

	@Override
	public void execute() {
		LOG.info("=====定时任务开始=====");
		try {
			backup();
		} catch (Exception e) {
			LOG.error("定时任务失败.", e);
		}
		LOG.info("=====定时任务结束=====");
	}
	
	public void backup() throws Exception {
		
		//查询数据库备份情报
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("dictTypeCode", "database_backup");
		ComDict databaseBackup= commonService.get(c, ComDict.class);
		
		Backup backup = new Backup();
		backup.setDbName(databaseBackup.getInfo());
		backup.setPath(databaseBackup.getInfo2());
		backup.setBackupName(databaseBackup.getInfo() + new Date().getTime() + ".sql");
		backup.setCrtUid("sys");
		backup.setCrtTime(new Date());
		backup.setUpdUid("sys");
		backup.setUpdTime(new Date());
		commonService.save("Backup", backup);
		
		BackupMysql.backup(backup.getPath(), backup.getBackupName(), backup.getDbName());
	}

	public void setCommonService(AnnIService commonService) {
		this.commonService = commonService;
	}

}
