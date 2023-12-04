/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50075
Source Host           : localhost:3306
Source Database       : csm

Target Server Type    : MYSQL
Target Server Version : 50075
File Encoding         : 65001

Date: 2011-04-26 22:15:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `broadcasttask`
-- ----------------------------
DROP TABLE IF EXISTS `broadcasttask`;
CREATE TABLE `broadcasttask` (
  `id` int(11) NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL default '0',
  `server` varchar(200) NOT NULL default '',
  `content` varchar(255) NOT NULL default '',
  `time` varchar(50) NOT NULL default '',
  `week` tinyint(1) default NULL,
  `day` tinyint(1) default NULL,
  `status` tinyint(1) default '1',
  `operateDate` datetime default NULL,
  `operateUser` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of broadcasttask
-- ----------------------------

-- ----------------------------
-- Table structure for `FORBIDLOG`
-- ----------------------------
DROP TABLE IF EXISTS `FORBIDLOG`;
CREATE TABLE `FORBIDLOG` (
  `log_id` bigint(20) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `user_name` varchar(50) NOT NULL default '',
  `log_type_id` int(11) NOT NULL default '0',
  `forbid_time` int(11) NOT NULL default '0',
  `log_operate_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `log_reason` varchar(255) NOT NULL default '',
  `source_id` varchar(50) NOT NULL default '',
  `gm_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `FORBIDLOG_DATE` (`log_operate_time`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of FORBIDLOG
-- ----------------------------
INSERT INTO `FORBIDLOG` VALUES ('1', '32', 'ayeh003', '100', '0', '2006-09-07 17:40:13', '幹去死吧', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('2', '32', 'ayeh003', '100', '1', '2006-09-07 17:40:49', 'askdjad', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('3', '32', 'ayeh003', '100', '0', '2006-09-07 17:55:36', 'asdasd', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('4', '32', 'ayeh003', '100', '0', '2006-09-07 17:55:51', 'aaaa', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('5', '32', 'ayeh003', '100', '0', '2006-09-07 18:16:34', 'aaaaaa', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('6', '32', 'ayeh003', '100', '0', '2006-09-07 18:53:58', 'aaa', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('7', '48', 'downowe', '100', '0', '2006-09-07 18:58:16', 'ccccc', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('8', '32', 'ayeh003', '100', '0', '2006-09-11 11:55:10', 'die', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('9', '32', 'ayeh003', '100', '0', '2006-09-11 11:56:46', 'die', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('10', '48', 'downowe', '100', '0', '2006-09-11 12:00:01', 'kkk\r\n', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('11', '48', 'downowe', '100', '20', '2006-09-11 12:01:10', 'hhgh', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('12', '32', 'ayeh003', '100', '1', '2006-09-11 12:01:44', 'lk', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('13', '32', 'ayeh003', '100', '12', '2006-09-11 12:02:03', '12', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('14', '48', 'downowe', '100', '12', '2006-09-11 12:02:49', '12\r\n', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('15', '48', 'downowe', '100', '20', '2006-09-11 12:03:22', 'khjk', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('16', '-16', '该帐号id为:-16', '100', '12', '2006-09-11 12:03:37', '12', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('17', '48', 'downowe', '100', '20', '2006-09-11 13:20:31', '20', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('18', '1264', 'aaa074', '100', '20', '2006-09-13 16:13:59', 'sorry', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('19', '-16', '该帐号id为:-16', '100', '600', '2006-09-14 14:09:41', '工具測試', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('20', '144', 'aaa007', '100', '180', '2006-09-14 14:12:29', '工具測試', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('21', '144', 'aaa007', '100', '300', '2006-09-15 10:15:37', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('22', '144', 'aaa007', '100', '300', '2006-09-15 10:15:54', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('23', '144', 'aaa007', '100', '300', '2006-09-15 10:16:10', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('24', '816', 'aaa048', '100', '20', '2006-09-15 11:17:36', '66', '192.168.20.135', '32');
INSERT INTO `FORBIDLOG` VALUES ('25', '-16', '该帐号id为:-16', '100', '300', '2006-09-18 15:44:53', '進行遊戲時使用或散播非官方提供之程式（如自動練功程式、加速器等）', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('26', '-16', '该帐号id为:-16', '100', '300', '2006-09-18 15:45:33', '進行遊戲時使用或散播非官方提供之程式（如自動練功程式、加速器等）', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('27', '160', 'aaa008', '100', '300', '2006-09-18 15:46:42', '進行遊戲時使用或散播非官方提供之程式（如自動練功程式、加速器等）', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('28', '160', 'aaa008', '100', '300', '2006-09-18 15:46:55', '進行遊戲時使用或散播非官方提供之程式（如自動練功程式、加速器等）', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('29', '-16', '该帐号id为:-16', '100', '300', '2006-09-18 17:46:49', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('30', '144', 'aaa007', '100', '300', '2006-09-18 17:48:04', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('31', '144', 'aaa007', '100', '10', '2006-09-18 17:50:21', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('32', '-16', '该帐号id为:-16', '100', '300', '2006-09-18 17:51:03', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('33', '-16', '该帐号id为:-16', '100', '300', '2006-09-18 17:51:16', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('34', '144', 'aaa007', '100', '120', '2006-09-18 19:34:37', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('35', '144', 'aaa007', '100', '120', '2006-09-18 19:34:45', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('36', '144', 'aaa007', '100', '300', '2006-09-18 19:49:14', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('37', '144', 'aaa007', '100', '300', '2006-09-18 19:50:08', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('38', '144', 'aaa007', '100', '300', '2006-09-18 19:50:27', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('39', '144', 'aaa007', '100', '300', '2006-09-18 19:51:04', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('40', '144', 'aaa007', '100', '300', '2006-09-18 19:51:37', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('41', '144', 'aaa007', '100', '1200', '2006-09-18 19:54:18', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('42', '144', 'aaa007', '100', '1200', '2006-09-18 19:56:02', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('43', '144', 'aaa007', '100', '600', '2006-09-18 20:00:10', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('44', '144', 'aaa007', '100', '600', '2006-09-18 20:00:28', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('45', '144', 'aaa007', '100', '600', '2006-09-18 20:00:48', 'TEST', '59.120.40.220', '144');
INSERT INTO `FORBIDLOG` VALUES ('46', '465152', 'pwH8e569', '100', '3600', '2006-10-23 12:20:04', '1', '211.100.255.122', '0');
INSERT INTO `FORBIDLOG` VALUES ('47', '465152', 'pwH8e569', '100', '7200', '2006-10-23 12:20:19', '3', '211.100.255.122', '0');
INSERT INTO `FORBIDLOG` VALUES ('48', '465152', 'pwH8e569', '100', '3600', '2006-10-23 14:07:19', '1', '211.100.255.122', '0');
INSERT INTO `FORBIDLOG` VALUES ('49', '443312', 'pw627eso', '100', '60', '2006-10-23 19:27:17', '不當id', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('50', '443312', 'pw627eso', '100', '60', '2006-10-23 19:29:12', '不當id', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('51', '443312', 'pw627eso', '100', '3600', '2006-10-23 19:30:54', '123', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('52', '443312', 'pw627eso', '100', '3600', '2006-10-23 19:32:19', '123', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('53', '427008', 'pwic4th2', '100', '31536000', '2006-10-23 23:24:58', '透過遊戲違反隱私保密或是商業行為', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('54', '-16', '该帐号id为-16', '100', '31536000', '2006-10-24 02:08:46', '於世界頻道發表廣告性宣傳言論', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('55', '397808', 'pwaoe093', '100', '20', '2006-10-24 11:05:13', 'TEST', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('56', '-16', '该帐号id为-16', '100', '300', '2006-10-24 11:15:01', '不當角色ID', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('57', '422320', 'pwh7ih58', '100', '300', '2006-10-24 11:15:30', '不當角色ID', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('58', '422320', 'pwh7ih58', '100', '300', '2006-10-24 11:15:50', '不當角色ID', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('59', '422320', 'pwh7ih58', '100', '31536000', '2006-10-24 11:17:20', '不當角色ID', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('60', '397808', 'pwaoe093', '100', '28800', '2006-10-24 11:55:13', 'test', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('61', '-16', '该帐号id为-16', '100', '28800', '2006-10-24 11:58:15', 'test', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('62', '279488', 'w232c7l5', '100', '31536000', '2006-10-24 13:15:03', '於世界頻道發表廣告性宣傳言論', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('63', '422320', 'pwh7ih58', '100', '31536000', '2006-10-24 13:20:37', '不當角色ID', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('64', '82128', 'w29458vl', '100', '31536000', '2006-10-24 13:23:45', '於世界頻道發表不當言論', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('65', '76416', 'w2H0i704', '100', '31536000', '2006-10-24 14:25:43', '使用或散播非官方提供之程式', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('66', '410496', 'pw3eee3t', '100', '31536000', '2006-10-24 14:27:12', '使用或散播非官方提供之程式', '59.120.40.220', '0');
INSERT INTO `FORBIDLOG` VALUES ('67', '76416', 'w2H0i704', '100', '31536000', '2006-10-24 14:46:00', '使用或散播非官方提供之程式', '59.120.40.220', '0');

-- ----------------------------
-- Table structure for `GROUP_PRIV`
-- ----------------------------
DROP TABLE IF EXISTS `GROUP_PRIV`;
CREATE TABLE `GROUP_PRIV` (
  `GroupID` int(11) NOT NULL default '0',
  `PrivID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`GroupID`,`PrivID`),
  UNIQUE KEY `XPKgroup_priv` (`GroupID`,`PrivID`),
  KEY `XIElgroup_priv` (`GroupID`),
  KEY `XIE2group_priv` (`PrivID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of GROUP_PRIV
-- ----------------------------
INSERT INTO `GROUP_PRIV` VALUES ('1', '101101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '102101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '103103');
INSERT INTO `GROUP_PRIV` VALUES ('1', '103104');
INSERT INTO `GROUP_PRIV` VALUES ('1', '104101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '105101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '106101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '107101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '108101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '108102');
INSERT INTO `GROUP_PRIV` VALUES ('1', '109101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '110101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '111101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '113101');
INSERT INTO `GROUP_PRIV` VALUES ('1', '132101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '101101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '102101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '103103');
INSERT INTO `GROUP_PRIV` VALUES ('2', '103104');
INSERT INTO `GROUP_PRIV` VALUES ('2', '104101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '105101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '106101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '107101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '108101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '108102');
INSERT INTO `GROUP_PRIV` VALUES ('2', '109101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '110101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '111101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '113101');
INSERT INTO `GROUP_PRIV` VALUES ('2', '132101');

-- ----------------------------
-- Table structure for `GROUP_USER`
-- ----------------------------
DROP TABLE IF EXISTS `GROUP_USER`;
CREATE TABLE `GROUP_USER` (
  `GroupID` int(11) NOT NULL default '0',
  `userID` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`GroupID`,`userID`),
  UNIQUE KEY `XPKgroup_user` (`GroupID`,`userID`),
  KEY `XIElgroup_user` (`GroupID`),
  KEY `XIE2group_user` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of GROUP_USER
-- ----------------------------

-- ----------------------------
-- Table structure for `GROUPS`
-- ----------------------------
DROP TABLE IF EXISTS `GROUPS`;
CREATE TABLE `GROUPS` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of GROUPS
-- ----------------------------
INSERT INTO `GROUPS` VALUES ('1', 'a', 'a');
INSERT INTO `GROUPS` VALUES ('2', 'b', '客服組員');

-- ----------------------------
-- Table structure for `KEYWORD`
-- ----------------------------
DROP TABLE IF EXISTS `KEYWORD`;
CREATE TABLE `KEYWORD` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of KEYWORD
-- ----------------------------
INSERT INTO `KEYWORD` VALUES ('1', '外掛');
INSERT INTO `KEYWORD` VALUES ('2', '交易');
INSERT INTO `KEYWORD` VALUES ('3', 'BUG');
INSERT INTO `KEYWORD` VALUES ('4', '卡');

-- ----------------------------
-- Table structure for `KEYWORD_QUESTION`
-- ----------------------------
DROP TABLE IF EXISTS `KEYWORD_QUESTION`;
CREATE TABLE `KEYWORD_QUESTION` (
  `keywordID` int(11) NOT NULL default '0',
  `questionID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`keywordID`,`questionID`),
  UNIQUE KEY `XPKkeyword_question` (`keywordID`,`questionID`),
  KEY `XIElkeyword_question` (`keywordID`),
  KEY `XIE2keyword_question` (`questionID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of KEYWORD_QUESTION
-- ----------------------------
INSERT INTO `KEYWORD_QUESTION` VALUES ('1', '1');
INSERT INTO `KEYWORD_QUESTION` VALUES ('2', '3');
INSERT INTO `KEYWORD_QUESTION` VALUES ('3', '4');
INSERT INTO `KEYWORD_QUESTION` VALUES ('4', '6');

-- ----------------------------
-- Table structure for `LOG`
-- ----------------------------
DROP TABLE IF EXISTS `LOG`;
CREATE TABLE `LOG` (
  `log_id` bigint(20) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `log_type_id` int(11) NOT NULL default '0',
  `log_operate_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `log_content` varchar(255) NOT NULL default '',
  `user_name` varchar(50) NOT NULL default '',
  `source_id` varchar(50) NOT NULL default '',
  `grouptime` varchar(20) default '0000-00-00',
  PRIMARY KEY  (`log_id`),
  KEY `las_log_user_id` (`user_id`),
  KEY `las_log_log_type_id` (`log_type_id`),
  KEY `LOG_DATE` (`log_operate_time`),
  KEY `index_log_typeid` (`log_type_id`),
  KEY `index_user_name` (`user_name`),
  KEY `index_log_operate_time` (`log_operate_time`)
) ENGINE=MyISAM AUTO_INCREMENT=3098 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of LOG
-- ----------------------------

-- ----------------------------
-- Table structure for `MESSAGE`
-- ----------------------------
DROP TABLE IF EXISTS `MESSAGE`;
CREATE TABLE `MESSAGE` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `content` text NOT NULL,
  `publishDate` datetime default NULL,
  `publishUser` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of MESSAGE
-- ----------------------------

-- ----------------------------
-- Table structure for `MESSAGE_USER`
-- ----------------------------
DROP TABLE IF EXISTS `MESSAGE_USER`;
CREATE TABLE `MESSAGE_USER` (
  `MessageID` int(11) NOT NULL default '0',
  `userID` varchar(16) NOT NULL default '',
  `readFlag` int(1) default '0',
  PRIMARY KEY  (`MessageID`,`userID`),
  UNIQUE KEY `XPKmessage_user` (`MessageID`,`userID`),
  KEY `XIElmessage_user` (`MessageID`),
  KEY `XIE2message_user` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of MESSAGE_USER
-- ----------------------------

-- ----------------------------
-- Table structure for `PRIVILEDGE`
-- ----------------------------
DROP TABLE IF EXISTS `PRIVILEDGE`;
CREATE TABLE `PRIVILEDGE` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(32) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of PRIVILEDGE
-- ----------------------------
INSERT INTO `PRIVILEDGE` VALUES ('1031040', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1131010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1031030', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1071010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1321010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1061010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1111010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1091010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1041010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('103104', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('113101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('103103', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('107101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('132101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('106101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('102101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('111101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('109101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('105101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('101101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('108102', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('110101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('108101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('104101', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1021010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1051010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1011010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1081020', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1101010', '', null);
INSERT INTO `PRIVILEDGE` VALUES ('1081010', '', null);

-- ----------------------------
-- Table structure for `punish`
-- ----------------------------
DROP TABLE IF EXISTS `punish`;
CREATE TABLE `punish` (
  `id` int(11) NOT NULL auto_increment,
  `source` varchar(50) default NULL,
  `account` varchar(50) default NULL,
  `role` varchar(50) default NULL,
  `content` varchar(255) default NULL,
  `reason` varchar(200) default NULL,
  `operateDate` datetime default NULL,
  `operateUser` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of punish
-- ----------------------------
INSERT INTO `punish` VALUES ('1', 'xxx', 'xx', 'xx', 'xx', 'x', '2006-08-31 16:44:12', 'admin');
INSERT INTO `punish` VALUES ('2', '', 'aaa007', '完美魔王', '凍結角色十天', '使用外掛程式進行遊戲', '2006-09-18 20:38:38', 'aaa007');

-- ----------------------------
-- Table structure for `QUESTION`
-- ----------------------------
DROP TABLE IF EXISTS `QUESTION`;
CREATE TABLE `QUESTION` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of QUESTION
-- ----------------------------
INSERT INTO `QUESTION` VALUES ('1', '將會前往察看該角色使用狀況，謝謝您的回報，祝您遊戲愉快。');
INSERT INTO `QUESTION` VALUES ('3', '遊戲內禁止現金交行為，將會依遊戲規章進行處置');
INSERT INTO `QUESTION` VALUES ('4', '請勿利用BUG進行遊戲，謝謝您的回報！');
INSERT INTO `QUESTION` VALUES ('6', '請您稍候將會盡快處理您所遇到的問題');

-- ----------------------------
-- Table structure for `QUESTIONTYPE`
-- ----------------------------
DROP TABLE IF EXISTS `QUESTIONTYPE`;
CREATE TABLE `QUESTIONTYPE` (
  `id` int(11) NOT NULL auto_increment,
  `typename` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of QUESTIONTYPE
-- ----------------------------
INSERT INTO `QUESTIONTYPE` VALUES ('1', '普通問題');
INSERT INTO `QUESTIONTYPE` VALUES ('2', '建議');
INSERT INTO `QUESTIONTYPE` VALUES ('3', 'BUG回報');

-- ----------------------------
-- Table structure for `roleupdatelist`
-- ----------------------------
DROP TABLE IF EXISTS `roleupdatelist`;
CREATE TABLE `roleupdatelist` (
  `id` int(11) NOT NULL auto_increment,
  `activeid` int(11) NOT NULL default '0',
  `aid` tinyint(1) default NULL,
  `account` varchar(100) default NULL,
  `role` varchar(150) default NULL,
  `reputation` int(11) default NULL,
  `max_ap` int(11) default NULL,
  `level2` int(11) default NULL,
  `sp` int(11) default NULL,
  `exp` int(11) default NULL,
  `money` int(11) default NULL,
  `signflag` tinyint(1) default NULL,
  `dostatus` tinyint(1) default NULL,
  `operateDate` datetime default NULL,
  `senduser` varchar(50) default NULL,
  `sendtime` datetime default NULL,
  `level` int(11) default NULL,
  `delflag` int(11) default NULL,
  `operateUser` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of roleupdatelist
-- ----------------------------
INSERT INTO `roleupdatelist` VALUES ('1', '3', '1', 'chaing1215', '追火少年', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 10:46:29', 'ayeh003', '2006-09-15 10:46:02', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('2', '3', '1', 'chaing1215', '追火少年', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 10:48:37', 'admin', '2006-09-15 10:48:35', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('3', '2', '1', 'quoll123', '水', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:48:56', 'admin', '2006-09-15 13:48:52', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('4', '2', '1', 'quoll123', '天', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:49:10', 'admin', '2006-09-15 13:49:08', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('5', '2', '1', 'quoll123', '地', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:49:24', 'admin', '2006-09-15 13:49:22', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('6', '2', '1', 'kdlin123', '魅影', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:51:43', 'admin', '2006-09-15 13:51:41', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('7', '2', '1', 'hclin1780', 'edc', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:53:00', 'admin', '2006-09-15 13:52:59', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('8', '1', '1', 'ayeh003', 'aaa', '0', '0', '0', '0', '0', '0', '1', '1', '2006-09-15 13:58:02', 'admin', '2006-09-15 13:57:56', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('9', '4', '1', 'aaa007', '完美魔王', '5000', '399', '5', '999999', '9999999', '10000000', '1', '1', '2006-09-30 14:27:29', 'aaa007', '2006-09-18 21:08:12', '999', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('10', '5', '1', 'aaa007', '完美魔王', '0', '0', '0', '0', '0', '2000000', '1', '1', '2006-09-19 16:01:19', 'ayeh003', '2006-09-19 16:00:33', '0', '0', 'admin');
INSERT INTO `roleupdatelist` VALUES ('11', '6', '1', 'ayeh003', 'aaaaaa', '0', '0', '0', '0', '0', '100000', '1', '1', '2006-09-30 14:27:24', 'ayeh003', '2006-09-30 14:26:19', '0', '0', 'admin');
INSERT INTO `roleupdatelist` VALUES ('12', '7', '1', 'aaa074', '佐倉', '0', '0', '0', '0', '0', '0', '1', '1', '2006-10-04 10:55:24', 'ayeh003', '2006-10-04 10:55:06', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('13', '7', '1', 'aaa074', '佐倉', '0', '0', '0', '0', '0', '0', '1', '1', '2006-10-04 10:56:03', 'admin', '2006-10-04 10:56:01', '0', '1', 'admin');
INSERT INTO `roleupdatelist` VALUES ('14', '7', '1', 'aaa074', '佐倉', '0', '0', '0', '0', '0', '0', '1', '1', '2006-10-04 10:56:51', 'admin', '2006-10-04 10:56:49', '0', '1', 'admin');

-- ----------------------------
-- Table structure for `roleupdatetype`
-- ----------------------------
DROP TABLE IF EXISTS `roleupdatetype`;
CREATE TABLE `roleupdatetype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `content` varchar(255) NOT NULL default '',
  `reason` varchar(200) NOT NULL default '',
  `status` tinyint(1) default NULL,
  `operateDate` datetime default NULL,
  `operateUser` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of roleupdatetype
-- ----------------------------
INSERT INTO `roleupdatetype` VALUES ('1', 'xxx', 'xxx', 'xxx', '0', '2006-09-14 19:01:11', 'admin');
INSERT INTO `roleupdatetype` VALUES ('2', 'yyy', 'yyy', 'yyy', '0', '2006-09-14 19:02:03', 'admin');
INSERT INTO `roleupdatetype` VALUES ('3', '追火少年', '追火少年', '追火少年', '0', '2006-09-15 10:42:28', 'ayeh003');
INSERT INTO `roleupdatetype` VALUES ('4', '請協助測試各項功能', 'CB前遊戲測試', '外配合CB前遊戲測試', '1', '2006-09-18 21:05:31', 'aaa007');
INSERT INTO `roleupdatetype` VALUES ('5', 'money', 'he wants moeny', '完美魔王', '0', '2006-09-19 15:59:54', 'ayeh003');
INSERT INTO `roleupdatetype` VALUES ('6', 'money', 'money', 'money', '1', '2006-09-30 14:25:36', 'ayeh003');
INSERT INTO `roleupdatetype` VALUES ('7', 'kill', 'kill', 'kill', '0', '2006-10-04 10:54:33', 'ayeh003');

-- ----------------------------
-- Table structure for `TASKLIST`
-- ----------------------------
DROP TABLE IF EXISTS `TASKLIST`;
CREATE TABLE `TASKLIST` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(150) NOT NULL default '',
  `senduser` varchar(100) NOT NULL default '',
  `content` text NOT NULL,
  `questiontype` tinyint(1) NOT NULL default '0',
  `sendtime` datetime default NULL,
  `restoretime` datetime default NULL,
  `answer` text,
  `restoreuser` varchar(100) default NULL,
  `other` varchar(100) default NULL,
  `status` tinyint(4) default '0',
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `aid` int(11) default NULL,
  `aname` varchar(50) default NULL,
  `rolename` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of TASKLIST
-- ----------------------------
INSERT INTO `TASKLIST` VALUES ('2', '二級密碼修改', 'aaa007', 'TEST', '1', '2006-09-18 21:03:37', null, null, null, null, '0', 'aaa007', '7777777', '1', null, '完美魔王');

-- ----------------------------
-- Table structure for `TELRECORD`
-- ----------------------------
DROP TABLE IF EXISTS `TELRECORD`;
CREATE TABLE `TELRECORD` (
  `id` int(11) NOT NULL auto_increment,
  `startTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `endTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `operationContent` varchar(255) default NULL,
  `serverName` varchar(50) default NULL,
  `gamerArea` varchar(50) default NULL,
  `telNumber` varchar(20) default NULL,
  `inorput` int(1) default '0',
  `gamerID` varchar(50) default NULL,
  `gamerRole` varchar(25) default NULL,
  `operationUser` varchar(50) default NULL,
  `submittime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of TELRECORD
-- ----------------------------
INSERT INTO `TELRECORD` VALUES ('1', '2006-08-04 00:00:00', '2006-08-04 00:00:00', '?ù????', '', '', '', '1', 'aa', 'sfd ????·??×', 'admin', '2006-08-04 12:13:34');
INSERT INTO `TELRECORD` VALUES ('2', '2006-08-04 00:00:00', '2006-08-04 00:00:00', 'aaaaaaaa', '', '', '', '1', 'aaaaaa', 'aaaaa', 'admin', '2006-08-04 14:29:19');
INSERT INTO `TELRECORD` VALUES ('3', '2006-08-31 00:00:00', '2006-08-31 00:00:00', 'asdf', 'asfd', 'asfd', 'asfd', '2', 'sadfas', 'asf', 'admin', '2006-08-31 16:05:52');

-- ----------------------------
-- Table structure for `USER_PRIV`
-- ----------------------------
DROP TABLE IF EXISTS `USER_PRIV`;
CREATE TABLE `USER_PRIV` (
  `UserID` int(11) NOT NULL default '0',
  `PrivID` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of USER_PRIV
-- ----------------------------
INSERT INTO `USER_PRIV` VALUES ('1', '104101');
INSERT INTO `USER_PRIV` VALUES ('1', '101101');
INSERT INTO `USER_PRIV` VALUES ('1', '108101');

-- ----------------------------
-- Table structure for `USERS`
-- ----------------------------
DROP TABLE IF EXISTS `USERS`;
CREATE TABLE `USERS` (
  `id` int(11) NOT NULL auto_increment,
  `userId` varchar(16) NOT NULL default '',
  `trueName` varchar(32) default NULL,
  `gender` varchar(4) NOT NULL default '',
  `birthday` datetime default NULL,
  `password` varchar(50) NOT NULL default '',
  `email` varchar(128) default NULL,
  `mobile` varchar(32) default NULL,
  `phone` varchar(32) default NULL,
  `pwdChange` int(1) NOT NULL default '1',
  `firstLoginDate` datetime default NULL,
  `lastLoginDate` datetime default NULL,
  `createDate` datetime default NULL,
  `userFlag` int(4) default '0',
  `loginNum` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO `USERS` VALUES ('1', 'admin', '一朝一夕', '男', null, '21232f297a57a5a743894a0e4a801fc3', '123@123.cn', '123456', '123456', '1', '2006-08-31 16:54:00', '2011-04-26 22:13:36', '2004-03-15 00:00:00', '1', '190');
