/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - trust_based
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`trust_based` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trust_based`;

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `username` text,
  `task` text,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history` */

insert  into `history`(`username`,`task`,`date`) values ('venkat','Search','2021-07-14 11:18:31'),('venkat','Search','2021-07-14 11:18:57'),('venkat','Search','2021-07-14 11:19:31'),('venkat','Search','2021-07-14 11:19:39'),('venkat','Search','2021-07-14 11:23:13'),('venkat','Search','2021-07-14 11:25:19'),('venkat','Search','2021-07-14 11:40:29'),('venkat','Search','2021-07-14 11:42:33');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL auto_increment,
  `sendfrom` text,
  `sendfrom_id` text,
  `sendto` text,
  `sendto_id` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`sendfrom`,`sendfrom_id`,`sendto`,`sendto_id`,`status`) values (1,'kishan','1','abc','3','waiting'),(2,'abc','3','venkat','2','Accepted');

/*Table structure for table `share` */

DROP TABLE IF EXISTS `share`;

CREATE TABLE `share` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `uid` text,
  `videoname` text,
  `vid` text,
  `fid` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `share` */

insert  into `share`(`id`,`username`,`uid`,`videoname`,`vid`,`fid`) values (2,'venkat','2','ChillerParty.mp4','1','3');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`mobile`,`address`,`username`,`password`,`status`) values (1,'kishan 123','kishan@gmail.com','01234567890','hyd','kishan','123','Activated'),(2,'venkat','venky@gmail.com','01234567890','hyd','venkat','123','Activated'),(3,'abc','abc@gmail.com','1234567890','hyd','abc','123','Activated');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `dt` text,
  `rank` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `video` */

insert  into `video`(`id`,`fname`,`dt`,`rank`) values (1,'ChillerParty.mp4','14/07/2021   09:33:56','6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
