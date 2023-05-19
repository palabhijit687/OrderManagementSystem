/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.31 : Database - assignmentdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assignmentdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `assignmentdb`;

/*Table structure for table `item_master` */

DROP TABLE IF EXISTS `item_master`;

CREATE TABLE `item_master` (
  `item_id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `item_master` */

insert  into `item_master`(`item_id`,`item_name`,`price`,`unit`) values 
(1,'item1',10.00,'10'),
(2,'item2',5.00,'1'),
(3,'item3',15.00,'3');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `total_amount` decimal(38,2) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK5fphaescq9p8sgfwhhxemdgi6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_master` */

insert  into `order_master`(`order_id`,`order_date`,`total_amount`,`user_id`) values 
(10,'2023-05-19 10:26:26',75.00,1),
(11,'2023-05-19 10:28:37',85.00,2),
(12,'2023-05-19 12:11:03',125.00,3),
(13,'2023-05-19 13:38:39',125.00,3),
(14,'2023-05-19 14:10:15',NULL,1);

/*Table structure for table `order_master_details` */

DROP TABLE IF EXISTS `order_master_details`;

CREATE TABLE `order_master_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` decimal(38,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKouqr736lk4fqyb0jy8p8xfbt8` (`item_id`),
  KEY `FK3pn12e0w0q0g9trrqdgpu6apx` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_master_details` */

insert  into `order_master_details`(`id`,`amount`,`quantity`,`item_id`,`order_id`) values 
(4,25.00,1,2,10),
(3,50.00,2,1,10),
(5,60.00,2,1,11),
(6,25.00,1,2,11),
(7,100.00,3,2,12),
(8,25.00,3,3,12),
(9,100.00,3,2,13),
(10,25.00,3,3,13),
(11,10.00,5,1,14),
(12,50.00,2,2,14);

/*Table structure for table `user_master` */

DROP TABLE IF EXISTS `user_master`;

CREATE TABLE `user_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_master` */

insert  into `user_master`(`id`,`email`,`name`,`password`,`phone_no`) values 
(1,'user1@gmail.com','user1','user1','9094356787'),
(2,'user2@gmail.com','user2','user2','9876545543'),
(3,'user3@gmail.com','user3','user3','8765675646');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
