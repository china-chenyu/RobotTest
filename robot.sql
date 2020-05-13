/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : robot

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-04-09 21:34:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for matchs
-- ----------------------------
DROP TABLE IF EXISTS `matchs`;
CREATE TABLE `matchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matchs
-- ----------------------------
INSERT INTO `matchs` VALUES ('1', '创意赛', '人工智能与机器人创意设计赛', '2020-03-30 15:00', '2020-03-31 15:00', '天津大学');
INSERT INTO `matchs` VALUES ('2', '武术擂台赛', '无差别组', '2020-03-30 15:00', '2020-03-31 15:00', '天津大学');

-- ----------------------------
-- Table structure for matchsuser
-- ----------------------------
DROP TABLE IF EXISTS `matchsuser`;
CREATE TABLE `matchsuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `processionname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ntel` varchar(255) DEFAULT NULL,
  `personnel` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `ttel` varchar(255) DEFAULT NULL,
  `matchs` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matchsuser
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('5', '天津南开大学', '<ul><li style=\"text-align: justify; \"><b style=\"font-size: 1rem; text-align: left;\"><span style=\"text-align: center; font-size: 18pt; font-family: 方正小标宋简体;\"><table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\" style=\"font-family: &quot;Microsoft Yahei&quot;; font-size: 16px; font-weight: 400; text-align: start; display: inline !important;\"><tbody style=\"display: inline !important;\"><tr style=\"display: inline !important;\"><td style=\"display: inline !important;\"><table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"display: inline !important;\"><tbody style=\"display: inline !important;\"></tbody></table><table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\"><tbody><tr><td><table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td align=\"left\" class=\"content\" style=\"margin: 10px auto; max-width: 1400px; line-height: 28px; font-size: 14px; padding-top: 10px;\"><div class=\"TRS_Editor\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><h1 style=\"text-align: center; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">大赛通知</font></span></h1><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\"><br></font></span></p><h2 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">各赛区</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">、</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">各参赛高校</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">：</font></span></h2><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">201</span><span style=\"font-size: 14pt; font-family: 仿宋;\">9</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">年华北五省（市、自治区）大学生机器人大赛报名工作已经启动，大赛决赛时间为</font>201</span><span style=\"font-size: 14pt; font-family: 仿宋;\">9</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">年</font>11月</span><span style=\"font-size: 14pt; font-family: 仿宋;\">15</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">日</font>-1</span><span style=\"font-size: 14pt; font-family: 仿宋;\">7</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">日</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">请各赛区相关高校按照相关要求做好校级比赛、赛区初赛等的组织工作，并按时向大赛组委会提交参赛队伍报名信息，以确保大赛决赛的顺利进行。</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">一、参赛要求</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\"><br></font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">2019年大赛共设7大类、14个小项的比赛，各项目对参赛队伍的要求如下：</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">人工智能与机器人创意设计赛：指导教师</font>1～2名，队员2～3名（注：该项竞赛已经提前进行，参加优秀征文现场答辩的团队将单独通知）；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">机器人武术擂台赛（无差别组、仿人组）：指导教师</font>1～2名，队员1～3名；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">类人机器人竞技体育赛（田径、点球、投篮、高尔夫）：指导教师</font>1名，队员1～2名；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">水中机器人比赛（水球</font>2V2、管道检测）：指导教师1～2名，队员2～3名；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">小型组机器人足球赛：指导教师</font>1～2名，队员3～5名；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">机器人艺术赛（团体舞蹈、书法）：指导教师</font>1～2名，队员1～3名。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">机器人服务赛（家庭服务、物流服务）：指导教师</font>1～2名，队员1～3名。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 28pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">参赛对象为华北五省（市、自治区）各高校在读研究生、本科生以及专科生，年级不限，专业不限。每支参赛队伍中必须含有本科或专科学生队员。为提高团队合作意识和便于组织管理，大赛不接受个人直接报名。各比赛项目每个高校参加同一竞赛决赛小项的队伍数不超过</font>2个（创意组不超过3个队）。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">二、</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">报名要求</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">（</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">一</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">）</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">北京赛区报名要求</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">1.各</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">高校于</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\">10月</span><span style=\"font-size: 14pt; font-family: 仿宋;\">18日</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">（周</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">三</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">）</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">之</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">前完成</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">校级比赛</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">按照大赛方案相关要求遴选出参加决赛的队伍，填写报名表（附件</font>1）；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">2.</span><span style=\"font-size: 14pt; font-family: 仿宋;\">2019年比赛报名采取线下报名的方式进行。由学校教务处或校级学科竞赛管理部门对报名参加大赛决赛的队伍信息进行汇总、审核，统一向大赛组委会提交学校报名名单（报名表电子版发送到组委会指定邮箱</span><b><span style=\"font-size: 14pt; font-family: 仿宋;\">robot@bistu.edu.cn</span></b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，报名表纸质版加盖学校教务部门公章，扫描成电子版后一并发送到指定邮箱）；</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">3.各参赛学校须指定一名教师，统筹负责全校大学生机器人大赛的校赛组织、决赛报名以及后续联络等工作；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">4.各校提交报名信息时，统一提交一份完整的报名信息表，并请务必加盖教务处或校级赛事管理部门的公章，未加盖公章的报名信息表将不予认可。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">（</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">二</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">）</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">其他赛区报名要求</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">1.请各赛区在10月2</span><span style=\"font-size: 14pt; font-family: 仿宋;\">0</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">（周日）前完成赛区初赛</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">的组织工作</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">汇总整理比赛成绩并填写报名表（附件</font>2）</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">；</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">2.</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">各赛区相关负责老师在汇总本赛区参赛队伍名单时，务必要严格审核参赛队伍的相关资质，确保报名信息的准确性；</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">3.请各赛区大赛承办单位对各学校参赛队伍的相关数量、学生人数以及指导教师人数进行审核，提交参加决赛的队伍数和团队成员人数须符合大赛的相关要求。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">三、</font></span></b><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">注意事项</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">1.</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">大赛报名信息的提交邮箱为</font></span><b><span style=\"font-size: 14pt; font-family: 仿宋;\">robot@bistu.edu.cn</span></b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，为收集信息方便，大赛组委会建议全部报名信息通过邮箱来提交，不要通过其他渠道提交报名信息。各赛区提交到邮箱的报名表以学校为单位统一命名为</font>“×××赛区—华北五省机器人大赛报名表”，北京赛区各高校的报名表以学校为单位统一命名为“×××学校—华北五省机器人大赛报名表”；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">2.各赛区、各高校的报名信息均要求符合大赛报名队伍数和报名人数的相关要求。如出现不符合报名要求的情况，将直接进行删除处理，如报名队伍数超过报名要求的数量，则按照报名表上参赛队伍的先后顺序从后往前进行删除，直至符合要求为止；如果报名人数超过了相关要求，则从后往前进行删除，直至符合要求为止；</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">3.关于比赛项目的具体内容，请参考网站上公布的竞赛方案和竞赛规则，各参赛队伍可咨询相应项目的裁判组组长（裁判组组长信息随后公布，请关注大赛官网）</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">；</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">4.</span><span style=\"font-size: 14pt; font-family: 仿宋;\">11月15日（周五）全天进行大赛报到</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">，部分项目的比赛</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">有可能</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">提前到</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">报到当天</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">下午或晚上进行，请随时关注大赛网站相关通知</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">；</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">5.机器人大赛期间的食宿由参赛师生自行解决，相关费用自理。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">四、</font></span><b><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">联系方式</font></span></b></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">联系人：刘玉威</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;<font face=\"仿宋\">王丝丝</font></span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">电</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;&nbsp;</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">话：</font>010-82426830</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">邮</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;&nbsp;</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">箱：</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\">robot</span><span style=\"font-size: 14pt; font-family: 仿宋;\">@</span><span style=\"font-size: 14pt; font-family: 仿宋;\">bistu</span><span style=\"font-size: 14pt; font-family: 仿宋;\">.</span><span style=\"font-size: 14pt; font-family: 仿宋;\">edu.</span><span style=\"font-size: 14pt; font-family: 仿宋;\">c</span><span style=\"font-size: 14pt; font-family: 仿宋;\">n</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">竞赛官方网站：</font>http://robot.bistu.edu.cn，大赛有关信息都将通过该网站发布，请各高校及时上网了解有关情况。</span></p><p class=\"MsoNormal\" style=\"padding: 0px; margin-right: 24pt; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; line-height: 25pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"right\" style=\"padding: 0px; margin-right: 28pt; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; text-align: right; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">大赛组委会</font></span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">秘书处</font></span></p><p class=\"MsoNormal\" align=\"right\" style=\"padding: 0px; margin-right: 28pt; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; text-align: right; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">北京信息科技大学</font></span></p><p class=\"MsoNormal\" align=\"right\" style=\"padding: 0px; margin-right: 7pt; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; list-style: none; text-align: center; line-height: 25pt; text-indent: 21pt;\"><span style=\"font-size: 14pt; font-family: 仿宋;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 14pt; font-family: 仿宋;\">201</span><span style=\"font-size: 14pt; font-family: 仿宋;\">9</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">年</font>9月</span><span style=\"font-size: 14pt; font-family: 仿宋;\">11</span><span style=\"font-size: 14pt; font-family: 仿宋;\"><font face=\"仿宋\">日</font></span></p></span></div></td></tr><tr><td align=\"left\" style=\"line-height: 28px; font-size: 14px;\"><br><strong>附件：</strong><br><a href=\"https://robot.bistu.edu.cn/zxtz/201909/P020190911592198060251.xls\" target=\"_blank\" style=\"color: rgb(40, 40, 40);\">附件1：2019年华北五省（市、自治区）大学生机器人大赛报名表（北京赛区）.xls</a><br><a href=\"https://robot.bistu.edu.cn/zxtz/201909/P020190911592198061784.xls\" target=\"_blank\" style=\"color: rgb(40, 40, 40);\">附件2：2019年华北五省（市、自治区）大学生机器人大赛报名表（天津、河北、山西、内蒙古赛区）.xls</a><br><a href=\"https://robot.bistu.edu.cn/zxtz/201909/P020191017618739738941.pdf\" target=\"_blank\" style=\"color: rgb(40, 40, 40);\">关于组织报名2019年华北五省（市、自治区）大学生机器人大赛的通知.pdf</a></td></tr><tr></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></span></b><br></li><li><br></li></ul>');

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `processionname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'admin', 'admin', '天津大学', '111');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'admin', 'admin', '天津大学', '12345671');
INSERT INTO `teacher` VALUES ('2', 'aaa', 'aaa', '天津大学', '1111');
