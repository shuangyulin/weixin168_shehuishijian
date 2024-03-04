/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoshuqishehui
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoshuqishehui` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoshuqishehui`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gaoxiaoshuqishehui/upload/1642839841469.jpg'),(2,'picture2','http://localhost:8080/gaoxiaoshuqishehui/upload/1642839848123.jpg'),(3,'picture3','http://localhost:8080/gaoxiaoshuqishehui/upload/1642839856150.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-01-22 15:49:38'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-01-22 15:49:38'),(67,'huodongfabu_types','活动类型名称',1,'活动类型1',NULL,NULL,'2022-01-22 15:49:38'),(68,'huodongfabu_types','活动类型名称',2,'活动类型2',NULL,NULL,'2022-01-22 15:49:38'),(69,'youxiushiji_types','事迹类型名称',1,'事迹类型1',NULL,NULL,'2022-01-22 15:49:38'),(70,'youxiushiji_types','事迹类型名称',2,'事迹类型2',NULL,NULL,'2022-01-22 15:49:38'),(71,'juanzheng_types','物品类型名称',1,'物品类型1',NULL,NULL,'2022-01-22 15:49:38'),(72,'juanzheng_types','物品类型名称',2,'物品类型2',NULL,NULL,'2022-01-22 15:49:38'),(73,'huodongbaoming_yesno_types','审核',1,'未审核',NULL,NULL,'2022-01-22 15:49:38'),(74,'huodongbaoming_yesno_types','审核',2,'通过',NULL,NULL,'2022-01-22 15:49:38'),(75,'huodongbaoming_yesno_types','审核',3,'拒绝',NULL,NULL,'2022-01-22 15:49:38'),(76,'news_types','活动宣传类型名称',1,'活动宣传类型1',NULL,NULL,'2022-01-22 15:49:38'),(77,'news_types','活动宣传类型名称',2,'活动宣传类型2',NULL,NULL,'2022-01-22 15:49:38'),(78,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-01-22 15:49:38'),(79,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-01-22 15:49:38');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='心得交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xuesheng_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,1,'发布内容1',NULL,1,'2022-01-22 16:26:51','2022-01-22 16:26:57','2022-01-22 16:26:51'),(2,NULL,NULL,1,'1111',1,2,'2022-01-22 16:29:16',NULL,'2022-01-22 16:29:16'),(4,NULL,NULL,1,'333333',1,2,'2022-01-25 09:55:59',NULL,'2022-01-25 09:55:59'),(5,NULL,5,NULL,'我是评论内容1123123',1,2,'2022-01-25 10:37:32',NULL,'2022-01-25 10:37:32');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodongfabu_id` int(11) DEFAULT NULL COMMENT '活动',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `huodongbaoming_xingqu` varchar(200) DEFAULT NULL COMMENT '兴趣爱好',
  `huodongbaoming_yixiang` varchar(200) DEFAULT NULL COMMENT '意向岗位',
  `huodongbaoming_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`huodongfabu_id`,`xuesheng_id`,`huodongbaoming_xingqu`,`huodongbaoming_yixiang`,`huodongbaoming_yesno_types`,`create_time`) values (1,1,1,'兴趣爱好1','意向岗位1',2,'2022-01-22 16:08:47'),(3,2,5,'兴趣11111111','意向11111111',1,'2022-01-25 10:36:24');

/*Table structure for table `huodongfabu` */

DROP TABLE IF EXISTS `huodongfabu`;

CREATE TABLE `huodongfabu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodongfabu_name` varchar(200) DEFAULT NULL COMMENT '活动标题  Search111',
  `huodongfabu_types` int(11) DEFAULT NULL COMMENT '活动类型 Search111',
  `huodongfabu_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `huodongfabu_content` text COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='活动发布';

/*Data for the table `huodongfabu` */

insert  into `huodongfabu`(`id`,`huodongfabu_name`,`huodongfabu_types`,`huodongfabu_photo`,`huodongfabu_content`,`create_time`) values (1,'活动标题1',1,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642838785354.jpg','活动详情1','2022-01-22 16:06:31'),(2,'活动标题2',2,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642838800523.jpg','活动详情2','2022-01-22 16:06:49');

/*Table structure for table `juanzheng` */

DROP TABLE IF EXISTS `juanzheng`;

CREATE TABLE `juanzheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `juanzheng_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111',
  `juanzheng_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `juanzheng_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `juanzheng_content` text COMMENT '物品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='爱心捐物';

/*Data for the table `juanzheng` */

insert  into `juanzheng`(`id`,`juanzheng_name`,`juanzheng_types`,`juanzheng_photo`,`juanzheng_content`,`create_time`) values (1,'物品1',1,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839601060.jpg','物品详情1','2022-01-22 16:20:06'),(2,'物品2',2,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839613112.jpg','物品详情2','2022-01-22 16:20:19'),(3,'物品1312312312',NULL,'http://localhost:8080/gaoxiaoshuqishehui/upload/1643078236324.jpg','33333333333333333','2022-01-25 10:37:19');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '活动宣传标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '活动宣传类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '活动宣传图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动宣传时间',
  `news_content` text COMMENT '活动宣传详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='活动宣传';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'活动宣传1',1,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839672316.jpg','2022-01-22 16:21:16','<p><span style=\"color: rgb(96, 98, 102);\">活动宣传详情1</span></p>','2022-01-22 16:21:16'),(4,'活动宣传2',2,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839684360.jpg','2022-01-22 16:21:26','<p><span style=\"color: rgb(96, 98, 102);\">活动宣传详情2</span></p>','2022-01-22 16:21:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','o81wvleii3wd0i9yd1dw6tm7a20fc62i','2022-01-22 16:00:20','2022-01-25 11:59:06'),(2,1,'111','xuesheng','学生','8wdsxb12uqc8kwedakydxej1xwh70w0b','2022-01-22 17:11:37','2022-01-25 11:21:26'),(3,4,'333','xuesheng','学生','873y0f73aggkvmqpgp9p6fcuercfcgau','2022-01-25 09:21:24','2022-01-25 10:21:25'),(4,2,'222','xuesheng','学生','i071pv3x17rsle2zv8s598lnjaoc9sm0','2022-01-25 09:24:53','2022-01-25 10:31:41'),(5,5,'123','xuesheng','学生','pgwa0plhwyxipn9ijptw3zzigkv89nnc','2022-01-25 10:05:20','2022-01-25 12:02:17');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xuesheng_nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`sex_types`,`xuesheng_id_number`,`xuesheng_phone`,`xuesheng_nianji`,`xuesheng_photo`,`create_time`) values (1,'111','123456','学生1',1,'131114200011111111','13311144151','1年级','http://localhost:8080/gaoxiaoshuqishehui/upload/1642838623487.jpg','2022-01-22 16:01:19'),(2,'222','123456','学生2',2,'421331199911132111','13311224111','2年级','http://localhost:8080/gaoxiaoshuqishehui/upload/1642838614693.jpg','2022-01-22 16:03:35'),(5,'123','123456','学生123',1,'423112202211313211','13322133151','3年纪','http://localhost:8080/gaoxiaoshuqishehui/upload/1643078150858.jpg','2022-01-25 10:05:08');

/*Table structure for table `youxiushiji` */

DROP TABLE IF EXISTS `youxiushiji`;

CREATE TABLE `youxiushiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxiushiji_name` varchar(200) DEFAULT NULL COMMENT '标题',
  `youxiushiji_renwu` varchar(200) DEFAULT NULL COMMENT '相关人物',
  `youxiushiji_types` int(11) DEFAULT NULL COMMENT '事迹类型 Search111',
  `youxiushiji_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `youxiushiji_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1  photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优秀事迹栏目';

/*Data for the table `youxiushiji` */

insert  into `youxiushiji`(`id`,`youxiushiji_name`,`youxiushiji_renwu`,`youxiushiji_types`,`youxiushiji_photo`,`youxiushiji_content`,`create_time`) values (1,'标题1','相关人物1',1,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839769465.webp','详情1','2022-01-22 16:22:57'),(2,'标题2','相关人物2',2,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839791150.webp','详情2','2022-01-22 16:23:12'),(3,'标题3','相关人物3',1,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839806531.jpg','详情3','2022-01-22 16:23:27'),(4,'标题4','相关人物4',2,'http://localhost:8080/gaoxiaoshuqishehui/upload/1642839820312.webp','详情4','2022-01-22 16:23:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
