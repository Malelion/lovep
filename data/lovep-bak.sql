/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.19 : Database - lovep
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lovep` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `lovep`;

/*Table structure for table `t_article_project` */

DROP TABLE IF EXISTS `t_article_project`;

CREATE TABLE `t_article_project` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `articleNo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `titile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `context` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `createTime` datetime NOT NULL COMMENT '数据插入时间',
  `modifyTime` datetime NOT NULL COMMENT '数据修改时间',
  `showTime` datetime NOT NULL COMMENT '数据展示时间',
  `author` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'melon' COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='小项目表';

/*Data for the table `t_article_project` */

insert  into `t_article_project`(`id`,`articleNo`,`titile`,`context`,`keywords`,`createTime`,`modifyTime`,`showTime`,`author`) values (1,'1','lua脚本打印统计日志','第一步阿萨德来房间爱上了飞机上撒的发几款是多久发拉双方就爱上了对方觉得是惊世毒 妃第一步阿萨德来房间爱上了飞机上撒的发几款是多久发拉双方就爱上了对方觉得是惊世毒妃 妃第一步阿萨德来房间爱上了飞机上撒的发几款是多久发拉双方就爱上了对方觉得是惊世毒妃 妃第一步阿萨德来房间爱上了飞机上撒的发几款是多久发拉双方就爱上了对方觉得是惊世毒妃 妃第一步阿萨德来房间爱上了飞机上撒的发几款是多久发拉双方就爱上了对方觉得是惊世毒妃 ','脚本,lua','2016-12-12 23:25:03','2016-12-12 23:25:03','2016-12-12 23:25:03','melon');

/*Table structure for table `t_article_technology` */

DROP TABLE IF EXISTS `t_article_technology`;

CREATE TABLE `t_article_technology` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `articleNo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `titile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `context` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `createTime` datetime NOT NULL COMMENT '数据插入时间',
  `modifyTime` datetime NOT NULL COMMENT '数据修改时间',
  `showTime` datetime NOT NULL COMMENT '数据展示时间',
  `author` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'melon' COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='技术表';

/*Data for the table `t_article_technology` */

/*Table structure for table `t_handle_logs` */

DROP TABLE IF EXISTS `t_handle_logs`;

CREATE TABLE `t_handle_logs` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `author` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'melon' COMMENT '作者名称',
  `tableName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表名',
  `orginalData` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '更改前原始数据',
  `newData` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '更新后的数据',
  `handleTime` datetime NOT NULL COMMENT '操作时间',
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作者IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='日志表';

/*Data for the table `t_handle_logs` */

/*Table structure for table `t_relation_article` */

DROP TABLE IF EXISTS `t_relation_article`;

CREATE TABLE `t_relation_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `typeNo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章类型编号',
  `projectNo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '项目编号',
  `techNo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '技术文章编号',
  `author` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'melon' COMMENT '作者',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='项目/技术关系表';

/*Data for the table `t_relation_article` */

/*Table structure for table `t_type_article` */

DROP TABLE IF EXISTS `t_type_article`;

CREATE TABLE `t_type_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `typeNo` bigint(32) NOT NULL COMMENT '文章类型编号',
  `typeName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章类型名称',
  `category` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tech' COMMENT '文章分类',
  `author` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'melon' COMMENT '作者',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='文章类型表';

/*Data for the table `t_type_article` */

insert  into `t_type_article`(`id`,`typeNo`,`typeName`,`category`,`author`,`createTime`,`modifyTime`) values (1,1,'java','tech','melon','2016-12-12 23:18:34','2016-12-12 23:18:50'),(2,2,'php','tech','melon','2016-12-12 23:18:11','2016-12-12 23:18:11'),(3,3,'lua','tech','melon','2016-12-12 23:21:23','2016-12-12 23:21:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
