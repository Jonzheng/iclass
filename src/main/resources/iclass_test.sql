/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : iclass_test

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-05-12 15:03:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'wwww@qq.com', '2222', '2222', '123445');
INSERT INTO `t_admin` VALUES ('2', '989483@jerf.fa', 'nimgj', 'qweqwe', '123456');

-- ----------------------------
-- Table structure for t_applycdm
-- ----------------------------
DROP TABLE IF EXISTS `t_applycdm`;
CREATE TABLE `t_applycdm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(255) DEFAULT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `majorName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_applycdm
-- ----------------------------
INSERT INTO `t_applycdm` VALUES ('105', '复旦大学', '纠纷系', '自己干哈');
INSERT INTO `t_applycdm` VALUES ('106', '复旦大学', '礼服系', '啊啊啊');
INSERT INTO `t_applycdm` VALUES ('108', '复旦大学', '礼服系', '会员卡');
INSERT INTO `t_applycdm` VALUES ('110', '东莞大学', '礼服系', '应尽快');
INSERT INTO `t_applycdm` VALUES ('111', '东莞大学', '礼服系', '宽度');
INSERT INTO `t_applycdm` VALUES ('112', '东莞大学', '色光系', '巨大');
INSERT INTO `t_applycdm` VALUES ('113', '东莞大学', '色光系', '飓风');
INSERT INTO `t_applycdm` VALUES ('114', '东莞大学', '色光系', '克隆');
INSERT INTO `t_applycdm` VALUES ('116', '我的', '撒', '啊');
INSERT INTO `t_applycdm` VALUES ('117', '骨灰盒', '回事', '个');
INSERT INTO `t_applycdm` VALUES ('118', '有优惠', '试试', '鄂尔多斯');
INSERT INTO `t_applycdm` VALUES ('119', '银行卡', '发人人', '等多个');
INSERT INTO `t_applycdm` VALUES ('120', '而非', '华容道', '耳朵');
INSERT INTO `t_applycdm` VALUES ('121', '123', '23', '123');
INSERT INTO `t_applycdm` VALUES ('122', '1235', '235', '1237');
INSERT INTO `t_applycdm` VALUES ('123', '广东工业大学', '计算机', '网络');
INSERT INTO `t_applycdm` VALUES ('124', '广东工业大学3', '计算机3', '网络3');
INSERT INTO `t_applycdm` VALUES ('125', '广东工业大学34', '计算机35', '网络36');
INSERT INTO `t_applycdm` VALUES ('126', '广东工业大学', '计算机3', '网络367');
INSERT INTO `t_applycdm` VALUES ('127', '广东工业大学', '计算机3', '网络3678');
INSERT INTO `t_applycdm` VALUES ('128', '广东工业大学', '计算机3', '网络36789');
INSERT INTO `t_applycdm` VALUES ('129', '广东工业大学', '计算机3', '软件');
INSERT INTO `t_applycdm` VALUES ('130', '广东工业大学', '计算机3', '软件2');
INSERT INTO `t_applycdm` VALUES ('131', '广东工业大学', '计算机3', '软件22');
INSERT INTO `t_applycdm` VALUES ('132', '广东工业大学', '计算机3', '软件224');
INSERT INTO `t_applycdm` VALUES ('133', '广东工业大学', '计算机3', '软件2241');
INSERT INTO `t_applycdm` VALUES ('134', '广东工业大学', '计算机3', '软件22416');
INSERT INTO `t_applycdm` VALUES ('135', '广东工业大学', '建土系', '发给');
INSERT INTO `t_applycdm` VALUES ('136', '广东工业大学', '建土系', '发给是');
INSERT INTO `t_applycdm` VALUES ('137', '广东工业大学', '建土系', '发给是个');
INSERT INTO `t_applycdm` VALUES ('138', '广州大学', '建土系', '发给是个');
INSERT INTO `t_applycdm` VALUES ('139', '广州大学', '建土系', '发给是');
INSERT INTO `t_applycdm` VALUES ('140', '广州大学', '建土系', '发给');
INSERT INTO `t_applycdm` VALUES ('141', '广州大学', '建土系', '发');
INSERT INTO `t_applycdm` VALUES ('142', '广州大学', '建土系', '发快乐');
INSERT INTO `t_applycdm` VALUES ('143', '广州大学', '建土系', '发快乐是');
INSERT INTO `t_applycdm` VALUES ('144', '广州大学', '建土系', '咯');
INSERT INTO `t_applycdm` VALUES ('145', '广州大学', '建土系', '咯个');
INSERT INTO `t_applycdm` VALUES ('146', '广州大学', '建土系', '咯个就会加快');
INSERT INTO `t_applycdm` VALUES ('147', '广州大学', '建土系', '咯个就会加快安慰');
INSERT INTO `t_applycdm` VALUES ('148', '华南理工大学', '计算机', '软件');
INSERT INTO `t_applycdm` VALUES ('149', '华南理工大学', '计算机', '软件工程');
INSERT INTO `t_applycdm` VALUES ('150', '华南理工大学', '计算机', '软2件工程');
INSERT INTO `t_applycdm` VALUES ('151', '华南理工大学', '计算机', '软2件3工程');
INSERT INTO `t_applycdm` VALUES ('152', '华南理工大学', '计算机', '软2件3工程2');
INSERT INTO `t_applycdm` VALUES ('153', '华南理工大学', '计算机', '软2件3工2程2');
INSERT INTO `t_applycdm` VALUES ('154', '华南理工大学', '计算机', '软2件3工2程21');
INSERT INTO `t_applycdm` VALUES ('155', '华南理工大学', '服装系', '软2件3工2程21');
INSERT INTO `t_applycdm` VALUES ('156', '华南理工大学', '服装系', '软2件3工2程2');
INSERT INTO `t_applycdm` VALUES ('157', '华南理工大学', '服装系', '软2件3工2程');
INSERT INTO `t_applycdm` VALUES ('158', '华南理工大学', '服装系', '软2件3工程');
INSERT INTO `t_applycdm` VALUES ('159', '华南理工大学', '服装系', '软2件工程');
INSERT INTO `t_applycdm` VALUES ('160', '华南理工大学', '服装系', '软件工程');
INSERT INTO `t_applycdm` VALUES ('161', '华南理工大学', '旅游系', '软件工程');
INSERT INTO `t_applycdm` VALUES ('162', '华南理工大学', '旅游系', '软件工程2');
INSERT INTO `t_applycdm` VALUES ('163', '华南理工大学', '旅游系', '软件工程24');
INSERT INTO `t_applycdm` VALUES ('164', '华南理工大学', '旅游系', '软件工程241');
INSERT INTO `t_applycdm` VALUES ('165', '华南理工大学', '旅游系', '1软件工程241');
INSERT INTO `t_applycdm` VALUES ('166', '华南理工大学', '旅游系', '1软件2工程241');
INSERT INTO `t_applycdm` VALUES ('167', '华南理工大学', '旅游系', '1软2件2工程241');
INSERT INTO `t_applycdm` VALUES ('168', '华南理工大学', '旅游系', '1软2件2工2程241');
INSERT INTO `t_applycdm` VALUES ('171', '华南理工大学', '数学系', '1软2件2工2');
INSERT INTO `t_applycdm` VALUES ('173', '华南理工大学', '数学系', '1软件2工');
INSERT INTO `t_applycdm` VALUES ('174', '华南理工大学', '数学系', '1件2工');
INSERT INTO `t_applycdm` VALUES ('175', '华南理工大学', '数学系', '件2工');
INSERT INTO `t_applycdm` VALUES ('176', '华南理工大学', '数学系', '件2工句');
INSERT INTO `t_applycdm` VALUES ('181', '华南理工大学', '外语系', '日语');
INSERT INTO `t_applycdm` VALUES ('182', '华南理工大学', '外语系', '地语');
INSERT INTO `t_applycdm` VALUES ('183', '华南理工大学', '外语系', '嘚语');
INSERT INTO `t_applycdm` VALUES ('186', '华南理工大学', '外语系', '拉丁语');
INSERT INTO `t_applycdm` VALUES ('188', '华南理工大学', '外语系', '泰国语');
INSERT INTO `t_applycdm` VALUES ('189', '华南理工大学', '外语系', '热血语');
INSERT INTO `t_applycdm` VALUES ('190', '华南理工大学', '外语系', '热血物语');
INSERT INTO `t_applycdm` VALUES ('191', '华南理工大学', '体育系', '热血物语');
INSERT INTO `t_applycdm` VALUES ('192', '华南理工大学', '体育系', '热血足球');
INSERT INTO `t_applycdm` VALUES ('194', '华南理工大学', '体育系', '热血台球');
INSERT INTO `t_applycdm` VALUES ('195', '华南理工大学', '体育系', '热血台球是');
INSERT INTO `t_applycdm` VALUES ('196', '华南理工大学', '体育系', '热血乒乓球');

-- ----------------------------
-- Table structure for t_call_roll
-- ----------------------------
DROP TABLE IF EXISTS `t_call_roll`;
CREATE TABLE `t_call_roll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `absent` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `dayoff` int(11) NOT NULL,
  `late` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `point` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=943 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_call_roll
-- ----------------------------
INSERT INTO `t_call_roll` VALUES ('1', '0', '1', '0', '0', '忽必烈10', '62', '1', '1', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('2', '0', '1', '0', '1', '忽必烈11', '58', '0', '1', '1214080611111', '2');
INSERT INTO `t_call_roll` VALUES ('3', '0', '1', '0', '0', '忽必烈12', '62', '1', '1', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('4', '0', '1', '0', '0', '忽必烈13', '62', '1', '1', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('5', '0', '1', '0', '0', '忽必烈14', '62', '1', '1', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('6', '0', '1', '0', '1', '忽必烈15', '58', '0', '1', '1214080611115', '2');
INSERT INTO `t_call_roll` VALUES ('7', '0', '1', '0', '1', '忽必烈16', '58', '0', '1', '1214080611116', '2');
INSERT INTO `t_call_roll` VALUES ('8', '0', '1', '0', '1', '忽必烈17', '58', '0', '1', '1214080611117', '2');
INSERT INTO `t_call_roll` VALUES ('9', '0', '1', '0', '1', '忽必烈18', '58', '0', '1', '1214080611118', '2');
INSERT INTO `t_call_roll` VALUES ('10', '0', '1', '0', '1', '忽必烈19', '58', '0', '1', '1214080611119', '2');
INSERT INTO `t_call_roll` VALUES ('11', '0', '1', '0', '1', '居里夫20', '58', '0', '1', '1214080633320', '2');
INSERT INTO `t_call_roll` VALUES ('12', '1', '1', '0', '0', '居里夫21', '55', '0', '1', '1214080633321', '3');
INSERT INTO `t_call_roll` VALUES ('13', '1', '1', '0', '0', '居里夫22', '55', '0', '1', '1214080633322', '3');
INSERT INTO `t_call_roll` VALUES ('14', '1', '1', '0', '0', '居里夫23', '55', '0', '1', '1214080633323', '3');
INSERT INTO `t_call_roll` VALUES ('15', '1', '1', '0', '0', '居里夫24', '55', '0', '1', '1214080633324', '3');
INSERT INTO `t_call_roll` VALUES ('16', '1', '1', '0', '0', '居里夫25', '55', '0', '1', '1214080633325', '3');
INSERT INTO `t_call_roll` VALUES ('17', '1', '1', '0', '0', '居里夫26', '55', '0', '1', '1214080633326', '3');
INSERT INTO `t_call_roll` VALUES ('18', '1', '1', '0', '0', '居里夫27', '55', '0', '1', '1214080633327', '3');
INSERT INTO `t_call_roll` VALUES ('19', '1', '1', '0', '0', '居里夫28', '55', '0', '1', '1214080633328', '3');
INSERT INTO `t_call_roll` VALUES ('20', '0', '1', '0', '1', '居里夫29', '58', '0', '1', '1214080633329', '2');
INSERT INTO `t_call_roll` VALUES ('21', '1', '1', '0', '0', '邓肯30', '55', '0', '1', '1214080644430', '3');
INSERT INTO `t_call_roll` VALUES ('22', '0', '1', '0', '0', '邓肯31', '62', '1', '1', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('23', '0', '1', '0', '0', '邓肯32', '62', '1', '1', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('24', '0', '1', '0', '0', '邓肯33', '62', '1', '1', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('25', '0', '1', '0', '0', '邓肯34', '62', '1', '1', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('26', '0', '1', '0', '0', '邓肯35', '62', '1', '1', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('27', '0', '1', '0', '0', '邓肯36', '62', '1', '1', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('28', '0', '1', '0', '0', '邓肯37', '62', '1', '1', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('29', '0', '1', '0', '0', '邓肯38', '62', '1', '1', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('30', '0', '1', '0', '0', '邓肯39', '62', '1', '1', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('31', '0', '1', '0', '1', '陆逊40', '58', '0', '1', '1214080699940', '2');
INSERT INTO `t_call_roll` VALUES ('32', '0', '1', '0', '1', '陆逊41', '58', '0', '1', '1214080699941', '2');
INSERT INTO `t_call_roll` VALUES ('33', '0', '1', '0', '1', '陆逊42', '58', '0', '1', '1214080699942', '2');
INSERT INTO `t_call_roll` VALUES ('34', '0', '1', '0', '1', '陆逊43', '58', '0', '1', '1214080699943', '2');
INSERT INTO `t_call_roll` VALUES ('35', '0', '1', '0', '0', '陆逊44', '62', '1', '1', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('36', '0', '1', '0', '0', '陆逊45', '62', '1', '1', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('37', '0', '1', '0', '0', '陆逊46', '62', '1', '1', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('38', '0', '1', '0', '0', '陆逊47', '62', '1', '1', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('39', '0', '1', '0', '0', '陆逊48', '62', '1', '1', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('40', '0', '1', '0', '1', '陆逊49', '58', '0', '1', '1214080699949', '2');
INSERT INTO `t_call_roll` VALUES ('41', '0', '1', '0', '1', '露琪亚50', '58', '0', '1', '1214060899950', '2');
INSERT INTO `t_call_roll` VALUES ('42', '0', '1', '0', '0', '露琪亚51', '62', '1', '1', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('43', '0', '1', '0', '1', '露琪亚52', '58', '0', '1', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('44', '0', '1', '0', '0', '露琪亚53', '62', '1', '1', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('45', '0', '1', '0', '1', '露琪亚54', '58', '0', '1', '1214060899954', '2');
INSERT INTO `t_call_roll` VALUES ('46', '0', '1', '0', '0', '露琪亚55', '62', '1', '1', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('47', '0', '1', '0', '0', '露琪亚56', '62', '1', '1', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('48', '0', '1', '0', '0', '露琪亚57', '62', '1', '1', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('49', '0', '1', '0', '0', '露琪亚58', '62', '1', '1', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('50', '0', '1', '0', '1', '露琪亚59', '58', '0', '1', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('51', '0', '1', '0', '1', '露琪亚50', '58', '0', '1', '1214060899950', '2');
INSERT INTO `t_call_roll` VALUES ('52', '0', '1', '0', '1', '露琪亚51', '58', '0', '1', '1214060899951', '2');
INSERT INTO `t_call_roll` VALUES ('53', '1', '1', '0', '0', '露琪亚52', '55', '0', '1', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('54', '1', '1', '0', '0', '露琪亚53', '55', '0', '1', '1214060899953', '3');
INSERT INTO `t_call_roll` VALUES ('55', '0', '1', '1', '0', '露琪亚54', '59', '0', '1', '1214060899954', '4');
INSERT INTO `t_call_roll` VALUES ('56', '0', '1', '1', '0', '露琪亚55', '59', '0', '1', '1214060899955', '4');
INSERT INTO `t_call_roll` VALUES ('57', '1', '1', '0', '0', '露琪亚56', '55', '0', '1', '1214060899956', '3');
INSERT INTO `t_call_roll` VALUES ('58', '0', '1', '0', '1', '露琪亚57', '58', '0', '1', '1214060899957', '2');
INSERT INTO `t_call_roll` VALUES ('59', '0', '1', '0', '0', '露琪亚58', '62', '1', '1', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('60', '0', '1', '0', '0', '露琪亚59', '62', '1', '1', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('64', '0', '1', '0', '0', '忽必烈10', '64', '2', '2', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('65', '1', '1', '0', '1', '忽必烈11', '53', '0', '2', '1214080611111', '3');
INSERT INTO `t_call_roll` VALUES ('66', '0', '1', '0', '1', '忽必烈12', '60', '1', '2', '1214080611112', '2');
INSERT INTO `t_call_roll` VALUES ('67', '0', '1', '1', '0', '忽必烈13', '61', '1', '2', '1214080611113', '4');
INSERT INTO `t_call_roll` VALUES ('68', '1', '1', '0', '0', '忽必烈14', '57', '1', '2', '1214080611114', '3');
INSERT INTO `t_call_roll` VALUES ('69', '0', '1', '0', '1', '忽必烈15', '60', '1', '2', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('70', '0', '1', '0', '1', '忽必烈16', '60', '1', '2', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('71', '0', '1', '0', '2', '忽必烈17', '56', '0', '2', '1214080611117', '2');
INSERT INTO `t_call_roll` VALUES ('72', '0', '1', '0', '2', '忽必烈18', '56', '0', '2', '1214080611118', '2');
INSERT INTO `t_call_roll` VALUES ('73', '0', '1', '0', '1', '忽必烈19', '60', '1', '2', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('74', '0', '1', '0', '1', '居里夫20', '60', '1', '2', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('75', '1', '1', '0', '1', '居里夫21', '53', '0', '2', '1214080633321', '2');
INSERT INTO `t_call_roll` VALUES ('76', '2', '1', '0', '0', '居里夫22', '50', '0', '2', '1214080633322', '3');
INSERT INTO `t_call_roll` VALUES ('77', '1', '1', '0', '1', '居里夫23', '53', '0', '2', '1214080633323', '2');
INSERT INTO `t_call_roll` VALUES ('78', '1', '1', '0', '0', '居里夫24', '57', '1', '2', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('79', '1', '1', '0', '1', '居里夫25', '53', '0', '2', '1214080633325', '2');
INSERT INTO `t_call_roll` VALUES ('80', '2', '1', '0', '0', '居里夫26', '50', '0', '2', '1214080633326', '3');
INSERT INTO `t_call_roll` VALUES ('81', '2', '1', '0', '0', '居里夫27', '50', '0', '2', '1214080633327', '3');
INSERT INTO `t_call_roll` VALUES ('82', '1', '1', '0', '1', '居里夫28', '53', '0', '2', '1214080633328', '2');
INSERT INTO `t_call_roll` VALUES ('83', '0', '1', '0', '2', '居里夫29', '56', '0', '2', '1214080633329', '2');
INSERT INTO `t_call_roll` VALUES ('84', '1', '1', '0', '0', '邓肯30', '57', '1', '2', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('85', '0', '1', '0', '0', '邓肯31', '64', '2', '2', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('86', '0', '1', '0', '1', '邓肯32', '60', '1', '2', '1214080644432', '2');
INSERT INTO `t_call_roll` VALUES ('87', '0', '1', '0', '1', '邓肯33', '60', '1', '2', '1214080644433', '2');
INSERT INTO `t_call_roll` VALUES ('88', '0', '1', '0', '1', '邓肯34', '60', '1', '2', '1214080644434', '2');
INSERT INTO `t_call_roll` VALUES ('89', '1', '1', '0', '0', '邓肯35', '57', '1', '2', '1214080644435', '3');
INSERT INTO `t_call_roll` VALUES ('90', '0', '1', '0', '1', '邓肯36', '60', '1', '2', '1214080644436', '2');
INSERT INTO `t_call_roll` VALUES ('91', '0', '1', '0', '0', '邓肯37', '64', '2', '2', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('92', '0', '1', '0', '1', '邓肯38', '60', '1', '2', '1214080644438', '2');
INSERT INTO `t_call_roll` VALUES ('93', '0', '1', '0', '1', '邓肯39', '60', '1', '2', '1214080644439', '2');
INSERT INTO `t_call_roll` VALUES ('94', '0', '1', '0', '1', '陆逊40', '60', '1', '2', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('95', '1', '1', '0', '1', '陆逊41', '53', '0', '2', '1214080699941', '3');
INSERT INTO `t_call_roll` VALUES ('96', '0', '1', '1', '1', '陆逊42', '57', '0', '2', '1214080699942', '4');
INSERT INTO `t_call_roll` VALUES ('97', '0', '1', '0', '2', '陆逊43', '56', '0', '2', '1214080699943', '2');
INSERT INTO `t_call_roll` VALUES ('98', '0', '1', '0', '1', '陆逊44', '60', '1', '2', '1214080699944', '2');
INSERT INTO `t_call_roll` VALUES ('99', '0', '1', '0', '1', '陆逊45', '60', '1', '2', '1214080699945', '2');
INSERT INTO `t_call_roll` VALUES ('100', '0', '1', '0', '1', '陆逊46', '60', '1', '2', '1214080699946', '2');
INSERT INTO `t_call_roll` VALUES ('101', '0', '1', '0', '0', '陆逊47', '64', '2', '2', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('102', '0', '1', '0', '1', '陆逊48', '60', '1', '2', '1214080699948', '2');
INSERT INTO `t_call_roll` VALUES ('103', '0', '1', '0', '2', '陆逊49', '56', '0', '2', '1214080699949', '2');
INSERT INTO `t_call_roll` VALUES ('104', '0', '1', '1', '1', '露琪亚50', '57', '0', '2', '1214060899950', '4');
INSERT INTO `t_call_roll` VALUES ('105', '1', '1', '0', '0', '露琪亚51', '57', '1', '2', '1214060899951', '3');
INSERT INTO `t_call_roll` VALUES ('106', '0', '1', '0', '2', '露琪亚52', '56', '0', '2', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('107', '0', '1', '0', '1', '露琪亚53', '60', '1', '2', '1214060899953', '2');
INSERT INTO `t_call_roll` VALUES ('108', '1', '1', '0', '1', '露琪亚54', '53', '0', '2', '1214060899954', '3');
INSERT INTO `t_call_roll` VALUES ('109', '1', '1', '0', '0', '露琪亚55', '57', '1', '2', '1214060899955', '3');
INSERT INTO `t_call_roll` VALUES ('110', '0', '1', '0', '1', '露琪亚56', '60', '1', '2', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('111', '0', '1', '0', '1', '露琪亚57', '60', '1', '2', '1214060899957', '2');
INSERT INTO `t_call_roll` VALUES ('112', '0', '1', '0', '0', '露琪亚58', '64', '2', '2', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('113', '0', '1', '0', '1', '露琪亚59', '60', '1', '2', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('114', '0', '1', '0', '1', '露琪亚50', '60', '1', '2', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('115', '0', '1', '0', '2', '露琪亚51', '56', '0', '2', '1214060899951', '2');
INSERT INTO `t_call_roll` VALUES ('116', '1', '1', '0', '1', '露琪亚52', '53', '0', '2', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('117', '1', '1', '0', '1', '露琪亚53', '53', '0', '2', '1214060899953', '2');
INSERT INTO `t_call_roll` VALUES ('118', '0', '1', '1', '0', '露琪亚54', '61', '1', '2', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('119', '0', '1', '1', '0', '露琪亚55', '61', '1', '2', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('120', '1', '1', '0', '1', '露琪亚56', '53', '0', '2', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('121', '0', '1', '0', '2', '露琪亚57', '56', '0', '2', '1214060899957', '2');
INSERT INTO `t_call_roll` VALUES ('122', '0', '1', '0', '0', '露琪亚58', '64', '2', '2', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('123', '0', '1', '0', '1', '露琪亚59', '60', '1', '2', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('127', '0', '1', '0', '0', '忽必烈10', '66', '3', '3', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('128', '2', '1', '0', '1', '忽必烈11', '48', '0', '3', '1214080611111', '3');
INSERT INTO `t_call_roll` VALUES ('129', '0', '1', '0', '2', '忽必烈12', '58', '1', '3', '1214080611112', '2');
INSERT INTO `t_call_roll` VALUES ('130', '0', '1', '1', '0', '忽必烈13', '63', '2', '3', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('131', '1', '1', '0', '1', '忽必烈14', '55', '1', '3', '1214080611114', '2');
INSERT INTO `t_call_roll` VALUES ('132', '0', '1', '0', '2', '忽必烈15', '58', '1', '3', '1214080611115', '2');
INSERT INTO `t_call_roll` VALUES ('133', '0', '1', '0', '1', '忽必烈16', '62', '2', '3', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('134', '0', '1', '0', '3', '忽必烈17', '54', '0', '3', '1214080611117', '2');
INSERT INTO `t_call_roll` VALUES ('135', '0', '1', '0', '3', '忽必烈18', '54', '0', '3', '1214080611118', '2');
INSERT INTO `t_call_roll` VALUES ('136', '0', '1', '0', '1', '忽必烈19', '62', '2', '3', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('137', '0', '1', '0', '1', '居里夫20', '62', '2', '3', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('138', '1', '1', '0', '2', '居里夫21', '51', '0', '3', '1214080633321', '2');
INSERT INTO `t_call_roll` VALUES ('139', '2', '1', '0', '1', '居里夫22', '48', '0', '3', '1214080633322', '2');
INSERT INTO `t_call_roll` VALUES ('140', '1', '1', '0', '1', '居里夫23', '55', '1', '3', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('141', '1', '1', '0', '0', '居里夫24', '59', '2', '3', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('142', '1', '1', '0', '1', '居里夫25', '55', '1', '3', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('143', '2', '1', '0', '0', '居里夫26', '52', '1', '3', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('144', '2', '1', '0', '1', '居里夫27', '48', '0', '3', '1214080633327', '2');
INSERT INTO `t_call_roll` VALUES ('145', '1', '1', '0', '2', '居里夫28', '51', '0', '3', '1214080633328', '2');
INSERT INTO `t_call_roll` VALUES ('146', '1', '1', '0', '2', '居里夫29', '51', '0', '3', '1214080633329', '3');
INSERT INTO `t_call_roll` VALUES ('147', '1', '1', '1', '0', '邓肯30', '56', '1', '3', '1214080644430', '4');
INSERT INTO `t_call_roll` VALUES ('148', '0', '1', '0', '1', '邓肯31', '62', '2', '3', '1214080644431', '2');
INSERT INTO `t_call_roll` VALUES ('149', '0', '1', '0', '1', '邓肯32', '62', '2', '3', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('150', '0', '1', '0', '1', '邓肯33', '62', '2', '3', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('151', '0', '1', '0', '1', '邓肯34', '62', '2', '3', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('152', '1', '1', '0', '1', '邓肯35', '55', '1', '3', '1214080644435', '2');
INSERT INTO `t_call_roll` VALUES ('153', '0', '1', '1', '1', '邓肯36', '59', '1', '3', '1214080644436', '4');
INSERT INTO `t_call_roll` VALUES ('154', '1', '1', '0', '0', '邓肯37', '59', '2', '3', '1214080644437', '3');
INSERT INTO `t_call_roll` VALUES ('155', '0', '1', '0', '2', '邓肯38', '58', '1', '3', '1214080644438', '2');
INSERT INTO `t_call_roll` VALUES ('156', '0', '1', '0', '1', '邓肯39', '62', '2', '3', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('157', '0', '1', '0', '1', '陆逊40', '62', '2', '3', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('158', '1', '1', '0', '1', '陆逊41', '55', '1', '3', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('159', '0', '1', '1', '1', '陆逊42', '59', '1', '3', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('160', '0', '1', '0', '3', '陆逊43', '54', '0', '3', '1214080699943', '2');
INSERT INTO `t_call_roll` VALUES ('161', '0', '1', '1', '1', '陆逊44', '59', '1', '3', '1214080699944', '4');
INSERT INTO `t_call_roll` VALUES ('162', '1', '1', '0', '1', '陆逊45', '55', '1', '3', '1214080699945', '3');
INSERT INTO `t_call_roll` VALUES ('163', '0', '1', '0', '2', '陆逊46', '58', '1', '3', '1214080699946', '2');
INSERT INTO `t_call_roll` VALUES ('164', '0', '1', '0', '0', '陆逊47', '66', '3', '3', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('165', '0', '1', '0', '1', '陆逊48', '62', '2', '3', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('166', '0', '1', '0', '2', '陆逊49', '58', '1', '3', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('167', '0', '1', '1', '2', '露琪亚50', '55', '0', '3', '1214060899950', '2');
INSERT INTO `t_call_roll` VALUES ('168', '1', '1', '0', '1', '露琪亚51', '55', '1', '3', '1214060899951', '2');
INSERT INTO `t_call_roll` VALUES ('169', '0', '1', '0', '3', '露琪亚52', '54', '0', '3', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('170', '0', '1', '0', '2', '露琪亚53', '58', '1', '3', '1214060899953', '2');
INSERT INTO `t_call_roll` VALUES ('171', '1', '1', '0', '2', '露琪亚54', '51', '0', '3', '1214060899954', '2');
INSERT INTO `t_call_roll` VALUES ('172', '1', '1', '0', '0', '露琪亚55', '59', '2', '3', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('173', '0', '1', '0', '2', '露琪亚56', '58', '1', '3', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('174', '1', '1', '0', '1', '露琪亚57', '55', '1', '3', '1214060899957', '3');
INSERT INTO `t_call_roll` VALUES ('175', '1', '1', '0', '0', '露琪亚58', '59', '2', '3', '1214060899958', '3');
INSERT INTO `t_call_roll` VALUES ('176', '1', '1', '0', '1', '露琪亚59', '55', '1', '3', '1214060899959', '3');
INSERT INTO `t_call_roll` VALUES ('177', '0', '1', '0', '2', '露琪亚50', '58', '1', '3', '1214060899950', '2');
INSERT INTO `t_call_roll` VALUES ('178', '0', '1', '0', '2', '露琪亚51', '58', '1', '3', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('179', '1', '1', '0', '2', '露琪亚52', '51', '0', '3', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('180', '1', '1', '1', '1', '露琪亚53', '52', '0', '3', '1214060899953', '4');
INSERT INTO `t_call_roll` VALUES ('181', '0', '1', '2', '0', '露琪亚54', '60', '1', '3', '1214060899954', '4');
INSERT INTO `t_call_roll` VALUES ('182', '0', '1', '2', '0', '露琪亚55', '60', '1', '3', '1214060899955', '4');
INSERT INTO `t_call_roll` VALUES ('183', '1', '1', '1', '1', '露琪亚56', '52', '0', '3', '1214060899956', '4');
INSERT INTO `t_call_roll` VALUES ('184', '0', '1', '0', '3', '露琪亚57', '54', '0', '3', '1214060899957', '2');
INSERT INTO `t_call_roll` VALUES ('185', '0', '1', '0', '1', '露琪亚58', '62', '2', '3', '1214060899958', '2');
INSERT INTO `t_call_roll` VALUES ('186', '0', '1', '0', '1', '露琪亚59', '62', '2', '3', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('190', '0', '1', '0', '0', '忽必烈10', '68', '4', '4', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('191', '3', '1', '0', '1', '忽必烈11', '43', '0', '4', '1214080611111', '3');
INSERT INTO `t_call_roll` VALUES ('192', '0', '1', '0', '3', '忽必烈12', '56', '1', '4', '1214080611112', '2');
INSERT INTO `t_call_roll` VALUES ('193', '0', '1', '1', '0', '忽必烈13', '65', '3', '4', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('194', '1', '1', '0', '2', '忽必烈14', '53', '1', '4', '1214080611114', '2');
INSERT INTO `t_call_roll` VALUES ('195', '0', '1', '0', '3', '忽必烈15', '56', '1', '4', '1214080611115', '2');
INSERT INTO `t_call_roll` VALUES ('196', '1', '1', '0', '1', '忽必烈16', '57', '2', '4', '1214080611116', '3');
INSERT INTO `t_call_roll` VALUES ('197', '0', '1', '1', '3', '忽必烈17', '53', '0', '4', '1214080611117', '4');
INSERT INTO `t_call_roll` VALUES ('198', '0', '1', '0', '3', '忽必烈18', '56', '1', '4', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('199', '0', '1', '0', '1', '忽必烈19', '64', '3', '4', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('200', '0', '1', '0', '1', '居里夫20', '64', '3', '4', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('201', '1', '1', '0', '3', '居里夫21', '49', '0', '4', '1214080633321', '2');
INSERT INTO `t_call_roll` VALUES ('202', '2', '1', '0', '2', '居里夫22', '46', '0', '4', '1214080633322', '2');
INSERT INTO `t_call_roll` VALUES ('203', '1', '1', '0', '2', '居里夫23', '53', '1', '4', '1214080633323', '2');
INSERT INTO `t_call_roll` VALUES ('204', '1', '1', '0', '0', '居里夫24', '61', '3', '4', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('205', '1', '1', '1', '1', '居里夫25', '54', '1', '4', '1214080633325', '4');
INSERT INTO `t_call_roll` VALUES ('206', '2', '1', '1', '0', '居里夫26', '51', '1', '4', '1214080633326', '4');
INSERT INTO `t_call_roll` VALUES ('207', '2', '1', '1', '1', '居里夫27', '47', '0', '4', '1214080633327', '4');
INSERT INTO `t_call_roll` VALUES ('208', '1', '1', '1', '2', '居里夫28', '50', '0', '4', '1214080633328', '4');
INSERT INTO `t_call_roll` VALUES ('209', '2', '1', '0', '2', '居里夫29', '46', '0', '4', '1214080633329', '3');
INSERT INTO `t_call_roll` VALUES ('210', '2', '1', '1', '0', '邓肯30', '51', '1', '4', '1214080644430', '3');
INSERT INTO `t_call_roll` VALUES ('211', '0', '1', '0', '2', '邓肯31', '60', '2', '4', '1214080644431', '2');
INSERT INTO `t_call_roll` VALUES ('212', '0', '1', '0', '1', '邓肯32', '64', '3', '4', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('213', '0', '1', '0', '1', '邓肯33', '64', '3', '4', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('214', '0', '1', '0', '1', '邓肯34', '64', '3', '4', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('215', '1', '1', '0', '2', '邓肯35', '53', '1', '4', '1214080644435', '2');
INSERT INTO `t_call_roll` VALUES ('216', '1', '1', '1', '1', '邓肯36', '54', '1', '4', '1214080644436', '3');
INSERT INTO `t_call_roll` VALUES ('217', '2', '1', '0', '0', '邓肯37', '54', '2', '4', '1214080644437', '3');
INSERT INTO `t_call_roll` VALUES ('218', '0', '1', '1', '2', '邓肯38', '57', '1', '4', '1214080644438', '4');
INSERT INTO `t_call_roll` VALUES ('219', '0', '1', '1', '1', '邓肯39', '61', '2', '4', '1214080644439', '4');
INSERT INTO `t_call_roll` VALUES ('220', '1', '1', '0', '1', '陆逊40', '57', '2', '4', '1214080699940', '3');
INSERT INTO `t_call_roll` VALUES ('221', '1', '1', '0', '2', '陆逊41', '53', '1', '4', '1214080699941', '2');
INSERT INTO `t_call_roll` VALUES ('222', '0', '1', '1', '1', '陆逊42', '61', '2', '4', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('223', '0', '1', '0', '4', '陆逊43', '52', '0', '4', '1214080699943', '2');
INSERT INTO `t_call_roll` VALUES ('224', '1', '1', '1', '1', '陆逊44', '54', '1', '4', '1214080699944', '3');
INSERT INTO `t_call_roll` VALUES ('225', '1', '1', '1', '1', '陆逊45', '54', '1', '4', '1214080699945', '4');
INSERT INTO `t_call_roll` VALUES ('226', '1', '1', '0', '2', '陆逊46', '53', '1', '4', '1214080699946', '3');
INSERT INTO `t_call_roll` VALUES ('227', '0', '1', '0', '1', '陆逊47', '64', '3', '4', '1214080699947', '2');
INSERT INTO `t_call_roll` VALUES ('228', '0', '1', '0', '1', '陆逊48', '64', '3', '4', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('229', '0', '1', '0', '2', '陆逊49', '60', '2', '4', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('230', '0', '1', '1', '2', '露琪亚50', '57', '1', '4', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('231', '1', '1', '0', '1', '露琪亚51', '57', '2', '4', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('232', '1', '1', '0', '3', '露琪亚52', '49', '0', '4', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('233', '0', '1', '1', '2', '露琪亚53', '57', '1', '4', '1214060899953', '4');
INSERT INTO `t_call_roll` VALUES ('234', '2', '1', '0', '2', '露琪亚54', '46', '0', '4', '1214060899954', '3');
INSERT INTO `t_call_roll` VALUES ('235', '1', '1', '0', '1', '露琪亚55', '57', '2', '4', '1214060899955', '2');
INSERT INTO `t_call_roll` VALUES ('236', '0', '1', '0', '2', '露琪亚56', '60', '2', '4', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('237', '1', '1', '0', '1', '露琪亚57', '57', '2', '4', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('238', '1', '1', '0', '0', '露琪亚58', '61', '3', '4', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('239', '1', '1', '0', '2', '露琪亚59', '53', '1', '4', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('240', '1', '1', '0', '2', '露琪亚50', '53', '1', '4', '1214060899950', '3');
INSERT INTO `t_call_roll` VALUES ('241', '0', '1', '1', '2', '露琪亚51', '57', '1', '4', '1214060899951', '4');
INSERT INTO `t_call_roll` VALUES ('242', '2', '1', '0', '2', '露琪亚52', '46', '0', '4', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('243', '1', '1', '1', '2', '露琪亚53', '50', '0', '4', '1214060899953', '2');
INSERT INTO `t_call_roll` VALUES ('244', '0', '1', '2', '0', '露琪亚54', '62', '2', '4', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('245', '0', '1', '2', '0', '露琪亚55', '62', '2', '4', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('246', '1', '1', '1', '1', '露琪亚56', '54', '1', '4', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('247', '0', '1', '0', '3', '露琪亚57', '56', '1', '4', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('248', '0', '1', '0', '2', '露琪亚58', '60', '2', '4', '1214060899958', '2');
INSERT INTO `t_call_roll` VALUES ('249', '0', '1', '0', '2', '露琪亚59', '60', '2', '4', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('253', '0', '1', '0', '0', '忽必烈10', '70', '5', '5', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('254', '3', '1', '0', '2', '忽必烈11', '41', '0', '5', '1214080611111', '2');
INSERT INTO `t_call_roll` VALUES ('255', '0', '1', '0', '4', '忽必烈12', '54', '1', '5', '1214080611112', '2');
INSERT INTO `t_call_roll` VALUES ('256', '0', '1', '1', '0', '忽必烈13', '67', '4', '5', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('257', '1', '1', '0', '2', '忽必烈14', '55', '2', '5', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('258', '0', '1', '1', '3', '忽必烈15', '55', '1', '5', '1214080611115', '4');
INSERT INTO `t_call_roll` VALUES ('259', '1', '1', '0', '1', '忽必烈16', '59', '3', '5', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('260', '0', '1', '1', '3', '忽必烈17', '55', '1', '5', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('261', '0', '1', '0', '3', '忽必烈18', '58', '2', '5', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('262', '0', '1', '1', '1', '忽必烈19', '63', '3', '5', '1214080611119', '4');
INSERT INTO `t_call_roll` VALUES ('263', '0', '1', '0', '1', '居里夫20', '66', '4', '5', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('264', '1', '1', '0', '3', '居里夫21', '51', '1', '5', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('265', '2', '1', '1', '2', '居里夫22', '45', '0', '5', '1214080633322', '4');
INSERT INTO `t_call_roll` VALUES ('266', '1', '1', '0', '2', '居里夫23', '55', '2', '5', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('267', '1', '1', '0', '0', '居里夫24', '63', '4', '5', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('268', '1', '1', '2', '1', '居里夫25', '53', '1', '5', '1214080633325', '4');
INSERT INTO `t_call_roll` VALUES ('269', '2', '1', '1', '0', '居里夫26', '53', '2', '5', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('270', '2', '1', '1', '1', '居里夫27', '49', '1', '5', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('271', '1', '1', '1', '2', '居里夫28', '52', '1', '5', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('272', '2', '1', '0', '2', '居里夫29', '48', '1', '5', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('273', '2', '1', '1', '0', '邓肯30', '53', '2', '5', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('274', '0', '1', '1', '2', '邓肯31', '59', '2', '5', '1214080644431', '4');
INSERT INTO `t_call_roll` VALUES ('275', '0', '1', '0', '1', '邓肯32', '66', '4', '5', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('276', '0', '1', '0', '1', '邓肯33', '66', '4', '5', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('277', '0', '1', '1', '1', '邓肯34', '63', '3', '5', '1214080644434', '4');
INSERT INTO `t_call_roll` VALUES ('278', '1', '1', '0', '2', '邓肯35', '55', '2', '5', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('279', '1', '1', '2', '1', '邓肯36', '53', '1', '5', '1214080644436', '4');
INSERT INTO `t_call_roll` VALUES ('280', '2', '1', '0', '0', '邓肯37', '56', '3', '5', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('281', '0', '1', '1', '2', '邓肯38', '59', '2', '5', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('282', '0', '1', '1', '2', '邓肯39', '59', '2', '5', '1214080644439', '2');
INSERT INTO `t_call_roll` VALUES ('283', '1', '1', '0', '1', '陆逊40', '57', '2', '5', '1214080699940', '0');
INSERT INTO `t_call_roll` VALUES ('284', '2', '1', '0', '2', '陆逊41', '48', '1', '5', '1214080699941', '3');
INSERT INTO `t_call_roll` VALUES ('285', '0', '1', '1', '2', '陆逊42', '59', '2', '5', '1214080699942', '2');
INSERT INTO `t_call_roll` VALUES ('286', '0', '1', '0', '4', '陆逊43', '54', '1', '5', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('287', '1', '1', '1', '1', '陆逊44', '56', '2', '5', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('288', '1', '1', '1', '1', '陆逊45', '56', '2', '5', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('289', '1', '1', '0', '2', '陆逊46', '55', '2', '5', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('290', '0', '1', '0', '2', '陆逊47', '62', '3', '5', '1214080699947', '2');
INSERT INTO `t_call_roll` VALUES ('291', '0', '1', '0', '2', '陆逊48', '62', '3', '5', '1214080699948', '2');
INSERT INTO `t_call_roll` VALUES ('292', '0', '1', '0', '2', '陆逊49', '62', '3', '5', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('293', '0', '1', '1', '2', '露琪亚50', '59', '2', '5', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('294', '1', '1', '0', '2', '露琪亚51', '55', '2', '5', '1214060899951', '2');
INSERT INTO `t_call_roll` VALUES ('295', '1', '1', '0', '3', '露琪亚52', '51', '1', '5', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('296', '0', '1', '1', '2', '露琪亚53', '59', '2', '5', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('297', '2', '1', '0', '3', '露琪亚54', '44', '0', '5', '1214060899954', '2');
INSERT INTO `t_call_roll` VALUES ('298', '1', '1', '0', '1', '露琪亚55', '59', '3', '5', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('299', '0', '1', '0', '3', '露琪亚56', '58', '2', '5', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('300', '1', '1', '0', '1', '露琪亚57', '59', '3', '5', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('301', '1', '1', '0', '0', '露琪亚58', '63', '4', '5', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('302', '1', '1', '0', '3', '露琪亚59', '51', '1', '5', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('303', '1', '1', '0', '2', '露琪亚50', '55', '2', '5', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('304', '0', '1', '1', '2', '露琪亚51', '59', '2', '5', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('305', '2', '1', '0', '2', '露琪亚52', '48', '1', '5', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('306', '1', '1', '1', '2', '露琪亚53', '52', '1', '5', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('307', '0', '1', '2', '0', '露琪亚54', '64', '3', '5', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('308', '0', '1', '2', '0', '露琪亚55', '64', '3', '5', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('309', '1', '1', '1', '2', '露琪亚56', '52', '1', '5', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('310', '0', '1', '1', '3', '露琪亚57', '55', '1', '5', '1214060899957', '4');
INSERT INTO `t_call_roll` VALUES ('311', '0', '1', '1', '2', '露琪亚58', '59', '2', '5', '1214060899958', '4');
INSERT INTO `t_call_roll` VALUES ('312', '0', '1', '0', '2', '露琪亚59', '62', '3', '5', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('316', '0', '1', '0', '0', '忽必烈10', '72', '6', '6', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('317', '3', '1', '0', '2', '忽必烈11', '43', '1', '6', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('318', '0', '1', '1', '4', '忽必烈12', '53', '1', '6', '1214080611112', '4');
INSERT INTO `t_call_roll` VALUES ('319', '0', '1', '1', '0', '忽必烈13', '69', '5', '6', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('320', '1', '1', '0', '2', '忽必烈14', '57', '3', '6', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('321', '0', '1', '1', '3', '忽必烈15', '57', '2', '6', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('322', '1', '1', '1', '1', '忽必烈16', '58', '3', '6', '1214080611116', '4');
INSERT INTO `t_call_roll` VALUES ('323', '0', '1', '1', '3', '忽必烈17', '57', '2', '6', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('324', '0', '1', '0', '3', '忽必烈18', '60', '3', '6', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('325', '0', '1', '1', '1', '忽必烈19', '65', '4', '6', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('326', '0', '1', '1', '1', '居里夫20', '65', '4', '6', '1214080633320', '4');
INSERT INTO `t_call_roll` VALUES ('327', '1', '1', '0', '3', '居里夫21', '53', '2', '6', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('328', '2', '1', '1', '2', '居里夫22', '47', '1', '6', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('329', '1', '1', '0', '2', '居里夫23', '57', '3', '6', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('330', '1', '1', '0', '0', '居里夫24', '65', '5', '6', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('331', '1', '1', '3', '1', '居里夫25', '52', '1', '6', '1214080633325', '4');
INSERT INTO `t_call_roll` VALUES ('332', '2', '1', '1', '0', '居里夫26', '55', '3', '6', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('333', '2', '1', '1', '1', '居里夫27', '51', '2', '6', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('334', '1', '1', '1', '2', '居里夫28', '54', '2', '6', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('335', '2', '1', '0', '2', '居里夫29', '50', '2', '6', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('336', '2', '1', '1', '0', '邓肯30', '55', '3', '6', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('337', '0', '1', '1', '2', '邓肯31', '61', '3', '6', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('338', '0', '1', '1', '1', '邓肯32', '65', '4', '6', '1214080644432', '4');
INSERT INTO `t_call_roll` VALUES ('339', '0', '1', '0', '1', '邓肯33', '68', '5', '6', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('340', '0', '1', '1', '1', '邓肯34', '65', '4', '6', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('341', '1', '1', '0', '2', '邓肯35', '57', '3', '6', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('342', '1', '1', '2', '1', '邓肯36', '55', '2', '6', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('343', '2', '1', '1', '0', '邓肯37', '55', '3', '6', '1214080644437', '4');
INSERT INTO `t_call_roll` VALUES ('344', '0', '1', '1', '2', '邓肯38', '61', '3', '6', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('345', '0', '1', '1', '2', '邓肯39', '61', '3', '6', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('346', '1', '1', '0', '1', '陆逊40', '59', '3', '6', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('347', '2', '1', '0', '2', '陆逊41', '50', '2', '6', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('348', '0', '1', '1', '2', '陆逊42', '61', '3', '6', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('349', '0', '1', '0', '4', '陆逊43', '56', '2', '6', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('350', '1', '1', '1', '1', '陆逊44', '58', '3', '6', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('351', '1', '1', '1', '1', '陆逊45', '58', '3', '6', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('352', '1', '1', '1', '2', '陆逊46', '54', '2', '6', '1214080699946', '4');
INSERT INTO `t_call_roll` VALUES ('353', '0', '1', '0', '2', '陆逊47', '64', '4', '6', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('354', '0', '1', '0', '2', '陆逊48', '64', '4', '6', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('355', '0', '1', '0', '2', '陆逊49', '64', '4', '6', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('356', '0', '1', '1', '2', '露琪亚50', '61', '3', '6', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('357', '1', '1', '0', '2', '露琪亚51', '57', '3', '6', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('358', '1', '1', '0', '3', '露琪亚52', '53', '2', '6', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('359', '0', '1', '1', '2', '露琪亚53', '61', '3', '6', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('360', '2', '1', '0', '3', '露琪亚54', '46', '1', '6', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('361', '1', '1', '1', '1', '露琪亚55', '58', '3', '6', '1214060899955', '4');
INSERT INTO `t_call_roll` VALUES ('362', '0', '1', '0', '3', '露琪亚56', '60', '3', '6', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('363', '1', '1', '0', '1', '露琪亚57', '61', '4', '6', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('364', '1', '1', '0', '0', '露琪亚58', '65', '5', '6', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('365', '1', '1', '1', '3', '露琪亚59', '50', '1', '6', '1214060899959', '4');
INSERT INTO `t_call_roll` VALUES ('366', '1', '1', '0', '2', '露琪亚50', '57', '3', '6', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('367', '0', '1', '1', '2', '露琪亚51', '61', '3', '6', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('368', '2', '1', '0', '2', '露琪亚52', '50', '2', '6', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('369', '1', '1', '1', '2', '露琪亚53', '54', '2', '6', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('370', '0', '1', '2', '0', '露琪亚54', '66', '4', '6', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('371', '0', '1', '2', '0', '露琪亚55', '66', '4', '6', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('372', '1', '1', '1', '2', '露琪亚56', '54', '2', '6', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('373', '0', '1', '1', '3', '露琪亚57', '57', '2', '6', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('374', '0', '1', '1', '2', '露琪亚58', '61', '3', '6', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('375', '0', '1', '1', '2', '露琪亚59', '61', '3', '6', '1214060899959', '4');
INSERT INTO `t_call_roll` VALUES ('379', '0', '1', '0', '0', '忽必烈10', '74', '7', '7', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('380', '3', '1', '0', '2', '忽必烈11', '45', '2', '7', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('381', '0', '1', '1', '4', '忽必烈12', '55', '2', '7', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('382', '0', '1', '2', '0', '忽必烈13', '68', '5', '7', '1214080611113', '4');
INSERT INTO `t_call_roll` VALUES ('383', '1', '1', '0', '2', '忽必烈14', '59', '4', '7', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('384', '0', '1', '1', '3', '忽必烈15', '59', '3', '7', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('385', '1', '1', '1', '1', '忽必烈16', '60', '4', '7', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('386', '0', '1', '1', '3', '忽必烈17', '59', '3', '7', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('387', '0', '1', '0', '3', '忽必烈18', '62', '4', '7', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('388', '0', '1', '1', '1', '忽必烈19', '67', '5', '7', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('389', '0', '1', '1', '1', '居里夫20', '67', '5', '7', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('390', '1', '1', '0', '3', '居里夫21', '55', '3', '7', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('391', '2', '1', '1', '2', '居里夫22', '49', '2', '7', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('392', '1', '1', '0', '2', '居里夫23', '59', '4', '7', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('393', '1', '1', '0', '0', '居里夫24', '67', '6', '7', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('394', '1', '1', '3', '1', '居里夫25', '54', '2', '7', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('395', '2', '1', '1', '0', '居里夫26', '57', '4', '7', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('396', '2', '1', '1', '1', '居里夫27', '53', '3', '7', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('397', '1', '1', '1', '2', '居里夫28', '56', '3', '7', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('398', '2', '1', '0', '2', '居里夫29', '52', '3', '7', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('399', '2', '1', '1', '0', '邓肯30', '57', '4', '7', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('400', '0', '1', '1', '2', '邓肯31', '63', '4', '7', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('401', '0', '1', '1', '1', '邓肯32', '67', '5', '7', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('402', '0', '1', '0', '1', '邓肯33', '70', '6', '7', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('403', '0', '1', '1', '1', '邓肯34', '67', '5', '7', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('404', '1', '1', '1', '2', '邓肯35', '56', '3', '7', '1214080644435', '4');
INSERT INTO `t_call_roll` VALUES ('405', '1', '1', '2', '1', '邓肯36', '57', '3', '7', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('406', '2', '1', '1', '0', '邓肯37', '57', '4', '7', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('407', '0', '1', '1', '2', '邓肯38', '63', '4', '7', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('408', '0', '1', '1', '2', '邓肯39', '63', '4', '7', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('409', '1', '1', '0', '1', '陆逊40', '61', '4', '7', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('410', '2', '1', '0', '2', '陆逊41', '52', '3', '7', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('411', '0', '1', '1', '2', '陆逊42', '63', '4', '7', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('412', '0', '1', '0', '4', '陆逊43', '58', '3', '7', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('413', '1', '1', '1', '1', '陆逊44', '60', '4', '7', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('414', '1', '1', '1', '1', '陆逊45', '60', '4', '7', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('415', '1', '1', '1', '2', '陆逊46', '56', '3', '7', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('416', '0', '1', '0', '2', '陆逊47', '66', '5', '7', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('417', '0', '1', '0', '2', '陆逊48', '66', '5', '7', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('418', '0', '1', '0', '2', '陆逊49', '66', '5', '7', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('419', '0', '1', '1', '2', '露琪亚50', '63', '4', '7', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('420', '1', '1', '0', '2', '露琪亚51', '59', '4', '7', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('421', '1', '1', '0', '3', '露琪亚52', '55', '3', '7', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('422', '0', '1', '1', '2', '露琪亚53', '63', '4', '7', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('423', '2', '1', '0', '3', '露琪亚54', '48', '2', '7', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('424', '1', '1', '1', '1', '露琪亚55', '60', '4', '7', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('425', '0', '1', '0', '3', '露琪亚56', '62', '4', '7', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('426', '1', '1', '0', '1', '露琪亚57', '63', '5', '7', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('427', '1', '1', '0', '0', '露琪亚58', '67', '6', '7', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('428', '1', '1', '1', '3', '露琪亚59', '52', '2', '7', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('429', '1', '1', '0', '2', '露琪亚50', '59', '4', '7', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('430', '0', '1', '1', '2', '露琪亚51', '63', '4', '7', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('431', '2', '1', '0', '2', '露琪亚52', '52', '3', '7', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('432', '1', '1', '1', '2', '露琪亚53', '56', '3', '7', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('433', '0', '1', '2', '0', '露琪亚54', '68', '5', '7', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('434', '0', '1', '2', '0', '露琪亚55', '68', '5', '7', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('435', '1', '1', '1', '2', '露琪亚56', '56', '3', '7', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('436', '0', '1', '1', '3', '露琪亚57', '59', '3', '7', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('437', '0', '1', '1', '2', '露琪亚58', '63', '4', '7', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('438', '0', '1', '1', '2', '露琪亚59', '63', '4', '7', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('442', '0', '1', '1', '0', '忽必烈10', '73', '7', '8', '1214080611110', '4');
INSERT INTO `t_call_roll` VALUES ('443', '3', '1', '0', '2', '忽必烈11', '47', '3', '8', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('444', '0', '1', '1', '4', '忽必烈12', '57', '3', '8', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('445', '0', '1', '2', '0', '忽必烈13', '70', '6', '8', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('446', '1', '1', '0', '2', '忽必烈14', '61', '5', '8', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('447', '0', '1', '1', '3', '忽必烈15', '61', '4', '8', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('448', '1', '1', '1', '1', '忽必烈16', '62', '5', '8', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('449', '0', '1', '1', '3', '忽必烈17', '61', '4', '8', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('450', '0', '1', '0', '3', '忽必烈18', '64', '5', '8', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('451', '0', '1', '1', '1', '忽必烈19', '69', '6', '8', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('452', '0', '1', '1', '1', '居里夫20', '69', '6', '8', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('453', '1', '1', '0', '3', '居里夫21', '57', '4', '8', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('454', '2', '1', '1', '2', '居里夫22', '51', '3', '8', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('455', '1', '1', '0', '2', '居里夫23', '61', '5', '8', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('456', '1', '1', '0', '0', '居里夫24', '69', '7', '8', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('457', '1', '1', '3', '1', '居里夫25', '56', '3', '8', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('458', '2', '1', '1', '0', '居里夫26', '59', '5', '8', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('459', '2', '1', '1', '1', '居里夫27', '55', '4', '8', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('460', '1', '1', '1', '2', '居里夫28', '58', '4', '8', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('461', '2', '1', '0', '2', '居里夫29', '54', '4', '8', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('462', '2', '1', '1', '0', '邓肯30', '59', '5', '8', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('463', '0', '1', '1', '2', '邓肯31', '65', '5', '8', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('464', '0', '1', '1', '1', '邓肯32', '69', '6', '8', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('465', '0', '1', '1', '1', '邓肯33', '69', '6', '8', '1214080644433', '4');
INSERT INTO `t_call_roll` VALUES ('466', '0', '1', '1', '1', '邓肯34', '69', '6', '8', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('467', '1', '1', '1', '2', '邓肯35', '58', '4', '8', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('468', '1', '1', '2', '1', '邓肯36', '59', '4', '8', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('469', '2', '1', '1', '0', '邓肯37', '59', '5', '8', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('470', '0', '1', '1', '2', '邓肯38', '65', '5', '8', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('471', '0', '1', '1', '2', '邓肯39', '65', '5', '8', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('472', '1', '1', '0', '1', '陆逊40', '63', '5', '8', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('473', '2', '1', '0', '2', '陆逊41', '54', '4', '8', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('474', '0', '1', '1', '2', '陆逊42', '65', '5', '8', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('475', '0', '1', '0', '4', '陆逊43', '60', '4', '8', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('476', '1', '1', '1', '1', '陆逊44', '62', '5', '8', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('477', '1', '1', '1', '1', '陆逊45', '62', '5', '8', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('478', '1', '1', '1', '2', '陆逊46', '58', '4', '8', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('479', '0', '1', '0', '2', '陆逊47', '68', '6', '8', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('480', '0', '1', '0', '2', '陆逊48', '68', '6', '8', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('481', '0', '1', '0', '2', '陆逊49', '68', '6', '8', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('482', '0', '1', '1', '2', '露琪亚50', '65', '5', '8', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('483', '1', '1', '0', '2', '露琪亚51', '61', '5', '8', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('484', '1', '1', '0', '3', '露琪亚52', '57', '4', '8', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('485', '0', '1', '1', '2', '露琪亚53', '65', '5', '8', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('486', '2', '1', '0', '3', '露琪亚54', '50', '3', '8', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('487', '1', '1', '1', '1', '露琪亚55', '62', '5', '8', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('488', '0', '1', '0', '3', '露琪亚56', '64', '5', '8', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('489', '1', '1', '0', '1', '露琪亚57', '65', '6', '8', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('490', '1', '1', '0', '0', '露琪亚58', '69', '7', '8', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('491', '1', '1', '1', '3', '露琪亚59', '54', '3', '8', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('492', '1', '1', '0', '2', '露琪亚50', '61', '5', '8', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('493', '0', '1', '1', '2', '露琪亚51', '65', '5', '8', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('494', '2', '1', '0', '2', '露琪亚52', '54', '4', '8', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('495', '1', '1', '1', '2', '露琪亚53', '58', '4', '8', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('496', '0', '1', '2', '0', '露琪亚54', '70', '6', '8', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('497', '0', '1', '2', '0', '露琪亚55', '70', '6', '8', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('498', '1', '1', '1', '2', '露琪亚56', '58', '4', '8', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('499', '0', '1', '1', '3', '露琪亚57', '61', '4', '8', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('500', '0', '1', '1', '2', '露琪亚58', '65', '5', '8', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('501', '0', '1', '1', '2', '露琪亚59', '65', '5', '8', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('505', '0', '1', '1', '0', '忽必烈10', '75', '8', '9', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('506', '3', '1', '0', '2', '忽必烈11', '49', '4', '9', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('507', '0', '1', '1', '4', '忽必烈12', '59', '4', '9', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('508', '0', '1', '2', '0', '忽必烈13', '72', '7', '9', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('509', '1', '1', '0', '2', '忽必烈14', '63', '6', '9', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('510', '0', '1', '1', '3', '忽必烈15', '63', '5', '9', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('511', '1', '1', '1', '1', '忽必烈16', '64', '6', '9', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('512', '0', '1', '1', '3', '忽必烈17', '63', '5', '9', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('513', '0', '1', '0', '3', '忽必烈18', '66', '6', '9', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('514', '0', '1', '1', '1', '忽必烈19', '71', '7', '9', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('515', '0', '1', '1', '1', '居里夫20', '71', '7', '9', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('516', '1', '1', '0', '3', '居里夫21', '59', '5', '9', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('517', '2', '1', '1', '2', '居里夫22', '53', '4', '9', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('518', '1', '1', '0', '2', '居里夫23', '63', '6', '9', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('519', '1', '1', '0', '0', '居里夫24', '71', '8', '9', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('520', '1', '1', '3', '1', '居里夫25', '58', '4', '9', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('521', '2', '1', '1', '0', '居里夫26', '61', '6', '9', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('522', '2', '1', '1', '1', '居里夫27', '57', '5', '9', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('523', '1', '1', '1', '2', '居里夫28', '60', '5', '9', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('524', '2', '1', '0', '2', '居里夫29', '56', '5', '9', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('525', '2', '1', '1', '0', '邓肯30', '61', '6', '9', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('526', '0', '1', '1', '2', '邓肯31', '67', '6', '9', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('527', '0', '1', '1', '1', '邓肯32', '71', '7', '9', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('528', '0', '1', '1', '1', '邓肯33', '71', '7', '9', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('529', '0', '1', '1', '1', '邓肯34', '71', '7', '9', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('530', '1', '1', '1', '2', '邓肯35', '60', '5', '9', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('531', '1', '1', '2', '1', '邓肯36', '61', '5', '9', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('532', '2', '1', '1', '0', '邓肯37', '61', '6', '9', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('533', '0', '1', '1', '2', '邓肯38', '67', '6', '9', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('534', '0', '1', '1', '2', '邓肯39', '67', '6', '9', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('535', '1', '1', '0', '1', '陆逊40', '65', '6', '9', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('536', '2', '1', '0', '2', '陆逊41', '56', '5', '9', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('537', '0', '1', '1', '2', '陆逊42', '67', '6', '9', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('538', '0', '1', '0', '4', '陆逊43', '62', '5', '9', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('539', '1', '1', '1', '1', '陆逊44', '64', '6', '9', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('540', '1', '1', '1', '1', '陆逊45', '64', '6', '9', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('541', '1', '1', '1', '2', '陆逊46', '60', '5', '9', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('542', '0', '1', '0', '2', '陆逊47', '70', '7', '9', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('543', '0', '1', '0', '2', '陆逊48', '70', '7', '9', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('544', '0', '1', '0', '2', '陆逊49', '70', '7', '9', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('545', '0', '1', '1', '2', '露琪亚50', '67', '6', '9', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('546', '1', '1', '0', '2', '露琪亚51', '63', '6', '9', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('547', '1', '1', '0', '3', '露琪亚52', '59', '5', '9', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('548', '0', '1', '1', '2', '露琪亚53', '67', '6', '9', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('549', '2', '1', '0', '3', '露琪亚54', '52', '4', '9', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('550', '1', '1', '1', '1', '露琪亚55', '64', '6', '9', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('551', '0', '1', '0', '3', '露琪亚56', '66', '6', '9', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('552', '1', '1', '0', '1', '露琪亚57', '67', '7', '9', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('553', '1', '1', '0', '0', '露琪亚58', '71', '8', '9', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('554', '1', '1', '1', '3', '露琪亚59', '56', '4', '9', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('555', '1', '1', '0', '2', '露琪亚50', '63', '6', '9', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('556', '0', '1', '1', '2', '露琪亚51', '67', '6', '9', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('557', '2', '1', '0', '2', '露琪亚52', '56', '5', '9', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('558', '1', '1', '1', '2', '露琪亚53', '60', '5', '9', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('559', '0', '1', '2', '0', '露琪亚54', '72', '7', '9', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('560', '0', '1', '2', '0', '露琪亚55', '72', '7', '9', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('561', '1', '1', '1', '2', '露琪亚56', '60', '5', '9', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('562', '0', '1', '1', '3', '露琪亚57', '63', '5', '9', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('563', '0', '1', '1', '2', '露琪亚58', '67', '6', '9', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('564', '0', '1', '1', '2', '露琪亚59', '67', '6', '9', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('568', '0', '1', '1', '0', '忽必烈10', '77', '9', '10', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('569', '3', '1', '0', '2', '忽必烈11', '51', '5', '10', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('570', '0', '1', '1', '4', '忽必烈12', '61', '5', '10', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('571', '0', '1', '2', '0', '忽必烈13', '74', '8', '10', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('572', '1', '1', '0', '2', '忽必烈14', '65', '7', '10', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('573', '0', '1', '1', '3', '忽必烈15', '65', '6', '10', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('574', '1', '1', '1', '1', '忽必烈16', '66', '7', '10', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('575', '0', '1', '1', '3', '忽必烈17', '65', '6', '10', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('576', '0', '1', '0', '3', '忽必烈18', '68', '7', '10', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('577', '0', '1', '1', '1', '忽必烈19', '73', '8', '10', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('578', '0', '1', '1', '1', '居里夫20', '73', '8', '10', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('579', '1', '1', '0', '3', '居里夫21', '61', '6', '10', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('580', '2', '1', '1', '2', '居里夫22', '55', '5', '10', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('581', '1', '1', '0', '2', '居里夫23', '65', '7', '10', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('582', '1', '1', '0', '0', '居里夫24', '73', '9', '10', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('583', '1', '1', '3', '1', '居里夫25', '60', '5', '10', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('584', '2', '1', '1', '0', '居里夫26', '63', '7', '10', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('585', '2', '1', '1', '1', '居里夫27', '59', '6', '10', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('586', '1', '1', '1', '2', '居里夫28', '62', '6', '10', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('587', '2', '1', '0', '2', '居里夫29', '58', '6', '10', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('588', '2', '1', '1', '0', '邓肯30', '63', '7', '10', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('589', '0', '1', '1', '2', '邓肯31', '69', '7', '10', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('590', '0', '1', '1', '1', '邓肯32', '73', '8', '10', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('591', '0', '1', '1', '1', '邓肯33', '73', '8', '10', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('592', '0', '1', '1', '1', '邓肯34', '73', '8', '10', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('593', '1', '1', '1', '2', '邓肯35', '62', '6', '10', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('594', '1', '1', '2', '1', '邓肯36', '63', '6', '10', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('595', '2', '1', '1', '0', '邓肯37', '63', '7', '10', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('596', '0', '1', '1', '2', '邓肯38', '69', '7', '10', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('597', '0', '1', '1', '2', '邓肯39', '69', '7', '10', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('598', '1', '1', '0', '1', '陆逊40', '67', '7', '10', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('599', '2', '1', '0', '2', '陆逊41', '58', '6', '10', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('600', '0', '1', '1', '2', '陆逊42', '69', '7', '10', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('601', '0', '1', '0', '4', '陆逊43', '64', '6', '10', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('602', '1', '1', '1', '1', '陆逊44', '66', '7', '10', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('603', '1', '1', '1', '1', '陆逊45', '66', '7', '10', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('604', '1', '1', '1', '2', '陆逊46', '62', '6', '10', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('605', '0', '1', '0', '2', '陆逊47', '72', '8', '10', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('606', '0', '1', '0', '2', '陆逊48', '72', '8', '10', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('607', '0', '1', '1', '2', '陆逊49', '69', '7', '10', '1214080699949', '4');
INSERT INTO `t_call_roll` VALUES ('608', '0', '1', '1', '2', '露琪亚50', '69', '7', '10', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('609', '1', '1', '0', '2', '露琪亚51', '65', '7', '10', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('610', '1', '1', '0', '3', '露琪亚52', '61', '6', '10', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('611', '0', '1', '1', '2', '露琪亚53', '69', '7', '10', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('612', '2', '1', '0', '3', '露琪亚54', '54', '5', '10', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('613', '1', '1', '1', '1', '露琪亚55', '66', '7', '10', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('614', '0', '1', '0', '3', '露琪亚56', '68', '7', '10', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('615', '1', '1', '0', '1', '露琪亚57', '69', '8', '10', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('616', '1', '1', '0', '0', '露琪亚58', '73', '9', '10', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('617', '1', '1', '1', '3', '露琪亚59', '58', '5', '10', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('618', '1', '1', '0', '2', '露琪亚50', '65', '7', '10', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('619', '0', '1', '1', '2', '露琪亚51', '69', '7', '10', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('620', '2', '1', '0', '2', '露琪亚52', '58', '6', '10', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('621', '1', '1', '1', '2', '露琪亚53', '62', '6', '10', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('622', '0', '1', '2', '0', '露琪亚54', '74', '8', '10', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('623', '0', '1', '2', '0', '露琪亚55', '74', '8', '10', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('624', '1', '1', '1', '2', '露琪亚56', '62', '6', '10', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('625', '0', '1', '1', '3', '露琪亚57', '65', '6', '10', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('626', '0', '1', '1', '2', '露琪亚58', '69', '7', '10', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('627', '0', '1', '1', '2', '露琪亚59', '69', '7', '10', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('631', '0', '1', '1', '0', '忽必烈10', '79', '10', '11', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('632', '3', '1', '0', '2', '忽必烈11', '53', '6', '11', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('633', '0', '1', '1', '4', '忽必烈12', '63', '6', '11', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('634', '0', '1', '2', '0', '忽必烈13', '76', '9', '11', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('635', '1', '1', '0', '2', '忽必烈14', '67', '8', '11', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('636', '0', '1', '1', '3', '忽必烈15', '67', '7', '11', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('637', '1', '1', '1', '1', '忽必烈16', '68', '8', '11', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('638', '0', '1', '1', '3', '忽必烈17', '67', '7', '11', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('639', '0', '1', '0', '3', '忽必烈18', '70', '8', '11', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('640', '0', '1', '1', '1', '忽必烈19', '75', '9', '11', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('641', '0', '1', '1', '1', '居里夫20', '75', '9', '11', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('642', '1', '1', '0', '3', '居里夫21', '63', '7', '11', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('643', '2', '1', '1', '2', '居里夫22', '57', '6', '11', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('644', '1', '1', '0', '2', '居里夫23', '67', '8', '11', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('645', '1', '1', '0', '0', '居里夫24', '75', '10', '11', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('646', '1', '1', '3', '1', '居里夫25', '62', '6', '11', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('647', '2', '1', '1', '0', '居里夫26', '65', '8', '11', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('648', '2', '1', '1', '1', '居里夫27', '61', '7', '11', '1214080633327', '1');
INSERT INTO `t_call_roll` VALUES ('649', '1', '1', '1', '2', '居里夫28', '64', '7', '11', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('650', '2', '1', '0', '2', '居里夫29', '60', '7', '11', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('651', '2', '1', '1', '0', '邓肯30', '65', '8', '11', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('652', '0', '1', '1', '2', '邓肯31', '71', '8', '11', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('653', '0', '1', '1', '1', '邓肯32', '75', '9', '11', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('654', '0', '1', '1', '1', '邓肯33', '75', '9', '11', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('655', '0', '1', '1', '1', '邓肯34', '75', '9', '11', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('656', '1', '1', '1', '2', '邓肯35', '64', '7', '11', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('657', '1', '1', '2', '1', '邓肯36', '65', '7', '11', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('658', '2', '1', '1', '0', '邓肯37', '65', '8', '11', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('659', '0', '1', '1', '2', '邓肯38', '71', '8', '11', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('660', '0', '1', '1', '2', '邓肯39', '71', '8', '11', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('661', '1', '1', '0', '1', '陆逊40', '69', '8', '11', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('662', '2', '1', '0', '2', '陆逊41', '60', '7', '11', '1214080699941', '1');
INSERT INTO `t_call_roll` VALUES ('663', '0', '1', '1', '2', '陆逊42', '71', '8', '11', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('664', '0', '1', '0', '4', '陆逊43', '66', '7', '11', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('665', '1', '1', '1', '1', '陆逊44', '68', '8', '11', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('666', '1', '1', '1', '1', '陆逊45', '68', '8', '11', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('667', '1', '1', '1', '2', '陆逊46', '64', '7', '11', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('668', '0', '1', '0', '2', '陆逊47', '74', '9', '11', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('669', '0', '1', '0', '2', '陆逊48', '74', '9', '11', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('670', '0', '1', '1', '2', '陆逊49', '71', '8', '11', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('671', '0', '1', '1', '2', '露琪亚50', '71', '8', '11', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('672', '1', '1', '0', '2', '露琪亚51', '67', '8', '11', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('673', '1', '1', '0', '3', '露琪亚52', '63', '7', '11', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('674', '0', '1', '2', '2', '露琪亚53', '68', '7', '11', '1214060899953', '4');
INSERT INTO `t_call_roll` VALUES ('675', '2', '1', '0', '3', '露琪亚54', '56', '6', '11', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('676', '1', '1', '1', '1', '露琪亚55', '68', '8', '11', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('677', '0', '1', '0', '3', '露琪亚56', '70', '8', '11', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('678', '1', '1', '0', '2', '露琪亚57', '67', '8', '11', '1214060899957', '2');
INSERT INTO `t_call_roll` VALUES ('679', '1', '1', '0', '0', '露琪亚58', '75', '10', '11', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('680', '1', '1', '1', '3', '露琪亚59', '60', '6', '11', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('681', '1', '1', '0', '2', '露琪亚50', '67', '8', '11', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('682', '0', '1', '1', '2', '露琪亚51', '71', '8', '11', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('683', '3', '1', '0', '2', '露琪亚52', '53', '6', '11', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('684', '1', '1', '1', '2', '露琪亚53', '64', '7', '11', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('685', '0', '1', '2', '0', '露琪亚54', '76', '9', '11', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('686', '0', '1', '2', '0', '露琪亚55', '76', '9', '11', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('687', '1', '1', '1', '3', '露琪亚56', '60', '6', '11', '1214060899956', '2');
INSERT INTO `t_call_roll` VALUES ('688', '0', '1', '1', '3', '露琪亚57', '67', '7', '11', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('689', '0', '1', '1', '2', '露琪亚58', '71', '8', '11', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('690', '0', '1', '1', '2', '露琪亚59', '71', '8', '11', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('694', '0', '1', '1', '0', '忽必烈10', '81', '11', '12', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('695', '3', '1', '0', '2', '忽必烈11', '55', '7', '12', '1214080611111', '1');
INSERT INTO `t_call_roll` VALUES ('696', '0', '1', '1', '4', '忽必烈12', '65', '7', '12', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('697', '0', '1', '2', '0', '忽必烈13', '78', '10', '12', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('698', '1', '1', '0', '2', '忽必烈14', '69', '9', '12', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('699', '0', '1', '1', '3', '忽必烈15', '69', '8', '12', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('700', '1', '1', '1', '1', '忽必烈16', '70', '9', '12', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('701', '0', '1', '1', '3', '忽必烈17', '69', '8', '12', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('702', '0', '1', '0', '3', '忽必烈18', '72', '9', '12', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('703', '0', '1', '1', '1', '忽必烈19', '77', '10', '12', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('704', '0', '1', '1', '1', '居里夫20', '77', '10', '12', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('705', '1', '1', '0', '3', '居里夫21', '65', '8', '12', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('706', '2', '1', '1', '2', '居里夫22', '59', '7', '12', '1214080633322', '1');
INSERT INTO `t_call_roll` VALUES ('707', '1', '1', '0', '2', '居里夫23', '69', '9', '12', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('708', '1', '1', '0', '0', '居里夫24', '77', '11', '12', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('709', '1', '1', '3', '1', '居里夫25', '64', '7', '12', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('710', '2', '1', '1', '0', '居里夫26', '67', '9', '12', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('711', '3', '1', '1', '1', '居里夫27', '56', '7', '12', '1214080633327', '3');
INSERT INTO `t_call_roll` VALUES ('712', '1', '1', '1', '2', '居里夫28', '66', '8', '12', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('713', '2', '1', '0', '2', '居里夫29', '62', '8', '12', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('714', '2', '1', '1', '0', '邓肯30', '67', '9', '12', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('715', '0', '1', '1', '2', '邓肯31', '73', '9', '12', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('716', '0', '1', '1', '1', '邓肯32', '77', '10', '12', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('717', '0', '1', '1', '1', '邓肯33', '77', '10', '12', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('718', '0', '1', '1', '1', '邓肯34', '77', '10', '12', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('719', '1', '1', '1', '2', '邓肯35', '66', '8', '12', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('720', '1', '1', '2', '1', '邓肯36', '67', '8', '12', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('721', '2', '1', '1', '0', '邓肯37', '67', '9', '12', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('722', '0', '1', '1', '2', '邓肯38', '73', '9', '12', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('723', '0', '1', '1', '2', '邓肯39', '73', '9', '12', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('724', '1', '1', '0', '1', '陆逊40', '71', '9', '12', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('725', '3', '1', '0', '2', '陆逊41', '55', '7', '12', '1214080699941', '3');
INSERT INTO `t_call_roll` VALUES ('726', '0', '1', '1', '2', '陆逊42', '73', '9', '12', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('727', '0', '1', '0', '4', '陆逊43', '68', '8', '12', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('728', '1', '1', '1', '2', '陆逊44', '66', '8', '12', '1214080699944', '2');
INSERT INTO `t_call_roll` VALUES ('729', '1', '1', '1', '2', '陆逊45', '66', '8', '12', '1214080699945', '2');
INSERT INTO `t_call_roll` VALUES ('730', '1', '1', '1', '2', '陆逊46', '66', '8', '12', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('731', '0', '1', '0', '2', '陆逊47', '76', '10', '12', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('732', '0', '1', '0', '2', '陆逊48', '76', '10', '12', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('733', '0', '1', '1', '2', '陆逊49', '73', '9', '12', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('734', '0', '1', '1', '2', '露琪亚50', '73', '9', '12', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('735', '1', '1', '0', '2', '露琪亚51', '69', '9', '12', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('736', '1', '1', '0', '3', '露琪亚52', '65', '8', '12', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('737', '0', '1', '2', '2', '露琪亚53', '70', '8', '12', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('738', '2', '1', '0', '3', '露琪亚54', '58', '7', '12', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('739', '1', '1', '1', '1', '露琪亚55', '70', '9', '12', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('740', '0', '1', '0', '3', '露琪亚56', '72', '9', '12', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('741', '1', '1', '0', '2', '露琪亚57', '69', '9', '12', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('742', '1', '1', '0', '0', '露琪亚58', '77', '11', '12', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('743', '1', '1', '1', '4', '露琪亚59', '58', '6', '12', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('744', '1', '1', '0', '2', '露琪亚50', '69', '9', '12', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('745', '0', '1', '1', '2', '露琪亚51', '73', '9', '12', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('746', '3', '1', '0', '3', '露琪亚52', '51', '6', '12', '1214060899952', '2');
INSERT INTO `t_call_roll` VALUES ('747', '1', '1', '1', '2', '露琪亚53', '66', '8', '12', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('748', '0', '1', '2', '0', '露琪亚54', '78', '10', '12', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('749', '0', '1', '2', '0', '露琪亚55', '78', '10', '12', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('750', '1', '1', '1', '3', '露琪亚56', '62', '7', '12', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('751', '0', '1', '1', '3', '露琪亚57', '69', '8', '12', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('752', '0', '1', '1', '2', '露琪亚58', '73', '9', '12', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('753', '0', '1', '1', '3', '露琪亚59', '69', '8', '12', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('757', '0', '1', '1', '0', '忽必烈10', '83', '12', '13', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('758', '3', '1', '0', '3', '忽必烈11', '53', '7', '13', '1214080611111', '2');
INSERT INTO `t_call_roll` VALUES ('759', '0', '1', '1', '4', '忽必烈12', '67', '8', '13', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('760', '0', '1', '2', '0', '忽必烈13', '80', '11', '13', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('761', '1', '1', '0', '2', '忽必烈14', '71', '10', '13', '1214080611114', '1');
INSERT INTO `t_call_roll` VALUES ('762', '0', '1', '1', '3', '忽必烈15', '71', '9', '13', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('763', '1', '1', '1', '1', '忽必烈16', '72', '10', '13', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('764', '0', '1', '1', '3', '忽必烈17', '71', '9', '13', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('765', '0', '1', '0', '3', '忽必烈18', '74', '10', '13', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('766', '0', '1', '1', '1', '忽必烈19', '79', '11', '13', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('767', '0', '1', '1', '1', '居里夫20', '79', '11', '13', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('768', '1', '1', '0', '3', '居里夫21', '67', '9', '13', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('769', '3', '1', '1', '2', '居里夫22', '54', '7', '13', '1214080633322', '3');
INSERT INTO `t_call_roll` VALUES ('770', '1', '1', '0', '2', '居里夫23', '71', '10', '13', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('771', '1', '1', '0', '0', '居里夫24', '79', '12', '13', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('772', '1', '1', '3', '2', '居里夫25', '62', '7', '13', '1214080633325', '2');
INSERT INTO `t_call_roll` VALUES ('773', '2', '1', '1', '0', '居里夫26', '69', '10', '13', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('774', '3', '1', '1', '2', '居里夫27', '54', '7', '13', '1214080633327', '2');
INSERT INTO `t_call_roll` VALUES ('775', '1', '1', '1', '2', '居里夫28', '68', '9', '13', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('776', '2', '1', '0', '2', '居里夫29', '64', '9', '13', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('777', '2', '1', '1', '0', '邓肯30', '69', '10', '13', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('778', '0', '1', '1', '2', '邓肯31', '75', '10', '13', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('779', '0', '1', '1', '1', '邓肯32', '79', '11', '13', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('780', '0', '1', '1', '1', '邓肯33', '79', '11', '13', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('781', '0', '1', '1', '2', '邓肯34', '75', '10', '13', '1214080644434', '2');
INSERT INTO `t_call_roll` VALUES ('782', '1', '1', '1', '2', '邓肯35', '68', '9', '13', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('783', '1', '1', '2', '1', '邓肯36', '69', '9', '13', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('784', '2', '1', '1', '0', '邓肯37', '69', '10', '13', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('785', '0', '1', '1', '2', '邓肯38', '75', '10', '13', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('786', '0', '1', '1', '2', '邓肯39', '75', '10', '13', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('787', '1', '1', '0', '1', '陆逊40', '73', '10', '13', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('788', '4', '1', '0', '2', '陆逊41', '50', '7', '13', '1214080699941', '3');
INSERT INTO `t_call_roll` VALUES ('789', '0', '1', '1', '2', '陆逊42', '75', '10', '13', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('790', '0', '1', '0', '4', '陆逊43', '70', '9', '13', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('791', '1', '1', '1', '2', '陆逊44', '68', '9', '13', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('792', '1', '1', '1', '2', '陆逊45', '68', '9', '13', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('793', '1', '1', '1', '2', '陆逊46', '68', '9', '13', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('794', '0', '1', '0', '2', '陆逊47', '78', '11', '13', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('795', '0', '1', '0', '2', '陆逊48', '78', '11', '13', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('796', '0', '1', '1', '2', '陆逊49', '75', '10', '13', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('797', '0', '1', '1', '2', '露琪亚50', '75', '10', '13', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('798', '1', '1', '0', '2', '露琪亚51', '71', '10', '13', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('799', '2', '1', '0', '3', '露琪亚52', '60', '8', '13', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('800', '0', '1', '2', '2', '露琪亚53', '72', '9', '13', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('801', '3', '1', '0', '3', '露琪亚54', '53', '7', '13', '1214060899954', '3');
INSERT INTO `t_call_roll` VALUES ('802', '1', '1', '1', '1', '露琪亚55', '72', '10', '13', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('803', '0', '1', '0', '3', '露琪亚56', '74', '10', '13', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('804', '1', '1', '0', '2', '露琪亚57', '71', '10', '13', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('805', '1', '1', '0', '0', '露琪亚58', '79', '12', '13', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('806', '1', '1', '1', '5', '露琪亚59', '56', '6', '13', '1214060899959', '2');
INSERT INTO `t_call_roll` VALUES ('807', '1', '1', '0', '2', '露琪亚50', '71', '10', '13', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('808', '0', '1', '1', '2', '露琪亚51', '75', '10', '13', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('809', '3', '1', '0', '3', '露琪亚52', '53', '7', '13', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('810', '1', '1', '1', '2', '露琪亚53', '68', '9', '13', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('811', '0', '1', '2', '0', '露琪亚54', '80', '11', '13', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('812', '0', '1', '2', '0', '露琪亚55', '80', '11', '13', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('813', '2', '1', '1', '3', '露琪亚56', '57', '7', '13', '1214060899956', '3');
INSERT INTO `t_call_roll` VALUES ('814', '0', '1', '1', '3', '露琪亚57', '71', '9', '13', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('815', '0', '1', '1', '2', '露琪亚58', '75', '10', '13', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('816', '0', '1', '1', '3', '露琪亚59', '71', '9', '13', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('820', '0', '1', '1', '0', '忽必烈10', '85', '13', '14', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('821', '3', '1', '0', '4', '忽必烈11', '51', '7', '14', '1214080611111', '2');
INSERT INTO `t_call_roll` VALUES ('822', '0', '1', '1', '4', '忽必烈12', '69', '9', '14', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('823', '0', '1', '2', '0', '忽必烈13', '82', '12', '14', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('824', '2', '1', '0', '2', '忽必烈14', '66', '10', '14', '1214080611114', '3');
INSERT INTO `t_call_roll` VALUES ('825', '0', '1', '1', '3', '忽必烈15', '73', '10', '14', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('826', '1', '1', '1', '1', '忽必烈16', '74', '11', '14', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('827', '0', '1', '1', '3', '忽必烈17', '73', '10', '14', '1214080611117', '1');
INSERT INTO `t_call_roll` VALUES ('828', '0', '1', '0', '3', '忽必烈18', '76', '11', '14', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('829', '0', '1', '1', '1', '忽必烈19', '81', '12', '14', '1214080611119', '1');
INSERT INTO `t_call_roll` VALUES ('830', '0', '1', '1', '1', '居里夫20', '81', '12', '14', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('831', '1', '1', '0', '3', '居里夫21', '69', '10', '14', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('832', '3', '1', '1', '3', '居里夫22', '52', '7', '14', '1214080633322', '2');
INSERT INTO `t_call_roll` VALUES ('833', '1', '1', '0', '2', '居里夫23', '73', '11', '14', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('834', '1', '1', '0', '0', '居里夫24', '81', '13', '14', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('835', '1', '1', '3', '2', '居里夫25', '64', '8', '14', '1214080633325', '1');
INSERT INTO `t_call_roll` VALUES ('836', '2', '1', '1', '0', '居里夫26', '71', '11', '14', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('837', '4', '1', '1', '2', '居里夫27', '49', '7', '14', '1214080633327', '3');
INSERT INTO `t_call_roll` VALUES ('838', '1', '1', '1', '2', '居里夫28', '70', '10', '14', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('839', '2', '1', '0', '2', '居里夫29', '66', '10', '14', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('840', '2', '1', '1', '0', '邓肯30', '71', '11', '14', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('841', '0', '1', '1', '2', '邓肯31', '77', '11', '14', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('842', '0', '1', '1', '1', '邓肯32', '81', '12', '14', '1214080644432', '1');
INSERT INTO `t_call_roll` VALUES ('843', '0', '1', '1', '1', '邓肯33', '81', '12', '14', '1214080644433', '1');
INSERT INTO `t_call_roll` VALUES ('844', '0', '1', '1', '2', '邓肯34', '77', '11', '14', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('845', '1', '1', '1', '2', '邓肯35', '70', '10', '14', '1214080644435', '1');
INSERT INTO `t_call_roll` VALUES ('846', '1', '1', '2', '1', '邓肯36', '71', '10', '14', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('847', '2', '1', '1', '0', '邓肯37', '71', '11', '14', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('848', '0', '1', '1', '2', '邓肯38', '77', '11', '14', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('849', '0', '1', '1', '2', '邓肯39', '77', '11', '14', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('850', '1', '1', '0', '1', '陆逊40', '75', '11', '14', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('851', '5', '1', '0', '2', '陆逊41', '45', '7', '14', '1214080699941', '3');
INSERT INTO `t_call_roll` VALUES ('852', '0', '1', '1', '2', '陆逊42', '77', '11', '14', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('853', '0', '1', '0', '4', '陆逊43', '72', '10', '14', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('854', '1', '1', '1', '2', '陆逊44', '70', '10', '14', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('855', '1', '1', '1', '2', '陆逊45', '70', '10', '14', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('856', '1', '1', '1', '2', '陆逊46', '70', '10', '14', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('857', '0', '1', '0', '2', '陆逊47', '80', '12', '14', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('858', '0', '1', '0', '2', '陆逊48', '80', '12', '14', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('859', '0', '1', '1', '2', '陆逊49', '77', '11', '14', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('860', '0', '1', '1', '2', '露琪亚50', '77', '11', '14', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('861', '1', '1', '0', '2', '露琪亚51', '73', '11', '14', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('862', '3', '1', '0', '3', '露琪亚52', '55', '8', '14', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('863', '0', '1', '2', '2', '露琪亚53', '74', '10', '14', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('864', '3', '1', '0', '3', '露琪亚54', '55', '8', '14', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('865', '1', '1', '1', '1', '露琪亚55', '74', '11', '14', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('866', '0', '1', '0', '3', '露琪亚56', '76', '11', '14', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('867', '1', '1', '0', '2', '露琪亚57', '73', '11', '14', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('868', '1', '1', '0', '0', '露琪亚58', '81', '13', '14', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('869', '1', '1', '1', '5', '露琪亚59', '58', '7', '14', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('870', '1', '1', '0', '2', '露琪亚50', '73', '11', '14', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('871', '0', '1', '1', '2', '露琪亚51', '77', '11', '14', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('872', '3', '1', '0', '3', '露琪亚52', '55', '8', '14', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('873', '1', '1', '1', '2', '露琪亚53', '70', '10', '14', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('874', '0', '1', '2', '0', '露琪亚54', '82', '12', '14', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('875', '0', '1', '2', '0', '露琪亚55', '82', '12', '14', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('876', '2', '1', '1', '3', '露琪亚56', '59', '8', '14', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('877', '0', '1', '1', '3', '露琪亚57', '73', '10', '14', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('878', '0', '1', '1', '2', '露琪亚58', '77', '11', '14', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('879', '0', '1', '1', '3', '露琪亚59', '73', '10', '14', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('883', '0', '1', '1', '0', '忽必烈10', '87', '14', '15', '1214080611110', '1');
INSERT INTO `t_call_roll` VALUES ('884', '3', '1', '0', '5', '忽必烈11', '49', '7', '15', '1214080611111', '2');
INSERT INTO `t_call_roll` VALUES ('885', '0', '1', '1', '4', '忽必烈12', '71', '10', '15', '1214080611112', '1');
INSERT INTO `t_call_roll` VALUES ('886', '0', '1', '2', '0', '忽必烈13', '84', '13', '15', '1214080611113', '1');
INSERT INTO `t_call_roll` VALUES ('887', '2', '1', '1', '2', '忽必烈14', '65', '10', '15', '1214080611114', '4');
INSERT INTO `t_call_roll` VALUES ('888', '0', '1', '1', '3', '忽必烈15', '75', '11', '15', '1214080611115', '1');
INSERT INTO `t_call_roll` VALUES ('889', '1', '1', '1', '1', '忽必烈16', '76', '12', '15', '1214080611116', '1');
INSERT INTO `t_call_roll` VALUES ('890', '1', '1', '1', '3', '忽必烈17', '68', '10', '15', '1214080611117', '3');
INSERT INTO `t_call_roll` VALUES ('891', '0', '1', '0', '3', '忽必烈18', '78', '12', '15', '1214080611118', '1');
INSERT INTO `t_call_roll` VALUES ('892', '0', '1', '1', '2', '忽必烈19', '79', '12', '15', '1214080611119', '2');
INSERT INTO `t_call_roll` VALUES ('893', '0', '1', '1', '1', '居里夫20', '83', '13', '15', '1214080633320', '1');
INSERT INTO `t_call_roll` VALUES ('894', '1', '1', '0', '3', '居里夫21', '71', '11', '15', '1214080633321', '1');
INSERT INTO `t_call_roll` VALUES ('895', '4', '1', '1', '3', '居里夫22', '47', '7', '15', '1214080633322', '3');
INSERT INTO `t_call_roll` VALUES ('896', '1', '1', '0', '2', '居里夫23', '75', '12', '15', '1214080633323', '1');
INSERT INTO `t_call_roll` VALUES ('897', '1', '1', '0', '0', '居里夫24', '83', '14', '15', '1214080633324', '1');
INSERT INTO `t_call_roll` VALUES ('898', '1', '1', '4', '2', '居里夫25', '63', '8', '15', '1214080633325', '4');
INSERT INTO `t_call_roll` VALUES ('899', '2', '1', '1', '0', '居里夫26', '73', '12', '15', '1214080633326', '1');
INSERT INTO `t_call_roll` VALUES ('900', '5', '1', '1', '2', '居里夫27', '44', '7', '15', '1214080633327', '3');
INSERT INTO `t_call_roll` VALUES ('901', '1', '1', '1', '2', '居里夫28', '72', '11', '15', '1214080633328', '1');
INSERT INTO `t_call_roll` VALUES ('902', '2', '1', '0', '2', '居里夫29', '68', '11', '15', '1214080633329', '1');
INSERT INTO `t_call_roll` VALUES ('903', '2', '1', '1', '0', '邓肯30', '73', '12', '15', '1214080644430', '1');
INSERT INTO `t_call_roll` VALUES ('904', '0', '1', '1', '2', '邓肯31', '79', '12', '15', '1214080644431', '1');
INSERT INTO `t_call_roll` VALUES ('905', '0', '1', '2', '1', '邓肯32', '80', '12', '15', '1214080644432', '4');
INSERT INTO `t_call_roll` VALUES ('906', '0', '1', '2', '1', '邓肯33', '80', '12', '15', '1214080644433', '4');
INSERT INTO `t_call_roll` VALUES ('907', '0', '1', '1', '2', '邓肯34', '79', '12', '15', '1214080644434', '1');
INSERT INTO `t_call_roll` VALUES ('908', '1', '1', '1', '3', '邓肯35', '68', '10', '15', '1214080644435', '2');
INSERT INTO `t_call_roll` VALUES ('909', '1', '1', '2', '1', '邓肯36', '73', '11', '15', '1214080644436', '1');
INSERT INTO `t_call_roll` VALUES ('910', '2', '1', '1', '0', '邓肯37', '73', '12', '15', '1214080644437', '1');
INSERT INTO `t_call_roll` VALUES ('911', '0', '1', '1', '2', '邓肯38', '79', '12', '15', '1214080644438', '1');
INSERT INTO `t_call_roll` VALUES ('912', '0', '1', '1', '2', '邓肯39', '79', '12', '15', '1214080644439', '1');
INSERT INTO `t_call_roll` VALUES ('913', '1', '1', '0', '1', '陆逊40', '77', '12', '15', '1214080699940', '1');
INSERT INTO `t_call_roll` VALUES ('914', '5', '1', '0', '3', '陆逊41', '43', '7', '15', '1214080699941', '2');
INSERT INTO `t_call_roll` VALUES ('915', '0', '1', '1', '2', '陆逊42', '79', '12', '15', '1214080699942', '1');
INSERT INTO `t_call_roll` VALUES ('916', '0', '1', '0', '4', '陆逊43', '74', '11', '15', '1214080699943', '1');
INSERT INTO `t_call_roll` VALUES ('917', '1', '1', '1', '2', '陆逊44', '72', '11', '15', '1214080699944', '1');
INSERT INTO `t_call_roll` VALUES ('918', '1', '1', '1', '2', '陆逊45', '72', '11', '15', '1214080699945', '1');
INSERT INTO `t_call_roll` VALUES ('919', '1', '1', '1', '2', '陆逊46', '72', '11', '15', '1214080699946', '1');
INSERT INTO `t_call_roll` VALUES ('920', '0', '1', '0', '2', '陆逊47', '82', '13', '15', '1214080699947', '1');
INSERT INTO `t_call_roll` VALUES ('921', '0', '1', '0', '2', '陆逊48', '82', '13', '15', '1214080699948', '1');
INSERT INTO `t_call_roll` VALUES ('922', '0', '1', '1', '2', '陆逊49', '79', '12', '15', '1214080699949', '1');
INSERT INTO `t_call_roll` VALUES ('923', '0', '1', '1', '2', '露琪亚50', '79', '12', '15', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('924', '1', '1', '0', '2', '露琪亚51', '75', '12', '15', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('925', '3', '1', '0', '3', '露琪亚52', '57', '9', '15', '1214060899952', '1');
INSERT INTO `t_call_roll` VALUES ('926', '0', '1', '2', '2', '露琪亚53', '76', '11', '15', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('927', '3', '1', '0', '3', '露琪亚54', '57', '9', '15', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('928', '1', '1', '1', '1', '露琪亚55', '76', '12', '15', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('929', '0', '1', '0', '3', '露琪亚56', '78', '12', '15', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('930', '1', '1', '0', '2', '露琪亚57', '75', '12', '15', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('931', '1', '1', '0', '0', '露琪亚58', '83', '14', '15', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('932', '1', '1', '1', '5', '露琪亚59', '60', '8', '15', '1214060899959', '1');
INSERT INTO `t_call_roll` VALUES ('933', '1', '1', '0', '2', '露琪亚50', '75', '12', '15', '1214060899950', '1');
INSERT INTO `t_call_roll` VALUES ('934', '0', '1', '1', '2', '露琪亚51', '79', '12', '15', '1214060899951', '1');
INSERT INTO `t_call_roll` VALUES ('935', '4', '1', '0', '3', '露琪亚52', '50', '8', '15', '1214060899952', '3');
INSERT INTO `t_call_roll` VALUES ('936', '1', '1', '1', '2', '露琪亚53', '72', '11', '15', '1214060899953', '1');
INSERT INTO `t_call_roll` VALUES ('937', '0', '1', '2', '0', '露琪亚54', '84', '13', '15', '1214060899954', '1');
INSERT INTO `t_call_roll` VALUES ('938', '0', '1', '2', '0', '露琪亚55', '84', '13', '15', '1214060899955', '1');
INSERT INTO `t_call_roll` VALUES ('939', '2', '1', '1', '3', '露琪亚56', '61', '9', '15', '1214060899956', '1');
INSERT INTO `t_call_roll` VALUES ('940', '0', '1', '1', '3', '露琪亚57', '75', '11', '15', '1214060899957', '1');
INSERT INTO `t_call_roll` VALUES ('941', '0', '1', '1', '2', '露琪亚58', '79', '12', '15', '1214060899958', '1');
INSERT INTO `t_call_roll` VALUES ('942', '0', '1', '1', '3', '露琪亚59', '75', '11', '15', '1214060899959', '1');

-- ----------------------------
-- Table structure for t_call_total
-- ----------------------------
DROP TABLE IF EXISTS `t_call_total`;
CREATE TABLE `t_call_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `absent` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `dayoff` int(11) NOT NULL,
  `late` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_call_total
-- ----------------------------
INSERT INTO `t_call_total` VALUES ('1', '-5', '1', '-1', '-2', '2', '15');

-- ----------------------------
-- Table structure for t_classroom
-- ----------------------------
DROP TABLE IF EXISTS `t_classroom`;
CREATE TABLE `t_classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(255) DEFAULT NULL,
  `classNo` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `monitor` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classroom
-- ----------------------------
INSERT INTO `t_classroom` VALUES ('1', '网络工程2班', '2班', '惠州学院', 'creator', '计算机科学系', '2011级', '网络工程', '看过', '1', '垃圾网', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('2', '软件工程2班', '2班', '惠州学院', '司徒诸葛村妇', '计算机科学系', '2012级', '软件工程', '勃陪', '1', '诸葛村', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('4', '网络工程2班', '2班', '惠州学院', 'creator', '计算机科学系', '2012级', '网络工程', '飓风', '1', '司徒诸葛村夫', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('5', '汉语言啊2班', '2班', '广东工业大学', 'creator', '中文系', '2010级', '汉语言啊', '晶体管', '1', '垃圾', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('6', '内衣设计5班', '5班', '惠州学院', 'creator', '服装系', '2017级', '室内设计', '会员卡', '1', '孔明', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('7', '算法艺术3班', '3班', '中山大学', 'creator', '计算机科学系', '2011级', '算法艺术', 'ss', '1', '风撒', 'default.png');
INSERT INTO `t_classroom` VALUES ('9', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的', '1', '生技部', 'default.png');
INSERT INTO `t_classroom` VALUES ('10', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的', '1', '生技部', 'default.png');
INSERT INTO `t_classroom` VALUES ('11', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的上午', '1', '生技', 'default.png');
INSERT INTO `t_classroom` VALUES ('12', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的上午', '1', '歪啊呜呜', 'default.png');
INSERT INTO `t_classroom` VALUES ('13', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的上午', '1', '呜呜', 'default.png');
INSERT INTO `t_classroom` VALUES ('14', '网络工程2班', '2班', '广州大学', 'creator', '计算机科学系', '2010级', '网络工程', '级我的', '1', '呜呜', 'default.png');
INSERT INTO `t_classroom` VALUES ('15', '内衣设计4班', '4班', '惠州学院', 'creator', '服装系', '2013级', '内衣设计', '级我的', '1', '仅仅花费', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('16', '内衣设计4班', '4班', '惠州学院', 'creator', '服装系', '2013级', '内衣设计', '级我的', '1', '曾志', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('17', '艺术设计5班', '5班', '广州大学', 'creator', '服装系', '2017级', '艺术设计', 'Michael J Scofield', '1', 'jon snow', 'default.png');
INSERT INTO `t_classroom` VALUES ('18', '软件工程5班', '5班', '广州大学', 'creator', '计算机科学系', '2010级', '软件工程', '啊', '1', '我的的你打野啊', 'default.png');
INSERT INTO `t_classroom` VALUES ('19', '汉语言啊1班', '1班', '广东工业大学', 'creator', '中文系', '2010级', '汉语言啊', 'Michael', '1', '去去去去去去去啊', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('20', '人体艺术3班', '3班', '广州大学', 'creator', '美术系', '2011级', '人体艺术', 'Michael ', '1', '去非啊啊啊啊非个', 'default.png');
INSERT INTO `t_classroom` VALUES ('21', '汉语言3班', '3班', '日狗大学', 'creator', '中文系', '2010级', '汉语言', 'Michael J Scofield', '1', 'Michael J Scofield', 'default.png');
INSERT INTO `t_classroom` VALUES ('22', '和他同行3班', '3班', '复旦大学', 'creator', '礼服系', '2010级', '和他同行', 'Michael J Scofield', '1', 'Michael J Scofieldw', 'default.png');
INSERT INTO `t_classroom` VALUES ('23', '1软2件2工5班', '5班', '华南理工大学', 'creator', '数学系', '2014级', '1软2件2工', '是温哥华晚上', '1', 'Michael J Scofield', 'default.png');
INSERT INTO `t_classroom` VALUES ('24', '汉语言3班', '3班', '日狗大学', 'creator', '中文系', '2010级', '汉语言', 'weefgggg', '1', 'Michael J dQQssssa', 'default.png');
INSERT INTO `t_classroom` VALUES ('25', '三D动画2班', '2班', '中山大学', 'creator', '计算机科学系', '2011级', '三D动画', 'QQQQQGGGGGGGGGYYMG', '1', '啊啊啊啊啊啊', 'default.png');
INSERT INTO `t_classroom` VALUES ('26', '汉语言4班', '4班', '广州大学', 'creator', '中文系', '2011级', '汉语言', 'QQQQQGGGGGGGGGYYMG', '1', 'QQQQQGGGGGGGGGYYMG', 'default.png');
INSERT INTO `t_classroom` VALUES ('27', '数学应用2班', '2班', '中山大学', 'creator', '数学系', '2012级', '数学应用', '土豪', '1', '李白', 'default.png');
INSERT INTO `t_classroom` VALUES ('28', '数学应用2班', '2班', '中山大学', 'creator', '数学系', '2012级', '数学应用', '土豪法人和京', '1', '李黑', 'default.png');
INSERT INTO `t_classroom` VALUES ('29', '汉语言啊1班', '1班', '广东工业大学', 'creator', '中文系', '2011级', '汉语言啊', '阿瑟王个', '1', '陈猪', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('30', '网络工程1班', '1班', '惠州学院', 'creator', '计算机科学系', '2009级', '网络工程', '飓风', '1', '股上市', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('31', '内衣设计4班', '4班', '广州大学', 'creator', '服装系', '2014级', '内衣设计', '非得', '1', '通过后', 'default.png');
INSERT INTO `t_classroom` VALUES ('32', '汉语言3班', '3班', '惠州学院', 'creator', '中文系', '2011级', '汉语言', '假话', '1', '小东', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('33', '软件工程4班', '4班', '广东工业大学', 'creator', '计算机科学', '2010级', '软件工程', '小司机', '1', '老司机', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('34', '软件工程1班', '1班', '广东工业大学', 'creator', '计算机科学', '2010级', '软件工程', '小鱼', '1', '大禹', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('35', '统计数学4班', '4班', '广东工业大学', 'creator', '数学系', '2015级', '统计数学', '小炮', '1', '王明安', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('36', '软件工程1班', '1班', '惠州学院', 'creator', '计算机科学系', '2012级', '软件工程', '陈厉鬼', '1', '垃圾桶', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('37', '和他同行1班', '1班', '复旦大学', 'creator', '礼服系', '2008级', '和他同行', '张苞', '1', '张飞', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('39', '国足2班', '2班', '华南师范大学', 'creator', '体育系', '2012级', '国足', '小葛', '1', '葛平', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('40', '计算机教育3班', '3班', '惠州学院', 'creator', '计算机科学系', '2018级', '计算机教育', '李二狗', '1', '李狗', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('41', '计算机教育3班', '3班', '惠州学院', 'creator', '计算机科学系', '2009级', '计算机教育', '咯好几', '1', '郡王府', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('42', '计算机教育4班', '4班', '惠州学院', 'creator', '计算机科学系', '2016级', '计算机教育', '求婚', '1', '哦就', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('43', '计算机教育5班', '5班', '惠州学院', 'creator', '计算机科学系', '2010级', '计算机教育', '俄国和', '1', '任何', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('44', '计算机教育2班', '2班', '惠州学院', 'creator', '计算机科学系', '2016级', '计算机教育', '恶搞', '1', '添加', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('45', '计算机教育1班', '1班', '惠州学院', 'creator', '计算机科学系', '2010级', '计算机教育', '风格', '1', '记录', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('46', '计算机教育2班', '2班', '惠州学院', 'creator', '计算机科学系', '2013级', '计算机教育', '无缝管', '1', '口味', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('47', '计算机教育1班', '1班', '惠州学院', 'creator', '计算机科学系', '2019级', '计算机教育', '每行就', '1', '现代发', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('48', '计算机教育4班', '4班', '惠州学院', 'creator', '计算机科学系', '2019级', '计算机教育', '软件', '1', '后台', '1hzu-1.png');
INSERT INTO `t_classroom` VALUES ('49', '汉语言啊5班', '5班', '广东工业大学', 'creator', '中文系', '2011级', '汉语言啊', '恶恶个', '1', '交易', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('50', '汉语言啊1班', '1班', '广东工业大学', 'creator', '中文系', '2011级', '汉语言啊', '过户', '1', '交易的', '2color01.jpg');
INSERT INTO `t_classroom` VALUES ('51', '艺术设计2班', '2班', '广州大学', 'creator', '服装系', '2008级', '艺术设计', '该', '1', '的', '3left-nav.jpg');
INSERT INTO `t_classroom` VALUES ('52', '艺术设计3班', '3班', '广州大学', 'creator', '服装系', '2010级', '艺术设计', '该该', '1', '的的', '3left-nav.jpg');
INSERT INTO `t_classroom` VALUES ('53', '艺术设计3班', '3班', '广州大学', 'creator', '服装系', '2008级', '艺术设计', '和阿文', '1', '个号', '3left-nav.jpg');
INSERT INTO `t_classroom` VALUES ('54', '艺术设计1班', '1班', '广州大学', 'creator', '服装系', '2008级', '艺术设计', '霍金', '1', '完全', '3left-nav.jpg');

-- ----------------------------
-- Table structure for t_class_course
-- ----------------------------
DROP TABLE IF EXISTS `t_class_course`;
CREATE TABLE `t_class_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_place` varchar(255) DEFAULT NULL,
  `course_teacher` varchar(255) DEFAULT NULL,
  `day` int(11) NOT NULL,
  `last` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class_course
-- ----------------------------
INSERT INTO `t_class_course` VALUES ('1', '1', '更改', '', '根据', '1', '2', '1');
INSERT INTO `t_class_course` VALUES ('2', '1', '高等数学', '5-202', '傅里叶', '1', '2', '3');
INSERT INTO `t_class_course` VALUES ('3', '1', '大学物理', '5-304', '麦克斯韦', '1', '2', '5');
INSERT INTO `t_class_course` VALUES ('4', '1', '数字逻辑', '1-604', '吴克', '1', '2', '7');
INSERT INTO `t_class_course` VALUES ('5', '1', '毛概', '1-603', '李克强', '2', '2', '1');
INSERT INTO `t_class_course` VALUES ('6', '1', '大学英语', '5-306', 'Jon Snow', '2', '2', '3');
INSERT INTO `t_class_course` VALUES ('7', '1', '计算机组成原理', '2-306', '科比', '2', '2', '5');
INSERT INTO `t_class_course` VALUES ('8', '1', '高等数学', '5-202', '傅里叶', '2', '2', '7');
INSERT INTO `t_class_course` VALUES ('9', '1', '大学英语', '5-602', 'Jon Snow', '3', '2', '1');
INSERT INTO `t_class_course` VALUES ('10', '1', '数字逻辑', '1-604', '吴克', '3', '2', '5');
INSERT INTO `t_class_course` VALUES ('11', '1', '进化论', '5-301', '贝尔', '3', '2', '7');
INSERT INTO `t_class_course` VALUES ('12', '1', '毛概', '1-603', '李克强', '4', '2', '3');
INSERT INTO `t_class_course` VALUES ('13', '1', '体育', '田径场', '内马尔', '4', '2', '7');
INSERT INTO `t_class_course` VALUES ('14', '1', '', '2-306', '科比', '5', '2', '5');
INSERT INTO `t_class_course` VALUES ('15', '1', '操作系统', '2-201', '霍金', '4', '2', '5');
INSERT INTO `t_class_course` VALUES ('16', '1', '操作系统', '2-201', '霍金', '5', '2', '1');
INSERT INTO `t_class_course` VALUES ('17', '1', '', '5-504', '布兰', '4', '2', '1');
INSERT INTO `t_class_course` VALUES ('18', '1', '编译原理', '5-501', '布兰', '5', '2', '3');
INSERT INTO `t_class_course` VALUES ('19', '1', '数据结构', '5-306', 'Arya', '5', '2', '7');
INSERT INTO `t_class_course` VALUES ('20', '1', '数据结构', '5-603', 'Arya', '3', '2', '3');

-- ----------------------------
-- Table structure for t_class_info
-- ----------------------------
DROP TABLE IF EXISTS `t_class_info`;
CREATE TABLE `t_class_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_college
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_college
-- ----------------------------
INSERT INTO `t_college` VALUES ('1', '惠州学院', '1hzu-1.png');
INSERT INTO `t_college` VALUES ('2', '广东工业大学', '2color01.jpg');
INSERT INTO `t_college` VALUES ('3', '广州大学', '3left-nav.jpg');
INSERT INTO `t_college` VALUES ('4', '中山大学', '4left-nav.jpg');
INSERT INTO `t_college` VALUES ('20', '日狗大学', '20IMG_2264.JPG');
INSERT INTO `t_college` VALUES ('21', '华南师范大学', '21nav1.PNG');
INSERT INTO `t_college` VALUES ('22', '复旦大学', '22top-nav.PNG');
INSERT INTO `t_college` VALUES ('23', '华南理工大学', '23hzUniversity.jpg');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `member` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `teacherId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '2016-05-11 14:51:44', '0', '高等数学', 'foo', '5');
INSERT INTO `t_course` VALUES ('2', '2016-05-11 14:52:21', '0', '编译原理', 'foo', '5');
INSERT INTO `t_course` VALUES ('3', '2016-05-11 15:01:48', '0', '毛概', 'foo', '5');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dxeljq0t8xa6i4n62ng8co3q6` (`c_id`),
  CONSTRAINT `FK_dxeljq0t8xa6i4n62ng8co3q6` FOREIGN KEY (`c_id`) REFERENCES `t_college` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', '计算机科学系', '1');
INSERT INTO `t_department` VALUES ('2', '服装系', '1');
INSERT INTO `t_department` VALUES ('3', '中文系', '1');
INSERT INTO `t_department` VALUES ('4', '美术系', '1');
INSERT INTO `t_department` VALUES ('5', '体育系', '1');
INSERT INTO `t_department` VALUES ('6', '计算机科学系', '4');
INSERT INTO `t_department` VALUES ('7', '数学系', '4');
INSERT INTO `t_department` VALUES ('8', '数学系', '2');
INSERT INTO `t_department` VALUES ('9', '中文系', '2');
INSERT INTO `t_department` VALUES ('10', '外语系', '2');
INSERT INTO `t_department` VALUES ('11', '计算机科学系', '3');
INSERT INTO `t_department` VALUES ('12', '服装系', '3');
INSERT INTO `t_department` VALUES ('13', '中文系', '3');
INSERT INTO `t_department` VALUES ('14', '美术系', '3');
INSERT INTO `t_department` VALUES ('15', '体育系', '3');
INSERT INTO `t_department` VALUES ('16', '音乐系', '3');
INSERT INTO `t_department` VALUES ('41', '数学系', '20');
INSERT INTO `t_department` VALUES ('42', '中文系', '20');
INSERT INTO `t_department` VALUES ('43', '外语系', '1');
INSERT INTO `t_department` VALUES ('44', '数学系', '1');
INSERT INTO `t_department` VALUES ('45', '音乐系', '1');
INSERT INTO `t_department` VALUES ('46', '体育系', '21');
INSERT INTO `t_department` VALUES ('48', '纠纷系', '22');
INSERT INTO `t_department` VALUES ('49', '礼服系', '3');
INSERT INTO `t_department` VALUES ('50', '礼服系', '22');
INSERT INTO `t_department` VALUES ('51', '计算机科学', '2');
INSERT INTO `t_department` VALUES ('52', '旅游系', '23');
INSERT INTO `t_department` VALUES ('53', '数学系', '23');
INSERT INTO `t_department` VALUES ('54', '外语系', '23');
INSERT INTO `t_department` VALUES ('55', '中文系', '23');

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tincwg8uvq1tj0qghkq7t8hv4` (`d_id`),
  CONSTRAINT `FK_tincwg8uvq1tj0qghkq7t8hv4` FOREIGN KEY (`d_id`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('1', '软件工程', '1');
INSERT INTO `t_major` VALUES ('2', '网络工程', '1');
INSERT INTO `t_major` VALUES ('3', '计算机教育', '1');
INSERT INTO `t_major` VALUES ('4', '艺术设计', '2');
INSERT INTO `t_major` VALUES ('5', '内衣设计', '2');
INSERT INTO `t_major` VALUES ('6', '汉语言', '3');
INSERT INTO `t_major` VALUES ('7', '二维动画', '4');
INSERT INTO `t_major` VALUES ('8', '人体工程', '4');
INSERT INTO `t_major` VALUES ('9', 'NBA工程', '5');
INSERT INTO `t_major` VALUES ('10', '国足', '5');
INSERT INTO `t_major` VALUES ('11', '软件工程', '6');
INSERT INTO `t_major` VALUES ('12', '算法艺术', '6');
INSERT INTO `t_major` VALUES ('13', '三D动画', '6');
INSERT INTO `t_major` VALUES ('14', '数学应用', '7');
INSERT INTO `t_major` VALUES ('15', '统计学', '7');
INSERT INTO `t_major` VALUES ('16', '数学应用', '8');
INSERT INTO `t_major` VALUES ('17', '统计数学', '8');
INSERT INTO `t_major` VALUES ('18', '汉语言啊', '9');
INSERT INTO `t_major` VALUES ('19', '日语', '10');
INSERT INTO `t_major` VALUES ('20', '德语', '10');
INSERT INTO `t_major` VALUES ('21', '软件工程', '11');
INSERT INTO `t_major` VALUES ('22', '网络工程', '11');
INSERT INTO `t_major` VALUES ('23', '计算机教育', '11');
INSERT INTO `t_major` VALUES ('24', '艺术设计', '12');
INSERT INTO `t_major` VALUES ('25', '内衣设计', '12');
INSERT INTO `t_major` VALUES ('26', '汉语言', '13');
INSERT INTO `t_major` VALUES ('27', '二维动画', '14');
INSERT INTO `t_major` VALUES ('28', '人体工程', '14');
INSERT INTO `t_major` VALUES ('29', 'NBA工程', '15');
INSERT INTO `t_major` VALUES ('30', '国足', '15');
INSERT INTO `t_major` VALUES ('31', '音乐表演', '16');
INSERT INTO `t_major` VALUES ('32', '音乐教育', '16');
INSERT INTO `t_major` VALUES ('33', '人体艺术', '14');
INSERT INTO `t_major` VALUES ('34', '热血足球', '15');
INSERT INTO `t_major` VALUES ('35', '神庙逃亡', '15');
INSERT INTO `t_major` VALUES ('36', '黑客技术', '6');
INSERT INTO `t_major` VALUES ('37', '云服务器', '6');
INSERT INTO `t_major` VALUES ('38', '电脑智能', '6');
INSERT INTO `t_major` VALUES ('107', '计算', '41');
INSERT INTO `t_major` VALUES ('108', '87原理', '41');
INSERT INTO `t_major` VALUES ('109', '9算', '41');
INSERT INTO `t_major` VALUES ('110', '8理', '41');
INSERT INTO `t_major` VALUES ('111', '文学', '42');
INSERT INTO `t_major` VALUES ('112', '汉语言', '42');
INSERT INTO `t_major` VALUES ('113', '对外汉语', '3');
INSERT INTO `t_major` VALUES ('114', '汉语国际教育', '3');
INSERT INTO `t_major` VALUES ('115', '日语', '43');
INSERT INTO `t_major` VALUES ('116', '英语', '43');
INSERT INTO `t_major` VALUES ('117', '应用统计学', '44');
INSERT INTO `t_major` VALUES ('118', '数学与应用数学', '44');
INSERT INTO `t_major` VALUES ('119', '音乐学专业', '45');
INSERT INTO `t_major` VALUES ('120', '音乐教育专业', '45');
INSERT INTO `t_major` VALUES ('121', '音乐表演专业', '45');
INSERT INTO `t_major` VALUES ('122', '国足', '46');
INSERT INTO `t_major` VALUES ('124', '口号的', '48');
INSERT INTO `t_major` VALUES ('125', '共和国A', '49');
INSERT INTO `t_major` VALUES ('126', '和他同行', '50');
INSERT INTO `t_major` VALUES ('127', '软件工程', '51');
INSERT INTO `t_major` VALUES ('128', '开始', '48');
INSERT INTO `t_major` VALUES ('129', '1软2件2工2程2', '52');
INSERT INTO `t_major` VALUES ('130', '1软件2工2', '53');
INSERT INTO `t_major` VALUES ('131', '1软2件2工', '53');
INSERT INTO `t_major` VALUES ('132', '德语', '54');
INSERT INTO `t_major` VALUES ('133', '西班牙语', '54');
INSERT INTO `t_major` VALUES ('134', '印度语', '54');
INSERT INTO `t_major` VALUES ('135', '语言文学', '55');
INSERT INTO `t_major` VALUES ('136', '件2工句是', '53');
INSERT INTO `t_major` VALUES ('137', '语言文学是', '55');
INSERT INTO `t_major` VALUES ('138', '语言是文学是', '55');
INSERT INTO `t_major` VALUES ('139', '99计算', '41');
INSERT INTO `t_major` VALUES ('140', '挖方啊', '48');
INSERT INTO `t_major` VALUES ('141', '二人', '48');

-- ----------------------------
-- Table structure for t_share_file
-- ----------------------------
DROP TABLE IF EXISTS `t_share_file`;
CREATE TABLE `t_share_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `uploader` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_share_file
-- ----------------------------
INSERT INTO `t_share_file` VALUES ('1', '2016-05-06 16:00:58', '2月-3月工作记录.xlsx', 'D:\\Hodor\\workspace-sts\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\iclass\\2月-3月工作记录.xlsx', 'test');
INSERT INTO `t_share_file` VALUES ('2', '2016-05-06 16:00:59', 'Git.docx', 'D:\\Hodor\\workspace-sts\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\iclass\\Git.docx', 'test');
INSERT INTO `t_share_file` VALUES ('3', '2016-05-12 10:41:49', '配置清单.xlsx', 'D:\\Hodor\\workspace-sts\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\iclass\\配置清单.xlsx', 'test');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doorplate` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `point` int(11) NOT NULL,
  `qq_num` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `short_mobile` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `toClass` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '1992-11-10', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879910', '郑宇航10', '0', '952981410', '男', '619910', '0.10', '1214080611210', '1', '0', '0');
INSERT INTO `t_student` VALUES ('2', '1992-11-13', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879900', '郑宇航', '0', '0987654321', '女', '619900', '少一点套路，多一点真诚…ส็็็็็็็็็็็็็็็็็็', '1214080611236', '2', '0', '0');
INSERT INTO `t_student` VALUES ('3', '1992-11-12', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879912', '郑宇航12', '0', '952981412', '男', '619912', '0.12', '1214080611212', '3', '0', '0');
INSERT INTO `t_student` VALUES ('4', '1992-11-13', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879913', '郑宇航13', '0', '952981413', '男', '619913', '0.13', '1214080611213', '4', '0', '0');
INSERT INTO `t_student` VALUES ('5', '1992-11-14', '1', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879914', '忽必烈19', '0', '952981414', '女', '619914', '0.14', '1214080611214', '5', '0', '2');
INSERT INTO `t_student` VALUES ('6', '1992-11-15', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879915', '郑宇航15', '0', '952981415', '男', '619915', '0.15', '1214080611215', '', '0', '0');
INSERT INTO `t_student` VALUES ('7', '1992-11-16', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879916', '郑宇航16', '0', '952981416', '男', '619916', '0.16', '1214080611216', '', '0', '0');
INSERT INTO `t_student` VALUES ('8', '1992-11-17', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879917', '郑宇航17', '0', '952981417', '男', '619917', '0.17', '1214080611217', '', '0', '0');
INSERT INTO `t_student` VALUES ('9', '1992-11-18', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879918', '郑宇航18', '0', '952981418', '男', '619918', '0.18', '1214080611218', '', '0', '0');
INSERT INTO `t_student` VALUES ('10', '1992-11-19', '2', '惠州学院', '计算机科学系', '16#C705', '软件工程', '15018879919', '郑宇航19', '0', '952981419', '男', '619919', '0.19', '1214080611219', '', '0', '0');
INSERT INTO `t_student` VALUES ('11', '1992-11-30', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879930', '王元姬30', '0', '1122334430', '女', '610030', 'i am 30', '1214080611230', '', '0', '0');
INSERT INTO `t_student` VALUES ('12', '1992-11-29', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879929', '王元姬29', '0', '1122334429', '女', '610029', 'i am 29', '1214080611229', '', '0', '0');
INSERT INTO `t_student` VALUES ('13', '1992-11-28', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879928', '王元姬28', '0', '1122334428', '女', '610028', 'i am 28', '1214080611228', '', '0', '0');
INSERT INTO `t_student` VALUES ('14', '1992-11-27', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879927', '王元姬27', '0', '1122334427', '女', '610027', 'i am 27', '1214080611227', '', '0', '0');
INSERT INTO `t_student` VALUES ('15', '1992-11-26', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879926', '王元姬26', '0', '1122334426', '女', '610026', 'i am 26', '1214080611226', '', '0', '0');
INSERT INTO `t_student` VALUES ('16', '1992-11-25', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879925', '王元姬25', '0', '1122334425', '女', '610025', 'i am 25', '1214080611225', '', '0', '0');
INSERT INTO `t_student` VALUES ('17', '1992-11-24', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879924', '王元姬24', '0', '1122334424', '女', '610024', 'i am 24', '1214080611224', '', '0', '0');
INSERT INTO `t_student` VALUES ('18', '1992-11-23', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879923', '王元姬23', '0', '1122334423', '女', '610023', 'i am 23', '1214080611223', '', '0', '0');
INSERT INTO `t_student` VALUES ('19', '1992-11-22', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879922', '王元姬22', '0', '1122334422', '女', '610022', 'i am 22', '1214080611222', '', '0', '0');
INSERT INTO `t_student` VALUES ('20', '1992-11-21', '2', '惠州学院', '计算机科学系', '16#C704', '软件工程', '15018879921', '王元姬21', '0', '1122334421', '女', '610021', 'i am 21', '1214080611221', '', '0', '0');
INSERT INTO `t_student` VALUES ('21', '1992-11-31', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879931', '虞姬姬31', '0', '1122334431', '男', '610031', 'this is 31', '1214080611231', '', '0', '0');
INSERT INTO `t_student` VALUES ('22', '1992-11-32', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879932', '虞姬姬32', '0', '1122334432', '男', '610032', 'this is 32', '1214080611232', '', '0', '0');
INSERT INTO `t_student` VALUES ('23', '1992-11-33', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879933', '虞姬姬33', '0', '1122334433', '男', '610033', 'this is 33', '1214080611233', '', '0', '0');
INSERT INTO `t_student` VALUES ('24', '1992-11-34', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879934', '虞姬姬34', '0', '1122334434', '男', '610034', 'this is 34', '1214080611234', '', '0', '0');
INSERT INTO `t_student` VALUES ('25', '1992-11-35', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879935', '虞姬姬35', '0', '1122334435', '男', '610035', 'this is 35', '1214080611235', '', '0', '0');
INSERT INTO `t_student` VALUES ('26', '1992-11-36', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879936', '虞姬姬36', '0', '1122334436', '男', '610036', 'this is 36', '1214080611236', '', '0', '0');
INSERT INTO `t_student` VALUES ('27', '1992-11-37', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879937', '虞姬姬37', '0', '1122334437', '男', '610037', 'this is 37', '1214080611237', '', '0', '0');
INSERT INTO `t_student` VALUES ('28', '1992-11-38', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879938', '虞姬姬38', '0', '1122334438', '男', '610038', 'this is 38', '1214080611238', '', '0', '0');
INSERT INTO `t_student` VALUES ('29', '1992-11-39', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879939', '虞姬姬39', '0', '1122334439', '男', '610039', 'this is 39', '1214080611239', '', '0', '0');
INSERT INTO `t_student` VALUES ('30', '1992-11-40', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879940', '虞姬姬40', '0', '1122334440', '男', '610040', 'this is 40', '1214080611240', '', '0', '0');
INSERT INTO `t_student` VALUES ('31', '1992-11-41', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879941', '虞姬姬41', '0', '1122334441', '男', '610041', 'this is 41', '1214080611241', '', '0', '0');
INSERT INTO `t_student` VALUES ('32', '1992-11-42', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879942', '虞姬姬42', '0', '1122334442', '男', '610042', 'this is 42', '1214080611242', '', '0', '0');
INSERT INTO `t_student` VALUES ('33', '1992-11-43', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879943', '虞姬姬43', '0', '1122334443', '男', '610043', 'this is 43', '1214080611243', '', '0', '0');
INSERT INTO `t_student` VALUES ('34', '1992-11-44', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879944', '虞姬姬44', '0', '1122334444', '男', '610044', 'this is 44', '1214080611244', '', '0', '0');
INSERT INTO `t_student` VALUES ('35', '1992-11-45', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879945', '虞姬姬45', '0', '1122334445', '男', '610045', 'this is 45', '1214080611245', '', '0', '0');
INSERT INTO `t_student` VALUES ('36', '1992-11-46', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879946', '虞姬姬46', '0', '1122334446', '男', '610046', 'this is 46', '1214080611246', '', '0', '0');
INSERT INTO `t_student` VALUES ('37', '1992-11-47', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879947', '虞姬姬47', '0', '1122334447', '男', '610047', 'this is 47', '1214080611247', '', '0', '0');
INSERT INTO `t_student` VALUES ('38', '1992-11-48', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879948', '虞姬姬48', '0', '1122334448', '男', '610048', 'this is 48', '1214080611248', '', '0', '0');
INSERT INTO `t_student` VALUES ('39', '1992-11-49', '2', '惠州学院', '计算机科学系', '16#C703', '软件工程', '15018879949', '虞姬姬49', '0', '1122334449', '男', '610049', 'this is 49', '1214080611249', '', '0', '0');
INSERT INTO `t_student` VALUES ('42', '1993-10-10', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233310', '忽必烈10', '0', '111100010', '男', '620010', 'we are 10', '1214080611110', '', '1', '0');
INSERT INTO `t_student` VALUES ('43', '1993-10-11', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233311', '忽必烈11', '0', '111100011', '男', '620011', 'we are 11', '1214080611111', '', '1', '0');
INSERT INTO `t_student` VALUES ('44', '1993-10-12', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233312', '忽必烈12', '0', '111100012', '男', '620012', 'we are 12', '1214080611112', '', '1', '0');
INSERT INTO `t_student` VALUES ('45', '1993-10-13', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233313', '忽必烈13', '0', '111100013', '男', '620013', 'we are 13', '1214080611113', '', '1', '0');
INSERT INTO `t_student` VALUES ('46', '1993-10-14', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233314', '忽必烈14', '0', '111100014', '男', '620014', 'we are 14', '1214080611114', '', '1', '0');
INSERT INTO `t_student` VALUES ('47', '1993-10-15', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233315', '忽必烈15', '0', '111100015', '男', '620015', 'we are 15', '1214080611115', '', '1', '0');
INSERT INTO `t_student` VALUES ('48', '1993-10-16', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233316', '忽必烈16', '0', '111100016', '男', '620016', 'we are 16', '1214080611116', '', '1', '0');
INSERT INTO `t_student` VALUES ('49', '1993-10-17', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233317', '忽必烈17', '0', '111100017', '男', '620017', 'we are 17', '1214080611117', '', '1', '0');
INSERT INTO `t_student` VALUES ('50', '1993-10-18', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233318', '忽必烈18', '0', '111100018', '男', '620018', 'we are 18', '1214080611118', '', '1', '0');
INSERT INTO `t_student` VALUES ('51', '1993-10-19', '1', '惠州学院', '计算机科学系', '16#C701', '软件工程', '15022233319', '忽必烈19', '0', '111100019', '男', '620019', 'we are 19', '1214080611119', '', '1', '0');
INSERT INTO `t_student` VALUES ('52', '1993-11-20', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655520', '居里夫20', '0', '1111555520', '女', '690020', 'we are 20', '1214080633320', '', '1', '0');
INSERT INTO `t_student` VALUES ('53', '1993-11-21', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655521', '居里夫21', '0', '1111555521', '女', '690021', 'we are 21', '1214080633321', '', '1', '0');
INSERT INTO `t_student` VALUES ('54', '1993-11-22', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655522', '居里夫22', '0', '1111555522', '女', '690022', 'we are 22', '1214080633322', '', '1', '0');
INSERT INTO `t_student` VALUES ('55', '1993-11-23', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655523', '居里夫23', '0', '1111555523', '女', '690023', 'we are 23', '1214080633323', '', '1', '0');
INSERT INTO `t_student` VALUES ('56', '1993-11-24', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655524', '居里夫24', '0', '1111555524', '女', '690024', 'we are 24', '1214080633324', '', '1', '0');
INSERT INTO `t_student` VALUES ('57', '1993-11-25', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655525', '居里夫25', '0', '1111555525', '女', '690025', 'we are 25', '1214080633325', '', '1', '0');
INSERT INTO `t_student` VALUES ('58', '1993-11-26', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655526', '居里夫26', '0', '1111555526', '女', '690026', 'we are 26', '1214080633326', '', '1', '0');
INSERT INTO `t_student` VALUES ('59', '1993-11-27', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655527', '居里夫27', '0', '1111555527', '女', '690027', 'we are 27', '1214080633327', '', '1', '0');
INSERT INTO `t_student` VALUES ('60', '1993-11-28', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655528', '居里夫28', '0', '1111555528', '女', '690028', 'we are 28', '1214080633328', '', '1', '0');
INSERT INTO `t_student` VALUES ('61', '1993-11-29', '1', '惠州学院', '计算机科学系', '16#C701', '网络工程', '15066655529', '居里夫29', '0', '1111555529', '女', '690029', 'we are 29', '1214080633329', '', '1', '0');
INSERT INTO `t_student` VALUES ('62', '1992-10-30', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666630', '邓肯30', '0', '1111666630', '男', '660030', 'we are 30', '1214080644430', '', '1', '0');
INSERT INTO `t_student` VALUES ('63', '1992-10-31', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666631', '邓肯31', '0', '1111666631', '男', '660031', 'we are 31', '1214080644431', '', '1', '0');
INSERT INTO `t_student` VALUES ('64', '1992-10-32', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666632', '邓肯32', '0', '1111666632', '男', '660032', 'we are 32', '1214080644432', '', '1', '0');
INSERT INTO `t_student` VALUES ('65', '1992-10-33', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666633', '邓肯33', '0', '1111666633', '男', '660033', 'we are 33', '1214080644433', '', '1', '0');
INSERT INTO `t_student` VALUES ('66', '1992-10-34', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666634', '邓肯34', '0', '1111666634', '男', '660034', 'we are 34', '1214080644434', '', '1', '0');
INSERT INTO `t_student` VALUES ('67', '1992-10-35', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666635', '邓肯35', '0', '1111666635', '男', '660035', 'we are 35', '1214080644435', '', '1', '0');
INSERT INTO `t_student` VALUES ('68', '1992-10-36', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666636', '邓肯36', '0', '1111666636', '男', '660036', 'we are 36', '1214080644436', '', '1', '0');
INSERT INTO `t_student` VALUES ('69', '1992-10-37', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666637', '邓肯37', '0', '1111666637', '男', '660037', 'we are 37', '1214080644437', '', '1', '0');
INSERT INTO `t_student` VALUES ('70', '1992-10-38', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666638', '邓肯38', '0', '1111666638', '男', '660038', 'we are 38', '1214080644438', '', '1', '0');
INSERT INTO `t_student` VALUES ('71', '1992-10-39', '1', '惠州学院', '计算机科学系', '16#C703', '计算机教育', '15066666639', '邓肯39', '0', '1111666639', '男', '660039', 'we are 39', '1214080644439', '', '1', '0');
INSERT INTO `t_student` VALUES ('92', '1992-12-40', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665540', '陆逊40', '0', '1111333340', '男', '667840', 'we are 40', '1214080699940', '', '1', '0');
INSERT INTO `t_student` VALUES ('93', '1992-12-41', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665541', '陆逊41', '0', '1111333341', '男', '667841', 'we are 41', '1214080699941', '', '1', '0');
INSERT INTO `t_student` VALUES ('94', '1992-12-42', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665542', '陆逊42', '0', '1111333342', '男', '667842', 'we are 42', '1214080699942', '', '1', '0');
INSERT INTO `t_student` VALUES ('95', '1992-12-43', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665543', '陆逊43', '0', '1111333343', '男', '667843', 'we are 43', '1214080699943', '', '1', '0');
INSERT INTO `t_student` VALUES ('96', '1992-12-44', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665544', '陆逊44', '0', '1111333344', '男', '667844', 'we are 44', '1214080699944', '', '1', '0');
INSERT INTO `t_student` VALUES ('97', '1992-12-45', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665545', '陆逊45', '0', '1111333345', '男', '667845', 'we are 45', '1214080699945', '', '1', '0');
INSERT INTO `t_student` VALUES ('98', '1992-12-46', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665546', '陆逊46', '0', '1111333346', '男', '667846', 'we are 46', '1214080699946', '', '1', '0');
INSERT INTO `t_student` VALUES ('99', '1992-12-47', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665547', '陆逊47', '0', '1111333347', '男', '667847', 'we are 47', '1214080699947', '', '1', '0');
INSERT INTO `t_student` VALUES ('100', '1992-12-48', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665548', '陆逊48', '0', '1111333348', '男', '667848', 'we are 48', '1214080699948', '', '1', '0');
INSERT INTO `t_student` VALUES ('101', '1992-12-49', '1', '惠州学院', '计算机科学系', '16#C705', '某个专业', '15066665549', '陆逊49', '0', '1111333349', '男', '667849', 'we are 49', '1214080699949', '', '1', '0');
INSERT INTO `t_student` VALUES ('102', '1992-06-50', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225550', '露琪亚50', '0', '1111666650', '女', '664650', 'we are 50', '1214060899950', '', '1', '0');
INSERT INTO `t_student` VALUES ('103', '1992-06-51', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225551', '露琪亚51', '0', '1111666651', '女', '664651', 'we are 51', '1214060899951', '', '1', '0');
INSERT INTO `t_student` VALUES ('104', '1992-06-52', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225552', '露琪亚52', '0', '1111666652', '女', '664652', 'we are 52', '1214060899952', '', '1', '0');
INSERT INTO `t_student` VALUES ('105', '1992-06-53', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225553', '露琪亚53', '0', '1111666653', '女', '664653', 'we are 53', '1214060899953', '', '1', '0');
INSERT INTO `t_student` VALUES ('106', '1992-06-54', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225554', '露琪亚54', '0', '1111666654', '女', '664654', 'we are 54', '1214060899954', '', '1', '0');
INSERT INTO `t_student` VALUES ('107', '1992-06-55', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225555', '露琪亚55', '0', '1111666655', '女', '664655', 'we are 55', '1214060899955', '', '1', '0');
INSERT INTO `t_student` VALUES ('108', '1992-06-56', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225556', '露琪亚56', '0', '1111666656', '女', '664656', 'we are 56', '1214060899956', '', '1', '0');
INSERT INTO `t_student` VALUES ('109', '1992-06-57', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225557', '露琪亚57', '0', '1111666657', '女', '664657', 'we are 57', '1214060899957', '', '1', '0');
INSERT INTO `t_student` VALUES ('110', '1992-06-58', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225558', '露琪亚58', '0', '1111666658', '女', '664658', 'we are 58', '1214060899958', '', '1', '0');
INSERT INTO `t_student` VALUES ('111', '1992-06-59', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225559', '露琪亚59', '0', '1111666659', '女', '664659', 'we are 59', '1214060899959', '', '1', '0');
INSERT INTO `t_student` VALUES ('112', '1992-06-50', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225550', '露琪亚50', '0', '1111666650', '女', '664650', 'we are 50', '1214060899950', '', '1', '0');
INSERT INTO `t_student` VALUES ('113', '1992-06-51', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225551', '露琪亚51', '0', '1111666651', '女', '664651', 'we are 51', '1214060899951', '', '1', '0');
INSERT INTO `t_student` VALUES ('114', '1992-06-52', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225552', '露琪亚52', '0', '1111666652', '女', '664652', 'we are 52', '1214060899952', '', '1', '0');
INSERT INTO `t_student` VALUES ('115', '1992-06-53', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225553', '露琪亚53', '0', '1111666653', '女', '664653', 'we are 53', '1214060899953', '', '1', '0');
INSERT INTO `t_student` VALUES ('116', '1992-06-54', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225554', '露琪亚54', '0', '1111666654', '女', '664654', 'we are 54', '1214060899954', '', '1', '0');
INSERT INTO `t_student` VALUES ('117', '1992-06-55', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225555', '露琪亚55', '0', '1111666655', '女', '664655', 'we are 55', '1214060899955', '', '1', '0');
INSERT INTO `t_student` VALUES ('118', '1992-06-56', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225556', '露琪亚56', '0', '1111666656', '女', '664656', 'we are 56', '1214060899956', '', '1', '0');
INSERT INTO `t_student` VALUES ('119', '1992-06-57', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225557', '露琪亚57', '0', '1111666657', '女', '664657', 'we are 57', '1214060899957', '', '1', '0');
INSERT INTO `t_student` VALUES ('120', '1992-06-58', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225558', '露琪亚58', '0', '1111666658', '女', '664658', 'we are 58', '1214060899958', '', '1', '0');
INSERT INTO `t_student` VALUES ('121', '1992-06-59', '1', '惠州学院', '计算机科学系', '16#C707', '某个专业', '15022225559', '露琪亚59', '0', '1111666659', '女', '664659', 'we are 59', '1214060899959', '', '1', '0');
INSERT INTO `t_student` VALUES ('123', '', '0', null, null, '11#A505', null, '15000002222', '约翰', '0', '99999999', '女', '664478', '', '121408056643', '6', '0', '2');

-- ----------------------------
-- Table structure for t_teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_course`;
CREATE TABLE `t_teacher_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `course_place` varchar(255) DEFAULT NULL,
  `course_teacher` varchar(255) DEFAULT NULL,
  `day` int(11) NOT NULL,
  `last` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher_course
-- ----------------------------
INSERT INTO `t_teacher_course` VALUES ('1', '高等数学', '5-502', '但丁', '1', '2', '1', '1');
INSERT INTO `t_teacher_course` VALUES ('2', '高等数学', '5-302', '', '1', '2', '3', '1');
INSERT INTO `t_teacher_course` VALUES ('3', '高等数学', '5-502', '但丁', '1', '2', '5', '1');
INSERT INTO `t_teacher_course` VALUES ('4', null, null, null, '1', '2', '7', '1');
INSERT INTO `t_teacher_course` VALUES ('5', null, null, null, '2', '2', '1', '1');
INSERT INTO `t_teacher_course` VALUES ('6', '高等数学', '5-601', '但丁', '2', '2', '3', '1');
INSERT INTO `t_teacher_course` VALUES ('7', null, null, null, '2', '2', '5', '1');
INSERT INTO `t_teacher_course` VALUES ('8', '高等数学', '5-602', '但丁', '2', '2', '7', '1');
INSERT INTO `t_teacher_course` VALUES ('9', '高等数学', '5-502', '但丁', '3', '2', '1', '1');
INSERT INTO `t_teacher_course` VALUES ('10', '高等数学', '5-502', '但丁', '3', '2', '3', '1');
INSERT INTO `t_teacher_course` VALUES ('11', null, null, null, '3', '2', '5', '1');
INSERT INTO `t_teacher_course` VALUES ('12', null, null, null, '3', '2', '7', '1');
INSERT INTO `t_teacher_course` VALUES ('13', null, null, null, '4', '2', '1', '1');
INSERT INTO `t_teacher_course` VALUES ('14', '高等数学', '5-602', '但丁', '4', '2', '3', '1');
INSERT INTO `t_teacher_course` VALUES ('15', '高等数学', '5-602', '但丁', '4', '2', '5', '1');
INSERT INTO `t_teacher_course` VALUES ('16', null, null, null, '4', '2', '7', '1');
INSERT INTO `t_teacher_course` VALUES ('17', null, null, null, '5', '2', '1', '1');
INSERT INTO `t_teacher_course` VALUES ('18', null, null, null, '5', '2', '3', '1');
INSERT INTO `t_teacher_course` VALUES ('19', null, null, null, '5', '2', '5', '1');
INSERT INTO `t_teacher_course` VALUES ('20', '高等数学', '5-502', '但丁', '5', '2', '7', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activate_time` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `power` int(11) NOT NULL,
  `qq_num` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `we_chat` varchar(255) DEFAULT NULL,
  `temp_avatar` varchar(255) DEFAULT NULL,
  `used_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', '1', '2github-icon.png', '2015-10-09 21:23:21', '123456789@qq.com', '0', '稳定的茶树菇', 'd0970714757783e6cf17b26fb8e2298f', '15018879908', '0', '952981465', '1', '0', '7f84547f3e5fb4668f602b8d243b898c', 'student', 'test', 'zran2013', '2github-icon.png', 'zhengzran@gmail.com');
INSERT INTO `t_user` VALUES ('3', '1', 'm_6.png', '2016-04-21 15:13:06', '987654321@qq.com', '0', 'Jon', '4297f44b13955235245b2497399d7a93', '12344445667', '2', null, '1', '0', 'cd200689e80a068b788cab3ba04a7ec7', 'student', 'jon', null, null, null);
INSERT INTO `t_user` VALUES ('4', '1', 'm_4.png', '2016-04-21 15:25:37', '952985556@qq.com', '0', 'jjj', '4297f44b13955235245b2497399d7a93', '13488999006', '0', null, '1', '0', 'c3fef82280af32fac8c854c8f97202c', 'student', 'jjj', null, null, null);
INSERT INTO `t_user` VALUES ('5', '1', '5huz-2.png', '2016-05-05 15:02:01', '952981435@qq.com', '0', 'foo', '4297f44b13955235245b2497399d7a93', '15022222333', '1', 'qwetg', '1', '0', '6c9633c739d53b90c6cdc472cdc9efc5', 'student', 'foo', 'qwtg2', '5huz-2.png', 'jigahJ@gaga.com');
INSERT INTO `t_user` VALUES ('6', '1', 'm_2.png', '2016-05-05 15:51:14', '952984445@qq.com', '0', 'bar', '4297f44b13955235245b2497399d7a93', '14800009997', '0', null, '1', '0', '88a79dac0acfb69e38f5e90e9c682cdb', 'student', 'bar', null, null, null);
