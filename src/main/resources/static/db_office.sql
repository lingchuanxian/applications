/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : db_office

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-09-21 00:26:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa_actionlog
-- ----------------------------
DROP TABLE IF EXISTS `oa_actionlog`;
CREATE TABLE `oa_actionlog` (
  `al_id` int(11) NOT NULL AUTO_INCREMENT,
  `al_adminid` int(11) DEFAULT NULL,
  `al_controller` varchar(255) NOT NULL,
  `al_method` varchar(255) NOT NULL,
  `al_params` varchar(255) DEFAULT NULL,
  `al_uri` varchar(255) DEFAULT NULL,
  `al_costtime` bigint(20) DEFAULT NULL,
  `al_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`al_id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_actionlog
-- ----------------------------
INSERT INTO `oa_actionlog` VALUES ('32', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499928728748');
INSERT INTO `oa_actionlog` VALUES ('33', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499928728951');
INSERT INTO `oa_actionlog` VALUES ('34', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '28', '1499928731431');
INSERT INTO `oa_actionlog` VALUES ('35', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '16', '1499928744817');
INSERT INTO `oa_actionlog` VALUES ('36', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'msg=请先登录	', '/login.shtml', '66', '1499928798737');
INSERT INTO `oa_actionlog` VALUES ('37', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '174', '1499928807383');
INSERT INTO `oa_actionlog` VALUES ('38', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499928809112');
INSERT INTO `oa_actionlog` VALUES ('39', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499928809713');
INSERT INTO `oa_actionlog` VALUES ('40', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '27', '1499928812815');
INSERT INTO `oa_actionlog` VALUES ('41', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', 'currentPage=2	', '/admin/notepad/getNotePads.shtml', '14', '1499928815059');
INSERT INTO `oa_actionlog` VALUES ('42', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '15', '1499928817360');
INSERT INTO `oa_actionlog` VALUES ('43', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'msg=请先登录	', '/login.shtml', '41', '1499929051048');
INSERT INTO `oa_actionlog` VALUES ('44', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '155', '1499929060908');
INSERT INTO `oa_actionlog` VALUES ('45', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499929062453');
INSERT INTO `oa_actionlog` VALUES ('46', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499929062992');
INSERT INTO `oa_actionlog` VALUES ('47', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '27', '1499929067252');
INSERT INTO `oa_actionlog` VALUES ('48', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', 'currentPage=2	', '/admin/notepad/getNotePads.shtml', '11', '1499929069779');
INSERT INTO `oa_actionlog` VALUES ('49', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '9', '1499929072095');
INSERT INTO `oa_actionlog` VALUES ('50', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499929167260');
INSERT INTO `oa_actionlog` VALUES ('51', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929167953');
INSERT INTO `oa_actionlog` VALUES ('52', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '16', '1499929169789');
INSERT INTO `oa_actionlog` VALUES ('53', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=2	', '/admin/actionlog/getActionLog.shtml', '9', '1499929173320');
INSERT INTO `oa_actionlog` VALUES ('54', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=3	', '/admin/actionlog/getActionLog.shtml', '4', '1499929175435');
INSERT INTO `oa_actionlog` VALUES ('55', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '9', '1499929177771');
INSERT INTO `oa_actionlog` VALUES ('56', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=2	', '/admin/actionlog/getActionLog.shtml', '10', '1499929181616');
INSERT INTO `oa_actionlog` VALUES ('57', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=3	', '/admin/actionlog/getActionLog.shtml', '7', '1499929183426');
INSERT INTO `oa_actionlog` VALUES ('58', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '9', '1499929185030');
INSERT INTO `oa_actionlog` VALUES ('59', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '6', '1499929228283');
INSERT INTO `oa_actionlog` VALUES ('60', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499929372864');
INSERT INTO `oa_actionlog` VALUES ('61', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929373102');
INSERT INTO `oa_actionlog` VALUES ('62', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '17', '1499929374683');
INSERT INTO `oa_actionlog` VALUES ('63', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499929395468');
INSERT INTO `oa_actionlog` VALUES ('64', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929396632');
INSERT INTO `oa_actionlog` VALUES ('65', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '13', '1499929398409');
INSERT INTO `oa_actionlog` VALUES ('66', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499929415023');
INSERT INTO `oa_actionlog` VALUES ('67', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929415364');
INSERT INTO `oa_actionlog` VALUES ('68', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '13', '1499929417279');
INSERT INTO `oa_actionlog` VALUES ('69', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499929480830');
INSERT INTO `oa_actionlog` VALUES ('70', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929481562');
INSERT INTO `oa_actionlog` VALUES ('71', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '10', '1499929483193');
INSERT INTO `oa_actionlog` VALUES ('72', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499929494986');
INSERT INTO `oa_actionlog` VALUES ('73', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929495282');
INSERT INTO `oa_actionlog` VALUES ('74', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '17', '1499929496886');
INSERT INTO `oa_actionlog` VALUES ('75', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499929582086');
INSERT INTO `oa_actionlog` VALUES ('76', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499929583239');
INSERT INTO `oa_actionlog` VALUES ('77', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '7', '1499929584856');
INSERT INTO `oa_actionlog` VALUES ('78', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '6', '1499929586583');
INSERT INTO `oa_actionlog` VALUES ('79', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '5', '1499929587793');
INSERT INTO `oa_actionlog` VALUES ('80', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '9', '1499929588881');
INSERT INTO `oa_actionlog` VALUES ('81', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '4', '1499929589645');
INSERT INTO `oa_actionlog` VALUES ('82', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '5', '1499929595981');
INSERT INTO `oa_actionlog` VALUES ('83', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499929638184');
INSERT INTO `oa_actionlog` VALUES ('84', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499929638539');
INSERT INTO `oa_actionlog` VALUES ('85', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '11', '1499929640647');
INSERT INTO `oa_actionlog` VALUES ('86', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '9', '1499929642223');
INSERT INTO `oa_actionlog` VALUES ('87', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '7', '1499929644482');
INSERT INTO `oa_actionlog` VALUES ('88', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '7', '1499929645444');
INSERT INTO `oa_actionlog` VALUES ('89', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '20', '1499929653219');
INSERT INTO `oa_actionlog` VALUES ('90', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '9', '1499929661598');
INSERT INTO `oa_actionlog` VALUES ('91', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '5', '1499929666352');
INSERT INTO `oa_actionlog` VALUES ('92', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '2', '1499929671880');
INSERT INTO `oa_actionlog` VALUES ('93', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '12', '1499929674087');
INSERT INTO `oa_actionlog` VALUES ('94', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '8', '1499929684786');
INSERT INTO `oa_actionlog` VALUES ('95', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '6', '1499929721566');
INSERT INTO `oa_actionlog` VALUES ('96', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'showNotePad', 'npId=2	', '/admin/notepad/showNotePad.shtml', '5', '1499929722995');
INSERT INTO `oa_actionlog` VALUES ('97', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'showNotePad', 'npId=2	', '/admin/notepad/showNotePad.shtml', '6', '1499929740120');
INSERT INTO `oa_actionlog` VALUES ('98', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499929824267');
INSERT INTO `oa_actionlog` VALUES ('99', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499929824705');
INSERT INTO `oa_actionlog` VALUES ('100', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '10', '1499929833114');
INSERT INTO `oa_actionlog` VALUES ('101', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '8', '1499929835128');
INSERT INTO `oa_actionlog` VALUES ('102', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=2	', '/admin/actionlog/getActionLog.shtml', '6', '1499929957442');
INSERT INTO `oa_actionlog` VALUES ('103', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=3	', '/admin/actionlog/getActionLog.shtml', '14', '1499929958207');
INSERT INTO `oa_actionlog` VALUES ('104', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=4	', '/admin/actionlog/getActionLog.shtml', '11', '1499929959060');
INSERT INTO `oa_actionlog` VALUES ('105', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=5	', '/admin/actionlog/getActionLog.shtml', '6', '1499929960477');
INSERT INTO `oa_actionlog` VALUES ('106', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=6	', '/admin/actionlog/getActionLog.shtml', '6', '1499929961755');
INSERT INTO `oa_actionlog` VALUES ('107', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=7	', '/admin/actionlog/getActionLog.shtml', '6', '1499929962589');
INSERT INTO `oa_actionlog` VALUES ('108', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=8	', '/admin/actionlog/getActionLog.shtml', '15', '1499929963590');
INSERT INTO `oa_actionlog` VALUES ('109', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '9', '1499929964959');
INSERT INTO `oa_actionlog` VALUES ('110', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '6', '1499930056195');
INSERT INTO `oa_actionlog` VALUES ('111', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '3', '1499930098876');
INSERT INTO `oa_actionlog` VALUES ('112', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499930101014');
INSERT INTO `oa_actionlog` VALUES ('113', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499930101599');
INSERT INTO `oa_actionlog` VALUES ('114', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '2', '1499930101847');
INSERT INTO `oa_actionlog` VALUES ('115', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '3', '1499930102900');
INSERT INTO `oa_actionlog` VALUES ('116', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '7', '1499930104168');
INSERT INTO `oa_actionlog` VALUES ('117', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '10', '1499930110152');
INSERT INTO `oa_actionlog` VALUES ('118', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'msg=请先登录	', '/login.shtml', '42', '1499930190883');
INSERT INTO `oa_actionlog` VALUES ('119', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '193', '1499930202290');
INSERT INTO `oa_actionlog` VALUES ('120', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '10', '1499930203845');
INSERT INTO `oa_actionlog` VALUES ('121', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499930204427');
INSERT INTO `oa_actionlog` VALUES ('122', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '24', '1499930212362');
INSERT INTO `oa_actionlog` VALUES ('123', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '15', '1499930217590');
INSERT INTO `oa_actionlog` VALUES ('124', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '5', '1499930218645');
INSERT INTO `oa_actionlog` VALUES ('125', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '9', '1499930219347');
INSERT INTO `oa_actionlog` VALUES ('126', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '6', '1499930220636');
INSERT INTO `oa_actionlog` VALUES ('127', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '22', '1499930228191');
INSERT INTO `oa_actionlog` VALUES ('128', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499930244340');
INSERT INTO `oa_actionlog` VALUES ('129', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499930244605');
INSERT INTO `oa_actionlog` VALUES ('130', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '8', '1499930258255');
INSERT INTO `oa_actionlog` VALUES ('131', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '20', '1499930262643');
INSERT INTO `oa_actionlog` VALUES ('132', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=2	', '/admin/actionlog/getActionLog.shtml', '10', '1499930264600');
INSERT INTO `oa_actionlog` VALUES ('133', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=3	', '/admin/actionlog/getActionLog.shtml', '10', '1499930265945');
INSERT INTO `oa_actionlog` VALUES ('134', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=4	', '/admin/actionlog/getActionLog.shtml', '10', '1499930266800');
INSERT INTO `oa_actionlog` VALUES ('135', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=5	', '/admin/actionlog/getActionLog.shtml', '25', '1499930267592');
INSERT INTO `oa_actionlog` VALUES ('136', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '13', '1499930284371');
INSERT INTO `oa_actionlog` VALUES ('137', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'showNotePad', 'npId=2	', '/admin/notepad/showNotePad.shtml', '3', '1499930288140');
INSERT INTO `oa_actionlog` VALUES ('138', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '12', '1499930296067');
INSERT INTO `oa_actionlog` VALUES ('139', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '6', '1499930335034');
INSERT INTO `oa_actionlog` VALUES ('140', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'msg=请先登录	', '/login.shtml', '38', '1499931438272');
INSERT INTO `oa_actionlog` VALUES ('141', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '151', '1499931452445');
INSERT INTO `oa_actionlog` VALUES ('142', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499931453987');
INSERT INTO `oa_actionlog` VALUES ('143', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499931454575');
INSERT INTO `oa_actionlog` VALUES ('144', '1', 'cn.fjlcx.office.controller.web.CommonController', 'logout', '', '/logout.shtml', '1', '1499931457709');
INSERT INTO `oa_actionlog` VALUES ('145', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '1', '1499931457749');
INSERT INTO `oa_actionlog` VALUES ('146', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'msg=请先登录	', '/login.shtml', '0', '1499931937281');
INSERT INTO `oa_actionlog` VALUES ('147', '1', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '17', '1499932224275');
INSERT INTO `oa_actionlog` VALUES ('148', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499932225827');
INSERT INTO `oa_actionlog` VALUES ('149', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499932226269');
INSERT INTO `oa_actionlog` VALUES ('150', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '45', '1499932229214');
INSERT INTO `oa_actionlog` VALUES ('151', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933034592');
INSERT INTO `oa_actionlog` VALUES ('152', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933034592');
INSERT INTO `oa_actionlog` VALUES ('153', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933035559');
INSERT INTO `oa_actionlog` VALUES ('154', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933036910');
INSERT INTO `oa_actionlog` VALUES ('155', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933036920');
INSERT INTO `oa_actionlog` VALUES ('156', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933036929');
INSERT INTO `oa_actionlog` VALUES ('157', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '0', '1499933038280');
INSERT INTO `oa_actionlog` VALUES ('158', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933038341');
INSERT INTO `oa_actionlog` VALUES ('159', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '0', '1499933038346');
INSERT INTO `oa_actionlog` VALUES ('160', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933039341');
INSERT INTO `oa_actionlog` VALUES ('161', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933039443');
INSERT INTO `oa_actionlog` VALUES ('162', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933039453');
INSERT INTO `oa_actionlog` VALUES ('163', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '22', '1499933147957');
INSERT INTO `oa_actionlog` VALUES ('164', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933150615');
INSERT INTO `oa_actionlog` VALUES ('165', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '0', '1499933157391');
INSERT INTO `oa_actionlog` VALUES ('166', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933157395');
INSERT INTO `oa_actionlog` VALUES ('167', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933159163');
INSERT INTO `oa_actionlog` VALUES ('168', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '2', '1499933159196');
INSERT INTO `oa_actionlog` VALUES ('169', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933160220');
INSERT INTO `oa_actionlog` VALUES ('170', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '2', '1499933160238');
INSERT INTO `oa_actionlog` VALUES ('171', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933161262');
INSERT INTO `oa_actionlog` VALUES ('172', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', 'currentPage=1	msg=请先登录	', '/login.shtml', '1', '1499933161285');
INSERT INTO `oa_actionlog` VALUES ('173', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '568', '1499933466597');
INSERT INTO `oa_actionlog` VALUES ('174', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '582', '1499933466606');
INSERT INTO `oa_actionlog` VALUES ('175', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '64', '1499933475026');
INSERT INTO `oa_actionlog` VALUES ('176', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=3	', '/webservice/notepad/getNotePad.shtml', '35', '1499933477792');
INSERT INTO `oa_actionlog` VALUES ('177', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '35', '1499933486421');
INSERT INTO `oa_actionlog` VALUES ('178', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'updateNotePad', '', '/webservice/notepad/updateNotePad.shtml', '177', '1499933520279');
INSERT INTO `oa_actionlog` VALUES ('179', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '41', '1499933536810');
INSERT INTO `oa_actionlog` VALUES ('180', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '49', '1499933540535');
INSERT INTO `oa_actionlog` VALUES ('181', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '42', '1499933543708');
INSERT INTO `oa_actionlog` VALUES ('182', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '31', '1499933544602');
INSERT INTO `oa_actionlog` VALUES ('183', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '61', '1499933549077');
INSERT INTO `oa_actionlog` VALUES ('184', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '447', '1499994490601');
INSERT INTO `oa_actionlog` VALUES ('185', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '54', '1499994494945');
INSERT INTO `oa_actionlog` VALUES ('186', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '100', '1499994498865');
INSERT INTO `oa_actionlog` VALUES ('187', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '75', '1499994503024');
INSERT INTO `oa_actionlog` VALUES ('188', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '1121', '1499994511702');
INSERT INTO `oa_actionlog` VALUES ('189', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '47', '1499994516670');
INSERT INTO `oa_actionlog` VALUES ('190', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '550', '1499994531730');
INSERT INTO `oa_actionlog` VALUES ('191', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'updateNotePad', '', '/webservice/notepad/updateNotePad.shtml', '99', '1499994549132');
INSERT INTO `oa_actionlog` VALUES ('192', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '1092', '1499994552245');
INSERT INTO `oa_actionlog` VALUES ('193', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '379', '1499994553152');
INSERT INTO `oa_actionlog` VALUES ('194', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '48', '1499994557164');
INSERT INTO `oa_actionlog` VALUES ('195', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '53', '1499994559736');
INSERT INTO `oa_actionlog` VALUES ('196', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '58', '1499994563324');
INSERT INTO `oa_actionlog` VALUES ('197', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '33', '1499994597518');
INSERT INTO `oa_actionlog` VALUES ('198', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'deleteNotePad', 'npId=3	', '/webservice/notepad/deleteNotePad.shtml', '18', '1499994601358');
INSERT INTO `oa_actionlog` VALUES ('199', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'deleteNotePad', 'npId=3	', '/webservice/notepad/deleteNotePad.shtml', '16', '1499994602338');
INSERT INTO `oa_actionlog` VALUES ('200', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=2	', '/webservice/notepad/getNotePad.shtml', '38', '1499994603861');
INSERT INTO `oa_actionlog` VALUES ('201', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '22', '1499994832058');
INSERT INTO `oa_actionlog` VALUES ('202', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '61', '1499994841496');
INSERT INTO `oa_actionlog` VALUES ('203', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499994843229');
INSERT INTO `oa_actionlog` VALUES ('204', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499994844647');
INSERT INTO `oa_actionlog` VALUES ('205', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '43', '1499994847392');
INSERT INTO `oa_actionlog` VALUES ('206', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499994951602');
INSERT INTO `oa_actionlog` VALUES ('207', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '5', '1499994953774');
INSERT INTO `oa_actionlog` VALUES ('208', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '52', '1499994973880');
INSERT INTO `oa_actionlog` VALUES ('209', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '0', '1499995045140');
INSERT INTO `oa_actionlog` VALUES ('210', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499995199695');
INSERT INTO `oa_actionlog` VALUES ('211', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '2', '1499995243858');
INSERT INTO `oa_actionlog` VALUES ('212', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '5', '1499995277515');
INSERT INTO `oa_actionlog` VALUES ('213', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '5', '1499995338492');
INSERT INTO `oa_actionlog` VALUES ('214', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499995366444');
INSERT INTO `oa_actionlog` VALUES ('215', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '79', '1499995406864');
INSERT INTO `oa_actionlog` VALUES ('216', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '2', '1499995955995');
INSERT INTO `oa_actionlog` VALUES ('217', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499995974928');
INSERT INTO `oa_actionlog` VALUES ('218', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '6', '1499996011980');
INSERT INTO `oa_actionlog` VALUES ('219', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499996042228');
INSERT INTO `oa_actionlog` VALUES ('220', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499996071772');
INSERT INTO `oa_actionlog` VALUES ('221', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '5', '1499996101799');
INSERT INTO `oa_actionlog` VALUES ('222', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499996152605');
INSERT INTO `oa_actionlog` VALUES ('223', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499996221316');
INSERT INTO `oa_actionlog` VALUES ('224', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499996222410');
INSERT INTO `oa_actionlog` VALUES ('225', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499996223983');
INSERT INTO `oa_actionlog` VALUES ('226', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '22', '1499996402100');
INSERT INTO `oa_actionlog` VALUES ('227', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499996403879');
INSERT INTO `oa_actionlog` VALUES ('228', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '53', '1499996415564');
INSERT INTO `oa_actionlog` VALUES ('229', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '3', '1499996487804');
INSERT INTO `oa_actionlog` VALUES ('230', '0', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'picName=AJJ_MOA_HD（外网测试）.apk	', '/uploadFile.shtml', '34', '1499996495134');
INSERT INTO `oa_actionlog` VALUES ('231', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499996566211');
INSERT INTO `oa_actionlog` VALUES ('232', '0', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'picName=AJJ_MOA.apk	', '/uploadFile.shtml', '0', '1499996572761');
INSERT INTO `oa_actionlog` VALUES ('233', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '37', '1499996771181');
INSERT INTO `oa_actionlog` VALUES ('234', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499996773821');
INSERT INTO `oa_actionlog` VALUES ('235', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '43', '1499996777669');
INSERT INTO `oa_actionlog` VALUES ('236', '0', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'picName=AJJ_MOA.apk	', '/uploadFile.shtml', '20', '1499996785236');
INSERT INTO `oa_actionlog` VALUES ('237', '0', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'picName=AJJ_MOA_HD（外网测试）.apk	', '/uploadFile.shtml', '10', '1499996840849');
INSERT INTO `oa_actionlog` VALUES ('238', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '19', '1499999412685');
INSERT INTO `oa_actionlog` VALUES ('239', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '128', '1499999420227');
INSERT INTO `oa_actionlog` VALUES ('240', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499999421787');
INSERT INTO `oa_actionlog` VALUES ('241', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499999422045');
INSERT INTO `oa_actionlog` VALUES ('242', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499999424263');
INSERT INTO `oa_actionlog` VALUES ('243', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499999605266');
INSERT INTO `oa_actionlog` VALUES ('244', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1499999605879');
INSERT INTO `oa_actionlog` VALUES ('245', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1499999607677');
INSERT INTO `oa_actionlog` VALUES ('246', '1', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'Filename=AJJ_MOA.apk	Upload=Submit Query	', '/uploadFile.shtml', '12', '1499999614620');
INSERT INTO `oa_actionlog` VALUES ('247', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1499999627799');
INSERT INTO `oa_actionlog` VALUES ('248', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499999628093');
INSERT INTO `oa_actionlog` VALUES ('249', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1499999629047');
INSERT INTO `oa_actionlog` VALUES ('250', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1499999629292');
INSERT INTO `oa_actionlog` VALUES ('251', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '7', '1499999631569');
INSERT INTO `oa_actionlog` VALUES ('252', '1', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'Filename=移动OA图标.rar	Upload=Submit Query	', '/uploadFile.shtml', '16', '1499999636149');
INSERT INTO `oa_actionlog` VALUES ('253', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '104', '1499999665915');
INSERT INTO `oa_actionlog` VALUES ('254', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500002081483');
INSERT INTO `oa_actionlog` VALUES ('255', '1', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '4', '1500002088783');
INSERT INTO `oa_actionlog` VALUES ('256', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500002090666');
INSERT INTO `oa_actionlog` VALUES ('257', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500002091183');
INSERT INTO `oa_actionlog` VALUES ('258', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '3', '1500002147729');
INSERT INTO `oa_actionlog` VALUES ('259', '1', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'Filename=SecureCRT.zip	Upload=Submit Query	', '/uploadFile.shtml', '69', '1500002160628');
INSERT INTO `oa_actionlog` VALUES ('260', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1500002309387');
INSERT INTO `oa_actionlog` VALUES ('261', '1', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'Filename=template.jks	Upload=Submit Query	', '/uploadFile.shtml', '1', '1500002316852');
INSERT INTO `oa_actionlog` VALUES ('262', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500013937055');
INSERT INTO `oa_actionlog` VALUES ('263', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500013937262');
INSERT INTO `oa_actionlog` VALUES ('264', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500013957089');
INSERT INTO `oa_actionlog` VALUES ('265', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '27', '1500014756428');
INSERT INTO `oa_actionlog` VALUES ('266', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '212', '1500014766315');
INSERT INTO `oa_actionlog` VALUES ('267', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500014767880');
INSERT INTO `oa_actionlog` VALUES ('268', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500014768783');
INSERT INTO `oa_actionlog` VALUES ('269', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '12', '1500014771662');
INSERT INTO `oa_actionlog` VALUES ('270', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '6', '1500014803767');
INSERT INTO `oa_actionlog` VALUES ('271', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '4', '1500014823886');
INSERT INTO `oa_actionlog` VALUES ('272', '1', 'cn.fjlcx.office.controller.web.CommonController', 'logout', '', '/logout.shtml', '1', '1500016623885');
INSERT INTO `oa_actionlog` VALUES ('273', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '3', '1500016624263');
INSERT INTO `oa_actionlog` VALUES ('274', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '1', '1500016626014');
INSERT INTO `oa_actionlog` VALUES ('275', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '1', '1500016648948');
INSERT INTO `oa_actionlog` VALUES ('276', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '1', '1500016651826');
INSERT INTO `oa_actionlog` VALUES ('277', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '24', '1500016730469');
INSERT INTO `oa_actionlog` VALUES ('278', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500018050893');
INSERT INTO `oa_actionlog` VALUES ('279', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '16', '1500024006968');
INSERT INTO `oa_actionlog` VALUES ('280', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '179', '1500024016189');
INSERT INTO `oa_actionlog` VALUES ('281', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500024017726');
INSERT INTO `oa_actionlog` VALUES ('282', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '22', '1500024018730');
INSERT INTO `oa_actionlog` VALUES ('283', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '50', '1500024020406');
INSERT INTO `oa_actionlog` VALUES ('284', '1', 'cn.fjlcx.office.controller.web.UploadController', 'uploadFile', 'Filename=template.jks	Upload=Submit Query	', '/uploadFile.shtml', '7', '1500024029230');
INSERT INTO `oa_actionlog` VALUES ('285', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500254981252');
INSERT INTO `oa_actionlog` VALUES ('286', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '196', '1500254991126');
INSERT INTO `oa_actionlog` VALUES ('287', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '2', '1500254992664');
INSERT INTO `oa_actionlog` VALUES ('288', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500254994653');
INSERT INTO `oa_actionlog` VALUES ('289', '1', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '71', '1500254998438');
INSERT INTO `oa_actionlog` VALUES ('290', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '21', '1500255000594');
INSERT INTO `oa_actionlog` VALUES ('291', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '15', '1500257644747');
INSERT INTO `oa_actionlog` VALUES ('292', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500257646514');
INSERT INTO `oa_actionlog` VALUES ('293', '0', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '55', '1500257649889');
INSERT INTO `oa_actionlog` VALUES ('294', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '8', '1500257653449');
INSERT INTO `oa_actionlog` VALUES ('295', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/office/', '40', '1500257925038');
INSERT INTO `oa_actionlog` VALUES ('296', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '25', '1500272882287');
INSERT INTO `oa_actionlog` VALUES ('297', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '173', '1500272892415');
INSERT INTO `oa_actionlog` VALUES ('298', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500272894128');
INSERT INTO `oa_actionlog` VALUES ('299', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500272895067');
INSERT INTO `oa_actionlog` VALUES ('300', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '27', '1500272898140');
INSERT INTO `oa_actionlog` VALUES ('301', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500273180085');
INSERT INTO `oa_actionlog` VALUES ('302', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500273181904');
INSERT INTO `oa_actionlog` VALUES ('303', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '157152', '1500273341049');
INSERT INTO `oa_actionlog` VALUES ('304', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '19', '1500273371134');
INSERT INTO `oa_actionlog` VALUES ('305', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500273373355');
INSERT INTO `oa_actionlog` VALUES ('306', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '145001', '1500273522339');
INSERT INTO `oa_actionlog` VALUES ('307', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500273544943');
INSERT INTO `oa_actionlog` VALUES ('308', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500273546874');
INSERT INTO `oa_actionlog` VALUES ('309', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '430605', '1500273979584');
INSERT INTO `oa_actionlog` VALUES ('310', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '23', '1500274021316');
INSERT INTO `oa_actionlog` VALUES ('311', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500274023219');
INSERT INTO `oa_actionlog` VALUES ('312', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '1055', '1500274026912');
INSERT INTO `oa_actionlog` VALUES ('313', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500274059153');
INSERT INTO `oa_actionlog` VALUES ('314', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500274061395');
INSERT INTO `oa_actionlog` VALUES ('315', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '9183', '1500274072925');
INSERT INTO `oa_actionlog` VALUES ('316', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500274136033');
INSERT INTO `oa_actionlog` VALUES ('317', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '2', '1500274137956');
INSERT INTO `oa_actionlog` VALUES ('318', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '55556', '1500274195782');
INSERT INTO `oa_actionlog` VALUES ('319', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '23', '1500274227664');
INSERT INTO `oa_actionlog` VALUES ('320', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500274229486');
INSERT INTO `oa_actionlog` VALUES ('321', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '175413', '1500274406988');
INSERT INTO `oa_actionlog` VALUES ('322', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '16', '1500274445167');
INSERT INTO `oa_actionlog` VALUES ('323', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500274447119');
INSERT INTO `oa_actionlog` VALUES ('324', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '28514', '1500274479293');
INSERT INTO `oa_actionlog` VALUES ('325', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '38', '1500274584718');
INSERT INTO `oa_actionlog` VALUES ('326', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500274586648');
INSERT INTO `oa_actionlog` VALUES ('327', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '132200', '1500274720558');
INSERT INTO `oa_actionlog` VALUES ('328', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '17', '1500274796035');
INSERT INTO `oa_actionlog` VALUES ('329', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '2', '1500274798106');
INSERT INTO `oa_actionlog` VALUES ('330', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '13548', '1500274813387');
INSERT INTO `oa_actionlog` VALUES ('331', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '16', '1500274880633');
INSERT INTO `oa_actionlog` VALUES ('332', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500274882393');
INSERT INTO `oa_actionlog` VALUES ('333', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '53', '1500274884249');
INSERT INTO `oa_actionlog` VALUES ('334', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', 'currentPage=1	', '/admin/notepad/getNotePads.shtml', '4', '1500274896345');
INSERT INTO `oa_actionlog` VALUES ('335', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500274972802');
INSERT INTO `oa_actionlog` VALUES ('336', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500274973155');
INSERT INTO `oa_actionlog` VALUES ('337', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '8', '1500274974813');
INSERT INTO `oa_actionlog` VALUES ('338', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500274993687');
INSERT INTO `oa_actionlog` VALUES ('339', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500274993980');
INSERT INTO `oa_actionlog` VALUES ('340', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '15', '1500275007292');
INSERT INTO `oa_actionlog` VALUES ('341', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500275495235');
INSERT INTO `oa_actionlog` VALUES ('342', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500275497208');
INSERT INTO `oa_actionlog` VALUES ('343', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '16', '1500275576812');
INSERT INTO `oa_actionlog` VALUES ('344', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500275578501');
INSERT INTO `oa_actionlog` VALUES ('345', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '19', '1500276929882');
INSERT INTO `oa_actionlog` VALUES ('346', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500276931683');
INSERT INTO `oa_actionlog` VALUES ('347', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '10', '1500276989087');
INSERT INTO `oa_actionlog` VALUES ('348', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500276991336');
INSERT INTO `oa_actionlog` VALUES ('349', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '63', '1500277056227');
INSERT INTO `oa_actionlog` VALUES ('350', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '2', '1500277058032');
INSERT INTO `oa_actionlog` VALUES ('351', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '18', '1500277414012');
INSERT INTO `oa_actionlog` VALUES ('352', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500277415808');
INSERT INTO `oa_actionlog` VALUES ('353', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '16', '1500277460399');
INSERT INTO `oa_actionlog` VALUES ('354', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500277462236');
INSERT INTO `oa_actionlog` VALUES ('355', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500341383668');
INSERT INTO `oa_actionlog` VALUES ('356', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '178', '1500341392058');
INSERT INTO `oa_actionlog` VALUES ('357', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500341393740');
INSERT INTO `oa_actionlog` VALUES ('358', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500341395422');
INSERT INTO `oa_actionlog` VALUES ('359', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '63', '1500341397363');
INSERT INTO `oa_actionlog` VALUES ('360', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '35', '1500341689062');
INSERT INTO `oa_actionlog` VALUES ('361', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '13', '1500342308851');
INSERT INTO `oa_actionlog` VALUES ('362', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500342382648');
INSERT INTO `oa_actionlog` VALUES ('363', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500342382958');
INSERT INTO `oa_actionlog` VALUES ('364', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '6', '1500342384931');
INSERT INTO `oa_actionlog` VALUES ('365', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '4', '1500342401282');
INSERT INTO `oa_actionlog` VALUES ('366', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '5', '1500342404585');
INSERT INTO `oa_actionlog` VALUES ('367', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '6', '1500342405615');
INSERT INTO `oa_actionlog` VALUES ('368', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '22', '1500342413424');
INSERT INTO `oa_actionlog` VALUES ('369', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500342556587');
INSERT INTO `oa_actionlog` VALUES ('370', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500342556822');
INSERT INTO `oa_actionlog` VALUES ('371', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '15', '1500342578940');
INSERT INTO `oa_actionlog` VALUES ('372', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500342581085');
INSERT INTO `oa_actionlog` VALUES ('373', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '45', '1500342583161');
INSERT INTO `oa_actionlog` VALUES ('374', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '6', '1500342615392');
INSERT INTO `oa_actionlog` VALUES ('375', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '9', '1500342729855');
INSERT INTO `oa_actionlog` VALUES ('376', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '4', '1500342790189');
INSERT INTO `oa_actionlog` VALUES ('377', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '7', '1500342797056');
INSERT INTO `oa_actionlog` VALUES ('378', '0', 'cn.fjlcx.office.controller.web.AppVersionController', 'getAppVersionAll', '', '/admin/appversion/getAppVersionAll.shtml', '37', '1500342945346');
INSERT INTO `oa_actionlog` VALUES ('379', '0', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', 'currentPage=1	', '/webservice/notepad/getNotePad.shtml', '83', '1500342987436');
INSERT INTO `oa_actionlog` VALUES ('380', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '6', '1500343089490');
INSERT INTO `oa_actionlog` VALUES ('381', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '15', '1500343284822');
INSERT INTO `oa_actionlog` VALUES ('382', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500343286742');
INSERT INTO `oa_actionlog` VALUES ('383', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '10', '1500343288714');
INSERT INTO `oa_actionlog` VALUES ('384', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500343312248');
INSERT INTO `oa_actionlog` VALUES ('385', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500343312707');
INSERT INTO `oa_actionlog` VALUES ('386', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '1', '1500343314096');
INSERT INTO `oa_actionlog` VALUES ('387', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500343323696');
INSERT INTO `oa_actionlog` VALUES ('388', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500343323915');
INSERT INTO `oa_actionlog` VALUES ('389', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500343325895');
INSERT INTO `oa_actionlog` VALUES ('390', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500343382829');
INSERT INTO `oa_actionlog` VALUES ('391', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500343383182');
INSERT INTO `oa_actionlog` VALUES ('392', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500343385055');
INSERT INTO `oa_actionlog` VALUES ('393', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500343539314');
INSERT INTO `oa_actionlog` VALUES ('394', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500343539573');
INSERT INTO `oa_actionlog` VALUES ('395', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '1', '1500343542144');
INSERT INTO `oa_actionlog` VALUES ('396', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500343692332');
INSERT INTO `oa_actionlog` VALUES ('397', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500343692796');
INSERT INTO `oa_actionlog` VALUES ('398', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500343697164');
INSERT INTO `oa_actionlog` VALUES ('399', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '30', '1500344352202');
INSERT INTO `oa_actionlog` VALUES ('400', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500344354084');
INSERT INTO `oa_actionlog` VALUES ('401', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '1', '1500344356617');
INSERT INTO `oa_actionlog` VALUES ('402', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500344487536');
INSERT INTO `oa_actionlog` VALUES ('403', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500344487894');
INSERT INTO `oa_actionlog` VALUES ('404', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500344489367');
INSERT INTO `oa_actionlog` VALUES ('405', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500344620679');
INSERT INTO `oa_actionlog` VALUES ('406', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500344620942');
INSERT INTO `oa_actionlog` VALUES ('407', '0', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '1', '1500344622439');
INSERT INTO `oa_actionlog` VALUES ('408', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '34', '1500344916809');
INSERT INTO `oa_actionlog` VALUES ('409', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '229', '1500344926864');
INSERT INTO `oa_actionlog` VALUES ('410', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500344929322');
INSERT INTO `oa_actionlog` VALUES ('411', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500344929483');
INSERT INTO `oa_actionlog` VALUES ('412', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500344934517');
INSERT INTO `oa_actionlog` VALUES ('413', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500345097726');
INSERT INTO `oa_actionlog` VALUES ('414', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500345098231');
INSERT INTO `oa_actionlog` VALUES ('415', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '1', '1500345101291');
INSERT INTO `oa_actionlog` VALUES ('416', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500347522979');
INSERT INTO `oa_actionlog` VALUES ('417', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500347523434');
INSERT INTO `oa_actionlog` VALUES ('418', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '62', '1500541274992');
INSERT INTO `oa_actionlog` VALUES ('419', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '179', '1500541285913');
INSERT INTO `oa_actionlog` VALUES ('420', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500541287456');
INSERT INTO `oa_actionlog` VALUES ('421', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '1', '1500541288716');
INSERT INTO `oa_actionlog` VALUES ('422', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500603462896');
INSERT INTO `oa_actionlog` VALUES ('423', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '675', '1500603471846');
INSERT INTO `oa_actionlog` VALUES ('424', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500603473385');
INSERT INTO `oa_actionlog` VALUES ('425', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500603474923');
INSERT INTO `oa_actionlog` VALUES ('426', '0', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '31', '1500603628320');
INSERT INTO `oa_actionlog` VALUES ('427', '0', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500603630104');
INSERT INTO `oa_actionlog` VALUES ('428', '0', 'cn.fjlcx.office.controller.web.CommonController', 'logout', '', '/logout.shtml', '1', '1500603631812');
INSERT INTO `oa_actionlog` VALUES ('429', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '0', '1500603632001');
INSERT INTO `oa_actionlog` VALUES ('430', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '383', '1500603642903');
INSERT INTO `oa_actionlog` VALUES ('431', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500603644450');
INSERT INTO `oa_actionlog` VALUES ('432', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500603644802');
INSERT INTO `oa_actionlog` VALUES ('433', '1', 'cn.fjlcx.office.controller.web.CommonController', 'logout', '', '/logout.shtml', '1', '1500603665062');
INSERT INTO `oa_actionlog` VALUES ('434', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/login.shtml', '1', '1500603665107');
INSERT INTO `oa_actionlog` VALUES ('435', '1', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '38', '1500603677493');
INSERT INTO `oa_actionlog` VALUES ('436', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '0', '1500603679019');
INSERT INTO `oa_actionlog` VALUES ('437', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500603679320');
INSERT INTO `oa_actionlog` VALUES ('438', '1', 'cn.fjlcx.office.controller.webservice.NotePadInterface', 'getNotePad', '', '/webservice/notepad/getNotePad.shtml', '65', '1500604545784');
INSERT INTO `oa_actionlog` VALUES ('439', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '1136', '1500623637945');
INSERT INTO `oa_actionlog` VALUES ('440', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx1	', '/webservice/common/login.shtml', '5', '1500623646074');
INSERT INTO `oa_actionlog` VALUES ('441', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx1	', '/webservice/common/login.shtml', '479', '1500623800563');
INSERT INTO `oa_actionlog` VALUES ('442', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '388', '1500623806226');
INSERT INTO `oa_actionlog` VALUES ('443', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '812', '1500624987873');
INSERT INTO `oa_actionlog` VALUES ('444', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '6', '1500625093049');
INSERT INTO `oa_actionlog` VALUES ('445', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '816', '1500625164590');
INSERT INTO `oa_actionlog` VALUES ('447', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '51', '1500625894152');
INSERT INTO `oa_actionlog` VALUES ('450', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '54', '1500626035044');
INSERT INTO `oa_actionlog` VALUES ('452', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '8', '1500626049402');
INSERT INTO `oa_actionlog` VALUES ('453', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '538', '1500626788103');
INSERT INTO `oa_actionlog` VALUES ('454', '0', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '735', '1500627377079');
INSERT INTO `oa_actionlog` VALUES ('455', '0', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '15', '1500859459087');
INSERT INTO `oa_actionlog` VALUES ('456', '0', 'cn.fjlcx.office.controller.web.CommonController', 'admin_login', '', '/admin/admin_login.shtml', '199', '1500859468462');
INSERT INTO `oa_actionlog` VALUES ('457', '1', 'cn.fjlcx.office.controller.web.CommonController', 'index', '', '/index.shtml', '1', '1500859470014');
INSERT INTO `oa_actionlog` VALUES ('458', '1', 'cn.fjlcx.office.controller.web.CommonController', 'home', '', '/home.shtml', '0', '1500859471134');
INSERT INTO `oa_actionlog` VALUES ('459', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'getNotePads', '', '/admin/notepad/getNotePads.shtml', '32', '1500859475831');
INSERT INTO `oa_actionlog` VALUES ('460', '1', 'cn.fjlcx.office.controller.web.NotePadController', 'toAddNotePad', '', '/admin/notepad/toAddNotePad.shtml', '0', '1500859478122');
INSERT INTO `oa_actionlog` VALUES ('461', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '33', '1500859484766');
INSERT INTO `oa_actionlog` VALUES ('462', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', '', '/admin/actionlog/getActionLog.shtml', '14', '1500859611372');
INSERT INTO `oa_actionlog` VALUES ('463', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=2	', '/admin/actionlog/getActionLog.shtml', '15', '1500859613737');
INSERT INTO `oa_actionlog` VALUES ('464', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=3	', '/admin/actionlog/getActionLog.shtml', '15', '1500859835495');
INSERT INTO `oa_actionlog` VALUES ('465', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=4	', '/admin/actionlog/getActionLog.shtml', '15', '1500859837117');
INSERT INTO `oa_actionlog` VALUES ('466', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=5	', '/admin/actionlog/getActionLog.shtml', '19', '1500859838035');
INSERT INTO `oa_actionlog` VALUES ('467', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=6	', '/admin/actionlog/getActionLog.shtml', '19', '1500859838700');
INSERT INTO `oa_actionlog` VALUES ('468', '1', 'cn.fjlcx.office.controller.web.ActionLogController', 'getActionLog', 'currentPage=1	', '/admin/actionlog/getActionLog.shtml', '16', '1500859840729');
INSERT INTO `oa_actionlog` VALUES ('469', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '1', '1500859902045');
INSERT INTO `oa_actionlog` VALUES ('470', '1', 'cn.fjlcx.office.controller.web.CommonController', 'login', '', '/', '0', '1500859902492');
INSERT INTO `oa_actionlog` VALUES ('471', '1', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '31', '1500860788288');
INSERT INTO `oa_actionlog` VALUES ('472', '1', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_checkJWT', 'ticket=49a5c36bbb7721c0e8ec725788bf59f1	', '/webservice/common/checkJWT.shtml', '0', '1500860938370');
INSERT INTO `oa_actionlog` VALUES ('473', '1', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_login', 'usLoginname=fjlcx	usPwd=fjlcx	', '/webservice/common/login.shtml', '0', '1500860952979');
INSERT INTO `oa_actionlog` VALUES ('474', '1', 'cn.fjlcx.office.controller.webservice.CommonInterface', 'common_checkJWT', 'ticket=49a5c36bbb7721c0e8ec725788bf59f1	', '/webservice/common/checkJWT.shtml', '4', '1500860957307');

-- ----------------------------
-- Table structure for oa_admin
-- ----------------------------
DROP TABLE IF EXISTS `oa_admin`;
CREATE TABLE `oa_admin` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_loginname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_type` int(11) NOT NULL,
  `ad_state` int(11) NOT NULL,
  `ad_lastlogindate` datetime DEFAULT NULL,
  `ad_lastloginip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_adddate` datetime NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_admin
-- ----------------------------
INSERT INTO `oa_admin` VALUES ('1', 'admin', '40f5888b67c748df7efba008e7c2f9d2', 'admin', '1', '1', '2017-06-29 19:27:23', '192.168.3.27', '2017-06-29 19:27:33');

-- ----------------------------
-- Table structure for oa_appversion
-- ----------------------------
DROP TABLE IF EXISTS `oa_appversion`;
CREATE TABLE `oa_appversion` (
  `av_id` int(11) NOT NULL AUTO_INCREMENT,
  `av_code` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `av_forceupdate` int(2) NOT NULL,
  `av_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `av_pushdate` bigint(20) NOT NULL,
  PRIMARY KEY (`av_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_appversion
-- ----------------------------
INSERT INTO `oa_appversion` VALUES ('1', '1.2.3', '1', 'http://www.baidu.com', '1499047735000');
INSERT INTO `oa_appversion` VALUES ('2', '1.2.4', '0', 'http://www.google.com', '1499047735000');

-- ----------------------------
-- Table structure for oa_menu
-- ----------------------------
DROP TABLE IF EXISTS `oa_menu`;
CREATE TABLE `oa_menu` (
  `mu_id` int(11) NOT NULL AUTO_INCREMENT,
  `mu_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mu_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_iconCls` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_checked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_pid` int(11) unsigned zerofill NOT NULL,
  `mu_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`mu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_menu
-- ----------------------------
INSERT INTO `oa_menu` VALUES ('1', '组织架构', 'open', 'icon-users', '', null, '00000000000', '1');
INSERT INTO `oa_menu` VALUES ('2', '系统管理', 'open', 'icon-wrench', '', null, '00000000000', '1');
INSERT INTO `oa_menu` VALUES ('3', '数据字典', 'open', 'icon-book', 'menu/GetMenuList', null, '00000000002', '2');
INSERT INTO `oa_menu` VALUES ('4', '系统参数', 'open', 'icon-cog', 'data-link', null, '00000000002', '1');
INSERT INTO `oa_menu` VALUES ('5', '菜单管理', 'open', 'icon-table', 'menu/list', null, '00000000002', '2');
INSERT INTO `oa_menu` VALUES ('32', '内部邮箱', 'open', 'icon-email', null, null, '00000000000', '1');
INSERT INTO `oa_menu` VALUES ('33', '信息发布', 'open', 'icon-report', null, null, '00000000000', '1');
INSERT INTO `oa_menu` VALUES ('34', '行政后勤', 'open', 'icon-telephone', null, null, '00000000000', '1');
INSERT INTO `oa_menu` VALUES ('35', '写邮件', 'open', 'icon-email-add', 'eamil/list', null, '00000000032', '1');
INSERT INTO `oa_menu` VALUES ('36', '考勤管理', 'open', 'icon-table-column', '1', null, '00000000034', '1');
INSERT INTO `oa_menu` VALUES ('37', '请假申请', 'open', 'icon-table-sort', '2', null, '00000000034', '1');
INSERT INTO `oa_menu` VALUES ('38', '收件箱', 'open', 'icon-email-magnify', '1', null, '00000000032', '1');
INSERT INTO `oa_menu` VALUES ('39', '发件箱', 'open', 'icon-email-go', '2', null, '00000000032', '1');
INSERT INTO `oa_menu` VALUES ('40', '草稿箱', 'open', 'icon-email-stop', '3', null, '00000000032', '1');
INSERT INTO `oa_menu` VALUES ('41', '垃圾箱', 'open', 'icon-email-delete', '4', null, '00000000032', '1');
INSERT INTO `oa_menu` VALUES ('42', '通知公告', 'open', 'icon-bell', '1', null, '00000000033', '1');
INSERT INTO `oa_menu` VALUES ('43', '规章制度', 'open', 'icon-book-open-mark', '2', null, '00000000041', '1');
INSERT INTO `oa_menu` VALUES ('44', '常用软件', 'open', 'icon-cd-magnify', '2', null, '00000000033', '1');
INSERT INTO `oa_menu` VALUES ('45', '权限中心', 'open', 'icon-world-key', '1', null, '00000000002', '1');
INSERT INTO `oa_menu` VALUES ('46', 'APP版本管理', 'open', '', '1', null, '00000000050', '3');
INSERT INTO `oa_menu` VALUES ('47', '系统操作日志', 'open', '', '1', null, '00000000002', '0');
INSERT INTO `oa_menu` VALUES ('48', '系统更新日志', 'open', '', '2', null, '00000000002', '1');
INSERT INTO `oa_menu` VALUES ('49', '机构管理', 'open', '', '1', null, '00000000001', '3');
INSERT INTO `oa_menu` VALUES ('50', '部门管理', 'open', '', '1', null, '00000000001', '3');
INSERT INTO `oa_menu` VALUES ('51', '用户管理', 'open', '', '1', null, '00000000001', '3');
INSERT INTO `oa_menu` VALUES ('52', '角色管理', 'open', '', '1', null, '00000000001', '4');

-- ----------------------------
-- Table structure for oa_notepad
-- ----------------------------
DROP TABLE IF EXISTS `oa_notepad`;
CREATE TABLE `oa_notepad` (
  `np_id` int(11) NOT NULL AUTO_INCREMENT,
  `np_title` longtext COLLATE utf8_unicode_ci,
  `np_content` longtext COLLATE utf8_unicode_ci,
  `np_adddate` bigint(20) NOT NULL,
  `np_updatedate` bigint(20) DEFAULT NULL,
  `np_state` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常\r\n1:置顶',
  PRIMARY KEY (`np_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_notepad
-- ----------------------------

-- ----------------------------
-- Table structure for oa_role
-- ----------------------------
DROP TABLE IF EXISTS `oa_role`;
CREATE TABLE `oa_role` (
  `rl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rl_code` varchar(255) NOT NULL,
  `rl_name` varchar(255) NOT NULL,
  PRIMARY KEY (`rl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role
-- ----------------------------
INSERT INTO `oa_role` VALUES ('0', 'ADMIN', '管理员');
INSERT INTO `oa_role` VALUES ('1', 'USER', '用户');

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_loginname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_role` int(11) NOT NULL,
  `us_head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `us_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_sex` int(11) NOT NULL COMMENT '0：男\r\n1：女',
  `us_phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `us_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `us_state` int(11) DEFAULT NULL COMMENT '0：正常\r\n1：禁用',
  `us_registdate` datetime DEFAULT NULL,
  `us_lastlogindate` datetime DEFAULT NULL,
  PRIMARY KEY (`us_id`),
  UNIQUE KEY `us_loginname` (`us_loginname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('23', 'admin', '038bdaf98f2037b31f1e75b5b4c9b26e', '0', 'string', 'admin', '0', '18950998802', '425189774@qq.com', 'string', '0', '2017-07-29 21:50:45', '2017-08-01 20:25:29');
INSERT INTO `oa_user` VALUES ('24', 'fjlcx', '038bdaf98f2037b31f1e75b5b4c9b26e', '1', '1', 'ling_cx', '0', '18950998802', 'ling_cx@qq.com', 'fuzhou', '0', '2017-07-30 12:34:07', '2017-08-01 20:25:33');
INSERT INTO `oa_user` VALUES ('27', 'fjsqf', '3c6bb4677a4bab8a852a86fcaa626515', '1', null, '苏秋芳', '1', '18094151492', '820492847@qq.com', '福建福州', '0', '2017-08-02 21:23:26', null);
INSERT INTO `oa_user` VALUES ('28', 'smlcx', '5168cce52eac6eab82ad8725bc10960c', '0', null, 'lcx', '0', '18950998802', '425189774@qq.com', '153', '0', '2017-08-05 13:11:14', null);
INSERT INTO `oa_user` VALUES ('29', 'fjsmlcx', 'c93c7b5326e45699c8e66195253bc3f1', '0', null, 'smlcx', '0', '18950998802', '425189774@qq.com', '4565', '0', '2017-08-05 13:42:51', null);
INSERT INTO `oa_user` VALUES ('30', 'Test', '1ddf348f293cfba95b513bcbd075ba1b', '0', null, '123', '0', '18950998802', '425189774@qq.com', '12', '0', '2017-08-05 13:58:32', null);
