/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : db_test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-31 10:47:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES ('1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', '1', '1', '2017-12-01 19:40:44', '2017-12-02 19:40:48', '1');
INSERT INTO `courses` VALUES ('2', '1', '1', '2017-12-01 19:40:56', '2017-12-02 19:40:59', '1');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `stud_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('131', '123', 'abc', '1992-09-14', null, null);
INSERT INTO `students` VALUES ('132', 'wangsen', '123', '1992-09-14', null, null);
INSERT INTO `students` VALUES ('133', 'wangsen', '123', '1992-09-14', null, null);

-- ----------------------------
-- Table structure for tutors
-- ----------------------------
DROP TABLE IF EXISTS `tutors`;
CREATE TABLE `tutors` (
  `tutor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`tutor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tutors
-- ----------------------------
INSERT INTO `tutors` VALUES ('1', 'wangsen', '12', '13', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('zhang', '123');
INSERT INTO `users` VALUES ('wang', '456');
INSERT INTO `users` VALUES ('huang', '789');
INSERT INTO `users` VALUES ('123', '345');
INSERT INTO `users` VALUES ('123', '345');
INSERT INTO `users` VALUES ('admin', 'pwd');
INSERT INTO `users` VALUES ('admin', 'pwd');
INSERT INTO `users` VALUES ('admin', 'pwd');
INSERT INTO `users` VALUES ('admin', 'pwd');
INSERT INTO `users` VALUES ('admin', 'pwd');
INSERT INTO `users` VALUES ('admin', 'pwd');

-- ----------------------------
-- Procedure structure for asd
-- ----------------------------
DROP PROCEDURE IF EXISTS `asd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `asd`(IN `param1` varchar(30),IN `param2` varchar(30))
insert into users (username,password) VALUES (param1,param2)
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for qwe
-- ----------------------------
DROP PROCEDURE IF EXISTS `qwe`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `qwe`()
BEGIN
	#Routine body goes here...
	select * from users;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectInfo`()
select * from users 
GO
;;
DELIMITER ;
