 /*
Navicat MySQL Data Transfer

Source Server         : 【本地连接】- 3307
Source Server Version : 50547
Source Host           : localhost:3307
Source Database       : yccf

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-10-18 10:54:12
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
INSERT INTO `com_backup` VALUES ('402880b556d1afb40156d1d348d60001', 'yccf', 'c:/yccf/', 'yccf1472399100116.sql', 'sys', '2016-08-28 23:45:00', 'sys', '2016-08-28 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b65665ac49015665adbc8a0001', 'yccf', 'c:/yccf/', 'yccf1470584700041.sql', 'sys', '2016-08-07 23:45:00', 'sys', '2016-08-07 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b65688efff015689ba40850001', 'yccf', 'c:/yccf/', 'yccf1471189500035.sql', 'sys', '2016-08-14 23:45:00', 'sys', '2016-08-14 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b6568eac8001568ee09c750071', 'yccf', 'c:/yccf/', 'yccf1471275900018.sql', 'sys', '2016-08-15 23:45:00', 'sys', '2016-08-15 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b656ad8ed50156adc6c4ca016b', 'yccf', 'c:/yccf/', 'yccf1471794300103.sql', 'sys', '2016-08-21 23:45:00', 'sys', '2016-08-21 23:45:00');
INSERT INTO `com_backup` VALUES ('402880b657ce09a50157ce2ae4b60004', 'yccf', 'c:/yccf/', 'yccf1476632700082.sql', 'sys', '2016-10-16 23:45:00', 'sys', '2016-10-16 23:45:00');
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
INSERT INTO `com_dict` VALUES ('402880b556d137f30156d15c279f0001', 'birthday_remind_status', '1', '未发短信', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:34:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:34:52');
INSERT INTO `com_dict` VALUES ('402880b556d137f30156d15c70b30002', 'birthday_remind_status', '2', '已发短信', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:35:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:35:11');
INSERT INTO `com_dict` VALUES ('402880b556d137f30156d15f07270003', 'birthday_remind_status', '3', '未预定蛋糕', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:01', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:01');
INSERT INTO `com_dict` VALUES ('402880b556d137f30156d15f65670004', 'birthday_remind_status', '4', '已预订蛋糕', null, null, '4', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:25', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:25');
INSERT INTO `com_dict` VALUES ('402880b556d137f30156d15fa3110005', 'birthday_remind_status', '5', '已送达', null, null, '5', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 21:38:41');
INSERT INTO `com_dict` VALUES ('402880b65688462a0156884e2ee00001', 'loan_apply_status', '4', '通过(金额修改)', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 17:07:20', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 17:07:20');
INSERT INTO `com_dict` VALUES ('402880b6568e766101568e97b1ef004a', 'financing_remind_status', '2', '已支付', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:25:21', '402880e63cf62235013cf62b3f9e0036', '2016-08-15 22:25:21');
INSERT INTO `com_dict` VALUES ('402880b657cc78630157cca77d1b0001', 'financing_status', '1', '理财中', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:41:50', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:42:05');
INSERT INTO `com_dict` VALUES ('402880b657cc78630157cca812570002', 'financing_status', '2', '理财完', null, null, '2', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:42:29', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:42:29');
INSERT INTO `com_dict` VALUES ('402880b657cc78630157cca84baa0003', 'financing_status', '3', '中止违约', null, null, '3', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:42:44', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 16:42:44');
INSERT INTO `com_dict` VALUES ('402880b657ce09a50157ce1674630001', 'financing_contract_code', 'YC', '理财合同编码前缀', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:22:40', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:22:40');
INSERT INTO `com_dict` VALUES ('402880b657ce09a50157ce16da830002', 'loan_contract_code', 'YC', '借款合同编码前缀', null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:23:06', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:23:06');
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
INSERT INTO `com_function` VALUES ('402880b556d027830156d081363b0004', '新增', '402880b65687fd6f015687ff3c6d0001', 'goods_use_add', '%', '新增', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:35:44', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:35:44');
INSERT INTO `com_function` VALUES ('402880b556d027830156d0818a3e0005', '修改', '402880b65687fd6f015687ff3c6d0001', 'goods_use_edit', '%', '修改', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:05');
INSERT INTO `com_function` VALUES ('402880b556d027830156d081ece30006', '删除', '402880b65687fd6f015687ff3c6d0001', 'goods_use_del', '%', '删除', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:30');
INSERT INTO `com_function` VALUES ('402880b556d027830156d08244850007', '查看', '402880b65687fd6f015687ff3c6d0001', 'goods_use_load', '%', '查看', '4', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:36:53');
INSERT INTO `com_function` VALUES ('402880b65687fd6f015687ff3c6d0001', '采购使用管理', '402881823d586374013d587a486c0102', '002-001-009', '/core/goodsUsed/ComM_list.do?type=1', '采购使用管理', '6', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:41:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 15:41:24');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad982bf80001', '请假管理', '402881823d586374013d587a487c0007', '003-001-006', '/core/leaveApply/ComM_list.do?type=5', '请假管理', '6', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:54:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:54:06');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9933c70002', '外出管理 ', '402881823d586374013d587a487c0007', '003-001-007', '/core/outApply/ComM_list.do?type=5', '外出管理 ', '7', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:55:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:55:13');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad99c7a50003', '忘打卡管理', '402881823d586374013d587a487c0007', '003-001-008', '/core/punchApply/ComM_list.do?type=5', '忘打卡管理', '8', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:55:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:55:51');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9cf67f0004', '修改', '402880b656ad8ed50156ad982bf80001', 'leave_zong_edit', '%', '1', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:59:20', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:59:20');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9d8e610005', '删除', '402880b656ad8ed50156ad982bf80001', 'leave_zong_del', '%', '删除', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:59:59', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 22:59:59');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9e2f110006', '查看', '402880b656ad8ed50156ad982bf80001', 'leave_zong_load', '%', '查看', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:00:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:00:40');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9ea0810007', '修改', '402880b656ad8ed50156ad9933c70002', 'out_zong_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:01:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:01:09');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9eee760008', '删除', '402880b656ad8ed50156ad9933c70002', 'out_zong_del', '%', '删除', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:01:29', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:01:29');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9f7dcc0009', '查看', '402880b656ad8ed50156ad9933c70002', 'out_zong_load', '%', '查看', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:06');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ad9fee3c000a', '修改', '402880b656ad8ed50156ad99c7a50003', 'punch_zong_edit', '%', '修改', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:34');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ada04906000b', '删除', '402880b656ad8ed50156ad99c7a50003', 'punch_zong_del', '%', '删除', '2', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:02:58');
INSERT INTO `com_function` VALUES ('402880b656ad8ed50156ada09834000c', '查看', '402880b656ad8ed50156ad99c7a50003', 'punch_zong_load', '%', '查看', '3', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:03:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:03:18');
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
INSERT INTO `com_function` VALUES ('402881e741eea33c0141eea445460001', '借款还款', '402881e741ed54340141ed59c6760003', '005-002-001', '/back/loan/list.do?type=2', '', null, '', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 16:04:04', '402880e63cf62235013cf62b3f9e0036', '2013-10-25 16:04:04');
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
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852cde0008', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:03', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:03');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ce40009', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:03', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:03');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852dbe000a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852dcf000b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4a93840001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852de1000c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b14940002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ded000d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4b8d940003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852df7000e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4bf39b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e04000f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e100010', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4dbf51005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e1c0011', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4e4ff90060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e280012', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4eb76c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e350013', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe47fa0155fe4f1e6b0062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e430014', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e510015', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5276f00001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e5f0016', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5311830002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e6c0017', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e7a0018', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e880019', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5533070003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852e96001a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5580130004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ea4001b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe566e000005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852eb3001c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe56ba8e0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ec9001d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5729b70007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ed9001e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe579f930008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852eea001f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ef90020', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5845520009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f090021', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe58b605000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f260022', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe592c35000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f3f0023', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe59a6df000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f560024', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5a1c90000d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f6b0025', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f7b0026', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f8c0027', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5aad22000e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852f9d0028', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5affca000f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852fb00029', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5b54ee0010', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852fc6002a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5bbad30011', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852fd7002b', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852fdd002c', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0852ff6002d', '402881c04ef67ce5014ef6b65ce30001', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085300b002e', '402881c04ef67ce5014ef6b65ce30001', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085301f002f', '402881c04ef67ce5014ef6b65ce30001', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530340030', '402881c04ef67ce5014ef6b65ce30001', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085304a0031', '402881c04ef67ce5014ef6b65ce30001', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085305e0032', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530790033', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530930034', '402881c04ef67ce5014ef6b65ce30001', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530a70035', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530bd0036', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530d50037', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08530ec0038', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08531010039', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:04');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853116003a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085312c003b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853142003c', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085315c003d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853173003e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085318a003f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08531a00040', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08531b70041', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08531cf0042', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08531e80043', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532000044', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532190045', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532310046', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085324a0047', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532640048', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085327c0049', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853295004a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532b1004b', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532d1004c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08532ec004d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853305004e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085331f004f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533270050', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533480051', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad982bf80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533630052', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9cf67f0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085337e0053', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9d8e610005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085339e0054', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9e2f110006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533be0055', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9933c70002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533d90056', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9ea0810007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08533f60057', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9eee760008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534130058', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9f7dcc0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534300059', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad99c7a50003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085344d005a', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ad9fee3c000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853469005b', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ada04906000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853486005c', '402881c04ef67ce5014ef6b65ce30001', '402880b656ad8ed50156ada09834000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534a5005d', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534c1005e', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534df005f', '402881c04ef67ce5014ef6b65ce30001', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:05');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08534fd0060', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085351e0061', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08535400062', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085356c0063', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085359b0064', '402881c04ef67ce5014ef6b65ce30001', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08535be0065', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08535de0066', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08536030067', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08536290068', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085364c0069', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853670006a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853695006b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08536bb006c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08536e0006d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085370c006e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853730006f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08537510070', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08537780071', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085379d0072', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08537c10073', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08537e80074', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085380b0075', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085382e0076', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08538560077', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085387c0078', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08538a10079', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08538cb007a', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:06');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08538f2007b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853917007c', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853940007d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853968007e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085398c007f', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08539b30080', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08539dc0081', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853a020082', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853a2a0083', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853a510084', '402881c04ef67ce5014ef6b65ce30001', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853a770085', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853aa00086', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853aca0087', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853af40088', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853b210089', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853b49008a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853b71008b', '402881c04ef67ce5014ef6b65ce30001', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853ba0008c', '402881c04ef67ce5014ef6b65ce30001', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853bca008d', '402881c04ef67ce5014ef6b65ce30001', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853bf2008e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853c1f008f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853c4b0090', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853c760091', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853ca50092', '402881c04ef67ce5014ef6b65ce30001', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:07');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853ccf0093', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853cf90094', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853d280095', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853d540096', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853d7f0097', '402881c04ef67ce5014ef6b65ce30001', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853dab0098', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853dd60099', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853e02009a', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853e2e009b', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853e59009c', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853e89009d', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853eb5009e', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853ee2009f', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853f1000a0', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853f3c00a1', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853f6b00a2', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853f9c00a3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853fca00a4', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0853ff900a5', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085402700a6', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085405600a7', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085405f00a8', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085409200a9', '402881c04ef67ce5014ef6b65ce30001', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:08');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08540c200aa', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08540f200ab', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085412000ac', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085415300ad', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085418200ae', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08541b300af', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08541f500b0', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085422500b1', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085425a00b2', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085428c00b3', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08542c400b4', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08542f700b5', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085432b00b6', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085433100b7', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085436700b8', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085439a00b9', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08543d100ba', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085440500bb', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085443b00bc', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085447300bd', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08544c200be', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08544fc00bf', '402881c04ef67ce5014ef6b65ce30001', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085452f00c0', '402881c04ef67ce5014ef6b65ce30001', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085456300c1', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085459900c2', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08545cf00c3', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085460400c4', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085463e00c5', '402881c04ef67ce5014ef6b65ce30001', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085464300c6', '402881c04ef67ce5014ef6b65ce30001', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085467d00c7', '402881c04ef67ce5014ef6b65ce30001', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08546b600c8', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08546ec00c9', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085472400ca', '402881c04ef67ce5014ef6b65ce30001', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085475a00cb', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085479700cc', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08547cd00cd', '402881c04ef67ce5014ef6b65ce30001', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085480b00ce', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085484200cf', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085487b00d0', '402881c04ef67ce5014ef6b65ce30001', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08548b200d1', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7ea6370003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08548ec00d2', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f5a0c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085492500d3', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d7f9d1d0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085496100d4', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d80973d0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08549a100d5', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d813cce0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08549e200d6', '402881c04ef67ce5014ef6b65ce30001', '402880b3563d6e4301563d81ade50008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854a1d00d7', '402881c04ef67ce5014ef6b65ce30001', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854a6100d8', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854a9d00d9', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854adf00da', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854b1d00db', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854b5800dc', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854b9800dd', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854bd500de', '402881c04ef67ce5014ef6b65ce30001', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854c1200df', '402881c04ef67ce5014ef6b65ce30001', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854c4e00e0', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854c8b00e1', '402881c04ef67ce5014ef6b65ce30001', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854c9100e2', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854cce00e3', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854d0d00e4', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854d1300e5', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854d5400e6', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854d9000e7', '402881c04ef67ce5014ef6b65ce30001', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854dd000e8', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854dd700e9', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854e1700ea', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d42df7a930142df7fa2700004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854e5f00eb', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854e6400ec', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0854ea800ed', '402881c04ef67ce5014ef6b65ce30001', '4ae6ee4d43242e03014324301a880003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085985e00ee', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085986600ef', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085991e00f0', '402881c04ef67ce5014ef6b65ce30002', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085992b00f1', '402881c04ef67ce5014ef6b65ce30002', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085993600f2', '402881c04ef67ce5014ef6b65ce30002', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085994100f3', '402881c04ef67ce5014ef6b65ce30002', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085994b00f4', '402881c04ef67ce5014ef6b65ce30002', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085995700f5', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085996300f6', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085996f00f7', '402881c04ef67ce5014ef6b65ce30002', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085997b00f8', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085998700f9', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085999800fa', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599a500fb', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599b300fc', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599c000fd', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599cd00fe', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599dc00ff', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599ea0100', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08599f80101', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a070102', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a160103', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a260104', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a350105', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a440106', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a540107', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a640108', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a750109', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:31');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a85010a', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859a96010b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859aa7010c', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859ab9010d', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859aca010e', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859adf010f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859af10110', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b040111', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b160112', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b1c0113', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b310114', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad982bf80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b440115', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9cf67f0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b590116', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9d8e610005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b6d0117', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9e2f110006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b820118', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9933c70002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859b980119', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9ea0810007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859bac011a', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9eee760008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859bc2011b', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9f7dcc0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859bd6011c', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad99c7a50003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859bea011d', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ad9fee3c000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859bff011e', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ada04906000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c15011f', '402881c04ef67ce5014ef6b65ce30002', '402880b656ad8ed50156ada09834000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c2d0120', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c430121', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c5c0122', '402881c04ef67ce5014ef6b65ce30002', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c720123', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c880124', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859c9e0125', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859cb50126', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859ccf0127', '402881c04ef67ce5014ef6b65ce30002', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859ce60128', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859cfd0129', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d16012a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d2d012b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d45012c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d5d012d', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d75012e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859d8e012f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859daa0130', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859dc30131', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859ddc0132', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859df50133', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e110134', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e2a0135', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e440136', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e5f0137', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:32');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e7d0138', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859e980139', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859eb4013a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859ecf013b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859eeb013c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859f08013d', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859f26013e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859f44013f', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859f610140', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859f890141', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859fa90142', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859fc80143', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0859fe90144', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a00c0145', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a02d0146', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0500147', '402881c04ef67ce5014ef6b65ce30002', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0740148', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0930149', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0b3014a', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0d6014b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a0f7014c', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a116014d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a137014e', '402881c04ef67ce5014ef6b65ce30002', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a15b014f', '402881c04ef67ce5014ef6b65ce30002', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a17b0150', '402881c04ef67ce5014ef6b65ce30002', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a19c0151', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a1bf0152', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a1e20153', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2020154', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2250155', '402881c04ef67ce5014ef6b65ce30002', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2490156', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:33');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a26f0157', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2910158', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2bb0159', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a2e5015a', '402881c04ef67ce5014ef6b65ce30002', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a307015b', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a329015c', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a356015d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a37a015e', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a39d015f', '402881c04ef67ce5014ef6b65ce30002', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a3c30160', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a3e80161', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a40c0162', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a4300163', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a45c0164', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a4800165', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a4a70166', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a4cf0167', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a4f60168', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a51d0169', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a54a016a', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a550016b', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a57e016c', '402881c04ef67ce5014ef6b65ce30002', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085a5ac016d', '402881c04ef67ce5014ef6b65ce30002', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:34');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e08c016e', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e092016f', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e0ca0170', '402881c04ef67ce5014ef6b65ce30003', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:49');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e0d40171', '402881c04ef67ce5014ef6b65ce30003', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e0e00172', '402881c04ef67ce5014ef6b65ce30003', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e0ec0173', '402881c04ef67ce5014ef6b65ce30003', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e0f60174', '402881c04ef67ce5014ef6b65ce30003', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1020175', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e10d0176', '402881c04ef67ce5014ef6b65ce30003', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1190177', '402881c04ef67ce5014ef6b65ce30003', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1260178', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1330179', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e140017a', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e14d017b', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e15e017c', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e16c017d', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e179017e', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e187017f', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1950180', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1a40181', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1b20182', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1c20183', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1d10184', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1e00185', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1ef0186', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e1ff0187', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e20f0188', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e21e0189', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e231018a', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e242018b', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e252018c', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e263018d', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e275018e', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e288018f', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e29a0190', '402881c04ef67ce5014ef6b65ce30003', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e2b20191', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e2c60192', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e2cb0193', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e2e00194', '402881c04ef67ce5014ef6b65ce30003', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e2f20195', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3040196', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3170197', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e32d0198', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3400199', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e354019a', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e367019b', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e37c019c', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e391019d', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3a6019e', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3ba019f', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3d001a0', '402881c04ef67ce5014ef6b65ce30003', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3e501a1', '402881c04ef67ce5014ef6b65ce30003', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e3eb01a2', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e40801a3', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e41e01a4', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e42401a5', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e43c01a6', '402881c04ef67ce5014ef6b65ce30003', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d085e45401a7', '402881c04ef67ce5014ef6b65ce30003', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:40:50');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862b8c01a8', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862b9201a9', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862b9801aa', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862bd601ab', '402881c04ef67ce5014ef6b65ce30004', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862be101ac', '402881c04ef67ce5014ef6b65ce30004', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862bec01ad', '402881c04ef67ce5014ef6b65ce30004', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862bf701ae', '402881c04ef67ce5014ef6b65ce30004', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c0201af', '402881c04ef67ce5014ef6b65ce30004', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c0f01b0', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c1d01b1', '402881c04ef67ce5014ef6b65ce30004', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c2901b2', '402881c04ef67ce5014ef6b65ce30004', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c3501b3', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c4201b4', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c5101b5', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c5e01b6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c6b01b7', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c8001b8', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c8e01b9', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862c9c01ba', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862caa01bb', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862cba01bc', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862cc901bd', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862cd901be', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862ceb01bf', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862cfa01c0', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d0a01c1', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d1901c2', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d2b01c3', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d3b01c4', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d4c01c5', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d5d01c6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d6d01c7', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d8101c8', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862d9801c9', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862dab01ca', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862dbd01cb', '402881c04ef67ce5014ef6b65ce30004', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862dcf01cc', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862de301cd', '402881c04ef67ce5014ef6b65ce30004', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862dfb01ce', '402881c04ef67ce5014ef6b65ce30004', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e1401cf', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e2801d0', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e3e01d1', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e5301d2', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e6a01d3', '402881c04ef67ce5014ef6b65ce30004', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e8001d4', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862e9401d5', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862eaa01d6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862ec201d7', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862edc01d8', '402881c04ef67ce5014ef6b65ce30004', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:09');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862ef401d9', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f0b01da', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f2301db', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f3a01dc', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f5301dd', '402881c04ef67ce5014ef6b65ce30004', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f6c01de', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f8301df', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862f9b01e0', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862fb101e1', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862fc801e2', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862fe201e3', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0862ffa01e4', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086301101e5', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086302901e6', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086304201e7', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086305c01e8', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086306101e9', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086307d01ea', '402881c04ef67ce5014ef6b65ce30004', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d086309701eb', '402881c04ef67ce5014ef6b65ce30004', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:41:10');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bc2f01ec', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bc3501ed', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bce401ee', '402881c04ef67ce5014ef6b65ce30005', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bcee01ef', '402881c04ef67ce5014ef6b65ce30005', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bcf901f0', '402881c04ef67ce5014ef6b65ce30005', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd0601f1', '402881c04ef67ce5014ef6b65ce30005', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd1101f2', '402881c04ef67ce5014ef6b65ce30005', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd1c01f3', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd2701f4', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd3401f5', '402881c04ef67ce5014ef6b65ce30005', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd4101f6', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd4e01f7', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd5a01f8', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd6901f9', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd7801fa', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd8601fb', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bd9301fc', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bda101fd', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bdaf01fe', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bdbd01ff', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bdcd0200', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bddb0201', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bdee0202', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bdfd0203', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be0f0204', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be1f0205', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be2f0206', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be3f0207', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be500208', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be630209', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be75020a', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be86020b', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087be97020c', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bea8020d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087beba020e', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087becd020f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bee10210', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bee80211', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087befd0212', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad982bf80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf100213', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9cf67f0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf1a0214', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9d8e610005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf240215', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9e2f110006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf2e0216', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9933c70002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf410217', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9ea0810007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf520218', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9eee760008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf5d0219', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9f7dcc0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf69021a', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad99c7a50003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf7d021b', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ad9fee3c000a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf88021c', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ada04906000b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf92021d', '402881c04ef67ce5014ef6b65ce30005', '402880b656ad8ed50156ada09834000c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bf9d021e', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a487wfwef', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bfb4021f', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619373e490001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bfcf0220', '402881c04ef67ce5014ef6b65ce30005', '402880b35619346b015619380a7a0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bfe60221', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087bffd0222', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0120223', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c02a0224', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c04e0225', '402881c04ef67ce5014ef6b65ce30005', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0670226', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0800227', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe69d8f50022', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0970228', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6a278a0023', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0b00229', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6bc94f0024', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0cd022a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6c408b0025', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0e7022b', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c0ff022c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6d7aca0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c118022d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e22a90027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c133022e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6e8b550028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c14d022f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6eed810029', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c1670230', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c1800231', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe6ff0a3002a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c19c0232', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe706a4f002b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c1b70233', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe710f83002c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c1d00234', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe716df1002d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c1ec0235', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2080236', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2260237', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe742991002e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2420238', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe74fb15002f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c25d0239', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe755ce40030', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c278023a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe75bf4f0031', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c295023b', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2b1023c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7723210032', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2ce023d', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7782300033', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c2eb023e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe77da740034', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c30f023f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe78bb640035', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c32c0240', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3490241', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7947580036', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3670242', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe79bd030037', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3860243', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7a67d50038', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3a60244', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7aeace0039', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3c40245', '402881c04ef67ce5014ef6b65ce30005', '402881823d586374013d587a516d0009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c3e50246', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e2e9a003a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4050247', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7e83e0003b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4240248', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7ee393003c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4430249', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe7f301c003d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c464024a', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c483024b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4a3024c', '402881c04ef67ce5014ef6b65ce30005', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4c4024d', '402881c04ef67ce5014ef6b65ce30005', '402881854197327401419735ceba0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c4e6024e', '402881c04ef67ce5014ef6b65ce30005', '40288185419737c50141973bdc4b0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c506024f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe84f03a003f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c5270250', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8566cb0040', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:53');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c54b0251', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe85d00e0041', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c56c0252', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe864dcd0042', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c58d0253', '402881c04ef67ce5014ef6b65ce30005', '402881854202cbd3014202cca11c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c5af0254', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8780800043', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c5d30255', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe88387c0044', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c5f60256', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89871d0045', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c61b0257', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe89de530046', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c63e0258', '402881c04ef67ce5014ef6b65ce30005', '40288185422284130142228877530004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c6600259', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8bfdf10047', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c683025a', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8c75dc0048', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c6a7025b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8cc4cd0049', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c6cb025c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8d1476004a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c6f2025d', '402881c04ef67ce5014ef6b65ce30005', '402881e44ff8e878014ff8ec30880001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c717025e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8dbc59004b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c73a025f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e2409004c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c75e0260', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8e6972004d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c7860261', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe8eb7ba004e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c7ab0262', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c7d10263', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe91a61d004f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c7f90264', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe9203720050', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c81e0265', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe938ce00051', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c8430266', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fe93e6500052', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c8700267', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d43242e03014324301a880005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c8960268', '402881c04ef67ce5014ef6b65ce30005', '402881f04ebf2964014ebf2c02ab0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c89b0269', '402881c04ef67ce5014ef6b65ce30005', '402881f33f79c206013f79da444a0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c8c5026a', '402881c04ef67ce5014ef6b65ce30005', '402881f340375d910140376901040001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c8ef026b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec4e17d0060', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c916026c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5353c0061', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:54');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c941026d', '402881c04ef67ce5014ef6b65ce30005', '402881f340852c4d01408532b0e30001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c96a026e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec5d2890062', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c992026f', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec61be10063', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c9bd0270', '402881c04ef67ce5014ef6b65ce30005', '402881f340b913cf0140b916f75c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087c9e70271', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec68b8b0064', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ca130272', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec6dcca0065', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ca410273', '402881c04ef67ce5014ef6b65ce30005', '402881f340ed52700140ed56b1e20001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ca6d0274', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d7ea6370003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ca990275', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d7f5a0c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087caa50276', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d7f9d1d0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cab30277', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d80973d0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cae30278', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d813cce0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087caf00279', '402881c04ef67ce5014ef6b65ce30005', '402880b3563d6e4301563d81ade50008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cafc027a', '402881c04ef67ce5014ef6b65ce30005', '402881f34115e0af014115e24a850001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cb2e027b', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec7e24b0066', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cb5c027c', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fec8bff90067', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cb8b027d', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410af74bc80001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cbbf027e', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecebc4f0068', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cc06027f', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afdd7040004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cc340280', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecf3f350069', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cc630281', '402881c04ef67ce5014ef6b65ce30005', '402881ff410af46001410afe6a6a0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cc910282', '402881c04ef67ce5014ef6b65ce30005', '402888e4515b76a401515b823d450003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ccbd0283', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fecfc512006a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cce90284', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087ccef0285', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:55');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cd200286', '402881c04ef67ce5014ef6b65ce30005', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:56', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:56');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d087cd4d0287', '402881c04ef67ce5014ef6b65ce30005', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:56', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:42:56');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c1e0288', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c230289', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c58028a', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c62028b', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c67028c', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c74028d', '402881c04ef67ce5014ef6b65ce30006', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c80028e', '402881c04ef67ce5014ef6b65ce30006', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c8c028f', '402881c04ef67ce5014ef6b65ce30006', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880c960290', '402881c04ef67ce5014ef6b65ce30006', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880ca10291', '402881c04ef67ce5014ef6b65ce30006', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cad0292', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cba0293', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cc80294', '402881c04ef67ce5014ef6b65ce30006', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cd70295', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880ce40296', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cf10297', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880cfe0298', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d0c0299', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d1a029a', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d29029b', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d37029c', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d4d029d', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d5d029e', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d6c029f', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d7b02a0', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d8b02a1', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880d9a02a2', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880daa02a3', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880dbe02a4', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880dce02a5', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880ddf02a6', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880df102a7', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e0302a8', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e1402a9', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e2602aa', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e3802ab', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e4b02ac', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e5f02ad', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e7102ae', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e8302af', '402881c04ef67ce5014ef6b65ce30006', '402881823d586374013d587a516c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880e9602b0', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fcee7e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880eaa02b1', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fd53690003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880ebe02b2', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616fec1d20004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880ed202b3', '402881c04ef67ce5014ef6b65ce30006', '402880b35616f129015616ff1e990005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880eee02b4', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f0102b5', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fe824cdf003e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f1502b6', '402881c04ef67ce5014ef6b65ce30006', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f2902b7', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f2f02b8', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f4902b9', '402881c04ef67ce5014ef6b65ce30006', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0880f5f02ba', '402881c04ef67ce5014ef6b65ce30006', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088490202bb', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088490802bc', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088494302bd', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088494802be', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088495502bf', '402881c04ef67ce5014ef6b65ce30007', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088496002c0', '402881c04ef67ce5014ef6b65ce30007', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088496b02c1', '402881c04ef67ce5014ef6b65ce30007', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088497602c2', '402881c04ef67ce5014ef6b65ce30007', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088498202c3', '402881c04ef67ce5014ef6b65ce30007', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088499002c4', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088499c02c5', '402881c04ef67ce5014ef6b65ce30007', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849a702c6', '402881c04ef67ce5014ef6b65ce30007', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849b402c7', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849c002c8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849cd02c9', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849da02ca', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849e902cb', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d08849f902cc', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:27');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a0902cd', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a1802ce', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a2502cf', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a3402d0', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a4302d1', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a5202d2', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a6102d3', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a7202d4', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a8202d5', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884a9202d6', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884aa202d7', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ab302d8', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ac502d9', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ad602da', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ae802db', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884afb02dc', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b0d02dd', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b2102de', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b3402df', '402881c04ef67ce5014ef6b65ce30007', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b4802e0', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b5d02e1', '402881c04ef67ce5014ef6b65ce30007', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b7302e2', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b7902e3', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884b9002e4', '402881c04ef67ce5014ef6b65ce30007', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ba402e5', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884bb802e6', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884bcd02e7', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884bea02e8', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c0102e9', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c1702ea', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c2d02eb', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c4202ec', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c5c02ed', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c7402ee', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884c8b02ef', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884ca102f0', '402881c04ef67ce5014ef6b65ce30007', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884cb902f1', '402881c04ef67ce5014ef6b65ce30007', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884cbe02f2', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884cdb02f3', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884cf102f4', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884cf602f5', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884d1002f6', '402881c04ef67ce5014ef6b65ce30007', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d0884d2702f7', '402881c04ef67ce5014ef6b65ce30007', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:28');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a7c002f8', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:51', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:51');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a7c602f9', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a80102fa', '402881c04ef67ce5014ef6b65ce30008', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a80b02fb', '402881c04ef67ce5014ef6b65ce30008', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a81502fc', '402881c04ef67ce5014ef6b65ce30008', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a81f02fd', '402881c04ef67ce5014ef6b65ce30008', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a82a02fe', '402881c04ef67ce5014ef6b65ce30008', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a83502ff', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8400300', '402881c04ef67ce5014ef6b65ce30008', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a84c0301', '402881c04ef67ce5014ef6b65ce30008', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8590302', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8650303', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8710304', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a87e0305', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a88c0306', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8990307', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8a60308', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8b30309', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8c1030a', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8cf030b', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8dd030c', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8ea030d', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a8f8030e', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a907030f', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9170310', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9250311', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9360312', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9460313', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9580314', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9680315', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9780316', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9890317', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a99a0318', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9b20319', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9cb031a', '402881c04ef67ce5014ef6b65ce30008', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9dd031b', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9ee031c', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f5a73e0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088a9f4031d', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f7b3b60003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa08031e', '402881c04ef67ce5014ef6b65ce30008', '402881e44ff8e878014ff8f9677e0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa1a031f', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe9755790054', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa330320', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3181ee0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa460321', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed329c470004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa5a0322', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fe99da080055', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa6d0323', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed3435f20005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa810324', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed35bcd10006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aa980325', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4639d3006f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aaac0326', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4780f90070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aac10327', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4a159e0071', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aad60328', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4ad5d10072', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088aaeb0329', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4d794b0073', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab07032a', '402881c04ef67ce5014ef6b65ce30008', '402881e741ed11c10141ed4fa88f0074', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab1e032b', '402881c04ef67ce5014ef6b65ce30008', '402888e45166367f01516639353f0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab23032c', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d425b3c2c01425e57be550001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab3b032d', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e1d3910004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab50032e', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab56032f', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab6f0330', '402881c04ef67ce5014ef6b65ce30008', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088ab860331', '402881c04ef67ce5014ef6b65ce30008', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:43:52');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f3eb0332', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f3f10333', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a516d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4290334', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0070', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f42e0335', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0102', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f43b0336', '402881c04ef67ce5014ef6b65ce30009', '402880b65687fd6f015687ff3c6d0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4450337', '402881c04ef67ce5014ef6b65ce30009', '402880b556d027830156d081363b0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4500338', '402881c04ef67ce5014ef6b65ce30009', '402880b556d027830156d0818a3e0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f45c0339', '402881c04ef67ce5014ef6b65ce30009', '402880b556d027830156d081ece30006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f468033a', '402881c04ef67ce5014ef6b65ce30009', '402880b556d027830156d08244850007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f474033b', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0142', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f481033c', '402881c04ef67ce5014ef6b65ce30009', '402880b35616f129015616fc1eda0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f48d033d', '402881c04ef67ce5014ef6b65ce30009', '402880b3561c67b901561c84dfa00002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f499033e', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0988', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4a7033f', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5df37f0012', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4b40340', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486c0989', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4c10341', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5eb6990013', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4cf0342', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f38e20014', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f4e00343', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe5f9d1c0015', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f50c0344', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6014210016', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f51b0345', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0026', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f52c0346', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe60db940017', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f53e0347', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6175760018', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5530348', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe61c9ce0019', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5650349', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe621f6a001a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f576034a', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0027', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f586034b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6357b2001b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f596034c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe63bee2001c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5a6034d', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe642e09001d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5b7034e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe6483f2001e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5c8034f', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a486d0028', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5d90350', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:11');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5ea0351', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe65edf7001f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f5fc0352', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f60d0353', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6200354', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0004', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6350355', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe675e120020', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6490356', '402881c04ef67ce5014ef6b65ce30009', '402881823d586374013d587a487c0005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f65c0357', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe67fcdd0021', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f66e0358', '402881c04ef67ce5014ef6b65ce30009', '402881854196d7cb0141972de0ae0002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6810359', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5038c90075', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f686035a', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed5162830076', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f69f035b', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed11c10141ed51e55f0077', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6b4035c', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fe9fd1c60056', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6c7035d', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed57d7d50001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6db035e', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea0c8740057', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f6ef035f', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea132b50058', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7060360', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea1b0030059', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f71d0361', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fea260b5005a', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f73a0362', '402881c04ef67ce5014ef6b65ce30009', '402881e741ed54340141ed59c6760003', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7500363', '402881c04ef67ce5014ef6b65ce30009', '402881e741eea33c0141eea445460001', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7660364', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb54978005c', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f77c0365', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb5a889005d', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7960366', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb6216a005e', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7af0367', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155feb67250005f', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7cb0368', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7d30369', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60006', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f7eb036a', '402881c04ef67ce5014ef6b65ce30009', '4ae6ee4d42c6d6620142c6e452c60007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');
INSERT INTO `com_role_function` VALUES ('402880b556d027830156d088f805036b', '402881c04ef67ce5014ef6b65ce30009', '402880b355fe51240155fed05f94006b', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:44:12');

-- ----------------------------
-- Table structure for com_user
-- ----------------------------
DROP TABLE IF EXISTS `com_user`;
CREATE TABLE `com_user` (
  `USER_ID` varchar(128) NOT NULL COMMENT '用户ID',
  `LOGIN_ID` varchar(100) NOT NULL COMMENT '登录账号',
  `DEPARTMENT_ID` varchar(128) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(255) DEFAULT NULL,
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
INSERT INTO `com_user` VALUES ('402880b556f4257d0156f43964360001', 'YC0008', '10004', '借款部', '10000001', '债权经理1', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-09-18 00:00:00', 'wuxishibihuqu', '12', 'test@baidu.com', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 16:03:36', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 16:03:36');
INSERT INTO `com_user` VALUES ('402880b556f564250156f57610900001', 'YC0009', '10002', '行政部', '10000001', '签约', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-09-12 00:00:00', '12', '12', 'test@baidu.com', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 21:49:30', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 21:49:30');
INSERT INTO `com_user` VALUES ('402880e63cf62235013cf62b3f9e0036', 'YC0001', '10001', '总经办', '10000001', '总经理', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-08-09 00:00:00', 'wuxishibihuqu', '212', '2222@163.com', null, '1', '402881ef2edb923e012edbfb5f1a0002', '2013-02-20 13:54:55', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 23:00:21');
INSERT INTO `com_user` VALUES ('402880e93d80c483013d811e7a3b0063', 'YC0002', '', null, '10000001', '副总经理', 'dd4b21e9ef71e1291183a46b913ae6f2', null, null, null, null, null, '1', '402880e63cf62235013cf62b3f9e0036', '2013-03-19 13:28:11', '402880e93d80c483013d811e7a3b0063', '2015-10-15 17:24:07');
INSERT INTO `com_user` VALUES ('402880ea3e16bb36013e16c06eee0001', 'YC0003', '', null, '10000001', '员工3', 'dd4b21e9ef71e1291183a46b913ae6f2', null, '', '', '', null, '0', '402880e63cf62235013cf62b3f9e0036', '2013-04-17 14:48:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 14:41:53');
INSERT INTO `com_user` VALUES ('4028919356d42a7d0156d42c34830001', 'YC0005', '10003', '理财部', '10000001', '理财团队经理', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-08-29 00:00:00', '上海', '1212', 'test@baidu.com', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:41:21', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:41:21');
INSERT INTO `com_user` VALUES ('4028919356d42a7d0156d42d11f20003', 'YC0006', '10003', '理财部', '10000001', '理财经理1', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-08-02 00:00:00', '北京', '123', '2222@163.com', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:42:18', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:42:18');
INSERT INTO `com_user` VALUES ('4028919356d42a7d0156d42db3690005', 'YC0007', '10003', '理财部', '10000001', '理财经理2', 'dd4b21e9ef71e1291183a46b913ae6f2', '2016-08-04 00:00:00', '广东', '12', 'test@baidu.com', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:43:00', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:43:00');

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
INSERT INTO `com_user_role` VALUES ('402880b556d027830156d07737330002', '402880e93d80c483013d811e7a3b0063', '402881c04ef67ce5014ef6b65ce30002', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:24:49', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 17:24:49');
INSERT INTO `com_user_role` VALUES ('402880b556d2145e0156d23df4070003', '402880ea3e16bb36013e16c06eee0001', '402881c04ef67ce5014ef6b65ce30009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-29 01:41:30', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 01:41:30');
INSERT INTO `com_user_role` VALUES ('402880b556f4257d0156f43a1e5a0002', '402880b556f4257d0156f43964360001', '402881c04ef67ce5014ef6b65ce30009', null, '402880e63cf62235013cf62b3f9e0036', '2016-09-04 16:04:24', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 16:04:24');
INSERT INTO `com_user_role` VALUES ('402880b556f564250156f57642a40002', '402880b556f564250156f57610900001', '402881c04ef67ce5014ef6b65ce30004', null, '402880e63cf62235013cf62b3f9e0036', '2016-09-04 21:49:43', '402880e63cf62235013cf62b3f9e0036', '2016-09-04 21:49:43');
INSERT INTO `com_user_role` VALUES ('402880b65687a984015687b51d510001', 'ff8080814de59817014de5a309000001', '402881c04ef67ce5014ef6b65ce30005', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-14 14:20:08', '402880e63cf62235013cf62b3f9e0036', '2016-08-14 14:20:08');
INSERT INTO `com_user_role` VALUES ('402880b656abec010156abee85760001', '402880b656abd9bb0156abddef3f0001', '402881c04ef67ce5014ef6b65ce30009', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:09:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:09:10');
INSERT INTO `com_user_role` VALUES ('402881ea4efbb3f4014efbba09c80006', '402880e63cf62235013cf62b3f9e0036', '402881c04ef67ce5014ef6b65ce30001', '', '402880e93d80c483013d811e7a3b0063', '2015-08-05 10:39:10', '402880e93d80c483013d811e7a3b0063', '2015-08-05 10:39:10');
INSERT INTO `com_user_role` VALUES ('4028919356d42a7d0156d42c80330002', '4028919356d42a7d0156d42c34830001', '402881c04ef67ce5014ef6b65ce30007', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:41:41', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:41:41');
INSERT INTO `com_user_role` VALUES ('4028919356d42a7d0156d42d37ad0004', '4028919356d42a7d0156d42d11f20003', '402881c04ef67ce5014ef6b65ce30008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:42:28', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:42:28');
INSERT INTO `com_user_role` VALUES ('4028919356d42a7d0156d42edaed0008', '4028919356d42a7d0156d42db3690005', '402881c04ef67ce5014ef6b65ce30008', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:44:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 10:44:15');

-- ----------------------------
-- Table structure for com_user_team
-- ----------------------------
DROP TABLE IF EXISTS `com_user_team`;
CREATE TABLE `com_user_team` (
  `TEAM_ID` varchar(128) NOT NULL COMMENT '用户ID',
  `USER_ID` varchar(128) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL COMMENT '登录账号',
  `TEAM_USER_ID` varchar(100) NOT NULL COMMENT '用户名',
  `TEAM_USER_NAME` varchar(255) NOT NULL,
  `COMPANY_ID` varchar(20) NOT NULL COMMENT '所属公司',
  `STATUS` varchar(10) NOT NULL DEFAULT '0' COMMENT '1：使用中，0：未使用',
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`TEAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_user_team
-- ----------------------------
INSERT INTO `com_user_team` VALUES ('4028919356d444310156d44802e40001', '4028919356d42a7d0156d42c34830001', '理财团队经理', '4028919356d42a7d0156d42db3690005', '理财经理2', '10000001', '0', null, null, null, null);

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
  `IS_PAY` varchar(2) DEFAULT NULL,
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
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a124f5c0006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a12521b0007', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a125ee40008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得发短信】', '1', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a131f79000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a150bf9000d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568a0e9d01568a150e55000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7759d90002', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7842c80004', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e792ce30006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7a16c50008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7b011a000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7beb67000c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7cd62d000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7dc0210010', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7eaa760012', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e7f95110014', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8082450016', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e816a180018', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e825433001a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e833ea8001c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8428c7001e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e85137b0020', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e85fd8f0022', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e86e7f90024', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e87d2440026', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e88bcc90028', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e89a701002a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8a91a8002c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8b7c17002e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8c663e0030', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8d50a90032', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8e3b0c0034', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e8f259a0036', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e900fa30038', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e90fa48003a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e91e47a003d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e92cefa003f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e93b9630041', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e94a3b70043', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e958e1e0045', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e96787c0047', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9762b60049', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e984d6a004c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e99376f004e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9a22110050', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9b0c420052', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9bf6a30054', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9ce1090056', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9dcb600058', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9eb5be005a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568e9fa000005c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea08a7d005e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea174dd0060', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea25f460062', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea349a20064', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea434030066', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea51e5f0068', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea608fb006a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea6f31f006c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea7dd80006e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea8c7ed0070', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568ea9b2420072', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568eaa9c940074', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568e766101568eab86f80076', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ead5c040002', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eae46230004', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eaf31600006', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb01b050008', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb10577000a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb1efca000c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb2da38000e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb3c4870010', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb4aec70012', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb5994c0014', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb683ad0016', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb76dfc0018', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb85840001a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eb942c1001c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eba2d6b001e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebb17e80020', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebc01e70022', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebcec350024', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebdd6820026', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebec0e70028', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ebfab42002a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec09595002c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec17ffd002e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec26a780030', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec354c90032', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec43f3e0034', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec5298f0036', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec613fb0038', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec6fe54003a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec7e8a3003c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec8d33d003e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ec9bd700040', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecaa7e00042', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecb92380044', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecc7cd10046', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecd66e60048', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ece51b1004a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ecf3bbc004c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed02612004e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed110830050', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed1fad00052', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed2e53f0054', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed3cfbf0056', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed4b9ee0058', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed5a450005a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed68ea1005c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed778ff005e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed8635e0060', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ed94dbe0062', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eda38200064', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edb22780066', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edc0ceb0068', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edcf761006a', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edde18c006c', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edecbf4006e', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568edfb67e0070', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee0a0dd0073', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee18b320075', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee275920077', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee35ff50079', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee44a27007b', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee534b4007d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee61f1c007f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee7096b0081', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee7f3ca0083', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee8de3e0085', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568ee9c8ac0087', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eeab2bc0089', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eeb9d40008b', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eec87fd008d', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402880b6568eac8001568eed71f7008f', '12', '2016-08-16 00:00:00', '12 生日马上要到了 ！ 日期:2016-08-16【阳历生日】-【记得送蛋糕】', '0', '1', null, null, null, null);
INSERT INTO `tbl_birthday_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '张三', '2016-06-12 00:00:00', '6月12日 生日', null, '0', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_birthday_remind` VALUES ('402881e7554a407c01554a4159700001', '李四', '2016-06-14 00:00:00', '6月14日 生日', '0', '0', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');

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
  `ANNUALIZED_RATE_END` decimal(10,0) DEFAULT NULL,
  `MONTHS` varchar(10) NOT NULL COMMENT '多少个月[封闭期]',
  `MONTHS_END` varchar(10) DEFAULT NULL,
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
INSERT INTO `tbl_financing` VALUES ('1', '季度金', '三个月回本 ', '1', '1.0', null, '1', null, '0', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:58:46');
INSERT INTO `tbl_financing` VALUES ('402880b2558becf901558bef0c1a0001', '年年红', '年年红', '4', '12.0', null, '12', null, '12', null, '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:59:07', '402880e63cf62235013cf62b3f9e0036', '2016-06-26 16:59:07');
INSERT INTO `tbl_financing` VALUES ('402880b657cd13100157cd17f8ba0003', '季度金', '测试', '1', '12.0', null, '12', null, '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 18:44:42', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 18:44:42');
INSERT INTO `tbl_financing` VALUES ('402880b657cd13100157cd1874640004', '仪诚通11', '测试', '6', '5.0', '11', '1', '12', '23', '10000001', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-10-16 18:56:23');

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
  `NO_DEBTS_MONEY` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_financing_apply` VALUES ('402880b356036b02015603a9c4820007', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000003', null, '2016-08-14 00:00:00', '12111', '1', '12.0', '12', '12', '12', '12.0', '12', '1', '2016-07-28 00:00:00', '2016-07-30 00:00:00', '12', '12', '121212', '402880b556f4257d0156f43964360001', '债权经理1', '1', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-10-17 00:26:04');
INSERT INTO `tbl_financing_apply` VALUES ('402880b356036b02015603a9c4820017', '40288133552a0db801552a13417c0002', 'test', 'YC2016-00000005', null, '2016-08-14 00:00:00', '12111', '1', '12.0', null, '12', '12', '12.0', '12', '1', '2016-07-28 00:00:00', '2016-07-30 00:00:00', '12', '12', '121212', '1', 'test', '1', '', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-24 21:29:03');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0001', '402880b255bb6f130155bb73e0c10001', 'test', 'YC2016-00000006', null, '2016-08-13 00:00:00', '212', '4', '12.0', null, '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0004', '402880b255bb6f130155bb73e0c10001', 'test', 'YC2016-00000007', null, '2016-08-13 00:00:00', '212', '4', '12.0', null, '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0008', '402880b255bb6f130155bb73e0c10001', 'test', 'YC2016-00000008', null, '2016-08-13 00:00:00', '212', '4', '12.0', null, '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0014', '402880b255bb6f130155bb73e0c10001', 'test', 'YC2016-00000009', null, '2016-08-13 00:00:00', '212', '4', '12.0', null, '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');
INSERT INTO `tbl_financing_apply` VALUES ('402880b65665846c0156658a212e0018', '402880b255bb6f130155bb73e0c10001', 'test', 'YC2016-00000010', null, '2016-08-13 00:00:00', '212', '4', '12.0', null, '12', '12', '12.0', '12', '1', '2016-08-09 00:00:00', '2016-08-10 00:00:00', '12', '1212', '121212', '1', 'test', '1', '', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06', '402880e63cf62235013cf62b3f9e0036', '2016-08-07 23:06:06');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656accd550156acced1710001', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000011', null, '2016-08-16 00:00:00', '212', '1', '12.0', null, '12', '1212121', '121212.0', '121212', '1', '2016-08-27 00:00:00', '2016-08-31 00:00:00', '12', '212121', '1212121', '1', 'test', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656accd550156acced1710005', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000012', null, '2016-08-16 00:00:00', '212', '1', '12.0', null, '12', '1212121', '121212.0', '121212', '1', '2016-08-27 00:00:00', '2016-08-31 00:00:00', '12', '212121', '1212121', '1', 'test', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656accd550156acced1710009', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000113', null, '2016-08-16 00:00:00', '212', '1', '12.0', null, '12', '1212121', '121212.0', '121212', '1', '2016-08-27 00:00:00', '2016-08-31 00:00:00', '12', '212121', '1212121', '1', 'test', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656accd550156acced1710015', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000114', null, '2016-08-16 00:00:00', '212', '1', '12.0', null, '12', '1212121', '121212.0', '121212', '1', '2016-08-27 00:00:00', '2016-08-31 00:00:00', '12', '212121', '1212121', '1', 'test', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656accd550156acced1710019', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000115', null, '2016-08-16 00:00:00', '212', '1', '12.0', null, '12', '1212121', '121212.0', '121212', '1', '2016-08-27 00:00:00', '2016-08-31 00:00:00', '12', '212121', '1212121', '1', 'test', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:14:10');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656acd21d0156acd5400e0001', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000116', null, '2016-08-25 00:00:00', '3333', '1', '23.0', null, '3232', '233', '123.0', '232323', '1', '2016-08-26 00:00:00', '2016-08-26 00:00:00', '23', '23232323', '232323', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656acd21d0156acd5400e0006', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000117', null, '2016-08-25 00:00:00', '3333', '1', '23.0', null, '3232', '233', '123.0', '232323', '1', '2016-08-26 00:00:00', '2016-08-26 00:00:00', '23', '23232323', '232323', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656acd21d0156acd5400e0013', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000118', null, '2016-08-25 00:00:00', '3333', '1', '23.0', null, '3232', '233', '123.0', '232323', '1', '2016-08-26 00:00:00', '2016-08-26 00:00:00', '23', '23232323', '232323', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656acd21d0156acd5400e0014', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000119', null, '2016-08-25 00:00:00', '3333', '1', '23.0', null, '3232', '233', '123.0', '232323', '1', '2016-08-26 00:00:00', '2016-08-26 00:00:00', '23', '23232323', '232323', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11');
INSERT INTO `tbl_financing_apply` VALUES ('402880b656acd21d0156acd5400e0016', '40288133552a0db801552a13417c0002', '测试姓名', 'YC2016-00000120', null, '2016-08-25 00:00:00', '3333', '1', '23.0', null, '3232', '233', '123.0', '232323', '1', '2016-08-26 00:00:00', '2016-08-26 00:00:00', '23', '23232323', '232323', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 19:21:11');
INSERT INTO `tbl_financing_apply` VALUES ('402880b657ce09a50157ce25b8ed0003', '4028919356d45a370156d45ed3e60001', '张无忌', 'YC2016-00000021', null, '2016-10-11 00:00:00', '3333', '1', '12.0', null, '111112', '壹拾壹万壹仟壹佰壹拾贰元', '111113.0', '壹拾壹万壹仟壹佰壹拾叁元', '1', '2016-10-19 00:00:00', '2016-10-28 00:00:00', '12', '2222', '22222', '402880b556f4257d0156f43964360001', '债权经理1', '1', null, '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:39:21', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 23:39:21');

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
  `EMPLOYEE_NAME` varchar(255) DEFAULT NULL,
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL,
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
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb73e0c10001', '12', '2016-08-16 00:00:00', '0', '1', '1111111', '122', null, null, '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:21');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7409680002', '222', '2016-08-15 00:00:00', '0', '1', '12', '1221', null, null, '2', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:31');
INSERT INTO `tbl_financing_customer` VALUES ('402880b255bb6f130155bb7468550004', '1222', '2016-08-15 00:00:00', '0', '1', '2', '21', null, null, '12', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:26:56');
INSERT INTO `tbl_financing_customer` VALUES ('402880b35618144101561816a06f0002', '222121212', '2016-07-13 00:00:00', '1', '1', '122222223', '122', null, null, '1212', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 22:09:11', '402880e63cf62235013cf62b3f9e0036', '2016-07-23 22:19:32');
INSERT INTO `tbl_financing_customer` VALUES ('402880b556d2145e0156d218292b0001', 'I am测试用户', '2016-08-16 00:00:00', '1', '1', '12345678903212', '12345689902', '员工3', '402880ea3e16bb36013e16c06eee0001', '陕西大同', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 01:00:13', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 01:00:13');
INSERT INTO `tbl_financing_customer` VALUES ('40288133552a0db801552a13417c0002', '测试姓名', '2016-06-14 00:00:00', '0', '1', '359645862155', '1595157625', null, null, '无锡', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 16:55:52', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:35:11');
INSERT INTO `tbl_financing_customer` VALUES ('4028919356d45a370156d45ed3e60001', '张无忌', '2016-08-24 00:00:00', '0', '1', '12356', '186250102222', '理财经理2', '4028919356d42a7d0156d42db3690005', 'wuxishibihuqu', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 11:36:39', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 11:36:39');
INSERT INTO `tbl_financing_customer` VALUES ('4028919356d45a370156d464a4150002', '张三丰', '2016-08-07 00:00:00', '0', '1', '33333', '3333', '理财经理1', '4028919356d42a7d0156d42d11f20003', '2222', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 11:43:00', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 11:43:00');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549de64910008', 'da\'s\'dads', '2016-06-12 00:00:00', '0', '1', 'dasa', 'dasdsa', null, null, '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:05:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:05:59');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549decffb0009', '465456', '2016-06-12 00:00:00', '0', '1', '4546', '4546', null, null, '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26');
INSERT INTO `tbl_financing_customer` VALUES ('402894825549b34f015549decffb0009s', '4654561', '2016-06-12 00:00:00', '0', '1', '4546', '4546', null, null, '', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:06:26');

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
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a3e1801554a3f92f80001', '1', '112', '1213123', '2016-07-14 23:39:48', null, null, null, null, '2', '1', '6月12日（周日）上班', '1', '1', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700001', '1', '12', '1231231', '2016-07-14 23:39:52', null, null, null, null, '3', '2', '6月12日（周日）上班', '1', '1', null, '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700002', '1', '12', '123123', '2016-07-14 23:39:52', null, null, null, null, '4', '3', '6月12日（周日）上班', '1', '1', '', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700003', '1', '12', '12312', '2016-07-14 23:39:52', null, null, null, null, '4', '1', '6月12日（周日）上班', '1', '1', '', '1', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');
INSERT INTO `tbl_financing_remind` VALUES ('402881e7554a407c01554a4159700004', '1', '12', '12312', '2016-07-14 23:39:52', null, null, null, null, '4', '2', '6月12日（周日）上班', '1', '1', '', '0', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 21:37:59');

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
INSERT INTO `tbl_goods_purchase` VALUES ('402880b556dbf58d0156dc057b37000a', 'test', 'test', '11.00', '1', '111.00', null, null, '1', '10000001', '402880e93d80c483013d811e7a3b0063', '2016-08-30 23:16:01', '402880e93d80c483013d811e7a3b0063', '2016-08-30 23:16:01');

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
INSERT INTO `tbl_goods_used` VALUES ('402880b556d027830156d08976df036c', '测试', '测试', '12', '402880e63cf62235013cf62b3f9e0036', '总经理', '1', null, null, '10000001', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:44:45', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:44:45');
INSERT INTO `tbl_goods_used` VALUES ('402880b556d027830156d08994c3036d', '222', '222', '12', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, null, '10000001', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:44:52', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:44:52');
INSERT INTO `tbl_goods_used` VALUES ('402880b556d027830156d08b85d4036e', '呃呃呃', '呃呃呃', '12', '402880ea3e16bb36013e16c06eee0001', '员工3', '1', null, null, '10000001', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:46:59', '402880ea3e16bb36013e16c06eee0001', '2016-08-28 17:46:59');
INSERT INTO `tbl_goods_used` VALUES ('402880b556dbf58d0156dc04f5180009', 'ceshi', 'ceshi', '12', '402880e93d80c483013d811e7a3b0063', '副总经理', '1', null, null, '10000001', '402880e93d80c483013d811e7a3b0063', '2016-08-30 23:15:27', '402880e93d80c483013d811e7a3b0063', '2016-08-30 23:15:27');
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
  `DEPARTMENT_ID` varchar(128) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_leave_apply` VALUES ('402880b556dbf58d0156dbf66d200001', '', '', '402880e63cf62235013cf62b3f9e0036', '总经理', '测试', '2016-08-01 00:00:00', '2016-08-31 00:00:00', '31', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 22:59:35', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 22:59:35');
INSERT INTO `tbl_leave_apply` VALUES ('402880b556dbf58d0156dbf769e00002', '', '', '402880e63cf62235013cf62b3f9e0036', '总经理', '婚假122', '2016-08-08 00:00:00', '2016-08-31 00:00:00', '24', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 23:00:40', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 23:00:40');
INSERT INTO `tbl_leave_apply` VALUES ('402880b656abf9c80156abfa978a0001', '12', '总经办', '402880e63cf62235013cf62b3f9e0036', '总经理', '婚假2', '2016-08-22 00:00:00', '2016-08-22 00:00:00', '1', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:22:21', '402880e63cf62235013cf62b3f9e0036', '2016-08-28 23:44:26');
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
  `NO_REL_MONEY` varchar(255) DEFAULT NULL,
  `AGREE_MONEY` decimal(10,0) DEFAULT NULL COMMENT '批准金额',
  `UPPER_MONEY` varchar(100) DEFAULT NULL COMMENT '大写金额',
  `REPAY_DAY` varchar(10) DEFAULT NULL,
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
  PRIMARY KEY (`LOAN_APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_apply
-- ----------------------------
INSERT INTO `tbl_loan_apply` VALUES ('402880b255caa05b0155caa4eadc0002', '40288133552a0db801552a144fad0003', '借款部', '21ww23', '21', '21', '212', '121', '212', '121', '212', '12', '1212', '1', '12', '1', 'YC2016-00000001', '1_test', '1', '1', 'test', '2016-07-20 00:00:00', '2016-07-29 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', null, '12', '叁万柒仟捌佰贰拾伍元', null, '12.0', '伍元', '12', '', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-08 21:19:54');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417b28140001', '402894825549b34f015549ca1ccb0007', '测试用户', null, null, null, '213', '123', '123123123123123213', '133', '123213', '123213123', '123123', '1321', '123', '1', 'YC2016-00000002', null, '1', '402880b556f4257d0156f43964360001', '债权经理1', '2016-07-16 00:00:00', '2016-07-30 00:00:00', '12', '12.0', '123', '123', '2', '1', '8', null, '123', '柒万伍仟陆佰伍拾元', '13', '123.0', '伍佰陆拾伍元', '', '总经理', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-10-16 21:50:13');
INSERT INTO `tbl_loan_apply` VALUES ('402880b3564179cf0156417df6350006', '402894825549b34f015549ca1ccb0007', '121', '21ww23', '12222221', '212', '121', '121', '1212', '121', '1212', '1212', '1212', '1212', '12', '1', 'YC2016-00000003', '1_test', '1', '402880ea3e16bb36013e16c06eee0001', '员工1', '2016-06-16 00:00:00', '2016-07-28 00:00:00', '12', '12.0', '12', '12', '0', '1', '12', null, '12', '柒万陆仟柒佰陆拾壹元', null, '12.0', '柒仟伍佰陆拾伍元', null, null, null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-07-31 23:07:51');
INSERT INTO `tbl_loan_apply` VALUES ('402880b556f564250156f577aa3a0003', '402880b657cc78630157ccd498a00004', '12', null, null, null, '12', '12', '123', '123', '123', '123', '123', '123', '133', '1', 'YC2016-00000004', null, '1', '402880e93d80c483013d811e7a3b0063', '副总经理', '2016-09-05 00:00:00', '2017-09-06 00:00:00', '12', '12.0', '12200', '12', '1', '1', '12', null, '12', '12', '12', '222.0', '22', '', '总经理', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-10-16 21:44:55');
INSERT INTO `tbl_loan_apply` VALUES ('402880b656ad595e0156ad5eb6b80001', '402894825549b34f015549ca1ccb0007', '测试用户', '张三', '123123452132312', '北京市', '张三', '北京中山支行', '22222222222221', '张三', '北京中山支行', '212222222444', '张三', '北京中山支行', '2222222222222', '1', 'YC2016-00000005', null, '2', '402880ea3e16bb36013e16c06eee0001', '员工3', '2016-08-23 00:00:00', '2017-08-23 00:00:00', '12', '12.0', '12213', '123', '0', '1', null, null, null, '', null, null, '', '', '总经理', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 21:57:57');
INSERT INTO `tbl_loan_apply` VALUES ('402880b657ce09a50157ce2db4c30005', '40288133552a0db801552a144fad0003', '测试客户', null, null, null, '213', '123', '1', '222', '13的', '21', '333', '123', '123', '1', 'YC2016-00000006', null, '1', '402880b556f4257d0156f43964360001', '债权经理1', '2016-10-19 00:00:00', '2017-10-19 00:00:00', '12', '12.0', '12222', '12', '0', '1', null, '111', null, '', '', null, '', null, '', null, null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-10-17 00:32:33');

-- ----------------------------
-- Table structure for tbl_loan_back
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loan_back`;
CREATE TABLE `tbl_loan_back` (
  `LOAN_BACK_ID` varchar(128) NOT NULL COMMENT '借款还款ID',
  `LOAN_APPLY_ID` varchar(128) NOT NULL COMMENT '借款申请ID',
  `CUSTOMER_NAME` varchar(100) DEFAULT NULL COMMENT '客户名',
  `TYPE` varchar(2) DEFAULT NULL COMMENT '1：本息同还，2：先息后本',
  `MONEY` decimal(10,0) DEFAULT NULL COMMENT '借款总金额',
  `REPAYMENT_MONTHS` int(5) DEFAULT '0' COMMENT '已还多少个月',
  `GIVEN_MONEY` decimal(10,0) DEFAULT NULL COMMENT '已还本息',
  `SURPLUS_MONEY` decimal(10,0) DEFAULT NULL COMMENT '剩余本息',
  `PERMONTH_GIVEN_MONEY` decimal(10,0) DEFAULT NULL COMMENT '每个月应还金额',
  `IS_PREPAYMENT` varchar(2) DEFAULT '0' COMMENT '0：未提前，1：已提前还清',
  `TELEPHONE` varchar(20) DEFAULT NULL,
  `CARD_PASSWORD` varchar(20) DEFAULT NULL COMMENT '债权卡密码',
  `IS_OVERDUE` varchar(2) DEFAULT '0' COMMENT '0：未逾期，1：逾期',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '0：未催收，1：已催收，2：已还本月',
  `COMPANY_ID` varchar(128) DEFAULT NULL,
  `CRT_UID` varchar(128) DEFAULT NULL,
  `CRT_TIME` datetime DEFAULT NULL,
  `UPD_UID` varchar(128) DEFAULT NULL,
  `UPD_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LOAN_BACK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loan_back
-- ----------------------------
INSERT INTO `tbl_loan_back` VALUES ('402880b656adf5ae0156adf7488a0002', '402880b3564179cf0156417b28140001', '二位', '1', '123', '1', '0', '0', '0', null, '16802654', null, null, null, '10000001', null, null, null, null);

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
INSERT INTO `tbl_loan_collection` VALUES ('402880b255bb6f130155bb87015c0008', '112', '1222', '1', '212', '12', '12', '12', '12', '1', '12', '1212121', '1', '2', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-07-05 22:47:15', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:29:39');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efafebc0097', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '1', '12345678901', null, '0', '2', '10000001', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:30:47');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efb01aa0098', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '1', '12345678901', null, '0', '2', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:33:50');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efc17d2009a', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '1', '16802654', null, '0', '2', '10000001', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:34:18');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efc181d009b', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '1', '16802654', null, '0', '2', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:37:02');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efd0239009c', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '1', '16802654', null, '0', '2', '10000001', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:37:56');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efd0272009d', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efdec96009e', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efdece8009f', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efed6f000a0', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '2', '10000001', null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-21 23:29:25');
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568efed74200a1', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568effc15900a2', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('402880b6568eac8001568effc1b000a3', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '1', '16802654', null, '0', '2', null, null, null, '402880e63cf62235013cf62b3f9e0036', '2016-08-22 00:32:51');
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
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d1801569351ed47000b', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d1801569351edb2000c', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d1801569352d77e000d', '402880b3564179cf0156417b28140001', '二位', '1', '123', '0', '0', '0', '0', '0', '16802654', null, '0', '0', '10000001', null, null, null, null);
INSERT INTO `tbl_loan_collection` VALUES ('8a8abfa856934d1801569352d7e6000e', '402880b3564179cf0156417df6350006', '121', '1', '12', '0', '0', '0', '0', '0', '16802654', null, '0', '0', null, null, null, null, null);

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
  `PLEDGE_GO` varchar(255) DEFAULT NULL,
  `PLEDGE` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(20) NOT NULL,
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL,
  `EMPLOYEE_NAME` varchar(255) DEFAULT NULL,
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
INSERT INTO `tbl_loan_customer` VALUES ('402880b657cc78630157ccd498a00004', '12', 'images/20161016173107255.png', '12', '12', null, null, '12', '402880e93d80c483013d811e7a3b0063', '副总经理', '1212', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 17:31:07', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 17:31:07');
INSERT INTO `tbl_loan_customer` VALUES ('402880b657ccdc5d0157ccdd7e600001', 'ddd', null, '12312', '123', '455555', '33333', '123123', '402880b556f4257d0156f43964360001', '债权经理1', '123', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 17:40:50', '402880e63cf62235013cf62b3f9e0036', '2016-10-16 17:40:50');
INSERT INTO `tbl_loan_customer` VALUES ('40288133552a0db801552a144fad0003', '测试客户', 'images/20160607165702122.png', '测试单位', '32038921568457', null, null, '15951573016', null, null, '江苏无锡', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-07 16:57:02', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:36:25');
INSERT INTO `tbl_loan_customer` VALUES ('402894825549b34f015549ca1ccb0007', '测试用户', 'images/20160829010153415.jpg', '无锡', '3208', null, null, '16802654', '402880ea3e16bb36013e16c06eee0001', '员工3', '芦庄', '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-06-13 20:43:50', '402880e63cf62235013cf62b3f9e0036', '2016-08-29 01:01:53');

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
  `DEPARTMENT_ID` varchar(128) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_out_apply` VALUES ('402880b656abf9c80156ac0190570002', '10001', '总经办', '402880e63cf62235013cf62b3f9e0036', '总经理', '我有事情的1212', '2016-08-21 15:29:49', '2016-08-23 15:40:52', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:29:58', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:38:25');

-- ----------------------------
-- Table structure for tbl_punch_apply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_punch_apply`;
CREATE TABLE `tbl_punch_apply` (
  `PUNCH_APPLY_ID` varchar(128) NOT NULL COMMENT '外出申请ID',
  `DEPARTMENT_ID` varchar(128) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_punch_apply` VALUES ('402880b556dbf58d0156dbf7d59c0003', '', '', '402880e63cf62235013cf62b3f9e0036', '总经理', '我要出去', '2016-08-13 23:01:03', '1', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 23:01:07', '402880e63cf62235013cf62b3f9e0036', '2016-08-30 23:01:07');
INSERT INTO `tbl_punch_apply` VALUES ('402880b656abf9c80156ac0f7cd60003', '12', '总经办', '402880e63cf62235013cf62b3f9e0036', '总经理', '有事情', '2016-08-22 15:45:05', '2', '0', null, null, '10000001', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:45:11', '402880e63cf62235013cf62b3f9e0036', '2016-08-21 15:45:11');

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
