/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50075
Source Host           : localhost:3306
Source Database       : world2

Target Server Type    : MYSQL
Target Server Version : 50075
File Encoding         : 65001

Date: 2011-04-26 22:13:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `QUESTION`
-- ----------------------------
DROP TABLE IF EXISTS `QUESTION`;
CREATE TABLE `QUESTION` (
  `id` int(11) NOT NULL auto_increment,
  `sourceType` tinyint(1) NOT NULL default '1',
  `questionType` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '0',
  `content` text NOT NULL,
  `author` varchar(100) NOT NULL default '',
  `servername` varchar(100) default NULL,
  `os` varchar(80) default NULL,
  `role` varchar(100) default NULL,
  `createtime` datetime default NULL,
  `answer` text,
  `answertime` datetime default NULL,
  `gmaccount` varchar(100) default NULL,
  `coordinate` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  `roleid` int(11) default NULL,
  `zoneid` int(11) default NULL,
  `mapname` varchar(100) default NULL,
  `com_roleid` int(11) default NULL,
  `com_rolename` varchar(100) default NULL,
  `reporttype` tinyint(4) default '0',
  `delflag` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=632 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of QUESTION
-- ----------------------------
