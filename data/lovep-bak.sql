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

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` bigint(19) NOT NULL COMMENT '主键ID',
  `titile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `context` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `createTime` datetime NOT NULL COMMENT '数据插入时间',
  `modifyTime` datetime NOT NULL COMMENT '数据修改时间',
  `showTime` datetime NOT NULL COMMENT '数据展示时间',
  `author` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `article` */

/*Table structure for table `t_handle_logs` */

DROP TABLE IF EXISTS `t_handle_logs`;

CREATE TABLE `t_handle_logs` (
  `id` bigint(19) NOT NULL COMMENT '主键编号',
  `author` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者名称',
  `tableName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表名',
  `orginalData` text COLLATE utf8mb4_unicode_ci COMMENT '更改前原始数据',
  `newData` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '更新后的数据',
  `handleTime` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `t_handle_logs` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
