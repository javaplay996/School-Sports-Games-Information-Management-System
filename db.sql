/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm76370
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm76370` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm76370`;

/*Table structure for table `bisaichengji` */

DROP TABLE IF EXISTS `bisaichengji`;

CREATE TABLE `bisaichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) NOT NULL COMMENT '比赛项目',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chengji` int(11) NOT NULL COMMENT '成绩',
  `pingyu` longtext COMMENT '评语',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='比赛成绩';

/*Data for the table `bisaichengji` */

insert  into `bisaichengji`(`id`,`addtime`,`bisaixiangmu`,`zhanghao`,`xingming`,`chengji`,`pingyu`,`riqi`) values (71,'2021-03-20 08:06:19','比赛项目1','账号1','姓名1',1,'评语1','2021-03-20'),(72,'2021-03-20 08:06:19','比赛项目2','账号2','姓名2',2,'评语2','2021-03-20'),(73,'2021-03-20 08:06:19','比赛项目3','账号3','姓名3',3,'评语3','2021-03-20'),(74,'2021-03-20 08:06:19','比赛项目4','账号4','姓名4',4,'评语4','2021-03-20'),(75,'2021-03-20 08:06:19','比赛项目5','账号5','姓名5',5,'评语5','2021-03-20'),(76,'2021-03-20 08:06:19','比赛项目6','账号6','姓名6',6,'评语6','2021-03-20');

/*Table structure for table `bisaixiangmu` */

DROP TABLE IF EXISTS `bisaixiangmu`;

CREATE TABLE `bisaixiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) NOT NULL COMMENT '比赛项目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='比赛项目';

/*Data for the table `bisaixiangmu` */

insert  into `bisaixiangmu`(`id`,`addtime`,`bisaixiangmu`) values (31,'2021-03-20 08:06:19','比赛项目1'),(32,'2021-03-20 08:06:19','比赛项目2'),(33,'2021-03-20 08:06:19','比赛项目3'),(34,'2021-03-20 08:06:19','比赛项目4'),(35,'2021-03-20 08:06:19','比赛项目5'),(36,'2021-03-20 08:06:19','比赛项目6');

/*Table structure for table `bisaixinxi` */

DROP TABLE IF EXISTS `bisaixinxi`;

CREATE TABLE `bisaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) NOT NULL COMMENT '比赛项目',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `bisairiqi` date NOT NULL COMMENT '比赛日期',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `cansairenshu` int(11) NOT NULL COMMENT '参赛人数',
  `bisaixiangqing` longtext COMMENT '比赛详情',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='比赛信息';

/*Data for the table `bisaixinxi` */

insert  into `bisaixinxi`(`id`,`addtime`,`bisaixiangmu`,`tupian`,`bisairiqi`,`bisaididian`,`cansairenshu`,`bisaixiangqing`,`zhuyishixiang`) values (41,'2021-03-20 08:06:19','比赛项目1','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian1.jpg','2021-03-20','比赛地点1',1,'比赛详情1','注意事项1'),(42,'2021-03-20 08:06:19','比赛项目2','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian2.jpg','2021-03-20','比赛地点2',2,'比赛详情2','注意事项2'),(43,'2021-03-20 08:06:19','比赛项目3','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian3.jpg','2021-03-20','比赛地点3',3,'比赛详情3','注意事项3'),(44,'2021-03-20 08:06:19','比赛项目4','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian4.jpg','2021-03-20','比赛地点4',4,'比赛详情4','注意事项4'),(45,'2021-03-20 08:06:19','比赛项目5','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian5.jpg','2021-03-20','比赛地点5',5,'比赛详情5','注意事项5'),(46,'2021-03-20 08:06:19','比赛项目6','http://localhost:8080/jspm76370/upload/bisaixinxi_tupian6.jpg','2021-03-20','比赛地点6',6,'比赛详情6','注意事项6');

/*Table structure for table `caipan` */

DROP TABLE IF EXISTS `caipan`;

CREATE TABLE `caipan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipanzhanghao` varchar(200) NOT NULL COMMENT '裁判账号',
  `caipanxingming` varchar(200) NOT NULL COMMENT '裁判姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipanzhanghao` (`caipanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='裁判';

/*Data for the table `caipan` */

insert  into `caipan`(`id`,`addtime`,`caipanzhanghao`,`caipanxingming`,`mima`,`xingbie`,`shenfenzheng`,`shouji`) values (21,'2021-03-20 08:06:19','1','1','1','男','440300199101010001','13823888881'),(22,'2021-03-20 08:06:19','裁判2','裁判姓名2','123456','男','440300199202020002','13823888882'),(23,'2021-03-20 08:06:19','裁判3','裁判姓名3','123456','男','440300199303030003','13823888883'),(24,'2021-03-20 08:06:19','裁判4','裁判姓名4','123456','男','440300199404040004','13823888884'),(25,'2021-03-20 08:06:19','裁判5','裁判姓名5','123456','男','440300199505050005','13823888885'),(26,'2021-03-20 08:06:19','裁判6','裁判姓名6','123456','男','440300199606060006','13823888886');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm76370/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm76370/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm76370/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbisaixinxi` */

DROP TABLE IF EXISTS `discussbisaixinxi`;

CREATE TABLE `discussbisaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='比赛信息评论表';

/*Data for the table `discussbisaixinxi` */

insert  into `discussbisaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-20 08:06:19',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-20 08:06:19',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-20 08:06:19',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-20 08:06:19',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-20 08:06:19',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-20 08:06:19',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fanguijilu` */

DROP TABLE IF EXISTS `fanguijilu`;

CREATE TABLE `fanguijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) NOT NULL COMMENT '比赛项目',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fanguicishu` varchar(200) NOT NULL COMMENT '犯规次数',
  `fanguineirong` longtext COMMENT '犯规内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `caipanzhanghao` varchar(200) DEFAULT NULL COMMENT '裁判账号',
  `caipanxingming` varchar(200) DEFAULT NULL COMMENT '裁判姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616198957711 DEFAULT CHARSET=utf8 COMMENT='犯规记录';

/*Data for the table `fanguijilu` */

insert  into `fanguijilu`(`id`,`addtime`,`bisaixiangmu`,`zhanghao`,`xingming`,`fanguicishu`,`fanguineirong`,`riqi`,`caipanzhanghao`,`caipanxingming`) values (81,'2021-03-20 08:06:19','比赛项目1','账号1','姓名1','犯规次数1','犯规内容1','2021-03-20','裁判账号1','裁判姓名1'),(82,'2021-03-20 08:06:19','比赛项目2','账号2','姓名2','犯规次数2','犯规内容2','2021-03-20','裁判账号2','裁判姓名2'),(83,'2021-03-20 08:06:19','比赛项目3','账号3','姓名3','犯规次数3','犯规内容3','2021-03-20','裁判账号3','裁判姓名3'),(84,'2021-03-20 08:06:19','比赛项目4','账号4','姓名4','犯规次数4','犯规内容4','2021-03-20','裁判账号4','裁判姓名4'),(85,'2021-03-20 08:06:19','比赛项目5','账号5','姓名5','犯规次数5','犯规内容5','2021-03-20','裁判账号5','裁判姓名5'),(86,'2021-03-20 08:06:19','比赛项目6','账号6','姓名6','犯规次数6','犯规内容6','2021-03-20','裁判账号6','裁判姓名6'),(1616198957710,'2021-03-20 08:09:16','比赛项目1','1','姓名1','2','怎么怎么样犯规','2021-03-01','1','王裁判');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-03-20 08:06:19','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-03-20 08:06:19','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-03-20 08:06:19','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-03-20 08:06:19','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-03-20 08:06:19','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-03-20 08:06:19','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) DEFAULT NULL COMMENT '比赛项目',
  `bisaishijian` date NOT NULL COMMENT '比赛时间',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `bisairenshu` int(11) DEFAULT NULL COMMENT '比赛人数',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`bisaixiangmu`,`bisaishijian`,`bisaididian`,`bisairenshu`,`tupian`,`zhuyishixiang`) values (51,'2021-03-20 08:06:19','比赛项目1','2021-03-20','比赛地点1',1,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian1.jpg','注意事项1'),(52,'2021-03-20 08:06:19','比赛项目2','2021-03-20','比赛地点2',2,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian2.jpg','注意事项2'),(53,'2021-03-20 08:06:19','比赛项目3','2021-03-20','比赛地点3',3,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian3.jpg','注意事项3'),(54,'2021-03-20 08:06:19','比赛项目4','2021-03-20','比赛地点4',4,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian4.jpg','注意事项4'),(55,'2021-03-20 08:06:19','比赛项目5','2021-03-20','比赛地点5',5,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian5.jpg','注意事项5'),(56,'2021-03-20 08:06:19','比赛项目6','2021-03-20','比赛地点6',6,'http://localhost:8080/jspm76370/upload/gonggaoxinxi_tupian6.jpg','注意事项6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-03-20 08:06:19',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-20 08:06:19',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-20 08:06:19',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-20 08:06:19',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-20 08:06:19',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-20 08:06:19',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-20 08:06:19','标题1','简介1','http://localhost:8080/jspm76370/upload/news_picture1.jpg','内容1'),(102,'2021-03-20 08:06:19','标题2','简介2','http://localhost:8080/jspm76370/upload/news_picture2.jpg','内容2'),(103,'2021-03-20 08:06:19','标题3','简介3','http://localhost:8080/jspm76370/upload/news_picture3.jpg','内容3'),(104,'2021-03-20 08:06:19','标题4','简介4','http://localhost:8080/jspm76370/upload/news_picture4.jpg','内容4'),(105,'2021-03-20 08:06:19','标题5','简介5','http://localhost:8080/jspm76370/upload/news_picture5.jpg','内容5'),(106,'2021-03-20 08:06:19','标题6','简介6','http://localhost:8080/jspm76370/upload/news_picture6.jpg','内容6');

/*Table structure for table `saishibaoming` */

DROP TABLE IF EXISTS `saishibaoming`;

CREATE TABLE `saishibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaixiangmu` varchar(200) NOT NULL COMMENT '比赛项目',
  `bisairiqi` varchar(200) NOT NULL COMMENT '比赛日期',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `baomingshijian` date NOT NULL COMMENT '报名时间',
  `baomingfangshi` varchar(200) DEFAULT NULL COMMENT '报名方式',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='赛事报名';

/*Data for the table `saishibaoming` */

insert  into `saishibaoming`(`id`,`addtime`,`bisaixiangmu`,`bisairiqi`,`bisaididian`,`baomingshijian`,`baomingfangshi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`) values (61,'2021-03-20 08:06:19','比赛项目1','比赛日期1','比赛地点1','2021-03-20','线上报名','账号1','姓名1','手机1','是','报名成功'),(62,'2021-03-20 08:06:19','比赛项目2','比赛日期2','比赛地点2','2021-03-20','线上报名','账号2','姓名2','手机2','是',''),(63,'2021-03-20 08:06:19','比赛项目3','比赛日期3','比赛地点3','2021-03-20','线上报名','账号3','姓名3','手机3','是',''),(64,'2021-03-20 08:06:19','比赛项目4','比赛日期4','比赛地点4','2021-03-20','线上报名','账号4','姓名4','手机4','是',''),(65,'2021-03-20 08:06:19','比赛项目5','比赛日期5','比赛地点5','2021-03-20','线上报名','账号5','姓名5','手机5','是',''),(66,'2021-03-20 08:06:19','比赛项目6','比赛日期6','比赛地点6','2021-03-20','线上报名','账号6','姓名6','手机6','是','');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','eu3eldxovvzts36l9qf4q76ycrc1y4bf','2021-03-20 08:06:46','2021-03-20 09:07:30'),(2,21,'1','caipan','裁判','3ic96cbbqigretoe879khbdmhiiwtw32','2021-03-20 08:07:47','2021-03-20 09:11:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 08:06:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shenfenzheng`,`shouji`,`touxiang`) values (11,'2021-03-20 08:06:19','1','1','姓名1','男','440300199101010001','13823888881','http://localhost:8080/jspm76370/upload/yonghu_touxiang1.jpg'),(12,'2021-03-20 08:06:19','用户2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/jspm76370/upload/yonghu_touxiang2.jpg'),(13,'2021-03-20 08:06:19','用户3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/jspm76370/upload/yonghu_touxiang3.jpg'),(14,'2021-03-20 08:06:19','用户4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/jspm76370/upload/yonghu_touxiang4.jpg'),(15,'2021-03-20 08:06:19','用户5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/jspm76370/upload/yonghu_touxiang5.jpg'),(16,'2021-03-20 08:06:19','用户6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/jspm76370/upload/yonghu_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
