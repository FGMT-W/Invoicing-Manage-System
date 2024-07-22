/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.5.40 : Database - jxc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jxc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jxc`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_account` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link_man` varchar(255) DEFAULT NULL,
  `link_tel` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`address`,`bank`,`bank_account`,`email`,`link_man`,`link_tel`,`customer_name`,`tel_phone`,`zip`) values 
(1,'江西省南昌市昌北经开区','南昌银行',137347874478935,'abc@123.com','王琦','123456789','XXX电子上午有限公司','0790-7378785789','3274837');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

/*Table structure for table `dept_emp` */

DROP TABLE IF EXISTS `dept_emp`;

CREATE TABLE `dept_emp` (
  `dept_dept_id` bigint(20) NOT NULL,
  `emp_employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`dept_dept_id`,`emp_employee_id`),
  UNIQUE KEY `UK_qq4f5qwsx62pxd4n9e36o2bo8` (`emp_employee_id`),
  CONSTRAINT `FKdoe5h9vyfn8rgkctpgf5187ek` FOREIGN KEY (`dept_dept_id`) REFERENCES `dept` (`dept_id`),
  CONSTRAINT `FKm56w74ah1p47kryw5g8owdcws` FOREIGN KEY (`emp_employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept_emp` */

/*Table structure for table `dept_man` */

DROP TABLE IF EXISTS `dept_man`;

CREATE TABLE `dept_man` (
  `dept_dept_id` bigint(20) NOT NULL,
  `man_managers_id` bigint(20) NOT NULL,
  PRIMARY KEY (`dept_dept_id`,`man_managers_id`),
  UNIQUE KEY `UK_kng1bmi31mltq7sp124vbrxw8` (`man_managers_id`),
  CONSTRAINT `FKcy4hbwca5nvv48pqmhmtyo9jg` FOREIGN KEY (`man_managers_id`) REFERENCES `managers` (`managers_id`),
  CONSTRAINT `FKrby2ojom9201o9raqmi0ohh9c` FOREIGN KEY (`dept_dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept_man` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_age` bigint(20) DEFAULT NULL,
  `employee_gender` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_password` varchar(255) DEFAULT NULL,
  `employee_phonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`employee_age`,`employee_gender`,`employee_name`,`employee_password`,`employee_phonenumber`) values 
(1,22,'男','test','e10adc3949ba59abbe56e057f20f883e','123456789');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `approve_id` varchar(255) DEFAULT NULL,
  `batch_id` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `space` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `UK_8nlyljvfo33wg4ei3nx2fujdr` (`goods_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`approve_id`,`batch_id`,`goods_name`,`price`,`space`,`supplier_id`,`unit`) values 
(1,'13243434564','65454213113','apple',6777,'上海',121323,'台'),
(2,'13243434564','65454213113','魅族',3333,'珠海',12332,'台'),
(5,'13243434564','65454213113','小米',3333,'北京',12332,'台'),
(6,'13243434564','65454213113','魅蓝',1222,'珠海',121323,'台'),
(7,'13243434564','65454213113','apple6s',6777,'上海',121323,'台'),
(8,'13243434564','65454213113','apple7',6777,'珠海',121323,'台'),
(9,'13243434564','65454213113','iphone5s',6777,'上海',121323,'台'),
(10,'13243434564','65454213113','魅蓝4',1222,'珠海',121323,'台'),
(11,'13243434564','65454213113','魅族6',3333,'珠海',121323,'台'),
(12,'13243434564','65454213113','iphone7p',6777,'北京',121323,'台'),
(13,'13243434564','65454213113','魅族6p',3333,'珠海',121323,'台'),
(14,'13243434564','65454213113','小米6s',3333,'珠海',121323,'台'),
(15,'13243434564','65454213113','opple',2333,'上海',12332,'台'),
(16,'13243434564','65454213113','vivo Xplay7',2333,'珠海',1001,'台'),
(17,'13243434564','65454213113','iphone7ps',6777,'上海',1001,'台'),
(18,'13243434564','65454213113','魅蓝note',1222,'珠海',1001,'台'),
(19,'13243434564','65454213113','iPhone4s',4567,'上海',1001,'台');

/*Table structure for table `managers` */

DROP TABLE IF EXISTS `managers`;

CREATE TABLE `managers` (
  `managers_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `managers_age` bigint(20) DEFAULT NULL,
  `managers_gender` varchar(255) DEFAULT NULL,
  `managers_name` varchar(255) DEFAULT NULL,
  `managers_password` varchar(255) DEFAULT NULL,
  `managers_phonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`managers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `managers` */

insert  into `managers`(`managers_id`,`managers_age`,`managers_gender`,`managers_name`,`managers_password`,`managers_phonenumber`) values 
(1,22,'男','张三','e10adc3949ba59abbe56e057f20f883e','123456789'),
(2,22,'男','admin','e10adc3949ba59abbe56e057f20f883e','123456789');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`date`,`msg`,`flag`) values 
(1,'2020-05-11 14:50:37','小米6s库存不足100，现在剩余33件！！！',NULL),
(2,'2020-05-11 16:36:48','小米6s库存不足100，现在剩余33件！！！','已查看'),
(3,'2020-05-11 16:44:45','小米6s库存不足100，现在剩余33件！！！','未查看'),
(4,'2020-05-12 11:35:50','小米6s库存不足100，现在剩余33件！！！','未查看'),
(5,'2020-05-12 13:31:44','小米6s库存不足100，现在剩余33件！！！','未查看'),
(6,'2020-05-12 13:39:21','小米6s库存不足100，现在剩余33件！！！','未查看'),
(7,'2020-05-12 14:04:56','小米6s库存不足100，现在剩余33件！！！','未查看'),
(8,'2020-07-02 17:50:58','小米6s库存不足100，现在剩余33件！！！','未查看'),
(9,'2020-07-02 21:54:19','小米6s库存不足100，现在剩余33件！！！','未查看'),
(10,'2020-07-03 17:20:30','小米6s库存不足100，现在剩余33件！！！','未查看');

/*Table structure for table `purchase_item` */

DROP TABLE IF EXISTS `purchase_item`;

CREATE TABLE `purchase_item` (
  `purchase_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_count` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`purchase_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_item` */

insert  into `purchase_item`(`purchase_item_id`,`purchase_count`,`name`,`purchase_price`,`purchase_order_id`,`supplier_id`) values 
(17,1000,'魅族',3333,15,1001),
(18,1000,'apple6s',3333,16,1001),
(19,12333,'小米',3333,17,1001),
(21,1000,'魅蓝4',1222,18,1001),
(22,1000,'魅蓝4',1222,18,1001),
(23,1000,'魅族6p',3333,19,1001),
(24,33333,'opple',2333,20,1001),
(25,12333,'vivo Xplay7',2333,21,1001),
(26,1000,'魅蓝note',1222,22,1001),
(27,1000,'魅族',2333,23,1001);

/*Table structure for table `purchase_order` */

DROP TABLE IF EXISTS `purchase_order`;

CREATE TABLE `purchase_order` (
  `purchase_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flag` varchar(255) DEFAULT NULL,
  `in_date` datetime DEFAULT NULL,
  `purchase_order_pay` varchar(255) DEFAULT NULL,
  `suppliers_id` bigint(20) DEFAULT NULL,
  `purchase_order_total` double DEFAULT NULL,
  PRIMARY KEY (`purchase_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_order` */

insert  into `purchase_order`(`purchase_order_id`,`flag`,`in_date`,`purchase_order_pay`,`suppliers_id`,`purchase_order_total`) values 
(17,'已入库','2020-05-03 17:39:18','现金',1001,41105889),
(18,'已入库','2020-05-04 09:57:03','现金',1001,3666000),
(19,'未入库','2020-05-05 18:24:23','现金',1001,3333000),
(21,'已入库','2020-05-12 13:29:11','银行',1001,28772889),
(22,'已入库','2020-05-12 13:36:14','网银',1001,1222000),
(23,'已入库','2020-05-12 13:54:32','支付宝',1001,2333000);

/*Table structure for table `return_item` */

DROP TABLE IF EXISTS `return_item`;

CREATE TABLE `return_item` (
  `return_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `return_item_count` bigint(20) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `return_item_price` double DEFAULT NULL,
  `return_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`return_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `return_item` */

insert  into `return_item`(`return_item_id`,`return_item_count`,`goods_name`,`return_item_price`,`return_order_id`) values 
(1,344,'魅族6',3333,1),
(2,1000,'apple',6777,2),
(3,1000,'魅族',3333,3),
(4,233,'魅族',3333,4),
(5,223,'小米',3333,5),
(6,223,'小米',3333,6),
(7,222323,'魅蓝',1222,6),
(8,222323,'魅蓝',1222,7),
(9,21111,'apple6s',6777,7),
(10,333,'apple7',6777,8),
(11,10000,'魅族',3333,10),
(12,12333,'iphone7p',6777,11),
(13,1000,'魅族',3333,13),
(14,345678,'魅族6p',3333,14),
(15,1000,'魅族',3333,15),
(16,33333,'opple',2333,17);

/*Table structure for table `return_order` */

DROP TABLE IF EXISTS `return_order`;

CREATE TABLE `return_order` (
  `return_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `return_order_out_date` datetime DEFAULT NULL,
  `return_order_pay` varchar(255) DEFAULT NULL,
  `suppliers_id` bigint(20) DEFAULT NULL,
  `return_order_total` double DEFAULT NULL,
  PRIMARY KEY (`return_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `return_order` */

insert  into `return_order`(`return_order_id`,`return_order_out_date`,`return_order_pay`,`suppliers_id`,`return_order_total`) values 
(1,'2020-05-03 16:51:27','现金',1001,1146552),
(2,'2020-05-03 16:51:42','现金',1001,6777000),
(3,'2020-05-03 16:54:17','现金',1001,3333000),
(4,'2020-05-03 16:57:42','现金',1001,776589),
(5,'2020-05-03 17:01:13','现金',1001,743259),
(6,'2020-05-03 17:03:06','现金',1001,272421965),
(7,'2020-05-03 17:25:45','现金',1001,414747953),
(8,'2020-05-03 17:29:58','现金',1001,2256741),
(9,'2020-05-03 17:30:05','现金',1001,30116988),
(10,'2020-05-03 17:30:25','现金',1001,33330000),
(11,'2020-05-03 17:30:28','现金',1001,83580741),
(12,'2020-05-03 17:30:42','现金',1001,5553990),
(13,'2020-05-03 17:31:01','现金',1001,3333000),
(14,'2020-05-03 17:33:26','现金',1001,1152144774),
(15,'2020-05-03 17:33:53','现金',1001,3333000),
(16,'2020-05-03 17:39:20','现金',1001,3333000),
(17,'2020-05-12 13:36:50','银行',1001,77765889);

/*Table structure for table `sale_item` */

DROP TABLE IF EXISTS `sale_item`;

CREATE TABLE `sale_item` (
  `sale_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_item_count` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `sale_item_name` varchar(255) DEFAULT NULL,
  `sale_item_price` double DEFAULT NULL,
  `sale_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sale_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sale_item` */

insert  into `sale_item`(`sale_item_id`,`sale_item_count`,`customer_id`,`sale_item_name`,`sale_item_price`,`sale_order_id`) values 
(2,1000,1001,'魅族',3333,2),
(3,20,1001,'魅族',1222,3),
(4,223,1001,'小米',2333,4);

/*Table structure for table `sale_order` */

DROP TABLE IF EXISTS `sale_order`;

CREATE TABLE `sale_order` (
  `sale_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `sale_order_pay` varchar(255) DEFAULT NULL,
  `sale_order_sale_date` datetime DEFAULT NULL,
  `sale_order_total` double DEFAULT NULL,
  PRIMARY KEY (`sale_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sale_order` */

insert  into `sale_order`(`sale_order_id`,`customer_id`,`flag`,`sale_order_pay`,`sale_order_sale_date`,`sale_order_total`) values 
(2,1001,'已发货','现金','2020-05-03 17:57:27',3333000),
(3,1001,'未发货','银行','2020-05-12 13:39:13',24440),
(4,1001,'已发货','现金','2020-05-12 13:57:43',520259);

/*Table structure for table `sale_return_item` */

DROP TABLE IF EXISTS `sale_return_item`;

CREATE TABLE `sale_return_item` (
  `sale_return_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_return_item_count` bigint(20) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `sale_return_item_price` double DEFAULT NULL,
  `sale_return_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sale_return_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sale_return_item` */

insert  into `sale_return_item`(`sale_return_item_id`,`sale_return_item_count`,`goods_name`,`sale_return_item_price`,`sale_return_order_id`) values 
(1,223,'魅族',3333,1);

/*Table structure for table `sale_return_order` */

DROP TABLE IF EXISTS `sale_return_order`;

CREATE TABLE `sale_return_order` (
  `sale_return_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `sale_return_order_pay` varchar(255) DEFAULT NULL,
  `sale_return_order_return_date` datetime DEFAULT NULL,
  `sale_return_order_total` double DEFAULT NULL,
  PRIMARY KEY (`sale_return_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sale_return_order` */

insert  into `sale_return_order`(`sale_return_order_id`,`customer_id`,`sale_return_order_pay`,`sale_return_order_return_date`,`sale_return_order_total`) values 
(1,1001,'现金','2020-05-03 17:25:17',743259);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stock_area` varchar(255) DEFAULT NULL,
  `stock_count` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

insert  into `stock`(`stock_id`,`stock_area`,`stock_count`,`goods_id`) values 
(1,'C2',499,1),
(8,'B2',2000,2),
(11,'C2',223,5),
(13,'B2',222300,6),
(14,NULL,21111,7),
(15,NULL,333,8),
(23,NULL,24666,12),
(24,NULL,691356,13),
(25,'C2',33,14),
(26,NULL,4000,10),
(27,NULL,24666,16),
(28,'B2',1200,17),
(29,NULL,1000,18),
(30,NULL,1000,18),
(31,'A1',1234,19);

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `suppliers_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_account` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link_man` varchar(255) DEFAULT NULL,
  `link_tel` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`suppliers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`suppliers_id`,`address`,`bank`,`bank_account`,`email`,`link_man`,`link_tel`,`supplier_name`,`tel_phone`,`zip`) values 
(1,'北京市八达岭','北京银行',38436472637487264,'123@abc.com','刘一','123456789','XXX电器有限公司','0898-5637133','467623'),
(2,'test1','13677778888',13677778888,'13677778888','test1','13677778888','test1','13677778888','10010');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
