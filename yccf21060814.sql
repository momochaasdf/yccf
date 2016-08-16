/*
Navicat MySQL Data Transfer

Source Server         : 【本地测试】- 127.0.0.1
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : yccf

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-08-16 20:26:34
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
INSERT INTO `com_backup` VALUES ('402880b65665ac49015665adbc8a0001', 'yccf', 'c:/yccf/', 'yccf1470584700041.sql', 'sys', '2016-08-07 23:45:00', 'sys', '2016-08-07 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b65688efff015689ba40850001', 'yccf', 'c:/yccf/', 'yccf1471189500035.sql', 'sys', '2016-08-14 23:45:00', 'sys', '2016-08-14 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b6568eac8001568ee09c750071', 'yccf', 'c:/yccf/', 'yccf1471275900018.sql', 'sys', '2016-08-15 23:45:00', 'sys', '2016-08-15 23:45:00');
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
INSERT INTO `com_dict` VALUES ('402880b355e9a5ea0155ea0f356a0005', 'financing_remind_status', '0', '已提醒', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-07-14 23:38:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:24:37');
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
INSERT INTO `com_dict` VALUES ('402880b65688462a0156884e2ee00001', 'loan_apply_status', '4', '借款金额待修改', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 17:07:20', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 17:07:20');
INSERT INTO `com_dict` VALUES ('402880b6568e766101568e97b1ef004a', 'financing_remind_status', '2', '已支付', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:25:21', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:25:21');
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
INSERT INTO `com_function` VALUES ('402880b65687fd6f015687ff3c6d0001', '采购使用管理', '402881823d586374013d587a486c0102', '002-001-009', '/core/goodsUsed/ComM_list.do?type=1', '采购使用管理', '6', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:41:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:41:24');
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
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003b480002', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003b4d0003', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003c710004', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003c7b0005', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4a93840001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003c840006', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b14940002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003c8e0007', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b8d940003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003c980008', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4bf39b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ca20009', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d0e000a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4dbf51005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d24000b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4e4ff90060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d31000c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4eb76c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d3c000d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4f1e6b0062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d47000e', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d52000f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5276f00001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d5d0010', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5311830002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d6b0011', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d790012', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d850013', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5533070003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d920014', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5580130004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003d9e0015', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe566e000005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003daa0016', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe56ba8e0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003db70017', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5729b70007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003dc40018', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe579f930008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003dd30019', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003de3001a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5845520009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003df1001b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe58b605000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003dfe001c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe592c35000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e0c001d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe59a6df000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e1b001e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5a1c90000d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e2a001f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e3a0020', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e490021', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5aad22000e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e5a0022', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5affca000f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e6a0023', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5b54ee0010', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e7c0024', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5bbad30011', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e900025', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003e960026', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003eaf0027', '402881c04ef67ce5014ef6b65ce30001', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ec00028', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ed00029', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ee1002a', '402881c04ef67ce5014ef6b65ce30001', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ef1002b', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f02002c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f14002d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f25002e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f38002f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f490030', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f5b0031', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f730032', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003f850033', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003fa10034', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003fb80035', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003fcc0036', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003fdf0037', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688003ff40038', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880040090039', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800401d003a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004031003b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004046003c', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800405d003d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004072003e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004089003f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800409f0040', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880040b40041', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880040c90042', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880040de0043', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880040f60044', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800410f0045', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041140046', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800412c0047', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041450048', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800415c0049', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004176004a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800418d004b', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041a4004c', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041bc004d', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041d4004e', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880041ec004f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042040050', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800421b0051', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042330052', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800424d0053', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042670054', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042820055', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800429d0056', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042b70057', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042d00058', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880042ea0059', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004304005a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004321005b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800433b005c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004355005d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004373005e', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004391005f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880043ac0060', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880043c70061', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880043e30062', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:13');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044030063', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044340064', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044600065', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044840066', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044a00067', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044be0068', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044db0069', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880044f8006a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004516006b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004539006c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004556006d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004575006e', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004593006f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880045b10070', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880045d10071', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880045f10072', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046130073', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046310074', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046510075', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046760076', '402881c04ef67ce5014ef6b65ce30001', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046990077', '402881c04ef67ce5014ef6b65ce30001', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046b90078', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046db0079', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880046fb007a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800471b007b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800473c007c', '402881c04ef67ce5014ef6b65ce30001', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800475d007d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800477e007e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800479e007f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880047c20080', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:14');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880047e40081', '402881c04ef67ce5014ef6b65ce30001', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880048060082', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800482c0083', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800484f0084', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800487d0085', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880048a50086', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880048c70087', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880048ea0088', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880049120089', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004937008a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800495a008b', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800497e008c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880049a1008d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880049c9008e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880049ee008f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004a130090', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004a3c0091', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004a410092', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004a680093', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004a8f0094', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004ab80095', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004add0096', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004b030097', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004b2a0098', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004b510099', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004b76009a', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004b9c009b', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004bc2009c', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004be8009d', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004c10009e', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004c39009f', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004c6200a0', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004c6700a1', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004c9000a2', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004cb700a3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004ce300a4', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004d0e00a5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004d3b00a6', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004d6600a7', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004d8f00a8', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004db900a9', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004de300aa', '402881c04ef67ce5014ef6b65ce30001', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004e0d00ab', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004e3700ac', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004e6100ad', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004e8f00ae', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004eb900af', '402881c04ef67ce5014ef6b65ce30001', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004ebd00b0', '402881c04ef67ce5014ef6b65ce30001', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004eeb00b1', '402881c04ef67ce5014ef6b65ce30001', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004f1600b2', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004f4000b3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004f6f00b4', '402881c04ef67ce5014ef6b65ce30001', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004fa100b5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004fd400b6', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688004fff00b7', '402881c04ef67ce5014ef6b65ce30001', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800502c00b8', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800505a00b9', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800508700ba', '402881c04ef67ce5014ef6b65ce30001', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880050b600bb', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7ea6370003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880050e500bc', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f5a0c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800511700bd', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f9d1d0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800514600be', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d80973d0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800517400bf', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d813cce0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880051a400c0', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d81ade50008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880051d200c1', '402881c04ef67ce5014ef6b65ce30001', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800520100c2', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800522f00c3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800526000c4', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800528f00c5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880052bd00c6', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880052ec00c7', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800533000c8', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800535f00c9', '402881c04ef67ce5014ef6b65ce30001', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800538e00ca', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:17');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880053bc00cb', '402881c04ef67ce5014ef6b65ce30001', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880053c100cc', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880053f200cd', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800542700ce', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800542b00cf', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800545d00d0', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800549100d1', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054c300d2', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054c800d3', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054d900d4', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054e300d5', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054e700d6', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880054f300d7', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:18');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a8e700d8', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a8eb00d9', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a94900da', '402881c04ef67ce5014ef6b65ce30002', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a95200db', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a95b00dc', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a96600dd', '402881c04ef67ce5014ef6b65ce30002', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a97100de', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a97c00df', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a98800e0', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a99500e1', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9a000e2', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9ab00e3', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9b700e4', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9c100e5', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9cd00e6', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9d900e7', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9e500e8', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9f100e9', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800a9fe00ea', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa0d00eb', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa1c00ec', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa2d00ed', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa3d00ee', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa4a00ef', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa5900f0', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa6900f1', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa7700f2', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa8400f3', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aa9200f4', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aab500f5', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aac600f6', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aad500f7', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aae300f8', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aae800f9', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aaf900fa', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab0900fb', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab1800fc', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab2800fd', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab3900fe', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab4900ff', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab5a0100', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab6a0101', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab7a0102', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ab8b0103', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800abac0104', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800abbd0105', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800abcf0106', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800abe00107', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800abf30108', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac060109', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac19010a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac2b010b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac3d010c', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac50010d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac65010e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac7c010f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ac8f0110', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aca20111', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800acb60112', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800accb0113', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ace20114', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800acf70115', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad0b0116', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad200117', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad340118', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad4a0119', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad60011a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad75011b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ad8c011c', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ada3011d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800adb9011e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800add2011f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800adea0120', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae010121', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae180122', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae320123', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae490124', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae610125', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae790126', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800ae940127', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aeae0128', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aec60129', '402881c04ef67ce5014ef6b65ce30002', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aede012a', '402881c04ef67ce5014ef6b65ce30002', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800aef8012b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af12012c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af2b012d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af44012e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af5d012f', '402881c04ef67ce5014ef6b65ce30002', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af780130', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800af910131', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800afab0132', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800afc50133', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800afe20134', '402881c04ef67ce5014ef6b65ce30002', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0020135', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b01d0136', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0380137', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0560138', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0710139', '402881c04ef67ce5014ef6b65ce30002', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b08f013a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0aa013b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0c8013c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b0e5013d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b101013e', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b11e013f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b13b0140', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1580141', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1750142', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1950143', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1b30144', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1b80145', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1d70146', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800b1fb0147', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:42');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f0b20148', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f0b70149', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f0ea014a', '402881c04ef67ce5014ef6b65ce30003', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f0f3014b', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f0fd014c', '402881c04ef67ce5014ef6b65ce30003', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f107014d', '402881c04ef67ce5014ef6b65ce30003', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f111014e', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f11b014f', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1250150', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f12f0151', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1390152', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1430153', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f14f0154', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f15a0155', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1650156', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1710157', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f17d0158', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1880159', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f194015a', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1a0015b', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1ad015c', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1ba015d', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1c8015e', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1d6015f', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1e30160', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1f10161', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f1ff0162', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f20d0163', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f21a0164', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2290165', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f23a0166', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2480167', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2590168', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f25f0169', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f273016a', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f282016b', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f292016c', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2a4016d', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2b4016e', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2c4016f', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2d50170', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2e50171', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f2f60172', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f3080173', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f31b0174', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f32c0175', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f33e0176', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f3510177', '402881c04ef67ce5014ef6b65ce30003', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f3550178', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f3690179', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f37c017a', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f381017b', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f396017c', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568800f3a9017d', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:42:58');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880122b7017e', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880122bc017f', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880122c10180', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880122fc0181', '402881c04ef67ce5014ef6b65ce30004', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123070182', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123110183', '402881c04ef67ce5014ef6b65ce30004', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801231c0184', '402881c04ef67ce5014ef6b65ce30004', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123270185', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123310186', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801233b0187', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123460188', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123510189', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801235b018a', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688012367018b', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688012377018c', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688012385018d', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688012391018e', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801239c018f', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123a80190', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123b40191', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123c10192', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123cd0193', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123da0194', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123ea0195', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880123f60196', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124040197', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124120198', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124210199', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801242f019a', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801243d019b', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688012450019c', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801245e019d', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801246d019e', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801247c019f', '402881c04ef67ce5014ef6b65ce30004', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801248b01a0', '402881c04ef67ce5014ef6b65ce30004', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801249a01a1', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124aa01a2', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124bb01a3', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124cc01a4', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124dd01a5', '402881c04ef67ce5014ef6b65ce30004', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124ee01a6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880124fe01a7', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801250e01a8', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801251f01a9', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801253301aa', '402881c04ef67ce5014ef6b65ce30004', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801254601ab', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801255801ac', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801256a01ad', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801257f01ae', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801259101af', '402881c04ef67ce5014ef6b65ce30004', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880125a801b0', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880125bb01b1', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880125cf01b2', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880125e401b3', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880125f801b4', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801260e01b5', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801262301b6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801263901b7', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801264e01b8', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801266201b9', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801267601ba', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801267c01bb', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:11');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801269301bc', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880126a801bd', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:12');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880183d301be', '402881c04ef67ce5014ef6b65ce30005', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:35', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:35');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880183d801bf', '402881c04ef67ce5014ef6b65ce30005', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:35', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:35');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801847401c0', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801847901c1', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801848701c2', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801849101c3', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4a93840001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801849d01c4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4b14940002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184a601c5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4b8d940003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184b101c6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4bf39b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184bb01c7', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184c501c8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4dbf51005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184d001c9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4e4ff90060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184dd01ca', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4eb76c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184e801cb', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe47fa0155fe4f1e6b0062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184f301cc', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880184fe01cd', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5276f00001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801850a01ce', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5311830002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801851701cf', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801852201d0', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801852f01d1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5533070003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801853b01d2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5580130004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801854701d3', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe566e000005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801855701d4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe56ba8e0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801856501d5', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5729b70007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801857201d6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe579f930008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801857f01d7', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801858d01d8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5845520009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801859b01d9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe58b605000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185a801da', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe592c35000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185b701db', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe59a6df000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185c701dc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5a1c90000d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185d501dd', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185e401de', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880185f301df', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5aad22000e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801860201e0', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5affca000f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801861201e1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5b54ee0010', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801862401e2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5bbad30011', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801863401e3', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801863801e4', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801864b01e5', '402881c04ef67ce5014ef6b65ce30005', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801865b01e6', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801866c01e7', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801867c01e8', '402881c04ef67ce5014ef6b65ce30005', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801868d01e9', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186a001ea', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186b301eb', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186c301ec', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186d501ed', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186e601ee', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880186fa01ef', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801870f01f0', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801872101f1', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801873301f2', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801874601f3', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801875901f4', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801876d01f5', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801878001f6', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801879401f7', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880187a801f8', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880187bd01f9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880187d201fa', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880187ec01fb', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801880001fc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801881501fd', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:36');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801882b01fe', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801884001ff', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188570200', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801886d0201', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188830202', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801889a0203', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801889e0204', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188b70205', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188ce0206', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188e60207', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880188fe0208', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880189150209', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801892e020a', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018945020b', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801895f020c', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018978020d', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018991020e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880189aa020f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880189c30210', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880189dc0211', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880189f40212', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a100213', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a2a0214', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a440215', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a5d0216', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a780217', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018a920218', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018aac0219', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ac6021a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ae2021b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018afd021c', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018b18021d', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018b34021e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018b50021f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018b6b0220', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018b870221', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ba40222', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018bc10223', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018bdf0224', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018bfc0225', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:37');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018c1f0226', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018c3e0227', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018c5b0228', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018c7a0229', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018c9c022a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018cba022b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018cd7022c', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018cfb022d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018d19022e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018d39022f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018d5a0230', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018d7b0231', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018d9c0232', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018dbb0233', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ddc0234', '402881c04ef67ce5014ef6b65ce30005', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018dfc0235', '402881c04ef67ce5014ef6b65ce30005', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018e1c0236', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018e3e0237', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018e5e0238', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018e800239', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ea2023a', '402881c04ef67ce5014ef6b65ce30005', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ec3023b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ee4023c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018f05023d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018f27023e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018f48023f', '402881c04ef67ce5014ef6b65ce30005', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018f6a0240', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018f8d0241', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018fb20242', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018fd70243', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:38');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688018ffa0244', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801901d0245', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801903f0246', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880190640247', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880190880248', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880190ab0249', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880190d2024a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880190fd024b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019127024c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801914d024d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019172024e', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801919c024f', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880191a30250', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880191cf0251', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880191f50252', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801921e0253', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880192430254', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801926d0255', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880192960256', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880192bc0257', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880192e50258', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801930c0259', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019333025a', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801935b025b', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019382025c', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880193ad025d', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880193d5025e', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880193d9025f', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:39');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880194030260', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801942c0261', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880194530262', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801947c0263', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880194a60264', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880194ce0265', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880194f90266', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880195220267', '402881c04ef67ce5014ef6b65ce30005', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801954c0268', '402881c04ef67ce5014ef6b65ce30005', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880195780269', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880195a1026a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880195cb026b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880195f6026c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019620026d', '402881c04ef67ce5014ef6b65ce30005', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801964e026e', '402881c04ef67ce5014ef6b65ce30005', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019679026f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880196a30270', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880196ce0271', '402881c04ef67ce5014ef6b65ce30005', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880196f90272', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880197250273', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880197500274', '402881c04ef67ce5014ef6b65ce30005', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801977c0275', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880197ab0276', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:40');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880197d70277', '402881c04ef67ce5014ef6b65ce30005', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880198030278', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880198300279', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019860027a', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801988d027b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880198bb027c', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880198ec027d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801991b027e', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019948027f', '402881c04ef67ce5014ef6b65ce30005', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880199770280', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880199ab0281', '402881c04ef67ce5014ef6b65ce30005', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880199b00282', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880199e00283', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019a120284', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019a180285', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019a4a0286', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019a790287', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019aa90288', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019aae0289', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019ae2028a', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42df7a930142df7fa2700004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019b12028b', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019b16028c', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688019b4a028d', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:41');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cec8028e', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cecd028f', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cef70290', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf050291', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf0b0292', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf170293', '402881c04ef67ce5014ef6b65ce30006', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf200294', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf2a0295', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf340296', '402881c04ef67ce5014ef6b65ce30006', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf3d0297', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf470298', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf510299', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf5c029a', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf67029b', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf72029c', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf81029d', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf8d029e', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cf99029f', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfa502a0', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfb102a1', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfbc02a2', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfc902a3', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfd602a4', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cfe402a5', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801cff302a6', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d00102a7', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d00f02a8', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d01c02a9', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d02a02aa', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d03902ab', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d04602ac', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d05502ad', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d06302ae', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d07202af', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d08102b0', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d09002b1', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0a202b2', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0b202b3', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0c302b4', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0d302b5', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0e302b6', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d0f402b7', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d10602b8', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d11602b9', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d11b02ba', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d12e02bb', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568801d13f02bc', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:43:55');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e1b02bd', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e2002be', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e5c02bf', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e6102c0', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e6c02c1', '402881c04ef67ce5014ef6b65ce30007', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e7602c2', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e8102c3', '402881c04ef67ce5014ef6b65ce30007', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e8a02c4', '402881c04ef67ce5014ef6b65ce30007', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e9402c5', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021e9d02c6', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ea702c7', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021eb302c8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ebd02c9', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ec902ca', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ed702cb', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ee202cc', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021eef02cd', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021efb02ce', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f0a02cf', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f1602d0', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f2202d1', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f3102d2', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f3f02d3', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f4d02d4', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f5a02d5', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f6802d6', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f7602d7', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f8402d8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021f9202d9', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021fa102da', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021faf02db', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021fbe02dc', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021fd002dd', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021fdf02de', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021fee02df', '402881c04ef67ce5014ef6b65ce30007', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688021ffd02e0', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802200102e1', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802201402e2', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802202402e3', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802203302e4', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802204302e5', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802205302e6', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802206402e7', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802207502e8', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:15');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802208802e9', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802209b02ea', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220ad02eb', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220c002ec', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220d202ed', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220e402ee', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220f702ef', '402881c04ef67ce5014ef6b65ce30007', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880220fc02f0', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802211102f1', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802212302f2', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802212802f3', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802213c02f4', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802215002f5', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:16');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880256c602f6', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880256cb02f7', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880256fe02f8', '402881c04ef67ce5014ef6b65ce30008', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802570702f9', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802571102fa', '402881c04ef67ce5014ef6b65ce30008', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802571a02fb', '402881c04ef67ce5014ef6b65ce30008', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802572302fc', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802572d02fd', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:29');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802573802fe', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802574302ff', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802574d0300', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257570301', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257610302', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802576c0303', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257770304', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257820305', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802578e0306', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257990307', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257a50308', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257b20309', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257bf030a', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257cb030b', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257d7030c', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257e3030d', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257f1030e', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880257fe030f', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802580b0310', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802581e0311', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802582b0312', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258390313', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258470314', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258550315', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258630316', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258680317', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802587a0318', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258890319', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f015688025898031a', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258a8031b', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258b8031c', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258ca031d', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258df031e', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880258f0031f', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259010320', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259110321', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259220322', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259320323', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259440324', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259590325', '402881c04ef67ce5014ef6b65ce30008', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259610326', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259750327', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259870328', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802598c0329', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259a1032a', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f0156880259b4032b', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:30');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aeba032c', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aebe032d', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aeee032e', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aef2032f', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aefd0330', '402881c04ef67ce5014ef6b65ce30009', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af070331', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af100332', '402881c04ef67ce5014ef6b65ce30009', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af190333', '402881c04ef67ce5014ef6b65ce30009', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af230334', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af2e0335', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af380336', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af430337', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af4e0338', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af590339', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af64033a', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af6f033b', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af7b033c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af86033d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af91033e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802af9e033f', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802afa90340', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802afb60341', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802afc60342', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802afd20343', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802aff40344', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0010345', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b00e0346', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b01b0347', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0290348', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0370349', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b045034a', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b053034b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b061034c', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b06f034d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b07e034e', '402881c04ef67ce5014ef6b65ce30009', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b08c034f', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0910350', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0a30351', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0b40352', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0c40353', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0d60354', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0e80355', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b0f80356', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:52');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b10c0357', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b11d0358', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b12f0359', '402881c04ef67ce5014ef6b65ce30009', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b140035a', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b151035b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b162035c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b176035d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b18c035e', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b192035f', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b1a60360', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');
INSERT INTO `com_role_function` VALUES ('402880b65687fd6f01568802b1b80361', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:44:53');

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
INSERT INTO `com_user_role` VALUES ('402880b65687a984015687b51d510001', 'ff8080814de59817014de5a309000001', '402881c04ef67ce5014ef6b65ce30005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 14:20:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 14:20:08');
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
  `LATE_TIMES` varchar(100) DEFAULT NULL COMMENT '迟到次数',
  `LATE_POINT` varchar(128) DEFAULT NULL COMMENT '迟到点数',
  `LEAVE_EARLY_TIMES` varchar(128) DEFAULT NULL COMMENT '早退次数',
  `LEAVE_EARLY_POINT` varchar(255) DEFAULT NULL COMMENT '早退点数',
  `OVER_NORMAL` varchar(255) DEFAULT NULL COMMENT '加班[正常]',
  `OVER_SPECIAL` varchar(255) DEFAULT NULL COMMENT '加班[特殊]',
  `ALL_DAYS` varchar(255) DEFAULT NULL COMMENT '总天数',
  `ATTENDANCE_DAYS` varchar(10) DEFAULT '0' COMMENT '出勤天数',
  `OUT_DAYS` varchar(10) DEFAULT NULL COMMENT '出差天数',
  `LEAVE_DAYS` varchar(10) DEFAULT NULL COMMENT '请假天数',
  `ABSENT_DAYS` varchar(10) DEFAULT NULL COMMENT '旷工天数',
  `WORK_TIME_NORMAL` varchar(10) DEFAULT NULL COMMENT '工作时数	[标准]',
  `WORK_TIME_REAL` varchar(10) DEFAULT NULL COMMENT '工作时数	[实际]',
  `START_TIME` datetime DEFAULT NULL COMMENT '考勤开始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT '考勤结束时间',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ATTENDANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_attendance
-- ----------------------------
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed75190018', '1.0', '', '史莉莉', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '30', '16', '0.0', '14.0', '14.0', '240.0', '54.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed75610019', '2.0', '', '孙静', '1.0', '103.0', '0.0', '0.0', '0.0', '0.0', '30', ' 2', '0.0', '28.0', '28.0', '240.0', '0.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed757f001a', '3.0', '', '陶晶', '1.0', '11.0', '1.0', '23.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '27.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed75a4001b', '4.0', '', '石远征', '1.0', '18.0', '0.0', '0.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '63.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed75c1001c', '5.0', '', '宣杨', '3.0', '18.0', '0.0', '0.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '81.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed75e6001d', '6.0', '', '丁帮媛', '1.0', '33.0', '0.0', '0.0', '0.0', '0.0', '30', '17', '0.0', '13.0', '13.0', '240.0', '49.5', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed7604001e', '7.0', '', '华久蓉', '1.0', '26.0', '1.0', '11.0', '0.0', '0.0', '30', '11', '0.0', '19.0', '19.0', '240.0', '26.8', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed7628001f', '8.0', '', '周样', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '30', ' 4', '0.0', '26.0', '26.0', '240.0', '13.5', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed76520020', '9.0', '', '杜凯', '1.0', '15.0', '1.0', '23.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '35.6', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed76760021', '10.0', '', '叶丛苇', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '30', ' 4', '0.0', '26.0', '26.0', '240.0', '18.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed76940022', '11.0', '', '李媛媛', '1.0', '11.0', '0.0', '0.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '31.5', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed76b80023', '13.0', '', '王雪军', '2.0', '28.0', '1.0', '23.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '71.6', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed76da0024', '15.0', '', '赵蓉', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '30', ' 0', '0.0', '30.0', '30.0', '240.0', '0.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed77060025', '14.0', '', '李海琳', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '30', ' 0', '0.0', '30.0', '30.0', '240.0', '0.0', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed77320026', '17.0', '', '宣德芸', '1.0', '29.0', '0.0', '0.0', '0.0', '0.0', '30', '17', '0.0', '13.0', '13.0', '240.0', '49.5', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);
INSERT INTO `tbl_attendance` VALUES ('402880b65665ea24015665ed77500027', '16.0', '', '潘娟娟', '1.0', '11.0', '0.0', '0.0', '0.0', '0.0', '30', '19', '0.0', '11.0', '11.0', '240.0', '49.5', '2016-04-01 00:00:00', '2016-04-30 00:00:00', null, null, null, null);

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
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a124f5c0006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a12521b0007', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a125ee40008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a131f79000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a150bf9000d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a150e55000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7759d90002', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7842c80004', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e792ce30006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7a16c50008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7b011a000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7beb67000c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7cd62d000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7dc0210010', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7eaa760012', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7f95110014', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8082450016', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e816a180018', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e825433001a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e833ea8001c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8428c7001e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e85137b0020', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e85fd8f0022', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e86e7f90024', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e87d2440026', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e88bcc90028', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e89a701002a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8a91a8002c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8b7c17002e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8c663e0030', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8d50a90032', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8e3b0c0034', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8f259a0036', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e900fa30038', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e90fa48003a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e91e47a003d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e92cefa003f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e93b9630041', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e94a3b70043', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e958e1e0045', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e96787c0047', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9762b60049', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e984d6a004c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e99376f004e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9a22110050', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9b0c420052', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9bf6a30054', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9ce1090056', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9dcb600058', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9eb5be005a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9fa000005c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea08a7d005e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea174dd0060', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea25f460062', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea349a20064', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea434030066', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea51e5f0068', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea608fb006a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea6f31f006c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea7dd80006e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea8c7ed0070', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea9b2420072', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568eaa9c940074', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568eab86f80076', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ead5c040002', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eae46230004', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eaf31600006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb01b050008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb10577000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb1efca000c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb2da38000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb3c4870010', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb4aec70012', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb5994c0014', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb683ad0016', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb76dfc0018', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb85840001a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb942c1001c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eba2d6b001e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebb17e80020', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebc01e70022', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebcec350024', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebdd6820026', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebec0e70028', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebfab42002a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec09595002c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec17ffd002e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec26a780030', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec354c90032', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec43f3e0034', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec5298f0036', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec613fb0038', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec6fe54003a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec7e8a3003c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec8d33d003e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec9bd700040', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecaa7e00042', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecb92380044', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecc7cd10046', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecd66e60048', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ece51b1004a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecf3bbc004c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed02612004e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed110830050', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed1fad00052', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed2e53f0054', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed3cfbf0056', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed4b9ee0058', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed5a450005a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed68ea1005c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed778ff005e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed8635e0060', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed94dbe0062', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eda38200064', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edb22780066', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edc0ceb0068', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edcf761006a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edde18c006c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edecbf4006e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edfb67e0070', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee0a0dd0073', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee18b320075', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee275920077', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee35ff50079', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee44a27007b', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee534b4007d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee61f1c007f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee7096b0081', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee7f3ca0083', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee8de3e0085', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee9c8ac0087', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eeab2bc0089', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eeb9d40008b', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eec87fd008d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eed71f7008f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '1', null, null, null, null);
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
INSERT INTO `tbl_financing_apply` VALUES ('402880b356036b02015603a9c4820002', '40288133552a0db801552a13417c0002', 'test', null, null, '2016-08-14 00:00:00', '12111', '1', '12.0', '12', '12', '12.0', '12', '1', '2016-07-28 00:00:00', '2016-07-30 00:00:00', '12', '12', '121212', '1', 'test', '1', '', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 21:29:03');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0001', '402880b255bb6f130155bb73e0c10001', 'test', null, null, '2016-08-13 00:00:00', '212', '4', '12.0', '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');

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
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb73e0c10001', '12', '2016-08-16 00:00:00', '0', '1', '1111111', '122', '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7409680002', '222', '2016-08-15 00:00:00', '0', '1', '12', '1221', '2', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7468550004', '1222', '2016-08-15 00:00:00', '0', '1', '2', '21', '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56');
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
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '1', '112', null, '2016-07-14 23:39:48', null, null, null, null, '2', '1', '6月12日（周日）上班', '1', '1', null, '0', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
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
INSERT INTO `tbl_goods_purchase` VALUES ('402880b356036b020156039448900001', 'test', 'test', '11.00', '12', '12.00', '总经理', '2016-08-09 00:00:00', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-07-19 22:34:24', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 23:41:57');
INSERT INTO `tbl_goods_purchase` VALUES ('402880b3564127f201564129615e0002', 'bijiben', 'bijiben', '12.00', '12', '12.00', '总经理', '2016-07-13 00:00:00', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 21:34:06', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 21:37:06');

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
INSERT INTO `tbl_goods_stock` VALUES ('402880b6568e766101568e9170c7003b', '计算器', '12.00', '14', '12', '12', '3', '2', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:18:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:18:31');

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
INSERT INTO `tbl_goods_used` VALUES ('402880b65687fd6f015688031ec00362', 'ceshi', 'ceshi', '12', 'ff8080814de59817014de5a309000001', '员工2', '1', null, null, '10000001', 'ff8080814de59817014de5a309000001', '2016-08-14 15:45:21', 'ff8080814de59817014de5a309000001', '2016-08-14 15:45:21');

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
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec02d10011', '端午节', '2016-06-09 00:00:00', '2016-06-11 00:00:00', '3', '6月12日（周日）上班111', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec02dd0012', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec02eb0013', '国庆节', '2016-10-01 00:00:00', '2016-10-07 00:00:00', '7', '10月8日（周六）、10月9日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec02f80014', '元旦', '2016-01-01 00:00:00', '2016-01-03 00:00:00', '3', '与周末连休', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec03040015', '春节', '2016-02-07 00:00:00', '2016-02-13 00:00:00', '7', '2月6日（周六）、2月14日（周日）上班', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec030e0016', '清明节', '2016-04-02 00:00:00', '2016-04-04 00:00:00', '3', '与周末连休', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday` VALUES ('402880b65665ea24015665ec03180017', '劳动节', '2016-04-30 00:00:00', '2016-05-02 00:00:00', '3', '5月2日（周一）补休', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
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
INSERT INTO `tbl_holiday_remind` VALUES ('402880b65689d4c1015689d5b9720001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b65689d821015689d8780a0001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0b5e01568a0bbce70001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a0f6a880001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1053a10002', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a113dff0004', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1228500005', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1312b10009', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a13fd12000b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a14e770000c', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a15d1dc000f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a16bc3c0010', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a17a69e0011', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1890f20012', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a197b570013', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1a65b30014', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1b501a0015', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1c3a710016', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1d24d10017', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568a0e9d01568a1e0f3b0018', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7758990001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e78419a0003', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e792bf10005', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7a16580007', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7b00b20009', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7beb10000b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7cd573000d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7dbfd3000f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7eaa310011', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e7f94990013', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e807f740015', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e81698c0017', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8253bd0019', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e833e1f001b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e842875001d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8512e0001f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e85fd330021', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e86e7a00023', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e87d1f10025', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e88bc600027', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e89a6b10029', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8a9121002b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8b7b7c002d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8c65db002f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8d503d0031', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8e3a9d0033', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e8f252c0035', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e900f5e0037', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e90f9bb0039', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e91e41c003c', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e92ce79003e', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e93b8db0040', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e94a3370042', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e958d990044', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9677f90046', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9762560048', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e984cb0004b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e993719004d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9a2179004f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9b0bdb0051', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9bf6390053', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9ce0950055', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9dcaf80057', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9eb5590059', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568e9f9fb8005b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea08a1a005d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea17479005f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea25edb0061', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea349340063', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea4339a0065', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea51dfe0067', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea6085b0069', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea6f2b9006b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea7dd1b006d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea8c774006f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568ea9b1d30071', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568eaa9c390073', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568e766101568eab869a0075', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ead5b800001', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eae45be0003', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eaf30a40005', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb01a860007', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb104e00009', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb1ef3e000b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb2d9a1000d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb3c3fd000f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb4ae640011', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb598c00013', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb6831c0015', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb76d7c0017', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb857dc0019', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eb9423b001b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eba2cdf001d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebb1730001f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebc015a0021', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebcebb90023', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebdd6170025', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebec0780027', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ebfaad10029', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec09530002b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec17f95002d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec269f9002f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec3545c0031', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec43eb90033', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec529140035', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec613760037', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec6fdd70039', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec7e847003b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec8d299003d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ec9bcf5003f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ecaa75c0041', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ecb91bb0043', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ecc7c4f0045', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ecd66770047', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ece51120049', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ecf3b39004b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed02599004d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed10ff9004f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed1fa590051', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed2e4b90053', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed3cf180055', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed4b97b0057', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed5a3d70059', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed68e38005b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed77897005d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed862fa005f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ed94d590061', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eda37b90063', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edb221b0065', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edc0c780067', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edcf6fb0069', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edde130006b', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edecb9a006d', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568edfb5f9006f', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee0a0550072', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee18abc0074', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee275190076', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee35f9e0078', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee449cf007a', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee53439007c', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee61e9a007e', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee7091d0080', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee7f37f0082', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee8ddba0084', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568ee9c8130086', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eeab2700088', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eeb9cda008a', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eec876b008c', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
INSERT INTO `tbl_holiday_remind` VALUES ('402880b6568eac8001568eed719a008e', '中秋节', '2016-09-15 00:00:00', '2016-09-17 00:00:00', '3', '9月18（周日）上班', '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-08 00:53:01');
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
INSERT INTO `tbl_loan_apply` VALUES ('402880b255caa05b0155caa4eadc0002', '40288133552a0db801552a144fad0003', '借款部', '21ww23', '21', '21', '212', '121', '212', '121', '212', '12', '1212', '1', '12', '1', null, '1_test', '1', '1', 'test', '2016-07-20 00:00:00', '2016-07-29 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', '12', '叁万柒仟捌佰贰拾伍元', '12.0', '伍元', '12', '', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-08 21:19:54');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417b28140001', '402894825549b34f015549ca1ccb0007', '二位', '12', '1222222', '121', '213', '123', '123123123123123213', '133', '123213', '123213123', '123123', '1321', '123', '1', null, '1_test', '1', '402880ea3e16bb36013e16c06eee0001', '员工1', '2016-07-16 00:00:00', '2016-07-30 00:00:00', '12', '12.0', '123', '123', '2', '1', '8', '123', '柒万伍仟陆佰伍拾元', '123.0', '伍佰陆拾伍元', '', '总经理', null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:03:25', '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:18:08');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417df6350006', '402894825549b34f015549ca1ccb0007', '121', '21ww23', '12222221', '212', '121', '121', '1212', '121', '1212', '1212', '1212', '1212', '12', '1', null, '1_test', '1', '402880ea3e16bb36013e16c06eee0001', '员工1', '2016-06-16 00:00:00', '2016-07-28 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', '12', '柒万陆仟柒佰陆拾壹元', '12.0', '柒仟伍佰陆拾伍元', null, null, null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:07:51');

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
  PRIMARY KEY (`LOAN_COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_collection
-- ----------------------------
INSERT INTO `tbl_loan_collection` VALUES ('402880b255bb6f130155bb87015c0008', '112', '1222', '1', '212', '12', '12', '12', '12', '1', '12', '1212121', '1', '1', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 23:23:04');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efafebc0097', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '12345678901', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efb01aa0098', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '12345678901', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efc17d2009a', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efc181d009b', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efd0239009c', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efd0272009d', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efdec96009e', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efdece8009f', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efed6f000a0', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efed74200a1', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568effc15900a2', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568effc1b000a3', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f00abbb00a4', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f00ac1300a5', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f01960100a6', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f01964f00a7', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f02806700a8', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0280b200a9', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f036ad800aa', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f036b0600ab', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f04556a00ac', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0455c400ad', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f053f8b00ae', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f05400000af', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0629e900b0', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f062a2300b1', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f07144900b2', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0714a700b3', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f07feac00b4', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f07fee100b5', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f08e90f00b6', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f08e94000b7', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f09d36400b8', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f09d39600b9', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0abdc200ba', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0abe0d00bb', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0ba82b00bc', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0ba88500bd', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0c929b00be', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0c92ea00bf', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0d7ce400c0', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0d7d2000c1', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0e674200c2', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0e679400c3', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0f51a900c4', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f0f51f800c5', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f103c0d00c6', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f103c6a00c7', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f11266b00c8', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f11269d00c9', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f1210e300ca', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568f12113900cb', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f253e01568f254cce0001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f253e01568f254d2d0002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f2f6e230001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f2f77e80002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f30472f0003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f3047890004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f31318b0005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f2f2001568f3131d60006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f33069b0001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f33070a0002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f33f0ec0003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f33f1270004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f34db9e0005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f34dbf30006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f35c5b10007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f35c5ec0008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f36afdf0009', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f36b015000a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f379a49000b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f321101568f379a7f000c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f38c001568f396f550001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f38c001568f396fa70002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f40c3740001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f40c4290002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f41ac860003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f41acbe0004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f4296b90005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f4296fd0006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f43810e0007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f407301568f43814c0008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4b0baf0001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4b0bff0002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4bf5510003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4bf5e30004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4ce0870005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4ce0e00006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4dca940007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4dcb130008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4eb46f0009', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4eb4a9000a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4f9ea5000b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f4f9edd000c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f508912000d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f508966000e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f517372000f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5173cf0010', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f525dcc0011', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f525e080012', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5348220013', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5348710014', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5432b20015', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5432e80016', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f551d070017', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f551d360018', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5607660019', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f5607d0001a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f56f1d6001b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f56f209001c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f57dc15001d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f57dca6001e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f58c674001f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f4a7701568f58c6df0020', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f59b3a90001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f59b4340002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5a9b270003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5a9bc50004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5b857d0005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5b85d80006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5c6fdf0007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f599301568f5c70820008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f5f2feb0001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f5f30430002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6019660003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f601a1b0004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6103c30005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6104790006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f61ee280007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f61eecd0008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f62d8780009', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f62d8b4000a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f63c2e6000b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f63c390000c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f64ad3d000d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f64ada7000e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6597a5000f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6598640010', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6681f00011', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6682270012', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f676c5b0013', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f676cd80014', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6856b80015', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6857120016', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6941120017', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6941620018', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6a2b740019', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568f5eea01568f6a2bbc001a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692754a880001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692754b4b0002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927633050003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569276333c0004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692771d900005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692771e020006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927807bc0007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927808360008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569278f2210009', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569278f270000a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569279dc85000b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569279dcf0000c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927ac6dd000d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927ac75f000e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927bb139000f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927bb16b0010', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927c9b960011', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927c9beb0012', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927d86030013', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927d86550014', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927e705e0015', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927e70b20016', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927f5b280017', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156927f5b680018', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928045240019', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569280457f001a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692812fd3001b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692813005001c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928219d7001d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692821a23001e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569283048a001f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928304d00020', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569283eea30021', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569283ef0d0022', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569284d8fc0023', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569284d9670024', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569285c35e0025', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569285c3b20026', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569286adb30027', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569286adfe0028', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928798160029', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692879865002a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569288827f002b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928882c8002c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692896d2f002d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692896d60002e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928a5743002f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928a57b20030', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928b419d0031', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928b420f0032', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928c2bfd0033', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928c2c560034', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928d165c0035', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928d16b60036', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928e00b80037', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928e00fa0038', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928eeb170039', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928eeb78003a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928fd577003b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156928fd5c4003c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569290c022003d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569290c05b003e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569291aa35003f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569291aa850040', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569292949c0041', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929294ed0042', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692937efd0043', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692937f370044', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929469580045', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929469e30046', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929553b70047', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929554240048', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692963e180049', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692963e98004a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569297286f004b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929728d5004c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929812c6004d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692981331004e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569298fd3a004f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569298fd940050', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569299e7a10051', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569299e8010052', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929ad2120053', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929ad24e0054', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929bbc540055', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929bbca40056', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929ca6a80057', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929ca7100058', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929d910d0059', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929d914b005a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929e7b7b005b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929e7bc2005c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929f65de005d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156929f662b005e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a051f2005f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a052630060', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a13acd0061', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a13b230062', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a2250f0063', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a225620064', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a30f820065', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a30fcc0066', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a3f9d00067', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a3fa110068', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a4e4290069', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a4e480006a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a5ce84006b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a5ceb1006c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a6b8fc006d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a6b949006e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a7a365006f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a7a3b50070', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a88da60071', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a88df70072', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a978000073', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692a978610074', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692aa62690075', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692aa63090076', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ab4cc80077', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ab4d390078', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ac37290079', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ac377b007a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ad219d007b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ad21e9007c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ae0be9007d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ae0c5c007e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692aef646007f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692aef6ae0080', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692afe0ab0081', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692afe1320082', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b0cb1a0083', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b0cb990084', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b1b5660085', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b1b5bc0086', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b29fb70087', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b2a0160088', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b38a440089', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b38aa4008a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b4746a008b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b474ba008c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b55eea008d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b55f31008e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b6494a008f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b649890090', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b733940091', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b733ed0092', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b81e060093', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b81e5d0094', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b908640095', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b908cc0096', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b9f2c10097', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692b9f3050098', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692badd210099', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692badd6f009a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bbc780009b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bbc7cf009c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bcb20f009d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bcb24f009e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bd9c3c009f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bd9c8d00a0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692be868700a1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692be86e100a2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bf711a00a3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692bf716000a4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c05b7b00a5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c05bcd00a6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c145ab00a7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c145f500a8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c2302100a9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c2307000aa', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c31a7e00ab', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c31adb00ac', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c4053b00ad', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c4059300ae', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c4ef3500af', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c4ef8400b0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c5d99a00b1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c5d9e600b2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c6c3f100b3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c6c44200b4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c7ae5100b5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c7ae9500b6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c898b800b7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c8992400b8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c9835300b9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692c9838c00ba', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ca6d7a00bb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ca6db000bc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cb57d100bd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cb583900be', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cc423a00bf', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cc427b00c0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cd2ca300c1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cd2cf500c2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ce171d00c3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ce174e00c4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cf015800c5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cf019a00c6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cfebbc00c7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692cfec0e00c8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d0d61f00c9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d0d67700ca', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d1c07d00cb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d1c0ce00cc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d2aae100cd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d2ab3400ce', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d3953f00cf', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d3956f00d0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d47f9a00d1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d4800300d2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d56a1000d3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d56a5e00d4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d6545700d5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d654df00d6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d73ebe00d7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d73eec00d8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d8291b00d9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d8294e00da', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d9137c00db', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d913ca00dc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d9fdde00dd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692d9fe3400de', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dae83900df', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dae88800e0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dbd29900e1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dbd2f200e2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dcbcfc00e3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dcbd4e00e4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dda75100e5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692dda7bf00e6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692de91b700e7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692de91f000e8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692df7c1600e9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692df7c6f00ea', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e0667900eb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e066d300ec', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e150da00ed', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e1513a00ee', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e23b3c00ef', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e23b8700f0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e3259800f1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e325ed00f2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e40ff100f3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e4104200f4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e4fa4a00f5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e4fa9100f6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e5e4ba00f7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e5e50c00f8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e6cf1d00f9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e6d03a00fa', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e7b99900fb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e7b9e000fc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e8a3de00fd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e8a43000fe', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e98e3f00ff', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692e98e990100', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ea789f0101', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ea790a0102', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692eb62ee0103', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692eb63390104', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ec4d5c0105', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ec4db40106', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ed37bb0107', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ed37f60108', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ee22260109', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ee225c010a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ef0c76010b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ef0cce010c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692eff6cb010d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692eff722010e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f0e130010f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f0e1880110', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f1cb840111', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f1cc180112', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f2b5e50113', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f2b63d0114', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f3a0640115', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f3a0980116', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f48ac30117', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f48b140118', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f575130119', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f57580011a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f65f82011b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f65fd2011c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f749cd011d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f74a21011e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f8343f011f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f8349c0120', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f91e9b0121', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692f91ee80122', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fa08fe0123', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fa094a0124', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692faf35b0125', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692faf3950126', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fbddb50127', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fbdea30128', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fcc8540129', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fcc88b012a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fdb27b012b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fdb2cc012c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fe9cf3012d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692fe9d3d012e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ff8740012f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015692ff87a70130', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569300718b0131', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930071db0132', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693015bfc0133', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693015c890134', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569302469f0135', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930246d10136', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930331050137', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569303313e0138', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693041b690139', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693041b9d013a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693050566013b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930505b8013c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569305efdf013d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569305f02c013e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569306da76013f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569306daad0140', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569307c4ce0141', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569307c5200142', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569308aefb0143', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569308af520144', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930999bc0145', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930999f30146', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930a83a80147', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930a84020148', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930b6e820149', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930b6ecd014a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930c5886014b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930c58db014c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930d42d9014d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930d4308014e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930e2d3c014f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930e2d920150', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930f17b00151', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156930f18070152', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931001fc0153', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569310024b0154', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569310ec610155', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569310ecb40156', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569311d6a90157', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569311d6f80158', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569312c1250159', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569312c178015a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569313ab64015b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569313ab94015c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931495d8015d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693149645015e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693158036015f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931580a20160', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693166a9b0161', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693166acf0162', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931754f90163', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931755630164', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693183f6c0165', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693183fa30166', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931929a30167', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931929f60168', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931a14150169', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931a146b016a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931afe7a016b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931afecd016c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931be9d6016d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931bea11016e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931cd36d016f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931cd3a80170', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931dbd880171', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931dbdd50172', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931ea7ed0173', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931ea83f0174', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931f925c0175', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156931f92930176', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693207ca40177', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693207d0a0178', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932167150179', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569321675d017a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693225172017b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932251c5017c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693233bd1017d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693233c06017e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569324263b017f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932426900180', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932510890181', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932510f70182', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569325faff0183', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569325fb420184', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569326e5450185', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569326e5b00186', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569327cfbc0187', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569327d00f0188', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569328ba130189', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569328ba64018a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569329a478018b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569329a4ae018c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932a8efd018d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932a8f50018e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932b7935018f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932b797f0190', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932c63920191', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932c63e30192', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932d4de30193', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932d4e3e0194', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932e38550195', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932e38a00196', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932f22c70197', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156932f23000198', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693300d2d0199', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693300d75019a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569330f78d019b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569330f7f9019c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569331e1d7019d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569331e21d019e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569332cc39019f', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569332cc8801a0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569333b69d01a1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569333b6e801a2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569334a10f01a3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569334a16d01a4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693358b6101a5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693358bb701a6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933675aa01a7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569336761101a8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569337603401a9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569337608c01aa', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693384a8801ab', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693384aba01ac', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933934ce01ad', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569339350e01ae', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933a1f3601af', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933a1f8301b0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933b099001b1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933b09e801b2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933bf3f001b3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933bf42101b4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933cde5101b5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933cde8e01b6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933dc8b201b7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933dc91001b8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933eb30c01b9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933eb35501ba', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933f9d6701bb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156933f9dc001bc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934087c701bd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569340882401be', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569341723b01bf', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569341729601c0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693425c9901c1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693425ce201c2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934346ef01c3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569343473a01c4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569344315f01c5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934431a001c6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693451bb501c7', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856927495015693451c0601c8', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569346061901c9', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569346064901ca', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569346f08301cb', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569346f0d701cc', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569347dadd01cd', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569347db2b01ce', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569348c53701cf', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569348c58901d0', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569349af9c01d1', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa85692749501569349afe901d2', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934a9a0901d3', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934a9a5301d4', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934b847201d5', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa8569274950156934b84d101d6', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934d5d940001', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934d5e370002', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934e438f0003', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934e43f10004', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934f2de10005', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156934f2e1a0006', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d1801569350188b0007', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156935018e70008', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d180156935102bb0009', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d18015693510319000a', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);

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
