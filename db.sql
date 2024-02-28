/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmp9x92
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmp9x92` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmp9x92`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-25 19:47:52',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-25 19:47:52',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-25 19:47:52',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-25 19:47:52',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-25 19:47:52',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-25 19:47:52',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'lvyoujingdian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmp9x92/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmp9x92/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmp9x92/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusslvyoujingdian` */

DROP TABLE IF EXISTS `discusslvyoujingdian`;

CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';

/*Data for the table `discusslvyoujingdian` */

insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-25 19:47:52',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-25 19:47:52',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-25 19:47:52',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-25 19:47:52',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-25 19:47:52',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-25 19:47:52',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jingdianleixing` */

DROP TABLE IF EXISTS `jingdianleixing`;

CREATE TABLE `jingdianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='景点类型';

/*Data for the table `jingdianleixing` */

insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (41,'2021-04-25 19:47:52','类型1');
insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (42,'2021-04-25 19:47:52','类型2');
insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (43,'2021-04-25 19:47:52','类型3');
insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (44,'2021-04-25 19:47:52','类型4');
insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (45,'2021-04-25 19:47:52','类型5');
insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (46,'2021-04-25 19:47:52','类型6');

/*Table structure for table `jingdianluxian` */

DROP TABLE IF EXISTS `jingdianluxian`;

CREATE TABLE `jingdianluxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `luxianmingcheng` varchar(200) DEFAULT NULL COMMENT '路线名称',
  `luxiantupian` varchar(200) DEFAULT NULL COMMENT '路线图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `tujingluduan` varchar(200) DEFAULT NULL COMMENT '途径路段',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianmingcheng` (`jingdianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景点路线';

/*Data for the table `jingdianluxian` */

insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (51,'2021-04-25 19:47:52','景点名称1','景点类型1','景点地址1','路线名称1','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian1.jpg','起点1','途径路段1','终点1','详情1');
insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (52,'2021-04-25 19:47:52','景点名称2','景点类型2','景点地址2','路线名称2','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian2.jpg','起点2','途径路段2','终点2','详情2');
insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (53,'2021-04-25 19:47:52','景点名称3','景点类型3','景点地址3','路线名称3','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian3.jpg','起点3','途径路段3','终点3','详情3');
insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (54,'2021-04-25 19:47:52','景点名称4','景点类型4','景点地址4','路线名称4','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian4.jpg','起点4','途径路段4','终点4','详情4');
insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (55,'2021-04-25 19:47:52','景点名称5','景点类型5','景点地址5','路线名称5','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian5.jpg','起点5','途径路段5','终点5','详情5');
insert  into `jingdianluxian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`luxianmingcheng`,`luxiantupian`,`qidian`,`tujingluduan`,`zhongdian`,`xiangqing`) values (56,'2021-04-25 19:47:52','景点名称6','景点类型6','景点地址6','路线名称6','http://localhost:8080/ssmp9x92/upload/jingdianluxian_luxiantupian6.jpg','起点6','途径路段6','终点6','详情6');

/*Table structure for table `lvyoujingdian` */

DROP TABLE IF EXISTS `lvyoujingdian`;

CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `yingyeshijian` datetime DEFAULT NULL COMMENT '营业时间',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianmingcheng` (`jingdianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='旅游景点';

/*Data for the table `lvyoujingdian` */

insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (31,'2021-04-25 19:47:52','景点名称1','景点类型1','景点地址1','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian1.jpg','2021-04-25 19:47:52','景点介绍1','注意事项1',1,99.9);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (32,'2021-04-25 19:47:52','景点名称2','景点类型2','景点地址2','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian2.jpg','2021-04-25 19:47:52','景点介绍2','注意事项2',2,99.9);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (33,'2021-04-25 19:47:52','景点名称3','景点类型3','景点地址3','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian3.jpg','2021-04-25 19:47:52','景点介绍3','注意事项3',3,99.9);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (34,'2021-04-25 19:47:52','景点名称4','景点类型4','景点地址4','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian4.jpg','2021-04-25 19:47:52','景点介绍4','注意事项4',4,99.9);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (35,'2021-04-25 19:47:52','景点名称5','景点类型5','景点地址5','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian5.jpg','2021-04-25 19:47:52','景点介绍5','注意事项5',5,99.9);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandizhi`,`jingdiantupian`,`yingyeshijian`,`jingdianjieshao`,`zhuyishixiang`,`clicknum`,`price`) values (36,'2021-04-25 19:47:52','景点名称6','景点类型6','景点地址6','http://localhost:8080/ssmp9x92/upload/lvyoujingdian_jingdiantupian6.jpg','2021-04-25 19:47:52','景点介绍6','注意事项6',6,99.9);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'lvyoujingdian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `yingyezhizhao` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (21,'2021-04-25 19:47:52','商家1','123456','商家姓名1','13823888881','773890001@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian1.jpg','地址1','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao1.jpg','是','',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (22,'2021-04-25 19:47:52','商家2','123456','商家姓名2','13823888882','773890002@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian2.jpg','地址2','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao2.jpg','是','',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (23,'2021-04-25 19:47:52','商家3','123456','商家姓名3','13823888883','773890003@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian3.jpg','地址3','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao3.jpg','是','',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (24,'2021-04-25 19:47:52','商家4','123456','商家姓名4','13823888884','773890004@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian4.jpg','地址4','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao4.jpg','是','',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (25,'2021-04-25 19:47:52','商家5','123456','商家姓名5','13823888885','773890005@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian5.jpg','地址5','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao5.jpg','是','',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`shoujihao`,`youxiang`,`zhaopian`,`dizhi`,`yingyezhizhao`,`sfsh`,`shhf`,`money`) values (26,'2021-04-25 19:47:52','商家6','123456','商家姓名6','13823888886','773890006@qq.com','http://localhost:8080/ssmp9x92/upload/shangjia_zhaopian6.jpg','地址6','http://localhost:8080/ssmp9x92/upload/shangjia_yingyezhizhao6.jpg','是','',100);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619351403786,'13852369852','yonghu','用户','c1lf46jq7xg73t52469hslpz8548fkpm','2021-04-25 19:50:19','2021-04-25 20:50:20');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 19:47:52');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619351403787 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (11,'2021-04-25 19:47:52','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian1.jpg','地址1',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (12,'2021-04-25 19:47:52','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian2.jpg','地址2',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (13,'2021-04-25 19:47:52','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian3.jpg','地址3',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (14,'2021-04-25 19:47:52','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian4.jpg','地址4',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (15,'2021-04-25 19:47:52','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian5.jpg','地址5',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (16,'2021-04-25 19:47:52','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmp9x92/upload/yonghu_zhaopian6.jpg','地址6',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (1619351403786,'2021-04-25 19:50:03','13852369852','1','浩哥','男','13852369852','1@qq.com',NULL,'北朝市',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
