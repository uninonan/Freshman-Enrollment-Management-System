/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50136
Source Host           : localhost:3306
Source Database       : design

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2024-06-17 08:04:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `loginid` varchar(255) NOT NULL,
  `loginpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('111', '安安', '1234');
INSERT INTO `admin` VALUES ('7224467', '20221103499', '123456');
INSERT INTO `admin` VALUES ('40682567', '20221103455', '45345');
INSERT INTO `admin` VALUES ('43706040', '20221103555', '123456');
INSERT INTO `admin` VALUES ('44865531', '20221103499', '123456');
INSERT INTO `admin` VALUES ('55192053', '20221103888', '123456');
INSERT INTO `admin` VALUES ('58418927', '20221103467', '45345');
INSERT INTO `admin` VALUES ('76026822', '20221103477', '5434534534');
INSERT INTO `admin` VALUES ('78443827', '20221103654', '5245');
INSERT INTO `admin` VALUES ('81089320', '111', '554');
INSERT INTO `admin` VALUES ('83384363', '20221103455', '4536t');
INSERT INTO `admin` VALUES ('87468505', '20221103400', '3453456');
INSERT INTO `admin` VALUES ('91026549', '20221103418', '123456');
INSERT INTO `admin` VALUES ('92488115', '20221103888', '123456');

-- ----------------------------
-- Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `Id` int(11) NOT NULL,
  `stuno` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('3827354', '20221103999', '8620730', '100');
INSERT INTO `card` VALUES ('10966633', '20221104567', '63809422', '0');

-- ----------------------------
-- Table structure for `drom`
-- ----------------------------
DROP TABLE IF EXISTS `drom`;
CREATE TABLE `drom` (
  `Id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `no` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drom
-- ----------------------------
INSERT INTO `drom` VALUES ('742', '男', '1', '文达', '678', '住人');
INSERT INTO `drom` VALUES ('988', '女', '1', '文达', '234', '住人');

-- ----------------------------
-- Table structure for `healcheck`
-- ----------------------------
DROP TABLE IF EXISTS `healcheck`;
CREATE TABLE `healcheck` (
  `Id` int(11) NOT NULL,
  `stuno` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `vision` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `liver` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of healcheck
-- ----------------------------
INSERT INTO `healcheck` VALUES ('8620730', '20221103999', '168', '120', '正常', '正常', '正常', '良好', '已测量');
INSERT INTO `healcheck` VALUES ('63809422', '20221105678', '168', '120', '正常', '正常', '正常', '良好', '已测量');

-- ----------------------------
-- Table structure for `pay`
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `Id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `stuname` varchar(255) NOT NULL,
  `paynum` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES ('8620730', 'hhhh', '20221103999', '1000', '已缴费');
INSERT INTO `pay` VALUES ('63809422', '权威', '20221104567', '100', '已缴费');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `no` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spe` varchar(255) NOT NULL,
  `classes` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `drom` varchar(255) NOT NULL,
  `loginid` varchar(255) NOT NULL,
  `loginpwd` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('8620730', '20221105678', '李四', '艺术系', '2301', '女', '20', '96593610', '234', '李四', '123', '已到校');
INSERT INTO `student` VALUES ('63809422', '20221105678', '士大夫', '艺术系', '2204', '男', '13', '12345678', '234', '水水', '123', '未到校');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `stuname` varchar(255) NOT NULL,
  `loginid` varchar(255) NOT NULL,
  `loginpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8620730', '安安安', '女', '20', '19581531390', '山西省朔州市应县', '20221103999', '安安安', '123');
INSERT INTO `user` VALUES ('63809422', '士大夫', '女', '34', '123896', '山西省', '20221104567', '呃', '1235');
