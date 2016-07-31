/*
Navicat MySQL Data Transfer

Source Server         : 【本地测试】- 127.0.0.1
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : yccf

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-08-01 01:47:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for com_backup
-- ----------------------------
DROP TABLE IF EXISTS `com_backup`;
CREATE TABLE `com_backup` (
  `BACKUP_ID` varchar(128) NOT NULL COMMENT '备份ID',
  `DB_NAME` varchar(100) NOT NULL COMMENT '数据库名字',
  `PATH` varchar(100) NOT NULL COMMENT '备份路径',
  `BACKUP_NAME` varchar(100) NOT NULL COMMENT '备份名字',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`BACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_backup
-- ----------------------------
INSERT INTO `com_backup` VALUES ('402880b255858c42015585f2c40b0001', 'yccf', 'c:/yccf/', 'yccf1466831127561.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-25 13:05:27', '402880e63cf62235013cf62b3f9e0036', '2016-06-25 13:05:27');
INSERT INTO `com_backup` VALUES ('402880b255858c42015585f324f30002', 'yccf', 'c:/yccf/', 'yccf1466831152370.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-25 13:05:52', '402880e63cf62235013cf62b3f9e0036', '2016-06-25 13:05:52');
INSERT INTO `com_backup` VALUES ('402880b25597a98b015597af5c7a0001', 'yccf', 'c:/yccf/', 'yccf1467128700025.sql', 'sys', '2016-06-28 23:45:00', 'sys', '2016-06-28 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b255a1f9a50155a1fc148c0001', 'yccf', 'c:/yccf/', 'yccf1467301500043.sql', 'sys', '2016-06-30 23:45:00', 'sys', '2016-06-30 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b255b67eef0155b69584ac0001', 'yccf', 'c:/yccf/', 'yccf1467647100071.sql', 'sys', '2016-07-04 23:45:00', 'sys', '2016-07-04 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b255bb356b0155bb369ca30001', 'yccf', 'c:/yccf/', 'yccf1467724766370.sql', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 21:19:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 21:19:26');
INSERT INTO `com_backup` VALUES ('402880b255bb6f130155bbbbe0a60009', 'yccf', 'c:/yccf/', 'yccf1467733500055.sql', 'sys', '2016-07-05 23:45:00', 'sys', '2016-07-05 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b355dfc40a0155dfc864810001', 'yccf', 'c:/yccf/', 'yccf1468338300032.sql', 'sys', '2016-07-12 23:45:00', 'sys', '2016-07-12 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b355ea11390155ea151c800001', 'yccf', 'c:/yccf/', 'yccf1468511100030.sql', 'sys', '2016-07-14 23:45:00', 'sys', '2016-07-14 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b355fe51240155feae8c96005b', 'yccf', 'c:/yccf/', 'yccf1468856700044.sql', 'sys', '2016-07-18 23:45:00', 'sys', '2016-07-18 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b356036b02015603d4e8930003', 'yccf', 'c:/yccf/', 'yccf1468943100049.sql', 'sys', '2016-07-19 23:45:00', 'sys', '2016-07-19 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b3563c672701563c7adc7b0002', 'yccf', 'c:/yccf/', 'yccf1469893500026.sql', 'sys', '2016-07-30 23:45:00', 'sys', '2016-07-30 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b356418997015641a139890001', 'yccf', 'c:/yccf/', 'yccf1469979900295.sql', 'sys', '2016-07-31 23:45:00', 'sys', '2016-07-31 23:45:00');
INSERT INTO `com_backup` VALUES ('402881e755206c0f0155206c62ee0001', 'yccf', 'c:/yccf/', 'yccf1465127822062.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 19:57:02', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 19:57:02');
INSERT INTO `com_backup` VALUES ('402881e755206c0f0155206cbd720002', 'yccf', 'c:/yccf/', 'yccf1465127845234.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 19:57:25', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 19:57:25');
INSERT INTO `com_backup` VALUES ('402881e755207552015520889bd80001', 'yccf', 'c:/yccf/', 'yccf1465129671640.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:27:51', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:27:51');
INSERT INTO `com_backup` VALUES ('402881e7552075520155208940270002', 'yccf', 'c:/yccf/', 'yccf1465129713703.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:28:33', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:28:33');
INSERT INTO `com_backup` VALUES ('402881e75520976e015520984e950001', 'yccf', 'c:/yccf/', 'yccf1465130700406.sql', 'sys', '2016-06-05 20:45:00', 'sys', '2016-06-05 20:45:00');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f70d10001', 'yccf', 'c:/yccf/', 'yccf1465131167953.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:47', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:47');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f770a0002', 'yccf', 'c:/yccf/', 'yccf1465131169546.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:49', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:49');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f7b9e0003', 'yccf', 'c:/yccf/', 'yccf1465131170718.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:50', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:50');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f80900004', 'yccf', 'c:/yccf/', 'yccf1465131171984.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:51', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:51');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f87950005', 'yccf', 'c:/yccf/', 'yccf1465131173781.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:53', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:53');
INSERT INTO `com_backup` VALUES ('402881e755209f060155209f91e50006', 'yccf', 'c:/yccf/', 'yccf1465131176421.sql', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:56', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 20:52:56');
INSERT INTO `com_backup` VALUES ('402881e7554f673b01554f9654cd0001', 'yccf', 'c:/yccf/', 'yccf1465919100109.sql', 'sys', '2016-06-14 23:45:00', 'sys', '2016-06-14 23:45:00');

-- ----------------------------
-- Table structure for com_dict
-- ----------------------------
DROP TABLE IF EXISTS `com_dict`;
CREATE TABLE `com_dict` (
  `DICT_ID` varchar(128) NOT NULL COMMENT '字典ID',
  `DICT_TYPE_CODE` varchar(50) NOT NULL COMMENT '字典类型编码',
  `DICT_CODE` varchar(100) NOT NULL COMMENT '字典编码',
  `DICT_NAME` varchar(100) NOT NULL COMMENT '字典名',
  `INFO` varchar(100) DEFAULT NULL COMMENT '备注',
  `INFO2` varchar(100) DEFAULT NULL COMMENT '备注',
  `SORT_NO` int(6) DEFAULT NULL COMMENT '排序',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`DICT_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`DICT_TYPE_CODE`,`DICT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_dict
-- ----------------------------
INSERT INTO `com_dict` VALUES ('1', 'company_code', '10000001', '总公司', null, null, '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('10', 'loan_type', '2', '先息后本', null, null, '2', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('11', 'rates', '1', '1.8', null, null, '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('12', 'rates', '2', '2.0', null, null, '2', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('13', 'financing_type', '1', '季度金', '3', '8', '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('14', 'financing_type', '2', '半年金', '6', '10', '2', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('15', 'financing_type', '3', '年年鑫', '12', '13.2', '3', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('16', 'financing_type', '4', '年年红', '12', '11.4', '4', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('17', 'financing_type', '5', '仪诚鑫', '24', '15', '5', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('18', 'financing_type', '6', '仪诚通', '3-24', '8-15', '6', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('19', 'bank_card_id', '1', '224235346576876978', null, null, '12', 'sys', '2013-06-04 13:27:00', '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:18:58');
INSERT INTO `com_dict` VALUES ('2', 'company_code', '10000002', '新集分公司', null, null, '2', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('20', 'database_backup', '1', '数据库备份路径', 'yccf', 'c:/yccf/', '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('23', 'punish_status', '0', '待审批', '待审批', null, null, null, null, null, null);
INSERT INTO `com_dict` VALUES ('24', 'punish_status', '1', '已审批', '已审批', null, null, null, null, null, null);
INSERT INTO `com_dict` VALUES ('25', 'punish_status', '2', '已罚款', '已罚款', null, null, null, null, null, null);
INSERT INTO `com_dict` VALUES ('3', 'department_code', '10001', '总经办', '10000001', null, '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('4', 'department_code', '10002', '行政部', '10000001', null, '2', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('402880b255a1f2f20155a1f4db190001', 'punch_apply_type', '1', '上班', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:37:06', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:37:06');
INSERT INTO `com_dict` VALUES ('402880b255a1f2f20155a1f51fc00002', 'punch_apply_type', '2', '下班', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:37:24', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:37:24');
INSERT INTO `com_dict` VALUES ('402880b255a1f2f20155a1f5b2360003', 'punch_apply_status', '0', '待审批', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:38:01', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:38:01');
INSERT INTO `com_dict` VALUES ('402880b255a1f2f20155a1f615e70004', 'punch_apply_status', '1', '已审批', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:38:27', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:38:27');
INSERT INTO `com_dict` VALUES ('402880b255aad8a50155aaed61e80002', 'goods_stock_status', '1', '正常', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 17:25:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 17:25:31');
INSERT INTO `com_dict` VALUES ('402880b255aad8a50155aaed8dee0003', 'goods_stock_status', '2', '预警', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 17:25:43', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 17:25:43');
INSERT INTO `com_dict` VALUES ('402880b255aaf16c0155ab2a37f60001', 'goods_used_status', '1', '申请中', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 18:31:58', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 18:32:25');
INSERT INTO `com_dict` VALUES ('402880b255aaf16c0155ab2aec600002', 'goods_used_status', '2', '申请成功', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 18:32:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 18:32:44');
INSERT INTO `com_dict` VALUES ('402880b255ab60300155ab6198fd0001', 'goods_purchase_status', '1', '申请中', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:32:27', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:32:27');
INSERT INTO `com_dict` VALUES ('402880b255ab60300155ab61dd200002', 'goods_purchase_status', '2', '批准', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:32:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:32:45');
INSERT INTO `com_dict` VALUES ('402880b255ab60300155ab621e410003', 'goods_purchase_status', '3', '采购成功', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:33:02', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:33:02');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb696af90002', 'collection_loan_type', '1', '本息同还', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:14:55', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:14:55');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb69a9cf0003', 'collection_loan_type', '2', '先息后本', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:15:12', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:15:12');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6baf620004', 'collection_loan_prepayment', '0', '未提前', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:17:24', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:17:24');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6bf4880005', 'collection_loan_prepayment', '1', '已提前还清', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:17:42', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:17:42');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6d19e50006', 'collection_loan_overdue', '0', '未逾期', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:18:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:18:57');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6d50330007', 'collection_loan_overdue', '1', '逾期', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:19:11', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:19:11');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6de5840008', 'collection_loan_status', '0', '未催收', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:19:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:19:49');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6e5dee0009', 'collection_loan_status', '1', '已催收', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:20:20', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:20:20');
INSERT INTO `com_dict` VALUES ('402880b255bb356b0155bb6e8e48000a', 'collection_loan_status', '2', '已还本月', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:20:32', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:20:32');
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0ca4690001', 'day_type', '1', '七天提醒', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:35:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:35:44');
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0cea2d0002', 'day_type', '2', '一天提醒', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:36:02', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:36:02');
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0d37a90003', 'day_type', '3', '年年红月月返提醒', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:36:22', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:36:22');
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0ef5d10004', 'financing_remind_status', '1', '提醒中', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:38:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:38:16');
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0f356a0005', 'financing_remind_status', '0', '废止', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:38:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:38:33');
INSERT INTO `com_dict` VALUES ('402880b3561c0ed501561c1b64540001', 'statistic_type', '1', '月', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:52:52', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:52:52');
INSERT INTO `com_dict` VALUES ('402880b3561c0ed501561c1b917a0002', 'statistic_type', '2', '季度', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:03', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:03');
INSERT INTO `com_dict` VALUES ('402880b3561c0ed501561c1bbbfb0003', 'statistic_type', '3', '半年', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:14');
INSERT INTO `com_dict` VALUES ('402880b3561c0ed501561c1c3f9d0004', 'statistic_type', '4', '年', null, null, '4', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 16:53:48');
INSERT INTO `com_dict` VALUES ('402880b3563ca73001563cac61390002', 'out_apply_status', '0', '待审批', null, null, '0', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 00:39:05', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 00:39:05');
INSERT INTO `com_dict` VALUES ('402880b3563ca73001563cac96670003', 'out_apply_status', '1', '已审批', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 00:39:18', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 00:39:18');
INSERT INTO `com_dict` VALUES ('402880b3563d1ead01563d2f51160001', 'user_salary_status', '0', '未发放', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:02:06', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:02:06');
INSERT INTO `com_dict` VALUES ('402880b3563d1ead01563d2f7f160002', 'user_salary_status', '1', '已发放', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:02:18', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:02:18');
INSERT INTO `com_dict` VALUES ('402880b3563d933001563d9ad9e10002', 'punished_apply_status', '0', '待审批', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:59:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:59:33');
INSERT INTO `com_dict` VALUES ('402880b3563d933001563d9b15810003', 'punished_apply_status', '1', '已审批', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:59:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:59:48');
INSERT INTO `com_dict` VALUES ('402880b3563d933001563d9b61530004', 'punished_apply_status', '2', '已罚款', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 05:00:08', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 05:00:08');
INSERT INTO `com_dict` VALUES ('402880b3564179cf0156417c8d250002', 'loan_apply_status', '0', '待审批', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:04:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:04:56');
INSERT INTO `com_dict` VALUES ('402880b3564179cf0156417ccf2c0003', 'loan_apply_status', '1', '审核中', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:13', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:13');
INSERT INTO `com_dict` VALUES ('402880b3564179cf0156417d04880004', 'loan_apply_status', '2', '通过', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:27', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:27');
INSERT INTO `com_dict` VALUES ('402880b3564179cf0156417d33900005', 'loan_apply_status', '3', '拒绝', null, null, '4', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:39', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:05:39');
INSERT INTO `com_dict` VALUES ('40288133552991ff01552998af170001', 'card_type', '1', '身份证', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:42:00', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:42:00');
INSERT INTO `com_dict` VALUES ('40288133552991ff0155299922790002', 'card_type', '2', '户口本', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:42:29', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:42:29');
INSERT INTO `com_dict` VALUES ('4028919355a117210155a12b9b760001', 'leave_apply_status', '0', '待审批', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 19:57:17', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 19:57:17');
INSERT INTO `com_dict` VALUES ('4028919355a117210155a12be2eb0002', 'leave_apply_status', '1', '已审批', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 19:57:35', '402880e63cf62235013cf62b3f9e0036', '2016-06-30 19:57:35');
INSERT INTO `com_dict` VALUES ('5', 'department_code', '10003', '理财部', '10000001', null, '3', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('6', 'department_code', '10004', '借款部', '10000001', null, '4', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('7', 'department_code', '10005', '财务部', '10000001', null, '5', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('8', 'department_code', '10006', '运营部', '10000001', null, '6', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');
INSERT INTO `com_dict` VALUES ('9', 'loan_type', '1', '本息同还', null, null, '1', 'sys', '2013-06-04 13:27:00', 'sys', '2013-06-04 13:27:00');

-- ----------------------------
-- Table structure for com_function
-- ----------------------------
DROP TABLE IF EXISTS `com_function`;
CREATE TABLE `com_function` (
  `FUNCTION_ID` varchar(128) NOT NULL COMMENT '功能ID',
  `FUNCTION_NAME` varchar(100) NOT NULL COMMENT '功能名',
  `PARENT_FUNCTION_ID` varchar(128) DEFAULT NULL COMMENT '父功能ID',
  `TREE_CODE` varchar(200) DEFAULT NULL COMMENT '层级（001-001-001,001-001-002）',
  `URL` varchar(100) NOT NULL COMMENT '访问路径',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `SORT_NO` int(10) DEFAULT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FUNCTION_ID`),
  UNIQUE KEY `IND_U_COM_FUNCTION_01` (`TREE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_function
-- ----------------------------
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4a93840001', '新增', '402881823d586374013d587a486c0040', 'dic_add', '%', '字典新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:55:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:55:48');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4b14940002', '修改', '402881823d586374013d587a486c0040', 'dic_edit', '%', '字典修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:56:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:56:21');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4b8d940003', '删除', '402881823d586374013d587a486c0040', 'dic_del', '%', '字典删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:56:52', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:56:52');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4bf39b0004', '查看', '402881823d586374013d587a486c0040', 'dic_load', '%', '字典查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:57:18', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:57:18');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4dbf51005f', '新增', '402881823d586374013d587a486c0041', 'function_add', '%', '资源新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:59:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:59:16');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4e4ff90060', '修改', '402881823d586374013d587a486c0041', 'function_edit', '%', '资源修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:59:53', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 21:59:53');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4eb76c0061', '删除', '402881823d586374013d587a486c0041', 'function_del', '%', '资源删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:00:19', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:00:19');
INSERT INTO `com_function` VALUES ('402880b355fe47fa0155fe4f1e6b0062', '查看', '402881823d586374013d587a486c0041', 'function_load', '%', '资源查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:00:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:00:45');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5276f00001', '数据备份', '402881823d586374013d587a486c0042', 'backup_data', '%', '数据备份', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:04:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:04:25');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5311830002', '备份恢复', '402881823d586374013d587a486c0042', 'backup_recovery', '%', '备份恢复', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:05:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:05:04');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5533070003', '新增', '402881823d586374013d587a486c0045', 'user_add', '%', '用户新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:07:24', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:07:24');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5580130004', '修改', '402881823d586374013d587a486c0045', 'user_edit', '%', '用户修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:07:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:07:44');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe566e000005', '删除', '402881823d586374013d587a486c0045', 'user_del', '%', '用户删除', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:08:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:08:45');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe56ba8e0006', '查看', '402881823d586374013d587a486c0045', 'user_load', '%', '用户查看', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:09:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:09:04');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5729b70007', '重置密码', '402881823d586374013d587a486c0045', 'user_reset_pwd', '%', '重置密码', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:09:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:09:33');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe579f930008', '关联角色', '402881823d586374013d587a486c0045', 'user_role_rel', '%', '关联角色', '6', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:10:03', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:10:03');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5845520009', '新增', '402881823d586374013d587a486c0046', 'role_add', '%', '角色新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:10:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:10:45');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe58b605000a', '修改', '402881823d586374013d587a486c0046', 'role_edit', '%', '角色修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:11:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:11:14');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe592c35000b', '删除', '402881823d586374013d587a486c0046', 'role_del', '%', '角色删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:11:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:11:44');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe59a6df000c', '查看', '402881823d586374013d587a486c0046', 'role_load', '%', '角色查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:12:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:12:16');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5a1c90000d', '授权', '402881823d586374013d587a486c0046', 'role_authority', '%', '授权', '5', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:12:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:12:46');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5aad22000e', '新增', '402881823d586374013d587a486c0048', 'financing_add', '%', '新增理财产品', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:13:23', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:13:23');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5affca000f', '修改', '402881823d586374013d587a486c0048', 'financing_edit', '%', '修改产品', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:13:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:13:44');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5b54ee0010', '删除', '402881823d586374013d587a486c0048', 'financing_del', '%', '删除理财产品', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:14:06', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:14:06');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5bbad30011', '查看', '402881823d586374013d587a486c0048', 'financing_load', '%', '查看理财产品', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:14:32', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:14:32');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5df37f0012', '查看', '402881823d586374013d587a486c0988', 'user_salary_load', '%', '查看工资', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:16:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:16:57');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5eb6990013', '新增', '402881823d586374013d587a486c0989', 'leave_apply_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:17:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:17:47');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5f38e20014', '查看', '402881823d586374013d587a486c0989', 'leave_apply_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:18:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:18:21');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe5f9d1c0015', '修改', '402881823d586374013d587a486c0989', 'leave_apply_edit', '%', '修改', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:18:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:18:46');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6014210016', '删除', '402881823d586374013d587a486c0989', 'leave_apply_del', '%', '删除', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:19:17', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:19:17');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe60db940017', '新增', '402881823d586374013d587a486d0026', 'out_apply_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:20:08', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:20:08');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6175760018', '修改', '402881823d586374013d587a486d0026', 'out_apply_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:20:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:20:47');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe61c9ce0019', '删除', '402881823d586374013d587a486d0026', 'out_apply_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:21:09', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:21:09');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe621f6a001a', '查看', '402881823d586374013d587a486d0026', 'out_apply_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:21:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:21:31');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6357b2001b', '新增', '402881823d586374013d587a486d0027', 'punch_apply_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:22:51', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:22:51');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe63bee2001c', '修改', '402881823d586374013d587a486d0027', 'punch_apply_edit', '%', '修改', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:23:17', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:23:17');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe642e09001d', '删除', '402881823d586374013d587a486d0027', 'punch_apply_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:23:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:23:46');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6483f2001e', '查看', '402881823d586374013d587a486d0027', 'punch_apply_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:24:08', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:24:08');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe65edf7001f', '密码重置', '402881823d586374013d587a487c0001', 'password_reset', '%', '密码重置', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:25:40', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:25:40');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe675e120020', '查看', '402881823d586374013d587a487c0004', 'reward_apply_load', '%', '查看奖励信息', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:27:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:27:15');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe67fcdd0021', '查看', '402881823d586374013d587a487c0005', 'punish_apply_load', '%', '查看惩罚信息', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:27:55', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:27:55');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe69d8f50022', '新增', '402881823d586374013d587a516c0002', 'reward_add', '%', '新增奖励', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:29:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:29:57');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6a278a0023', '修改', '402881823d586374013d587a516c0002', 'reward_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:30:17', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:30:17');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6bc94f0024', '删除', '402881823d586374013d587a516c0002', 'reward_del', '%', '删除奖励', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:32:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:32:04');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6c408b0025', '查看', '402881823d586374013d587a516c0002', 'reward_load', '%', '查看奖励信息', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:32:35', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:32:35');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6d7aca0026', '新增', '402881823d586374013d587a516c0003', 'punish_add', '%', '新增惩罚信息', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:33:55', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:33:55');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6e22a90027', '修改', '402881823d586374013d587a516c0003', 'punish_edit', '%', '修改惩罚信息', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:34:38', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:34:38');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6e8b550028', '删除', '402881823d586374013d587a516c0003', 'punish_del', '%', '删除惩罚信息', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:35:05', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:35:05');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6eed810029', '查看', '402881823d586374013d587a516c0003', 'punish_load', '%', '查看惩罚信息', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:35:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:35:30');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe6ff0a3002a', '新增', '402881823d586374013d587a516c0004', 'notice_add', '%', '新增通知', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:36:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:36:36');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe706a4f002b', '修改', '402881823d586374013d587a516c0004', 'notice_edit', '%', '修改通知', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:37:08', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:37:08');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe710f83002c', '删除', '402881823d586374013d587a516c0004', 'notice_del', '%', '删除通知', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:37:50', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:38:34');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe716df1002d', '查看', '402881823d586374013d587a516c0004', 'notice_load', '%', '查看通知', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:38:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:38:14');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe742991002e', '新增', '402881823d586374013d587a516d0002', 'salary_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:41:13', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:41:13');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe74fb15002f', '修改', '402881823d586374013d587a516d0002', 'salary_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:07', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:07');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe755ce40030', '删除', '402881823d586374013d587a516d0002', 'salary_del', '%', '删除工资', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:32', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:32');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe75bf4f0031', '查看', '402881823d586374013d587a516d0002', 'salary_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:42:57');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7723210032', '新增', '402881823d586374013d587a516d0003', 'goods_stock_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:44:28', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:44:28');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7782300033', '修改', '402881823d586374013d587a516d0003', 'goods_stock_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:44:52');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe77da740034', '删除', '402881823d586374013d587a516d0003', 'goods_stock_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:45:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:45:15');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe78bb640035', '查看', '402881823d586374013d587a516d0003', 'goods_stock_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:46:13', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:46:13');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7947580036', '新增', '402881823d586374013d587a516d0004', 'goods_used_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:46:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:46:48');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe79bd030037', '修改', '402881823d586374013d587a516d0004', 'goods_used_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:47:19', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:47:19');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7a67d50038', '删除', '402881823d586374013d587a516d0004', 'goods_used_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:48:02', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:48:02');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7aeace0039', '查看', '402881823d586374013d587a516d0004', 'goods_used_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:48:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:48:36');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7e2e9a003a', '新增', '402881823d586374013d587a516d0009', 'goods_purchase_add', '%', '新增采购申请', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:10', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:10');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7e83e0003b', '修改', '402881823d586374013d587a516d0009', 'goods_purchase_edit', '%', '2', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:32', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:32');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7ee393003c', '删除', '402881823d586374013d587a516d0009', 'goods_purchase_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:52:56');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe7f301c003d', '查看', '402881823d586374013d587a516d0009', 'goods_purchase_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:53:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:53:16');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe824cdf003e', '导入节假日', '402881854196d7cb0141972de0ae0001', 'holiday_import', '%', '导入节假日', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:56:40', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:56:40');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe84f03a003f', '新增', '40288185419737c50141973bdc4b0001', 'financing_customer_add', '%', '新增客户', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:59:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 22:59:33');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8566cb0040', '修改', '40288185419737c50141973bdc4b0001', 'financing_customer_edit', '%', '修改客户资料', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:00:03', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:00:03');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe85d00e0041', '删除', '40288185419737c50141973bdc4b0001', 'financing_customer_del', '%', '删除客户资料', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:00:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:00:30');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe864dcd0042', '查看', '40288185419737c50141973bdc4b0001', 'financing_customer_load', '%', '查看客户资料', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:01:02', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:01:02');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8780800043', '新增', '402881854202cbd3014202cca11c0001', 'loan_customer_add', '%', '新增客户', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:02:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:02:30');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe88387c0044', '修改', '402881854202cbd3014202cca11c0001', 'loan_customer_edit', '%', '修改客户资料', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:03:08', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:03:08');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe89871d0045', '删除', '402881854202cbd3014202cca11c0001', 'loan_customer_del', '%', '删除客户资料', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:04:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:04:33');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe89de530046', '查看', '402881854202cbd3014202cca11c0001', 'loan_customer_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:04:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:04:56');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8bfdf10047', '新增', '40288185422284130142228877530004', 'financing_apply_add', '%', '新增理财协议', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:07:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:07:15');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8c75dc0048', '修改', '40288185422284130142228877530004', 'financing_apply_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:07:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:07:46');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8cc4cd0049', '删除', '40288185422284130142228877530004', 'financing_apply_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:08:06', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:08:06');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8d1476004a', '查看', '40288185422284130142228877530004', 'financing_apply_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:08:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:08:26');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8dbc59004b', '新增', '402881e44ff8e878014ff8ec30880001', 'loan_apply_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:09', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:09');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8e2409004c', '修改', '402881e44ff8e878014ff8ec30880001', 'loan_apply_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:36');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8e6972004d', '删除', '402881e44ff8e878014ff8ec30880001', 'loan_apply_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:53', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:09:53');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe8eb7ba004e', '查看', '402881e44ff8e878014ff8ec30880001', 'loan_apply_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:10:13', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:10:13');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe91a61d004f', '新增', '4ae6ee4d43242e03014324301a880004', 'loan_collection_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:13:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:13:26');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe9203720050', '修改', '4ae6ee4d43242e03014324301a880004', 'loan_collection_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:13:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:13:49');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe938ce00051', '删除', '4ae6ee4d43242e03014324301a880004', 'loan_collection_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:15:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:15:30');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe93e6500052', '查看', '4ae6ee4d43242e03014324301a880004', 'loan_collection_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:15:53', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:15:53');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe9755790054', '查看客户资料', '402881e44ff8e878014ff8f9677e0004', 'financing_customer_list', '%', '查看', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:19:38', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:19:38');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe99da080055', '查看', '402881e741ed11c10141ed329c470004', 'financing_income_load', '%', '查看收益', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:22:23', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:22:23');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fe9fd1c60056', '查看', '402881e741ed11c10141ed51e55f0077', 'loan_customer_list', '%', '查看借款客户资料', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:28:54', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:28:54');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fea0c8740057', '新增', '402881e741ed54340141ed57d7d50001', 'loan_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:29:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:29:57');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fea132b50058', '修改', '402881e741ed54340141ed57d7d50001', 'loan_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:30:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:30:25');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fea1b0030059', '删除', '402881e741ed54340141ed57d7d50001', 'loan_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:30:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:30:57');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fea260b5005a', '查看', '402881e741ed54340141ed57d7d50001', 'loan_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:31:42', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:31:42');
INSERT INTO `com_function` VALUES ('402880b355fe51240155feb54978005c', '新增', '402881e741eea33c0141eea445460001', 'loan_back_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:52:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:52:21');
INSERT INTO `com_function` VALUES ('402880b355fe51240155feb5a889005d', '修改', '402881e741eea33c0141eea445460001', 'loan_back_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:52:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:52:45');
INSERT INTO `com_function` VALUES ('402880b355fe51240155feb6216a005e', '删除', '402881e741eea33c0141eea445460001', 'loan_back_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:53:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:53:16');
INSERT INTO `com_function` VALUES ('402880b355fe51240155feb67250005f', '查看', '402881e741eea33c0141eea445460001', 'loan_back_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:53:37', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 23:53:37');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec4e17d0060', '修改', '402881f340375d910140376901040001', 'leave_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:09:23', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:09:23');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec5353c0061', '查看', '402881f340375d910140376901040001', 'leave_load', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:09:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:09:45');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec5d2890062', '修改', '402881f340852c4d01408532b0e30001', 'out_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:10:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:10:25');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec61be10063', '查看', '402881f340852c4d01408532b0e30001', 'out_load', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:10:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:10:44');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec68b8b0064', '修改', '402881f340b913cf0140b916f75c0001', 'punch_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:11:12', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:11:12');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec6dcca0065', '查看', '402881f340b913cf0140b916f75c0001', 'punch_load', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:11:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:11:33');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec7e24b0066', '修改', '402881f34115e0af014115e24a850001', 'salary_check', '%', '工资审核', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:12:40', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:12:40');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fec8bff90067', '查看', '402881f34115e0af014115e24a850001', 'salary_load_check', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:13:37', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:13:37');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fecebc4f0068', '修改', '402881ff410af46001410af74bc80001', 'goods_purchase_check', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:20:09', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:20:09');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fecf3f350069', '修改', '402881ff410af46001410afdd7040004', 'goods_used_check', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:20:42', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:20:42');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fecfc512006a', '修改', '402888e4515b76a401515b823d450003', 'loan_apply_check', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:21:17', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:21:17');
INSERT INTO `com_function` VALUES ('402880b355fe51240155fed05f94006b', '查看', '4ae6ee4d42c6d6620142c6e452c60007', 'notice_list', '%', '查看', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:21:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 00:21:56');
INSERT INTO `com_function` VALUES ('402880b35616f129015616fc1eda0001', '查询', '402881823d586374013d587a486c0142', 'employee_load', '%', '查看', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:00:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:00:36');
INSERT INTO `com_function` VALUES ('402880b35616f129015616fcee7e0002', '修改', '402881823d586374013d587a516c0001', 'hr_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:01:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:01:30');
INSERT INTO `com_function` VALUES ('402880b35616f129015616fd53690003', '新增', '402881823d586374013d587a516c0001', 'hr_add', '%', '新增', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:01:55', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:01:55');
INSERT INTO `com_function` VALUES ('402880b35616f129015616fec1d20004', '查看', '402881823d586374013d587a516c0001', 'hr_load', '%', '查看', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:03:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:03:29');
INSERT INTO `com_function` VALUES ('402880b35616f129015616ff1e990005', '删除', '402881823d586374013d587a516c0001', 'hr_del', '%', '删除', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:03:53', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 17:03:53');
INSERT INTO `com_function` VALUES ('402880b35619346b015619373e490001', '导入考勤信息', '402881823d586374013d587a487wfwef', 'attendance_import', '%', '导入考勤信息', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:24:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:24:25');
INSERT INTO `com_function` VALUES ('402880b35619346b015619380a7a0002', '导出excel数据', '402881823d586374013d587a487wfwef', 'attendance_export', '%', '导出excel数据', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:25:18', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:25:18');
INSERT INTO `com_function` VALUES ('402880b3561c67b901561c84dfa00002', '修改', '402881823d586374013d587a486c0142', 'employee_edit', '%', '修改个人资料', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 18:48:05', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 18:48:05');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d7ea6370003', '奖励审核', '402881f340ed52700140ed56b1e20001', '003-001-010', '/core/reward/ComM_list.do?type=2', '奖励审核', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:28:45', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:28:45');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d7f5a0c0004', '审核', '402880b3563d6e4301563d7ea6370003', 'reward_check', '%', '审核', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:29:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:29:31');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d7f9d1d0005', '查看', '402880b3563d6e4301563d7ea6370003', 'reward_check_load', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:29:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:29:48');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d80973d0006', '惩罚审核', '402881f340ed52700140ed56b1e20001', '001-001-090', '/core/punished/ComM_list.do?type=2', '惩罚审核', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:30:52', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:30:52');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d813cce0007', '审核', '402880b3563d6e4301563d80973d0006', 'punish_check', '%', '审核', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:31:35', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:31:35');
INSERT INTO `com_function` VALUES ('402880b3563d6e4301563d81ade50008', '查看', '402880b3563d6e4301563d80973d0006', 'punish_load_check', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:32:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:32:04');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0037', '系统中心', null, '001', '#', '', '1', '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0038', '系统管理', '402881823d586374013d587a486c0037', '001-001', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0040', '字典管理', '402881823d586374013d587a486c0038', '001-001-001', '/core/dict/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0041', '资源管理', '402881823d586374013d587a486c0038', '001-001-002', '/core/function/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0042', '备份管理', '402881823d586374013d587a486c0038', '001-001-003', '/backup/backup_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0044', '用户管理', '402881823d586374013d587a486c0037', '001-002', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0045', '用户管理', '402881823d586374013d587a486c0044', '001-002-001', '/core/user/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0046', '角色管理', '402881823d586374013d587a486c0044', '001-002-002', '/core/role/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0047', '产品管理', '402881823d586374013d587a486c0037', '001-003', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0048', '理财产品管理', '402881823d586374013d587a486c0047', '001-003-001', '/core/financing/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0070', '个人中心', null, '002', '#', '', '2', '', '402881ef2edb923e012edbfb5f1a0002', '2015-06-30 09:57:07', '402880e63cf62235013cf62b3f9e0036', '2015-06-30 09:57:09');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0102', '个人管理', '402881823d586374013d587a486c0070', '002-001', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2015-06-30 10:06:30', '402880e63cf62235013cf62b3f9e0036', '2015-06-30 10:06:34');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0142', '资料管理', '402881823d586374013d587a486c0102', '002-001-001', '/core/user/ComM_list.do?type=1', null, null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0988', '工资管理', '402881823d586374013d587a486c0102', '002-001-002', '/core/userSalary/ComM_list.do?type=1', '', null, '', '402881823d586374013d587a516c0001', '2015-09-16 15:54:44', '402881823d586374013d587a516c0001', '2015-09-16 15:54:52');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486c0989', '请假管理', '402881823d586374013d587a486c0102', '002-001-003', '/core/leaveApply/ComM_list.do?type=1', '', null, '', '402880e93d80c483013d811e7a3b0063', '2015-09-16 16:03:30', '402880e93d80c483013d811e7a3b0063', '2015-09-16 16:03:35');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486d0026', '外出管理', '402881823d586374013d587a486c0102', '002-001-004', '/core/outApply/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-08 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486d0027', '忘打卡管理', '402881823d586374013d587a486c0102', '002-001-005', '/core/punchApply/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-08 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a486d0028', '账号管理', '402881823d586374013d587a486c0070', '002-002', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-08 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0001', '密码重置', '402881823d586374013d587a486d0028', '002-002-001', '/core/user/resetPwd_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-12 13:17:47');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0002', '密码修改', '402881823d586374013d587a486d0028', '002-002-002', '/core/user/changePwd.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0003', '奖惩管理', '402881823d586374013d587a486c0070', '002-003', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0004', '奖励信息', '402881823d586374013d587a487c0003', '002-003-001', '/core/reward/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:42:54');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0005', '惩罚信息', '402881823d586374013d587a487c0003', '002-003-002', '/core/punished/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0006', '行政中心', null, '003', '#', '', '3', '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487c0007', '人事管理', '402881823d586374013d587a487c0006', '003-001', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2015-07-23 14:53:52', '402880e63cf62235013cf62b3f9e0036', '2015-07-23 14:54:07');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a487wfwef', '考勤管理', '402881823d586374013d587a487c0007', '003-001-001', '/attendance/attendance_list.do', '', null, '', '402880e93d80c483013d811e7a3b0063', '2015-09-25 12:35:44', '402880e93d80c483013d811e7a3b0063', '2015-09-25 12:35:49');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516c0001', '员工资料管理', '402881823d586374013d587a487c0007', '003-001-002', '/core/user/ComM_list.do?type=2', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516c0002', '奖励管理', '402881823d586374013d587a487c0007', '003-001-003', '/core/reward/ComM_list.do?type=0', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516c0003', '惩罚管理', '402881823d586374013d587a487c0007', '003-001-004', '/core/punished/ComM_list.do?type=0', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516c0004', '通知管理', '402881823d586374013d587a487c0007', '003-001-005', '/notice/notice_list.do', null, null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-01 09:04:40');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516d0001', '内勤管理', '402881823d586374013d587a487c0006', '003-002', '#', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-11 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516d0002', '工资管理', '402881823d586374013d587a516d0001', '003-002-001', '/core/userSalary/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516d0003', '采购库存管理', '402881823d586374013d587a516d0001', '003-002-002', '/core/goodsStock/ComM_list.do', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-03-29 11:37:27');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516d0004', '采购使用管理', '402881823d586374013d587a516d0001', '003-002-003', '/core/goodsUsed/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-01 09:04:40');
INSERT INTO `com_function` VALUES ('402881823d586374013d587a516d0009', '采购申请管理', '402881823d586374013d587a516d0001', '003-002-008', '/core/goodsPurchase/ComM_list.do?type=1', '', null, '', '402881ef2edb923e012edbfb5f1a0002', '2013-03-29 16:04:01', '402880e63cf62235013cf62b3f9e0036', '2013-08-01 09:04:40');
INSERT INTO `com_function` VALUES ('402881854196d7cb0141972de0ae0001', '节假日管理', '402881823d586374013d587a516d0001', '003-002-004', '/holiday/holiday_list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:27:48', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:27:48');
INSERT INTO `com_function` VALUES ('402881854196d7cb0141972de0ae0002', '节假日提醒管理', '402881823d586374013d587a516d0001', '003-002-005', '/holidayRemind/holidayRemind_list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:27:48', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:27:48');
INSERT INTO `com_function` VALUES ('402881854197327401419735ceba0002', '运营管理', '402881823d586374013d587a487c0006', '003-003', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:36:27', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:38:11');
INSERT INTO `com_function` VALUES ('40288185419737c50141973bdc4b0001', '理财客户资料管理', '402881854197327401419735ceba0002', '003-003-001', '/customer/financing/list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-08 16:43:04', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:37:05');
INSERT INTO `com_function` VALUES ('402881854202cbd3014202cca11c0001', '借款客户资料管理', '402881854197327401419735ceba0002', '003-003-002', '/customer/loan/list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-29 14:00:34', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 13:00:01');
INSERT INTO `com_function` VALUES ('40288185422284130142228877530004', '理财协议管理', '402881854197327401419735ceba0002', '003-003-003', '/core/financingApply/ComM_list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-11-04 17:53:58', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 14:36:03');
INSERT INTO `com_function` VALUES ('402881e44ff8e878014ff8ec30880001', '借款协议管理', '402881854197327401419735ceba0002', '003-003-004', '/core/loanApply/ComM_list.do?type=0', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:37:52', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:37:52');
INSERT INTO `com_function` VALUES ('402881e44ff8e878014ff8f5a73e0002', '理财中心', null, '004', '#', '', '4', '', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:48:12', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:48:12');
INSERT INTO `com_function` VALUES ('402881e44ff8e878014ff8f7b3b60003', '理财管理', '402881e44ff8e878014ff8f5a73e0002', '004-001', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:50:27', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:50:27');
INSERT INTO `com_function` VALUES ('402881e44ff8e878014ff8f9677e0004', '理财客户资料', '402881e44ff8e878014ff8f7b3b60003', '004-001-001', '/customer/financing/list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:52:18', '402880e63cf62235013cf62b3f9e0036', '2015-09-23 14:52:18');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed3181ee0003', '理财收益管理', '402881e44ff8e878014ff8f5a73e0002', '004-004', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:19:06', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:19:06');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed329c470004', '理财收益管理', '402881e741ed11c10141ed3181ee0003', '004-004-001', '/core/financingApply/ComM_list.do?type=1', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:20:19', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 11:04:19');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed3435f20005', '理财七天到期提醒', '402881e741ed11c10141ed3181ee0003', '004-004-002', '/financingRemind/financingRemind_list.do?dayType=1', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:22:03', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 14:42:05');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed35bcd10006', '理财一天到期提醒', '402881e741ed11c10141ed3181ee0003', '004-004-003', '/financingRemind/financingRemind_list.do?dayType=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:23:43', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 16:33:13');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4639d3006f', '年年红管理', '402881e44ff8e878014ff8f5a73e0002', '004-005', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:41:44', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 10:49:37');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4780f90070', '年年红订单管理', '402881e741ed11c10141ed4639d3006f', '004-005-001', '/core/financingApply/ComM_list.do?type=4', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:43:08', '402880e63cf62235013cf62b3f9e0036', '2013-11-05 16:25:35');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4a159e0071', '年年红返还明细', '402881e741ed11c10141ed4639d3006f', '004-005-002', '/financingNnhDetail/financingNnhDetail_list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:45:57', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:45:57');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4ad5d10072', '年年红月月返提醒', '402881e741ed11c10141ed4639d3006f', '004-005-003', '/financingRemind/financingRemind_list.do?type=4&dayType=3', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:46:46', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:46:46');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4d794b0073', '年年红七天到期提醒', '402881e741ed11c10141ed4639d3006f', '004-005-004', '/financingRemind/financingRemind_list.do?type=4&dayType=1', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:49:39', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:49:45');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed4fa88f0074', '年年红一天到期提醒', '402881e741ed11c10141ed4639d3006f', '004-005-005', '/financingRemind/financingRemind_list.do?type=4&dayType=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:52:02', '402880e63cf62235013cf62b3f9e0036', '2013-11-05 16:25:56');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed5038c90075', '借款中心', null, '005', '#', '', '5', '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:52:39', '402880e63cf62235013cf62b3f9e0036', '2013-11-05 16:26:08');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed5162830076', '借款管理', '402881e741ed11c10141ed5038c90075', '005-001', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:53:55', '402880e63cf62235013cf62b3f9e0036', '2013-11-05 17:09:31');
INSERT INTO `com_function` VALUES ('402881e741ed11c10141ed51e55f0077', '借款客户资料', '402881e741ed11c10141ed5162830076', '005-001-001', '/customer/loan/list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:54:29', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 09:54:29');
INSERT INTO `com_function` VALUES ('402881e741ed54340141ed57d7d50001', '借款申请', '402881e741ed11c10141ed5162830076', '005-001-002', '/core/loanApply/ComM_list.do?type=1', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 10:00:59', '402880e93d80c483013d811e7a3b0063', '2014-01-16 17:54:26');
INSERT INTO `com_function` VALUES ('402881e741ed54340141ed59c6760003', '借款明细管理', '402881e741ed11c10141ed5038c90075', '005-002', '#', null, null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 10:03:05', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 10:03:05');
INSERT INTO `com_function` VALUES ('402881e741eea33c0141eea445460001', '借款还款', '402881e741ed54340141ed59c6760003', '005-002-001', '/collection/loan/list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 16:04:04', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 16:04:04');
INSERT INTO `com_function` VALUES ('402881f04ebf2964014ebf2c02ab0002', '审核中心', null, '006', '#', '', '6', '', '402880e63cf62235013cf62b3f9e0036', '2015-07-24 16:26:49', '402880e63cf62235013cf62b3f9e0036', '2015-07-24 16:26:49');
INSERT INTO `com_function` VALUES ('402881f33f79c206013f79da444a0001', '审核管理', '402881f04ebf2964014ebf2c02ab0002', '006-001', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-06-25 13:41:54', '402880e63cf62235013cf62b3f9e0036', '2013-06-25 14:30:05');
INSERT INTO `com_function` VALUES ('402881f340375d910140376901040001', '请假审核', '402881f33f79c206013f79da444a0001', '006-001-001', '/core/leaveApply/ComM_list.do?type=2', null, null, '', '402880e63cf62235013cf62b3f9e0036', '2013-08-01 09:06:03', '402880e63cf62235013cf62b3f9e0036', '2013-08-01 09:06:14');
INSERT INTO `com_function` VALUES ('402881f340852c4d01408532b0e30001', '外出审核', '402881f33f79c206013f79da444a0001', '006-001-002', '/core/outApply/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-08-16 11:37:06', '402880e63cf62235013cf62b3f9e0036', '2013-08-16 11:43:02');
INSERT INTO `com_function` VALUES ('402881f340b913cf0140b916f75c0001', '忘打卡审核', '402881f33f79c206013f79da444a0001', '006-001-003', '/core/punchApply/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-08-26 13:27:04', '402880e63cf62235013cf62b3f9e0036', '2013-08-26 13:29:06');
INSERT INTO `com_function` VALUES ('402881f340ed52700140ed56b1e20001', '内勤审核管理', '402881f04ebf2964014ebf2c02ab0002', '006-002', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-09-05 16:56:56', '402880e63cf62235013cf62b3f9e0036', '2013-09-05 16:57:05');
INSERT INTO `com_function` VALUES ('402881f34115e0af014115e24a850001', '工资审核', '402881f340ed52700140ed56b1e20001', '006-002-001', '/core/userSalary/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-09-13 13:54:13', '402880e63cf62235013cf62b3f9e0036', '2013-09-13 13:56:18');
INSERT INTO `com_function` VALUES ('402881ff410af46001410af74bc80001', '采购申请审核', '402881f340ed52700140ed56b1e20001', '006-002-002', '/core/goodsPurchase/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:01:20', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:02:16');
INSERT INTO `com_function` VALUES ('402881ff410af46001410afdd7040004', '采购使用审核', '402881f340ed52700140ed56b1e20001', '006-002-003', '/core/goodsUsed/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:08:29', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:08:29');
INSERT INTO `com_function` VALUES ('402881ff410af46001410afe6a6a0005', '借款审核管理', '402881f04ebf2964014ebf2c02ab0002', '006-003', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:09:07', '402880e63cf62235013cf62b3f9e0036', '2013-09-11 11:09:07');
INSERT INTO `com_function` VALUES ('402888e4515b76a401515b823d450003', '借款审核', '402881ff410af46001410afe6a6a0005', '006-003-001', '/core/loanApply/ComM_list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2015-12-01 11:07:20', '402880e63cf62235013cf62b3f9e0036', '2015-12-01 11:07:20');
INSERT INTO `com_function` VALUES ('402888e45166367f01516639353f0002', '统计中心', null, '007', '#', '', '7', '', '402880e63cf62235013cf62b3f9e0036', '2015-12-03 13:03:23', '402880e63cf62235013cf62b3f9e0036', '2015-12-03 13:03:23');
INSERT INTO `com_function` VALUES ('4ae6ee4d425b3c2c01425e57be550001', '统计管理', '402888e45166367f01516639353f0002', '007-001', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-11-16 08:37:57', '402880e63cf62235013cf62b3f9e0036', '2013-11-16 08:37:57');
INSERT INTO `com_function` VALUES ('4ae6ee4d42c6d6620142c6e1d3910004', '理财业绩统计', '4ae6ee4d425b3c2c01425e57be550001', '007-001-001', '/financingStatistic/financingStatistic_list.do', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:49:17', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:49:26');
INSERT INTO `com_function` VALUES ('4ae6ee4d42c6d6620142c6e452c60005', '通知中心', null, '008', '#', '', '8', '', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:52:01', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:52:01');
INSERT INTO `com_function` VALUES ('4ae6ee4d42c6d6620142c6e452c60006', '通知管理', '4ae6ee4d42c6d6620142c6e452c60005', '008-001', '#', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:58:21', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:58:35');
INSERT INTO `com_function` VALUES ('4ae6ee4d42c6d6620142c6e452c60007', '通知列表', '4ae6ee4d42c6d6620142c6e452c60006', '008-001-001', '/notice/notice_list.do?type=1', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:59:42', '402880e63cf62235013cf62b3f9e0036', '2013-12-06 15:59:51');
INSERT INTO `com_function` VALUES ('4ae6ee4d42df7a930142df7fa2700002', '财务中心', null, '009', '#', null, '9', '', '402880e63cf62235013cf62b3f9e0036', '2013-12-11 10:32:33', '402880e63cf62235013cf62b3f9e0036', '2013-12-11 10:37:59');
INSERT INTO `com_function` VALUES ('4ae6ee4d42df7a930142df7fa2700003', '财务管理', '4ae6ee4d42df7a930142df7fa2700002', '009-001', '#', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d42df7a930142df7fa2700004', '财务列表', '4ae6ee4d42df7a930142df7fa2700003', '009-001-001', '/core/dict/ComM_list.do', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d43242e03014324301a880001', '工具中心', null, '010', '#', '', '10', '', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d43242e03014324301a880002', '工具管理', '4ae6ee4d43242e03014324301a880001', '010-001', '#', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d43242e03014324301a880003', '工具列表', '4ae6ee4d43242e03014324301a880002', '010-001-001', '/core/dict/ComM_list.do', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d43242e03014324301a880004', '借款催收', '402881854197327401419735ceba0002', '003-003-005', '/collection/loan/list.do?type=1', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');
INSERT INTO `com_function` VALUES ('4ae6ee4d43242e03014324301a880005', '理财客户生日提醒', '402881854197327401419735ceba0002', '003-003-006', '/birthdayRemind/birthdayRemind_list.do', null, null, null, '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28', '402880e93d80c483013d811e7a3b0063', '2013-12-24 18:39:28');

-- ----------------------------
-- Table structure for com_role
-- ----------------------------
DROP TABLE IF EXISTS `com_role`;
CREATE TABLE `com_role` (
  `ROLE_ID` varchar(128) NOT NULL COMMENT '角色ID',
  `ROLE_CODE` varchar(50) NOT NULL COMMENT '角色编码',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名',
  `IS_SYS_ROLE` varchar(10) DEFAULT '0' COMMENT '是否系统角色',
  `INFO` varchar(100) DEFAULT NULL COMMENT '备注',
  `COMPANY_ID` varchar(100) DEFAULT NULL,
  `CRT_UID` varchar(128) NOT NULL,
  `CRT_TIME` datetime NOT NULL,
  `UPD_UID` varchar(128) NOT NULL,
  `UPD_TIME` datetime NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `IND_U_COM_ROLE_01` (`ROLE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_role
-- ----------------------------
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30001', 'boss', '总经理', '1', null, '10000001', '402880e63d0f30b7013d0f38724c0001', '2010-12-24 22:46:37', '402880e63cf62235013cf62b3f9e0036', '2013-07-16 17:21:06');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30002', 'administrationManager', '行政总监', '0', null, '10000001', '402880e63d0f30b7013d0f38724c0001', '2013-03-14 08:59:17', '402880e63cf62235013cf62b3f9e0036', '2015-05-18 10:54:02');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30003', 'financingManager', '理财总监', '0', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2013-10-28 13:18:38', '402880e63cf62235013cf62b3f9e0036', '2015-05-28 09:39:49');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30004', 'contractAssistant', '签约助理', '0', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2013-10-28 13:20:30', '402880e63cf62235013cf62b3f9e0036', '2013-10-28 13:20:30');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30005', 'hrAssistant', '人事助理', '0', null, '10000001', '402880e93d80c483013d811e7a3b0063', '2015-08-04 11:17:03', '402880e93d80c483013d811e7a3b0063', '2015-08-04 11:17:03');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30006', 'planningAssistant', '策划助理', '0', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2013-05-30 08:47:32', '402880e63cf62235013cf62b3f9e0036', '2013-05-30 08:47:32');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30007', 'financingLeader', '理财团队经理', '0', null, '10000001', '402880e63d0f30b7013d0f38724c0001', '2010-12-26 16:29:08', '402880e63d0f30b7013d0f38724c0001', '2011-03-30 13:27:44');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30008', 'financingEmployee', '理财经理', '0', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2015-09-30 13:40:22', '402880e63cf62235013cf62b3f9e0036', '2015-09-30 13:40:22');
INSERT INTO `com_role` VALUES ('402881c04ef67ce5014ef6b65ce30009', 'loanEmployee', '债权经理', '0', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2015-11-04 17:23:24', '402880e63cf62235013cf62b3f9e0036', '2015-11-04 17:23:24');

-- ----------------------------
-- Table structure for com_role_function
-- ----------------------------
DROP TABLE IF EXISTS `com_role_function`;
CREATE TABLE `com_role_function` (
  `ID` varchar(128) NOT NULL,
  `ROLE_ID` varchar(128) NOT NULL,
  `FUNCTION_ID` varchar(128) NOT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COM_ROLE_REFERENCE_COM_FUNC` (`FUNCTION_ID`),
  KEY `FK_COM_ROLE_REFERENCE_COM_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_role_function
-- ----------------------------
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23550001', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23610002', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23740003', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c237d0004', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23820005', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c238c0006', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:29');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23950007', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c239d0008', '402881c04ef67ce5014ef6b65ce30006', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23a70009', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23b0000a', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23ba000b', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23c8000c', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23d5000d', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23e5000e', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23ee000f', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c23f80010', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24040011', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c240e0012', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24170013', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c241f0014', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24280015', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24310016', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c243f0017', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24490018', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24520019', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c245b001a', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c2463001b', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c246c001c', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c2477001d', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c2480001e', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c248a001f', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24980020', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24a60021', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24b00022', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24ba0023', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24c60024', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24d10025', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24dd0026', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24e60027', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24ef0028', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c24f80029', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c2501002a', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c250a002b', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c250f002c', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c251b002d', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561c9c252a002e', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:13:30');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a1f2002f', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a1f90030', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a1fe0031', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a20b0032', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2160033', '402881c04ef67ce5014ef6b65ce30004', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2210034', '402881c04ef67ce5014ef6b65ce30004', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a22d0035', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a23a0036', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2450037', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a24e0038', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a25b0039', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a265003a', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a271003b', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a27c003c', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a285003d', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a290003e', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a29a003f', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2a70040', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2c60041', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2dc0042', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2f30043', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a2fd0044', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3060045', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3100046', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3190047', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3210048', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a32a0049', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a334004a', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a33d004b', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a346004c', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a34f004d', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a35c004e', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a368004f', '402881c04ef67ce5014ef6b65ce30004', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3720050', '402881c04ef67ce5014ef6b65ce30004', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a37a0051', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3830052', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a38c0053', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3940054', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a39d0055', '402881c04ef67ce5014ef6b65ce30004', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3a70056', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3b00057', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3ba0058', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3c40059', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3ce005a', '402881c04ef67ce5014ef6b65ce30004', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3da005b', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3e8005c', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3f1005d', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a3fc005e', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a406005f', '402881c04ef67ce5014ef6b65ce30004', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4100060', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a41a0061', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4220062', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a42c0063', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4390064', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4460065', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4550066', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4660067', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4750068', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a47f0069', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a488006a', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a490006b', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a49c006c', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb6a4a6006d', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:42:26');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76346006e', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7634b006f', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763560070', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7635b0071', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763660072', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7636f0073', '402881c04ef67ce5014ef6b65ce30009', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763770074', '402881c04ef67ce5014ef6b65ce30009', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763800075', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763890076', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763930077', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7639c0078', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763a50079', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763ad007a', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763b8007b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763c1007c', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763cb007d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763d4007e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763dc007f', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763e60080', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763f10081', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb763fb0082', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764080083', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7641a0084', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764240085', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7642d0086', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764360087', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7643f0088', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764470089', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76451008a', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7645b008b', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76464008c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7646e008d', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76477008e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76481008f', '402881c04ef67ce5014ef6b65ce30009', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7648b0090', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764900091', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7649d0092', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764a70093', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764b00094', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764b80095', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764c20096', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764cc0097', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764d50098', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764de0099', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764e7009a', '402881c04ef67ce5014ef6b65ce30009', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764f0009b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb764f9009c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76505009d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7650f009e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb76519009f', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7651e00a0', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7652900a1', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb7653100a2', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:43:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84df000a3', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84df500a4', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84dff00a5', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e0400a6', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e1200a7', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e1b00a8', '402881c04ef67ce5014ef6b65ce30007', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e2500a9', '402881c04ef67ce5014ef6b65ce30007', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e2e00aa', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e3900ab', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e4300ac', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e4b00ad', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e5400ae', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e5d00af', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e6600b0', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e6e00b1', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e7700b2', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e8000b3', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e8900b4', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e9200b5', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84e9c00b6', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ea800b7', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84eb200b8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ebf00b9', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ece00ba', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ed800bb', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ee100bc', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84eea00bd', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ef300be', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f0000bf', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f0900c0', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f1200c1', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f1b00c2', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f2400c3', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f2f00c4', '402881c04ef67ce5014ef6b65ce30007', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f3900c5', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f3e00c6', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f4900c7', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f5200c8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f5d00c9', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f6600ca', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f6f00cb', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f7800cc', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f8200cd', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f8b00ce', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f9400cf', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84f9c00d0', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fa600d1', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fb000d2', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fbb00d3', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fc800d4', '402881c04ef67ce5014ef6b65ce30007', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fcc00d5', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fdb00d6', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fe700d7', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fec00d8', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84ff700d9', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb84fff00da', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:44:16');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bab00db', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bb000dc', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bba00dd', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bc300de', '402881c04ef67ce5014ef6b65ce30003', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bcc00df', '402881c04ef67ce5014ef6b65ce30003', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bd500e0', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bde00e1', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90be700e2', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bf200e3', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90bfc00e4', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c0600e5', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c1000e6', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c1a00e7', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c2500e8', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c2e00e9', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c3800ea', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c4300eb', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c5200ec', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c6500ed', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c7b00ee', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c8900ef', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c9300f0', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90c9e00f1', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90ca600f2', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cb100f3', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cbb00f4', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cc400f5', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90ccf00f6', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cd800f7', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90ce300f8', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cee00f9', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90cfb00fa', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d0200fb', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d1000fc', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d1a00fd', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d2500fe', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d2e00ff', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d380100', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d410101', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d4c0102', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d570103', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d610104', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d6e0105', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d790106', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d850107', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d8e0108', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d990109', '402881c04ef67ce5014ef6b65ce30003', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90d9e010a', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90daa010b', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90db3010c', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90db8010d', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90dc4010e', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cb90dce010f', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:45:04');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1ee80110', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1eed0111', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1ef70112', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f000113', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f090114', '402881c04ef67ce5014ef6b65ce30002', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f110115', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f1a0116', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f220117', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f2b0118', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f350119', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f40011a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f49011b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f51011c', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:14');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f5a011d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f62011e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f6b011f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f730120', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f7c0121', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f840122', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f8e0123', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1f980124', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fa50125', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fb50126', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fc30127', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fcd0128', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fd60129', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fde012a', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1fe7012b', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1ff0012c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba1ff9012d', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2003012e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba200c012f', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20110130', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba201c0131', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20260132', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20300133', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20390134', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20420135', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba204a0136', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20530137', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba205c0138', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20650139', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba206e013a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2077013b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba207f013c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2088013d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2091013e', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba209b013f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20a40140', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20ad0141', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20b60142', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20be0143', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20c80144', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20d10145', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20da0146', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20e20147', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20eb0148', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20f40149', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba20fc014a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2105014b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba210f014c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2119014d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2122014e', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba212b014f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21330150', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba213c0151', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21440152', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba214d0153', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21560154', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba215f0155', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21680156', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21710157', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba217a0158', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21860159', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2194015a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba219f015b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21a8015c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21b1015d', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21ba015e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21c4015f', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21cd0160', '402881c04ef67ce5014ef6b65ce30002', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21d60161', '402881c04ef67ce5014ef6b65ce30002', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21de0162', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21e70163', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21f00164', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba21f80165', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22020166', '402881c04ef67ce5014ef6b65ce30002', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba220b0167', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22150168', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba221e0169', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2227016a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba222f016b', '402881c04ef67ce5014ef6b65ce30002', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2238016c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2242016d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba224b016e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba2254016f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba225f0170', '402881c04ef67ce5014ef6b65ce30002', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22690171', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22720172', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba227d0173', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22870174', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22910175', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba229a0176', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22a30177', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22ac0178', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22b50179', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22be017a', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22c7017b', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22cc017c', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22d7017d', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3561c894601561cba22e0017e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 19:46:15');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11620002', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11670003', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc118c0004', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11940005', '402881c04ef67ce5014ef6b65ce30008', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc119e0006', '402881c04ef67ce5014ef6b65ce30008', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11a70007', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11b10008', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11bc0009', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11c6000a', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc11d7000b', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1211000c', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc121c000d', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1227000e', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1233000f', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc123e0010', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc124a0011', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12580012', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12640013', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12750014', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12840015', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12930016', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12a40017', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12b30018', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12c50019', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12d4001a', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12dd001b', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12ec001c', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc12fb001d', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1309001e', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc131a001f', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13290020', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc133a0021', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc133f0022', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13500023', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13620024', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13720025', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13830026', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13920027', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13a20028', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13b60029', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13c9002a', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13d9002b', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc13ea002c', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1406002d', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc1418002e', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc142e002f', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14400030', '402881c04ef67ce5014ef6b65ce30008', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14450031', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14590032', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc146d0033', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14750034', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14900035', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563adc14a90036', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:56');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e837008d', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0037', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e83c008e', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0038', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e884008f', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e88d0090', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4a93840001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8950091', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4b14940002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e89e0092', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4b8d940003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8a70093', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4bf39b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8b10094', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8bc0095', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4dbf51005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8c50096', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4e4ff90060', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8cd0097', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4eb76c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8d60098', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4f1e6b0062', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8e00099', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8ea009a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5276f00001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8f3009b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5311830002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e8fb009c', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e904009d', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e90c009e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5533070003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e915009f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5580130004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e91f00a0', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe566e000005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e92c00a1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe56ba8e0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e93500a2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5729b70007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e93e00a3', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe579f930008', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e94700a4', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0046', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e95000a5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5845520009', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e95800a6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe58b605000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e96100a7', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe592c35000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e96a00a8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe59a6df000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e97300a9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5a1c90000d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e97c00aa', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0047', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e98400ab', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e98d00ac', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5aad22000e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e99800ad', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5affca000f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9a400ae', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5b54ee0010', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9ad00af', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5bbad30011', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9b700b0', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9bc00b1', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9cd00b2', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:46');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9dd00b3', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9ed00b4', '402881c04ef67ce5014ef6b65ce30005', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36e9fd00b5', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea0f00b6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea2100b7', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea3200b8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea4300b9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea5400ba', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea6500bb', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea7700bc', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ea8b00bd', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eaa300be', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eab700bf', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eac900c0', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eadb00c1', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eaf200c2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb0c00c3', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb2200c4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb3600c5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb4d00c6', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb6100c7', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb7600c8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eb8b00c9', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eba000ca', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ebb700cb', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ebcc00cc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ebe600cd', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ebfb00ce', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec0f00cf', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec1500d0', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec2d00d1', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec4200d2', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec5900d3', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec6f00d4', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec8600d5', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ec9c00d6', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ecb300d7', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ecd000d8', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eceb00d9', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed0400da', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed1c00db', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed3300dc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed4f00dd', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed6700de', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed8000df', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ed9700e0', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36edb200e1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:47');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36edcb00e2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ede300e3', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36edfc00e4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ee1600e5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ee3100e6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ee4c00e7', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ee6a00e8', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ee8600e9', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eea300ea', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eebf00eb', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eeda00ec', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36eef600ed', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ef1600ee', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ef3200ef', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ef4e00f0', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ef6a00f1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36ef8700f2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36efa400f3', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36efc000f4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36efdc00f5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36effa00f6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f01800f7', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f03600f8', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f05300f9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f07200fa', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f09000fb', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f0ae00fc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f0cc00fd', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f0ed00fe', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f10c00ff', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f12a0100', '402881c04ef67ce5014ef6b65ce30005', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1520101', '402881c04ef67ce5014ef6b65ce30005', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f15b0102', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1640103', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f16d0104', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1760105', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f17f0106', '402881c04ef67ce5014ef6b65ce30005', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1880107', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1910108', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f19c0109', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1a5010a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:48');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1af010b', '402881c04ef67ce5014ef6b65ce30005', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1b8010c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1c2010d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1cb010e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1d5010f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1de0110', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1e70111', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1ef0112', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f1fb0113', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2040114', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f20d0115', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2170116', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2200117', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f22d0118', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2390119', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f245011a', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f24e011b', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f253011c', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f25f011d', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f26c011e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f276011f', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2800120', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f28a0121', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2950122', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f29f0123', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2a90124', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2b40125', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2bd0126', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2c70127', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2d20128', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2dc0129', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2e5012a', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2ec012b', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f2fb012c', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f304012d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f30d012e', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f318012f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3220130', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f32c0131', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3360132', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f33f0133', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3490134', '402881c04ef67ce5014ef6b65ce30005', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3520135', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f35b0136', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3640137', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f36d0138', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3760139', '402881c04ef67ce5014ef6b65ce30005', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f37b013a', '402881c04ef67ce5014ef6b65ce30005', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f386013b', '402881c04ef67ce5014ef6b65ce30005', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f391013c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f39c013d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3a7013e', '402881c04ef67ce5014ef6b65ce30005', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3b0013f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3b90140', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3c30141', '402881c04ef67ce5014ef6b65ce30005', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3cd0142', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3d60143', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3e00144', '402881c04ef67ce5014ef6b65ce30005', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3e90145', '402881c04ef67ce5014ef6b65ce30005', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3f30146', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f3fc0147', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4080148', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4120149', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f41c014a', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f426014b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f42f014c', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f438014d', '402881c04ef67ce5014ef6b65ce30005', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f442014e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f44b014f', '402881c04ef67ce5014ef6b65ce30005', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4500150', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4730151', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f47d0152', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4820153', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4b40154', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f4e30155', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f5150156', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f51a0157', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f5250158', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700004', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f52e0159', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f533015a', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880002', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b3563ad63b01563c36f53d015b', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880003', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:30:49');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3a800001', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3a870002', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3c670003', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3c730004', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4a93840001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3c800005', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b14940002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3c8a0006', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b8d940003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3c950007', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4bf39b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3ca00008', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3cab0009', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4dbf51005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3cb6000a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4e4ff90060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3cc2000b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4eb76c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3cd0000c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4f1e6b0062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d00000d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d0d000e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5276f00001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d19000f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5311830002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d260010', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d380011', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d460012', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5533070003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d550013', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5580130004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d620014', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe566e000005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d700015', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe56ba8e0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:38');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d7f0016', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5729b70007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d8d0017', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe579f930008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3d9f0018', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3dae0019', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5845520009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3dbe001a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe58b605000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3dd2001b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe592c35000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3de1001c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe59a6df000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3df0001d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5a1c90000d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e07001e', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e16001f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e250020', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5aad22000e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e360021', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5affca000f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e490022', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5b54ee0010', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e5a0023', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5bbad30011', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e700024', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e760025', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e8b0026', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3e9d0027', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3eb50028', '402881c04ef67ce5014ef6b65ce30001', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3ec90029', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3edc002a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3eef002b', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f00002c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f14002d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f2b002e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f47002f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f620030', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f790031', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3f8e0032', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3fa90033', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3fc50034', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3fda0035', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de3ff00036', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40070037', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40200038', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40360039', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de404d003a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4062003b', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4078003c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4092003d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40a7003e', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40c0003f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40d70040', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de40f00041', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de410e0042', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de41250043', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de412a0044', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de41430045', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de415b0046', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:39');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de41790047', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de41920048', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de41aa0049', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4242004a', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4266004b', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de42a8004c', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de42c3004d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4348004e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de43ac004f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de43c90050', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de43e50051', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44030052', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44210053', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de443b0054', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44560055', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44710056', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de448c0057', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44a70058', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44c30059', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44dd005a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de44fa005b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de451a005c', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de453f005d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:40');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4560005e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4585005f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de45a10060', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de45be0061', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de45dd0062', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de45fc0063', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de461a0064', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de46470065', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de466f0066', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de46900067', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de46af0068', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de46d10069', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de46f0006a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4712006b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4735006c', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4759006d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de477a006e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4799006f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de47bc0070', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de47dc0071', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de47fd0072', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de481e0073', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48430074', '402881c04ef67ce5014ef6b65ce30001', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48630075', '402881c04ef67ce5014ef6b65ce30001', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48840076', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48ac0077', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48d10078', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de48f40079', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de491d007a', '402881c04ef67ce5014ef6b65ce30001', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:41');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4940007b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4963007c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4988007d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de49aa007e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de49cc007f', '402881c04ef67ce5014ef6b65ce30001', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de49ef0080', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4a110081', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4a330082', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4a5f0083', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4a880084', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4ac60085', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4aed0086', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4b160087', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4b410088', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4b6f0089', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4b94008a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4bbc008b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4be5008c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4c10008d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4c39008e', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4c5f008f', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4c640090', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4c8e0091', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4cb80092', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4ce00093', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4d0c0094', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:42');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4d380095', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4d5f0096', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4d900097', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4db90098', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4de00099', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4e08009a', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4e30009b', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4e5e009c', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4e8e009d', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4eb6009e', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4ebc009f', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4eea00a0', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4f1400a1', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4f4000a2', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4f6a00a3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4f9300a4', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4fbc00a5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de4fe800a6', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de501300a7', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de504400a8', '402881c04ef67ce5014ef6b65ce30001', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de506f00a9', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de509c00aa', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de50cd00ab', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de50f800ac', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:43');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de512a00ad', '402881c04ef67ce5014ef6b65ce30001', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de513000ae', '402881c04ef67ce5014ef6b65ce30001', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de515f00af', '402881c04ef67ce5014ef6b65ce30001', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de519100b0', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de51be00b1', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de51e900b2', '402881c04ef67ce5014ef6b65ce30001', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de522200b3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de524f00b4', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de528200b5', '402881c04ef67ce5014ef6b65ce30001', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de52b100b6', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de52e200b7', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de531200b8', '402881c04ef67ce5014ef6b65ce30001', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de534c00b9', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7ea6370003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de537a00ba', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f5a0c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de53a700bb', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f9d1d0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de53d600bc', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d80973d0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de540400bd', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d813cce0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de543200be', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d81ade50008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de546100bf', '402881c04ef67ce5014ef6b65ce30001', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de549200c0', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de54c600c1', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:44');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de54f800c2', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de552d00c3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de555f00c4', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de559100c5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de55c300c6', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de55f400c7', '402881c04ef67ce5014ef6b65ce30001', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de562600c8', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de566000c9', '402881c04ef67ce5014ef6b65ce30001', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de566b00ca', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de56cd00cb', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de570b00cc', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de571000cd', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de574400ce', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');
INSERT INTO `com_role_function` VALUES ('402880b35641dbf6015641de577a00cf', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45', '402880e63cf62235013cf62b3f9e0036', '2016-08-01 00:51:45');

-- ----------------------------
-- Table structure for com_user
-- ----------------------------
DROP TABLE IF EXISTS `com_user`;
CREATE TABLE `com_user` (
  `USER_ID` varchar(128) NOT NULL COMMENT '用户ID',
  `LOGIN_ID` varchar(100) NOT NULL COMMENT '登录账号',
  `COMPANY_ID` varchar(20) NOT NULL COMMENT '所属公司',
  `USER_NAME` varchar(100) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `BIRTHDAY` datetime DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '1：使用中，0：未使用',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_user
-- ----------------------------
INSERT INTO `com_user` VALUES ('1', 'YC0011', '10000001', '1', '1', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('2', 'YC0010', '10000001', '2', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-03 22:49:00');
INSERT INTO `com_user` VALUES ('3', 'YC0009', '10000001', '3', '3', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('4', 'YC0008', '10000001', '4', '4', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('402880b35616e0ee015616e352c40001', '', '10000001', '张三', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-07-11 00:00:00', '城东大道', '12', '2222@163.com', null, '0', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 16:33:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 16:33:31');
INSERT INTO `com_user` VALUES ('402880b35616e3b3015616e738c40001', 'YC00042', '10000001', '通天塔', 'dd4b21e9ef71e1291183a46b913ae6f2', '2002-07-18 00:00:00', '城东大道', '11222', '2222@163.com', null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 16:37:47', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 16:49:28');
INSERT INTO `com_user` VALUES ('402880e63cf62235013cf62b3f9e0036', 'YC0001', '10000001', '总经理', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '1', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('402880e93d80c483013d811e7a3b0063', 'YC0002', '10000001', '副总经理', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 13:28:11', '402880e93d80c483013d811e7a3b0063', '2015-10-15 17:24:07');
INSERT INTO `com_user` VALUES ('402880ea3e16bb36013e16c06eee0001', 'YC0003', '10000001', '员工1', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2013-04-17 14:48:30', '402880e63cf62235013cf62b3f9e0036', '2016-07-18 17:11:08');
INSERT INTO `com_user` VALUES ('5', 'YC0007', '10000001', '5', '5', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('6', 'YC0006', '10000001', '6', '6', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('7', 'YC0005', '10000001', '7', '7', null, null, null, null, null, '0', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-02 22:09:35');
INSERT INTO `com_user` VALUES ('ff8080814de59817014de5a309000001', 'YC0004', '10000001', '员工2', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2015-06-12 10:39:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 16:55:22');

-- ----------------------------
-- Table structure for com_user_role
-- ----------------------------
DROP TABLE IF EXISTS `com_user_role`;
CREATE TABLE `com_user_role` (
  `ID` varchar(128) NOT NULL,
  `USER_ID` varchar(128) NOT NULL,
  `ROLE_ID` varchar(128) NOT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) NOT NULL,
  `CRT_TIME` datetime NOT NULL,
  `UPD_UID` varchar(128) NOT NULL,
  `UPD_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COM_USER_REFERENCE_COM_ROLE` (`ROLE_ID`),
  KEY `FK_COM_USER_REFERENCE_COM_USER` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_user_role
-- ----------------------------
INSERT INTO `com_user_role` VALUES ('402880b3563ad63b01563adb7f610001', '402880ea3e16bb36013e16c06eee0001', '402881c04ef67ce5014ef6b65ce30008', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:18', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 16:11:18');
INSERT INTO `com_user_role` VALUES ('402880b3563ad63b01563c31fcf40038', 'ff8080814de59817014de5a309000001', '402881c04ef67ce5014ef6b65ce30005', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:25:24', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 22:25:24');
INSERT INTO `com_user_role` VALUES ('402881ea4efbb3f4014efbba09c80006', '402880e63cf62235013cf62b3f9e0036', '402881c04ef67ce5014ef6b65ce30001', '', '402880e93d80c483013d811e7a3b0063', '2015-08-05 10:39:10', '402880e93d80c483013d811e7a3b0063', '2015-08-05 10:39:10');

-- ----------------------------
-- Table structure for m_message
-- ----------------------------
DROP TABLE IF EXISTS `m_message`;
CREATE TABLE `m_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` int(1) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content` varchar(500) NOT NULL,
  `detailUrl` varchar(255) DEFAULT NULL,
  `msgModule` int(1) NOT NULL,
  `msgType` int(3) NOT NULL,
  `entityId` varchar(40) DEFAULT NULL,
  `accepterType` int(3) NOT NULL,
  `accepterId` varchar(128) NOT NULL,
  `accepter` varchar(128) NOT NULL,
  `addressorType` int(3) NOT NULL,
  `addressorId` varchar(128) NOT NULL,
  `addressor` varchar(128) NOT NULL,
  `realAddressorId` varchar(128) DEFAULT NULL,
  `realAddressor` varchar(128) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `modifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_message
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_attendance
-- ----------------------------
DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE `tbl_attendance` (
  `ATTENDANCE_ID` varchar(128) NOT NULL COMMENT '用户ID',
  `USER_ID` varchar(128) DEFAULT NULL,
  `COMPANY_ID` varchar(128) NOT NULL COMMENT '所属公司',
  `USER_NAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `LATE_TIMES` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `LATE_POINT` varchar(128) DEFAULT NULL COMMENT '密码',
  `LEAVE_EARLY_TIMES` varchar(128) DEFAULT NULL,
  `LEAVE_EARLY_POINT` varchar(255) DEFAULT NULL,
  `OVER_NORMAL` varchar(255) DEFAULT NULL,
  `OVER_SPECIAL` varchar(255) DEFAULT NULL,
  `ALL_DAYS` varchar(255) DEFAULT NULL,
  `ATTENDANCE_DAYS` varchar(10) DEFAULT '0' COMMENT '1：使用中，0：未使用',
  `OUT_DAYS` varchar(10) DEFAULT NULL,
  `LEAVE_DAYS` varchar(10) DEFAULT NULL,
  `ABSENT_DAYS` varchar(10) DEFAULT NULL,
  `WORK_TIME_NORMAL` varchar(10) DEFAULT NULL,
  `WORK_TIME_REAL` varchar(10) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ATTENDANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_attendance
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_birthday_remind
-- ----------------------------
DROP TABLE IF EXISTS `tbl_birthday_remind`;
CREATE TABLE `tbl_birthday_remind` (
  `BIRTHDAY_REMIND_ID` varchar(128) NOT NULL COMMENT '节假日提醒ID',
  `NAME` varchar(100) NOT NULL COMMENT '节假日名称',
  `BIRTHDAY_TIME` datetime NOT NULL COMMENT '开始时间',
  `INFO` varchar(200) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(2) DEFAULT '1' COMMENT '1：提醒中，0：废止',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`BIRTHDAY_REMIND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_birthday_remind
-- ----------------------------
INSERT INTO `tbl_birthday_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '张三', '2016-06-12 00:00:00', '6月12日 生日', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_birthday_remind` VALUES ('402881e7554a407c01554a4159700001', '李四', '2016-06-14 00:00:00', '6月14日 生日', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');

-- ----------------------------
-- Table structure for tbl_financing
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing`;
CREATE TABLE `tbl_financing` (
  `FINANCING_ID` varchar(128) NOT NULL COMMENT '理财产品ID',
  `FINANCING_NAME` varchar(100) NOT NULL COMMENT '理财产品名称',
  `FINANCING_DESC` varchar(255) DEFAULT NULL COMMENT '理财产品描述信息',
  `TYPE` varchar(2) CHARACTER SET utf8mb4 NOT NULL COMMENT '1：季度金，2：半年金，3：年年鑫，4：年年红，5：仪诚鑫，6：仪诚通',
  `ANNUALIZED_RATE` decimal(10,1) NOT NULL COMMENT '年化收益率',
  `MONTHS` varchar(10) NOT NULL COMMENT '多少个月[封闭期]',
  `START_UP` varchar(2) NOT NULL COMMENT '起始资金(万)',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FINANCING_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`FINANCING_ID`,`FINANCING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing
-- ----------------------------
INSERT INTO `tbl_financing` VALUES ('1', '季度金', '三个月回本 ', '1', '1.0', '1', '0', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:58:46');
INSERT INTO `tbl_financing` VALUES ('402880b2558ba81c01558ba94a190002', '12', '12', '1', '12.2', '2', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-06-26 15:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-06-26 15:42:55');
INSERT INTO `tbl_financing` VALUES ('402880b2558becf901558bef0c1a0001', '年年红', '年年红', '4', '12.0', '12', '12', null, '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:59:07', '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:59:07');

-- ----------------------------
-- Table structure for tbl_financing_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing_apply`;
CREATE TABLE `tbl_financing_apply` (
  `FINANCING_APPLY_ID` varchar(128) NOT NULL,
  `CUSTOMER_ID` varchar(128) NOT NULL,
  `CUSTOMER_NAME` varchar(100) NOT NULL,
  `CONTRACT_ID` varchar(128) DEFAULT NULL COMMENT '合同ID',
  `CONTRACT_URL` varchar(200) DEFAULT NULL COMMENT '合同URL',
  `CONTRACT_SIGNING_TIME` datetime DEFAULT NULL COMMENT '合同签订时间',
  `SIGNING_ADDRESS` varchar(100) DEFAULT NULL COMMENT '签署地',
  `TYPE` varchar(2) NOT NULL COMMENT '1：季度金，2：半年金，3：年年鑫，4：年年红，5：仪诚鑫，6：仪诚通',
  `ANNUALIZED_RATE` decimal(10,1) NOT NULL COMMENT '年化收益率',
  `MONEY` decimal(10,0) NOT NULL,
  `UPPER_MONEY` varchar(100) DEFAULT NULL COMMENT '大写金额',
  `EXPIRE_MONEY` decimal(10,1) DEFAULT NULL COMMENT '期满金额',
  `UPPER_EXPIRE_MONEY` varchar(100) DEFAULT NULL COMMENT '大写期满金额',
  `LENDING_WAY` varchar(2) DEFAULT NULL COMMENT '出借方式：1：选择出借，2：关系受让',
  `FINANCING_START_TIME` datetime NOT NULL COMMENT '理财开始时间',
  `FINANCING_END_TIME` datetime NOT NULL COMMENT '理财结束时间',
  `MONTHS` varchar(10) NOT NULL COMMENT '多少个月',
  `DEPOSIT_BANK` varchar(200) NOT NULL COMMENT '开户银行（精确到支行）',
  `BANK_CARD_ID` varchar(100) DEFAULT NULL COMMENT '卡号',
  `EMPLOYEE_ID` varchar(128) NOT NULL COMMENT '业务员ID',
  `EMPLOYEE_NAME` varchar(100) NOT NULL COMMENT '业务员名',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '1：理财中，2：理财完，3：中止违约',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FINANCING_APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing_apply
-- ----------------------------
INSERT INTO `tbl_financing_apply` VALUES ('402880b356036b02015603a9c4820002', '1', 'test', null, null, '2016-07-12 00:00:00', '12111', '1', '12.0', '12', '12', '12.0', '12', '1', '2016-07-28 00:00:00', '2016-07-30 00:00:00', '12', '12', '121212', '1', 'test', '1', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 21:29:03');

-- ----------------------------
-- Table structure for tbl_financing_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing_customer`;
CREATE TABLE `tbl_financing_customer` (
  `CUSTOMER_ID` varchar(128) NOT NULL,
  `CUSTOMER_NAME` varchar(100) NOT NULL COMMENT '客户名',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '生日',
  `BIRTHDAY_TYPE` varchar(1) DEFAULT '0' COMMENT '生日类型: 0 阳历, 1 农历',
  `CARD_TYPE` varchar(50) NOT NULL COMMENT '证件类型',
  `CARD_ID` varchar(50) NOT NULL COMMENT '证件号',
  `TELEPHONE` varchar(20) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`CUSTOMER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing_customer
-- ----------------------------
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb73e0c10001', '12', '2016-07-06 00:00:00', '0', '1', '1111111', '122', '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7409680002', '222', '2016-07-05 00:00:00', '0', '1', '12', '1221', '2', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7468550004', '1222', '2016-07-13 00:00:00', '0', '1', '2', '21', '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56');
INSERT INTO `tbl_financing_customer` VALUES ('402880b35618144101561816a06f0002', '222121212', '2016-07-13 00:00:00', '1', '1', '122222223', '122', '1212', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 22:09:11', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 22:19:32');
INSERT INTO `tbl_financing_customer` VALUES ('40288133552a0db801552a13417c0002', '测试姓名', '2016-06-14 00:00:00', '0', '1', '359645862155', '1595157625', '无锡', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 16:55:52', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:35:11');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549de64910008', 'da\'s\'dads', '2016-06-12 00:00:00', '0', '1', 'dasa', 'dasdsa', '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:05:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:05:59');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549decffb0009', '465456', '2016-06-12 00:00:00', '0', '1', '4546', '4546', '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549decffb0009s', '4654561', '2016-06-12 00:00:00', '0', '1', '4546', '4546', '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26');

-- ----------------------------
-- Table structure for tbl_financing_nnh_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing_nnh_detail`;
CREATE TABLE `tbl_financing_nnh_detail` (
  `NNL_DETAIL_ID` varchar(128) NOT NULL COMMENT '年年红明细ID',
  `FINANCING_APPLY_ID` varchar(128) NOT NULL COMMENT '理财申请ID',
  `CUSTOMER_ID` varchar(128) NOT NULL COMMENT '客户ID',
  `CUSTOMER_NAME` varchar(100) NOT NULL COMMENT '客户名',
  `TYPE` varchar(2) NOT NULL COMMENT '1：季度金，2：半年金，3：年年鑫，4：年年红，5：仪诚鑫，6：仪诚通',
  `MONEY` decimal(10,0) NOT NULL COMMENT '总金额',
  `PERMONTH_DAY` varchar(10) NOT NULL COMMENT '每月几号',
  `PERMONTH_RETURN_MONEY` decimal(10,0) DEFAULT NULL COMMENT '每月返还金额',
  `ACCOUNT_NUMBER` varchar(50) DEFAULT NULL COMMENT '银行卡号',
  `ACCOUNT_TYPE` varchar(100) DEFAULT NULL COMMENT '银行卡类别',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `FINANCING_START_TIME` datetime NOT NULL COMMENT '理财开始时间',
  `FINANCING_END_TIME` datetime NOT NULL COMMENT '理财结束时间',
  `MONTHS` varchar(10) NOT NULL COMMENT '期（多少个月）',
  `EMPLOYEE_ID` varchar(128) NOT NULL COMMENT '业务员ID',
  `EMPLOYEE_NAME` varchar(100) NOT NULL COMMENT '业务员名',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '1：理财中，2：理财完，3：中止违约',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NNL_DETAIL_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`CUSTOMER_ID`,`CUSTOMER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing_nnh_detail
-- ----------------------------
INSERT INTO `tbl_financing_nnh_detail` VALUES ('11', '12', '12', '22222', '4', '44', '12', '11', '11', '1', '1', '2016-07-03 17:52:36', '2016-07-24 17:52:40', '12', '12', '22', '0', '12', null, null, null, null);

-- ----------------------------
-- Table structure for tbl_financing_remind
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing_remind`;
CREATE TABLE `tbl_financing_remind` (
  `FINANCING_REMIND_ID` varchar(128) NOT NULL COMMENT '节假日提醒ID',
  `CUSTOMER_ID` varchar(128) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL COMMENT '理财收益时间',
  `BANK_CARD_ID` varchar(100) DEFAULT NULL,
  `DEPOSIT_BANK` varchar(255) DEFAULT NULL,
  `INCOME` varchar(100) DEFAULT NULL COMMENT '收益',
  `MONEY` varchar(101) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL COMMENT '1：季度金，2：半年金，3：年年鑫，4：年年红，5：仪诚鑫，6：仪诚通',
  `DAY_TYPE` varchar(2) DEFAULT NULL COMMENT '1: 七天提醒; 2: 一天提醒; 3:年年红月月返提醒',
  `INFO` varchar(200) DEFAULT NULL COMMENT '备注',
  `EMPLOYEE_ID` varchar(128) DEFAULT NULL,
  `EMPLOYEE_NAME` varchar(255) DEFAULT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT '1' COMMENT '1：提醒中，0：废止',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FINANCING_REMIND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing_remind
-- ----------------------------
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '1', '112', null, '2016-07-14 23:39:48', null, null, null, null, '2', '1', '6月12日（周日）上班', '1', '1', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700001', '1', '12', null, '2016-07-14 23:39:52', null, null, null, null, '3', '2', '6月12日（周日）上班', '1', '1', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700002', '1', '12', null, '2016-07-14 23:39:52', null, null, null, null, '4', '3', '6月12日（周日）上班', '1', '1', '', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700003', '1', '12', null, '2016-07-14 23:39:52', null, null, null, null, '4', '1', '6月12日（周日）上班', '1', '1', '', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700004', '1', '12', null, '2016-07-14 23:39:52', null, null, null, null, '4', '2', '6月12日（周日）上班', '1', '1', '', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');

-- ----------------------------
-- Table structure for tbl_financing_statistic
-- ----------------------------
DROP TABLE IF EXISTS `tbl_financing_statistic`;
CREATE TABLE `tbl_financing_statistic` (
  `STATISTIC_ID` varchar(128) NOT NULL COMMENT '统计ID',
  `EMPLOYEE_ID` varchar(128) DEFAULT NULL COMMENT '业务员Id',
  `EMPLOYEE_NAME` varchar(100) DEFAULT NULL COMMENT '业务员名称',
  `CUSTOMER_NUMS` varchar(2) DEFAULT NULL COMMENT '总的客户数',
  `MONEY_ALL` varchar(100) DEFAULT NULL COMMENT '总金额',
  `AVERAGE_MONEY` int(5) DEFAULT '0' COMMENT '平均每月的业绩',
  `TIME` varchar(20) DEFAULT NULL COMMENT '统计时间',
  `YEAR` varchar(4) DEFAULT NULL COMMENT '年份',
  `TIME_RANGE` varchar(100) DEFAULT NULL COMMENT '统计时间区间 1 月,2季度,3半年,4年',
  `INFO` varchar(555) DEFAULT NULL COMMENT '0：未催收，1：已催收，2：已还本月',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`STATISTIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_financing_statistic
-- ----------------------------
INSERT INTO `tbl_financing_statistic` VALUES ('402880b255bb6f130155bb87015c0008', '112', '测试员工', '3', '212333', '12', '一月份', '2016', '1', '没有备注', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 23:03:44');
INSERT INTO `tbl_financing_statistic` VALUES ('402880b255bb6f130155bb87015c0009', '112', '测试员工2', '44', '212333222', '12', '第二季度', '2016', '2', '没有备注', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 23:03:44');
INSERT INTO `tbl_financing_statistic` VALUES ('402880b255bb6f130155bb87015c0010', '112', '测试员工3', '44', '212333222', '12', '上半年', '2016', '3', '没有备注', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 23:03:44');
INSERT INTO `tbl_financing_statistic` VALUES ('402880b255bb6f130155bb87015c0020', '112', '测试员工3', '44', '212333222', '12', '2016年', '2016', '4', '没有备注', '10000002', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 23:03:44');

-- ----------------------------
-- Table structure for tbl_goods_purchase
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_purchase`;
CREATE TABLE `tbl_goods_purchase` (
  `GOODS_PURCHASE_ID` varchar(128) NOT NULL COMMENT '物品采购ID',
  `GOODS_ID` varchar(128) NOT NULL,
  `GOODS_NAME` varchar(100) NOT NULL,
  `PRICE` decimal(10,2) NOT NULL COMMENT '单价',
  `NUMS` int(10) NOT NULL DEFAULT '0' COMMENT '数量',
  `TOTAL_PRICE` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '1：申请中，2：批准，3：采购成功',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`GOODS_PURCHASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_purchase
-- ----------------------------
INSERT INTO `tbl_goods_purchase` VALUES ('402880b356036b020156039448900001', '1', 'test', '11.00', '12', '12.00', '12', null, '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 22:34:24', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 22:34:24');
INSERT INTO `tbl_goods_purchase` VALUES ('402880b3564127f201564129615e0002', 'bijiben', 'bijiben', '12.00', '12', '12.00', '总经理', '2016-07-13 00:00:00', '3', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 21:34:06', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 21:37:06');

-- ----------------------------
-- Table structure for tbl_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_stock`;
CREATE TABLE `tbl_goods_stock` (
  `GOODS_ID` varchar(128) NOT NULL,
  `GOODS_NAME` varchar(100) NOT NULL,
  `PRICE` decimal(10,2) NOT NULL COMMENT '单价',
  `NUMS_SOURCE` int(10) DEFAULT NULL COMMENT '原数量',
  `NUMS_ALL` int(10) NOT NULL DEFAULT '0' COMMENT '总数量',
  `NUMS_NOW` int(10) NOT NULL DEFAULT '0' COMMENT '现数量',
  `NUMS_WARNING` int(10) NOT NULL DEFAULT '0' COMMENT '预警值',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '1：正常，2：预警',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`GOODS_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`GOODS_NAME`,`NUMS_ALL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_stock
-- ----------------------------
INSERT INTO `tbl_goods_stock` VALUES ('402880b255aad8a50155aaea31af0001', '计算器', '123.00', '1222', '121', '12', '12', '2', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-02 17:42:57');

-- ----------------------------
-- Table structure for tbl_goods_used
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_used`;
CREATE TABLE `tbl_goods_used` (
  `GOODS_USED_ID` varchar(128) NOT NULL COMMENT '商品领取ID',
  `GOODS_ID` varchar(128) NOT NULL,
  `GOODS_NAME` varchar(100) NOT NULL,
  `NUMS` int(10) NOT NULL DEFAULT '0' COMMENT '领取数量',
  `USER_ID` varchar(128) NOT NULL DEFAULT '0' COMMENT '领取者ID',
  `USER_NAME` varchar(100) NOT NULL DEFAULT '0' COMMENT '领取者',
  `STATUS` varchar(2) NOT NULL DEFAULT '1' COMMENT '1：申请中，2：申请成功',
  `REVIEW_PERSON` varchar(255) DEFAULT NULL,
  `REVIEW_TIME` datetime DEFAULT NULL,
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`GOODS_USED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_used
-- ----------------------------
INSERT INTO `tbl_goods_used` VALUES ('402880b255ab42270155ab4557260001', '1', 'test', '121212', '1', 'test', '1', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-02 19:01:36');
INSERT INTO `tbl_goods_used` VALUES ('402880b35641457e01564146442c0001', '1212', '1212', '11', '402880ea3e16bb36013e16c06eee0001', '员工1', '2', '总经理', '2016-07-12 00:00:00', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 22:05:39', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 22:11:39');

-- ----------------------------
-- Table structure for tbl_holiday
-- ----------------------------
DROP TABLE IF EXISTS `tbl_holiday`;
CREATE TABLE `tbl_holiday` (
  `HOLIDAY_ID` varchar(128) NOT NULL COMMENT '节假日ID',
  `NAME` varchar(100) NOT NULL COMMENT '节假日名称',
  `START_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT '终了时间',
  `DAYS` int(3) DEFAULT NULL COMMENT '放假天数',
  `INFO` varchar(200) DEFAULT NULL COMMENT '备注',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`HOLIDAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_holiday
-- ----------------------------
INSERT INTO `tbl_holiday` VALUES ('402880b35618f91301561922587d0008', '端午节', '2016-06-09 00:00:00', '2016-06-11 00:00:00', '3', '6月12日（周日）上班111', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f9130156192258870009', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f913015619225890000a', '国庆节', '2016-10-01 00:00:00', '2016-10-07 00:00:00', '7', '10月8日（周六）、10月9日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f91301561922589b000b', '元旦', '2016-01-01 00:00:00', '2016-01-03 00:00:00', '3', '与周末连休', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f9130156192258a5000c', '春节', '2016-02-07 00:00:00', '2016-02-13 00:00:00', '7', '2月6日（周六）、2月14日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f9130156192258b0000d', '清明节', '2016-04-02 00:00:00', '2016-04-04 00:00:00', '3', '与周末连休', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402880b35618f9130156192258b9000e', '劳动节', '2016-04-30 00:00:00', '2016-05-02 00:00:00', '3', '5月2日（周一）补休', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36', '402880e63cf62235013cf62b3f9e0036', '2016-07-24 03:01:36');
INSERT INTO `tbl_holiday` VALUES ('402881e75549b616015549fbb2df0001', '端午节', '2016-07-13 00:00:00', '2016-06-11 00:00:00', '3', '6月12日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_holiday` VALUES ('402881e75549b616015549fbb33d0002', '中秋节', '2016-07-12 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:38:00', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:38:00');
INSERT INTO `tbl_holiday` VALUES ('402881e75549b616015549fbb36b0003', '国庆节', '2016-06-12 00:00:00', '2016-10-07 00:00:00', '7', '10月8日（周六）、10月9日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:38:00', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:38:00');

-- ----------------------------
-- Table structure for tbl_holiday_remind
-- ----------------------------
DROP TABLE IF EXISTS `tbl_holiday_remind`;
CREATE TABLE `tbl_holiday_remind` (
  `HOLIDAY_REMIND_ID` varchar(128) NOT NULL COMMENT '节假日提醒ID',
  `NAME` varchar(100) NOT NULL COMMENT '节假日名称',
  `START_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT '终了时间',
  `DAYS` int(3) DEFAULT NULL COMMENT '放假天数',
  `INFO` varchar(200) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(2) DEFAULT '1' COMMENT '1：提醒中，0：废止',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`HOLIDAY_REMIND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_holiday_remind
-- ----------------------------
INSERT INTO `tbl_holiday_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '端午节特殊', '2016-06-12 00:00:00', '2016-06-11 00:00:00', '3', '6月12日（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_holiday_remind` VALUES ('402881e7554a407c01554a4159700001', '端午节', '2016-06-14 00:00:00', '2016-06-11 00:00:00', '3', '6月12日（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');

-- ----------------------------
-- Table structure for tbl_leave_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_leave_apply`;
CREATE TABLE `tbl_leave_apply` (
  `LEAVE_APPLY_ID` varchar(128) NOT NULL COMMENT '请假申请ID',
  `DEPARTMENT_ID` varchar(128) NOT NULL COMMENT '部门ID',
  `DEPARTMENT_NAME` varchar(100) NOT NULL COMMENT '部门名',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `REASON` varchar(200) DEFAULT NULL COMMENT '理由',
  `APPLY_START_TIME` datetime DEFAULT NULL COMMENT '请假开始时间',
  `APPLY_END_TIME` datetime DEFAULT NULL COMMENT '请假结束时间',
  `DAYS` int(5) DEFAULT NULL COMMENT '请假天数',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '0：待审批，1：已审批',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVE_APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_leave_apply
-- ----------------------------
INSERT INTO `tbl_leave_apply` VALUES ('402880b3563c672701563c679a600001', '10001', '总经办', 'ff8080814de59817014de5a309000001', '员工2', 'ccccccc', '2016-07-04 00:00:00', '2016-07-21 00:00:00', '17', '1', '总经理', '2016-07-12 00:00:00', '10000001', 'ff8080814de59817014de5a309000001', '2016-07-30 23:23:57', '402880e63cf62235013cf62b3f9e0036', '2016-07-30 23:50:50');
INSERT INTO `tbl_leave_apply` VALUES ('402891935601ca76015601da5a8900c8', '10001', '总经办', '1', 'test', '11', '2016-07-04 00:00:00', '2016-07-21 00:00:00', '17', '1', '', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 14:31:42', '402880e63cf62235013cf62b3f9e0036', '2016-07-19 14:31:42');

-- ----------------------------
-- Table structure for tbl_loan_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loan_apply`;
CREATE TABLE `tbl_loan_apply` (
  `LOAN_APPLY_ID` varchar(128) NOT NULL COMMENT '借款申请ID',
  `CUSTOMER_ID` varchar(128) NOT NULL COMMENT '借款客户ID',
  `CUSTOMER_NAME` varchar(100) NOT NULL COMMENT '借款客户名',
  `LENDER_NAME` varchar(100) DEFAULT NULL COMMENT '出借人名字',
  `LENDER_CARD_ID` varchar(20) DEFAULT NULL COMMENT '出借人身份证号',
  `LENDER_ADDRESS` varchar(200) DEFAULT NULL COMMENT '出借人现住地址',
  `REPAYMENT_NAME1` varchar(100) DEFAULT NULL COMMENT '还款户名',
  `REPAYMENT_DEPOSIT_BANK1` varchar(200) DEFAULT NULL COMMENT '还款开户银行（精确到支行）',
  `REPAYMENT_BANK_CARD_ID1` varchar(100) DEFAULT NULL COMMENT '还款卡号',
  `REPAYMENT_NAME2` varchar(100) DEFAULT NULL COMMENT '还款户名',
  `REPAYMENT_DEPOSIT_BANK2` varchar(200) DEFAULT NULL COMMENT '还款开户银行（精确到支行）',
  `REPAYMENT_BANK_CARD_ID2` varchar(100) DEFAULT NULL COMMENT '还款卡号',
  `REPAYMENT_NAME3` varchar(100) DEFAULT NULL COMMENT '还款户名',
  `REPAYMENT_DEPOSIT_BANK3` varchar(200) DEFAULT NULL COMMENT '还款开户银行（精确到支行）',
  `REPAYMENT_BANK_CARD_ID3` varchar(100) DEFAULT NULL COMMENT '还款卡号',
  `REPAYMENT_TYPE` varchar(2) DEFAULT NULL COMMENT '付款方式：1：网银汇款，2：银行汇款，3：现金',
  `CONTRACT_ID` varchar(128) DEFAULT NULL COMMENT '合同ID',
  `CONTRACT_URL` varchar(200) DEFAULT NULL COMMENT '合同URL',
  `TYPE` varchar(2) NOT NULL COMMENT '1：本息同还，2：先息后本',
  `EMPLOYEE_ID` varchar(128) NOT NULL COMMENT '业务员ID',
  `EMPLOYEE_NAME` varchar(100) NOT NULL COMMENT '业务员名',
  `LOAN_START_TIME` datetime NOT NULL COMMENT '借款开始时间',
  `LOAN_END_TIME` datetime NOT NULL COMMENT '借款结束时间',
  `MONTHS` varchar(10) NOT NULL COMMENT '借款多少个月',
  `RATE` decimal(3,1) NOT NULL COMMENT '利率',
  `APPLY_MONEY` decimal(10,0) NOT NULL COMMENT '借款金额',
  `LOAN_REASON` varchar(200) DEFAULT NULL COMMENT '借款用途',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '0：待审核，1：审核中，2：通过，3：拒绝',
  `REPAYMENT_STATUS` varchar(2) DEFAULT '1' COMMENT '1：还款中，2：已还清',
  `OVERDUE_NUMS` int(5) DEFAULT '0' COMMENT '逾期次数',
  `AGREE_MONEY` decimal(10,0) DEFAULT NULL COMMENT '批准金额',
  `UPPER_MONEY` varchar(100) DEFAULT NULL COMMENT '大写金额',
  `PERMONTH_MONEY` decimal(10,1) DEFAULT NULL COMMENT '月偿还本息数额',
  `UPPER_PERMONTH_MONEY` varchar(100) DEFAULT NULL COMMENT '大写月偿还本息数额',
  `REFUSE_REASON` varchar(200) DEFAULT NULL COMMENT '拒绝理由',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LOAN_APPLY_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`CUSTOMER_ID`,`CUSTOMER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_apply
-- ----------------------------
INSERT INTO `tbl_loan_apply` VALUES ('402880b255caa05b0155caa4eadc0002', '10004', '借款部', '21ww23', '21', '21', '212', '121', '212', '121', '212', '12', '1212', '1', '12', '1', null, '1_test', '1', '1', 'test', '2016-07-20 00:00:00', '2016-07-29 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', '12', '12333', '12.0', '12', '12', '', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-08 21:19:54');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417b28140001', '二位', '二位', '12', '1222222', '121', '213', '123', '123123123123123213', '133', '123213', '123213123', '123123', '1321', '123', '1', null, '1_test', '1', '402880ea3e16bb36013e16c06eee0001', '员工1', '2016-07-05 00:00:00', '2016-07-30 00:00:00', '12', '12.0', '123', '123', '2', '1', '8', '123', '12333', '123.0', '123', '', '总经理', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:03:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:18:08');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417df6350006', '121', '121', '21ww23', '12222221', '212', '121', '121', '1212', '121', '1212', '1212', '1212', '1212', '12', '1', null, '1_test', '1', '402880ea3e16bb36013e16c06eee0001', '员工1', '2016-06-28 00:00:00', '2016-07-28 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', '12', '12333', '12.0', '12嗖嗖嗖', null, null, null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:07:51');

-- ----------------------------
-- Table structure for tbl_loan_collection
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loan_collection`;
CREATE TABLE `tbl_loan_collection` (
  `LOAN_COLLECTION_ID` varchar(128) NOT NULL COMMENT '借款催收ID',
  `LOAN_APPLY_ID` varchar(128) NOT NULL COMMENT '借款申请ID',
  `CUSTOMER_NAME` varchar(100) NOT NULL COMMENT '客户名',
  `TYPE` varchar(2) NOT NULL COMMENT '1：本息同还，2：先息后本',
  `MONEY` decimal(10,0) NOT NULL COMMENT '借款总金额',
  `REPAYMENT_MONTHS` int(5) NOT NULL DEFAULT '0' COMMENT '已还多少个月',
  `GIVEN_MONEY` decimal(10,0) NOT NULL COMMENT '已还本息',
  `SURPLUS_MONEY` decimal(10,0) NOT NULL COMMENT '剩余本息',
  `PERMONTH_GIVEN_MONEY` decimal(10,0) NOT NULL COMMENT '每个月应还金额',
  `IS_PREPAYMENT` varchar(2) NOT NULL DEFAULT '0' COMMENT '0：未提前，1：已提前还清',
  `TELEPHONE` varchar(20) NOT NULL,
  `CARD_PASSWORD` varchar(20) DEFAULT NULL COMMENT '债权卡密码',
  `IS_OVERDUE` varchar(2) DEFAULT '0' COMMENT '0：未逾期，1：逾期',
  `STATUS` varchar(2) NOT NULL COMMENT '0：未催收，1：已催收，2：已还本月',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LOAN_COLLECTION_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`LOAN_APPLY_ID`,`CUSTOMER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_collection
-- ----------------------------
INSERT INTO `tbl_loan_collection` VALUES ('402880b255bb6f130155bb87015c0008', '112', '1222', '1', '212', '12', '12', '12', '12', '1', '12', '1212121', '0', '0', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 23:03:44');

-- ----------------------------
-- Table structure for tbl_loan_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loan_customer`;
CREATE TABLE `tbl_loan_customer` (
  `CUSTOMER_ID` varchar(128) NOT NULL COMMENT '借款客户ID',
  `CUSTOMER_NAME` varchar(100) NOT NULL COMMENT '借款客户名',
  `PIC_URL` varchar(100) DEFAULT NULL COMMENT '客户相片',
  `INDUSTRY` varchar(200) DEFAULT NULL COMMENT '所属行业',
  `CARD_ID` varchar(20) NOT NULL COMMENT '身份证号',
  `TELEPHONE` varchar(20) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '住址',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `IND_U_DICT_01` (`CUSTOMER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_customer
-- ----------------------------
INSERT INTO `tbl_loan_customer` VALUES ('40288133552a0db801552a144fad0003', '测试客户', 'images/20160607165702122.png', '测试单位', '32038921568457', '15951573016', '江苏无锡', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 16:57:02', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:36:25');
INSERT INTO `tbl_loan_customer` VALUES ('402894825549b34f015549ca1ccb0007', '测试用户', 'images/20160613204350320.png', '无锡', '3208', '16802654', '芦庄', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:43:50', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:43:50');

-- ----------------------------
-- Table structure for tbl_notice
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notice`;
CREATE TABLE `tbl_notice` (
  `NOTICE_ID` varchar(128) NOT NULL COMMENT '商品领取ID',
  `TITLE` varchar(100) NOT NULL,
  `CONTENT` text NOT NULL,
  `STATUS` varchar(2) NOT NULL DEFAULT '1' COMMENT '1：进行中，0：已结束',
  `COMPANY_ID` varchar(128) NOT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_notice
-- ----------------------------
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0036', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。\r\n放假前请各位注意关好电脑，关好门窗。提前预祝节日快乐！', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0037', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0038', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0039', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0040', '2016年端午节高速免费通知', '2016端午节的由来\r\n  端午亦称端五，是我国最大的传统节日之一。“端”的意思和“初”相同，称“端五”也就如称“初五”;端五的“五”字又与“午”相通，按地支顺序推算，五月正是“午”月。又因午时为“阳辰”，所以端五也叫“端阳”。五月五日，月、日都是五，故称重五，也称重午。\r\n  此外，端午还有许多别称，如：夏节、浴兰节、女儿节，天中节、地腊、诗人节等等。端午节的别称之多，间接说明了端午节俗起源的歧出。事实也正是这样的。关于端午节的来源，时至今日有很多种说法。\r\n  2016端午节放假安排高速免费时间表：\r\n  一、元旦：1月1日至3日放假调休，共3天，1月4日(星期一)上班，元旦高速公路不免费。\r\n  二、春节：2月7日至2月13日，共放假7天。高速公路免费时间从2月7日00：00开始，最后一天为2月13日24：00结束。\r\n  三、清明节：4月2日至4日放假调休，共3天。高速公路免费时间为4月2日00：00开始，到4月4日24：00结束。\r\n  四、劳动节：4月30日(周六)至5月2日(周一)放假，共3天。高速公路免费时间为4月30日00：00开始，到5月2日00：00结束。\r\n  五、端午节：6月9(周四)日至11日(周六)放假，共3天。端午节高速公路不免费。\r\n  六、中秋节：9月15日至9月17日，放假三天。中秋节高速公路不免费。\r\n  七、国庆节：10月1日(星期六)至10月7日(星期五)，放假7天。国庆节高速公路免费时间为10月1日00：00开始，到10月7日24：00结束。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0041', '矿山地质环境保护与治理恢复方案审查结果公示', '根据《国土资源部办公厅关于做好矿山地质环境保护与治理恢复方案编制审查及有关工作的通知》（国土资厅发〔2009〕61号）和《关于矿山地质环境保护与治理恢复方案有关事项的公告》（2014年第21号），我部组织专家对山西潞安环保能源开发股份有限公司王庄煤矿等7个矿山地质环境保护与治理恢复方案（以下简称“方案”）进行了审查。现将拟同意通过的该7个“方案”及专家评审意见进行公示，公示期自发布之日起5个工作日。\r\n如有异议，请在公示期内与国土资源部地质环境司监测处联系。\r\n联系人及电话：李明路 010-66558317/8316（传真）\r\n \r\n  \r\n2016年5月30日\r\n \r\n7个拟通过的矿山地质环境保护\r\n与治理恢复方案\r\n \r\n序号\r\n方案名称\r\n1\r\n山西潞安环保能源开发股份有限公司王庄煤矿矿山地质环境保护与恢复治理方案（修编）\r\n2\r\n国电英力特能源化工集团股份有限公司银星二号煤矿矿山地质环境保护与恢复治理方案\r\n3\r\n青海省大柴旦青龙沟金矿矿山地质环境保护与恢复治理方案\r\n4\r\n中国石油化工股份有限公司中原油田分公司内蒙古二连盆地白音查干凹陷锡林好来油田矿山地质环境保护与恢复治理方案\r\n5\r\n中国石油天然气股份有限公司吉林油田分公司英台油田矿山地质环境保护与恢复治理方案\r\n6\r\n甘肃省金昌市白家嘴子镍铜矿矿山地质环境保护与恢复治理方案\r\n7\r\n陕西省榆林市大梁湾煤矿有限公司大梁湾煤矿矿山地质环境保护与恢复治理方案\r\n', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0042', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0043', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0044', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0045', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0046', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0047', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');
INSERT INTO `tbl_notice` VALUES ('402880e63cf62235013cf62b3f9e0048', '端午放假通知', '端午放假时间：2016/06/09-2016/06/11，2016/06/12为正常上班时间。', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11', '402880e63cf62235013cf62b3f9e0036', '2016-06-05 13:15:11');

-- ----------------------------
-- Table structure for tbl_out_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_out_apply`;
CREATE TABLE `tbl_out_apply` (
  `OUT_APPLY_ID` varchar(128) NOT NULL COMMENT '外出申请ID',
  `DEPARTMENT_ID` varchar(128) NOT NULL COMMENT '部门ID',
  `DEPARTMENT_NAME` varchar(100) NOT NULL COMMENT '部门名',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `REASON` varchar(200) DEFAULT NULL COMMENT '理由',
  `APPLY_START_TIME` datetime DEFAULT NULL COMMENT '申请开始时间',
  `APPLY_END_TIME` datetime DEFAULT NULL COMMENT '申请结束时间',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '0：待审批，1：已审批',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`OUT_APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_out_apply
-- ----------------------------
INSERT INTO `tbl_out_apply` VALUES ('402880b255a1da2b0155a1dc53f90001', '10001', '总经办', '1', 'test', '有事情', '2016-06-01 00:00:00', '2016-06-01 00:00:00', '0', 'ddddd', '2016-06-25 00:00:00', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:11:12');
INSERT INTO `tbl_out_apply` VALUES ('402880b3563ca73001563caaead10001', '10001', '总经办', 'ff8080814de59817014de5a309000001', '员工2', '我有事情的', '2016-07-04 00:00:00', '2016-07-29 00:00:00', '1', '总经理', '2016-07-27 00:00:00', '10000001', 'ff8080814de59817014de5a309000001', '2016-07-31 00:37:29', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 00:42:29');

-- ----------------------------
-- Table structure for tbl_punch_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_punch_apply`;
CREATE TABLE `tbl_punch_apply` (
  `PUNCH_APPLY_ID` varchar(128) NOT NULL COMMENT '外出申请ID',
  `DEPARTMENT_ID` varchar(128) NOT NULL COMMENT '部门ID',
  `DEPARTMENT_NAME` varchar(100) NOT NULL COMMENT '部门名',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `REASON` varchar(200) DEFAULT NULL COMMENT '理由',
  `APPLY_PUNCH_TIME` datetime DEFAULT NULL COMMENT '忘记打卡时间',
  `IN_OR_OUT` varchar(11) DEFAULT '0' COMMENT '忘记打卡区间 1:上班, 2:下班',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '0：待审批，1：已审批',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`PUNCH_APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_punch_apply
-- ----------------------------
INSERT INTO `tbl_punch_apply` VALUES ('402880b255a1da2b0155a1dc53f90001', '10001', '总经办', '1', 'test', '有事情', '2016-06-01 00:00:00', '1', '1', 'ddddd', '2016-06-25 00:00:00', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-06-30 23:11:12');
INSERT INTO `tbl_punch_apply` VALUES ('402880b3563cc1fc01563cc5875a0001', '10001', '总经办', '402880e63cf62235013cf62b3f9e0036', '总经理', '我要出去', '2016-07-20 01:06:28', '2', '1', '总经理', '2016-07-27 00:00:00', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 01:06:33', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 01:10:13');

-- ----------------------------
-- Table structure for tbl_punished
-- ----------------------------
DROP TABLE IF EXISTS `tbl_punished`;
CREATE TABLE `tbl_punished` (
  `PUNISHED_ID` varchar(128) NOT NULL COMMENT '惩罚ID',
  `DEPARTMENT_ID` varchar(128) NOT NULL COMMENT '部门ID',
  `DEPARTMENT_NAME` varchar(100) NOT NULL COMMENT '部门名',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `REASON` varchar(200) DEFAULT NULL COMMENT '惩罚理由',
  `MONEY` decimal(6,0) DEFAULT NULL COMMENT '惩罚金额',
  `PUNISHED_TIME` datetime DEFAULT NULL COMMENT '惩罚时间',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '0：待审批，1：已审批，2：已罚款',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`PUNISHED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_punished
-- ----------------------------
INSERT INTO `tbl_punished` VALUES ('402880b255aa8ad70155aab0f90d0002', '10001', '总经办', '1', 'test', '111', '212', '2016-07-14 00:00:00', '1', '总经理', '2016-07-13 00:00:00', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-02 16:19:32', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:54:07');
INSERT INTO `tbl_punished` VALUES ('402880b3563d933001563d98bfee0001', '10003', '理财部', '402880ea3e16bb36013e16c06eee0001', '员工1', '211', '1212', '2016-07-13 00:00:00', '0', '', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:57:16', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:57:16');

-- ----------------------------
-- Table structure for tbl_reward
-- ----------------------------
DROP TABLE IF EXISTS `tbl_reward`;
CREATE TABLE `tbl_reward` (
  `REWARD_ID` varchar(128) NOT NULL COMMENT '惩罚ID',
  `DEPARTMENT_ID` varchar(128) NOT NULL COMMENT '部门ID',
  `DEPARTMENT_NAME` varchar(100) NOT NULL COMMENT '部门名',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `REASON` varchar(200) DEFAULT NULL COMMENT '奖励理由',
  `MONEY` decimal(6,0) DEFAULT NULL COMMENT '奖励金额',
  `REWARD_TIME` datetime DEFAULT NULL COMMENT '奖励时间',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '0：待审批，1：已审批，2：已奖励',
  `REVIEW_PERSON` varchar(100) DEFAULT NULL COMMENT '审核人',
  `REVIEW_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`REWARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_reward
-- ----------------------------
INSERT INTO `tbl_reward` VALUES ('402880b3563d6e4301563d72ba300002', '10003', '理财部', '402880ea3e16bb36013e16c06eee0001', '员工1', '12222', '1222', '2016-07-07 00:00:00', '1', '总经理', '2016-07-29 00:00:00', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:15:44', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 04:41:37');

-- ----------------------------
-- Table structure for tbl_user_salary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_salary`;
CREATE TABLE `tbl_user_salary` (
  `SALARY_ID` varchar(128) NOT NULL COMMENT '工资ID',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `MONTH` varchar(10) NOT NULL COMMENT '月份YYYY/MM',
  `THE_MONTH_LEVEL` varchar(10) NOT NULL COMMENT '当月级别',
  `SECOND_MONTH_LEVEL` varchar(10) DEFAULT NULL COMMENT '次月级别',
  `ATTENDANCE_RECORDS` int(5) DEFAULT NULL COMMENT '出勤天数',
  `BASE_SALARY` decimal(10,0) NOT NULL COMMENT '基本工资',
  `FIVE_INSURANCE` decimal(10,1) DEFAULT NULL COMMENT '五险',
  `ACCUMULATION_FUND` decimal(10,0) DEFAULT NULL COMMENT '公积金',
  `SICK_LEAVE` decimal(10,0) DEFAULT NULL COMMENT '事病假',
  `LATE_PRINCIPLE` decimal(10,0) DEFAULT NULL COMMENT '迟到违纪',
  `REAL_BASE_SALARY` decimal(10,1) NOT NULL COMMENT '实发基本工资',
  `PERFORMANCE` decimal(10,0) DEFAULT NULL COMMENT '绩效',
  `PERCENTAGE` decimal(10,3) DEFAULT NULL COMMENT '提成',
  `SUBTOTAL` decimal(10,2) DEFAULT NULL COMMENT '提成奖金小计',
  `REAL_SALARY` decimal(10,2) DEFAULT NULL COMMENT '实发工资',
  `INFO` varchar(200) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(2) NOT NULL DEFAULT '0' COMMENT '0：未发，1：已发',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SALARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_salary
-- ----------------------------
INSERT INTO `tbl_user_salary` VALUES ('1', '1', '1', '1', '1', '11', '1', '1', '1.0', '1', '1', '1', '1.0', '1', '1.000', '1.00', '1.00', '1', '0', '111', null, null, null, null);
INSERT INTO `tbl_user_salary` VALUES ('4', '4', '', '', '', null, null, '0', null, null, null, null, '0.0', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `tbl_user_salary` VALUES ('402880b25592510201559266476f0004', '1', 'test', '2016-06', '1212s', '12', '12', '12', '12.0', '12', '12', '12', '121.0', '12', '12.000', '12.00', '12.00', '1212', '0', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-06-29 15:52:46');
INSERT INTO `tbl_user_salary` VALUES ('402880b3563ce22401563cf232a80001', '402880e63cf62235013cf62b3f9e0036', '总经理', '2016-05', 'C1', 'C2', '12', '12121', '12.0', '11', '12', '12', '12.0', '12', '12.000', '12.00', '12.00', '222', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 01:55:20', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:17:00');
INSERT INTO `tbl_user_salary` VALUES ('402880e93d80c483013d811e7a3b0063', '402880e93d80c483013d811e7a3b0063', '副总经理', '2016-08', '1212', '12111', '12111', '12111', '12.0', '12', '12', '12', '121.0', '12', '12.000', '12.00', '12.00', '1212', '1', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 03:16:27');
