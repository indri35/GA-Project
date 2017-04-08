-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: ga
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aplikasi`
--

DROP TABLE IF EXISTS `aplikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplikasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `platform` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) DEFAULT NULL,
  `package` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi`
--

LOCK TABLES `aplikasi` WRITE;
/*!40000 ALTER TABLE `aplikasi` DISABLE KEYS */;
INSERT INTO `aplikasi` VALUES (1,'2016-11-22 17:00:00','2016-11-22 20:31:52','Makan Bareng Dua','drikdoank@gmail.com','Life style','tes.jpg','Mobile Apps','264d277baad16c73231065bcdd020c01',0,''),(2,'2016-11-22 17:00:00','2016-12-26 23:27:26','Ngaji','indriyani.cs49@gmail.com','Book','/upload/images/bunga.jpg','Web  Apps','264d277baad16c73231065bcdd020c02',1,'com.package.didok'),(3,'2016-11-22 17:00:00','2017-03-28 21:06:46','Gudang App','drikdoank@gmail.com','Games','/upload/images/logo.png','Mobile Apps','264d277baad16c73231065bcdd020c03',1,'com.gudangapp.analyticssample'),(4,'2016-11-22 17:00:00','2016-11-23 02:32:58','Karoke','drikdoank@gmail.com','Music','\"\"','Mobile Apps','264d277baad16c73231065bcdd020c05',1,''),(5,'2016-11-22 20:41:25','2016-11-22 20:41:25','Dorong Kereta','drikdoank@gmail.com','Games','bunga.jpg','Mobile Apps','264d277baad16c73231065bcdd020c04',1,''),(6,'2016-12-22 03:09:48','2016-12-26 23:29:12','app','indriyani.cs49@gmail.com','Food','/upload/images/pp.jpg','Mobile Apps','264d277baad16c73231065bcdd020c00',1,'com.package.Food');
/*!40000 ALTER TABLE `aplikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `count_connectedby_day`
--

DROP TABLE IF EXISTS `count_connectedby_day`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_day` (
 `day` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_connectedby_day_user`
--

DROP TABLE IF EXISTS `count_connectedby_day_user`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_day_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_day_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_connectedby_month`
--

DROP TABLE IF EXISTS `count_connectedby_month`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_month` (
 `month` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_connectedby_month_user`
--

DROP TABLE IF EXISTS `count_connectedby_month_user`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_month_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_month_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_connectedby_year`
--

DROP TABLE IF EXISTS `count_connectedby_year`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_year` (
 `year` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_connectedby_year_user`
--

DROP TABLE IF EXISTS `count_connectedby_year_user`;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_year_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_connectedby_year_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `wifi_count` tinyint NOT NULL,
  `cellular_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_dashboard`
--

DROP TABLE IF EXISTS `count_dashboard`;
/*!50001 DROP VIEW IF EXISTS `count_dashboard`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_dashboard` (
 `count_activity` tinyint NOT NULL,
  `count_click` tinyint NOT NULL,
  `count_view` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_dashboard_user`
--

DROP TABLE IF EXISTS `count_dashboard_user`;
/*!50001 DROP VIEW IF EXISTS `count_dashboard_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_dashboard_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `count_activity` tinyint NOT NULL,
  `count_click` tinyint NOT NULL,
  `count_view` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `count_install`
--

DROP TABLE IF EXISTS `count_install`;
/*!50001 DROP VIEW IF EXISTS `count_install`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `count_install` (
 `total_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `iklan`
--

DROP TABLE IF EXISTS `iklan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iklan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `hour_start` time DEFAULT NULL,
  `hour_end` time DEFAULT NULL,
  `day_start` date DEFAULT NULL,
  `day_end` date DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `url` text,
  `retention` int(11) DEFAULT '0',
  `opne` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iklan`
--

LOCK TABLES `iklan` WRITE;
/*!40000 ALTER TABLE `iklan` DISABLE KEYS */;
INSERT INTO `iklan` VALUES (1,'Sabun Mandi Lifebouy','Sabun Mandi Lifebouy Cair',NULL,'21:21:00','23:23:00','2017-02-01','2017-02-16','/upload/images/life.png','drikdoank@gmail.com',1,'2017-04-08','http://www.lifebuoy.com/Images/3557/3557-1105376-product-total_10-hand_wash.png',63,NULL,3),(2,'Sampho Pantene ','Sampho Pantene Anti Ketombe','2017-02-13 16:45:41','11:02:00','21:12:00','2012-12-21','2017-02-21','/upload/images/sampho.jpg','drikdoank@gmail.com',1,'2017-04-08','http://merkterbaik.com/wp-content/uploads/2016/06/Pantene-Hair-Fall-Control-Shampoo.jpg',63,NULL,3),(3,'Pepsodent','Pepsodent Double Clean','2017-04-05 11:29:54','12:21:00','00:01:00','2017-04-01','2017-04-30','/upload/images/$2y$10$0wkWMsr6DBPL5Jbz90lViO07hyHkesqdyW4.mt8RjYH8zPi.H8KRm','drikdoank@gmail.com',1,'2017-04-08','http://image.elevenia.co.id/g/9/1/9/4/9/2/5919492_B.jpg',65,NULL,5);
/*!40000 ALTER TABLE `iklan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `map_country`
--

DROP TABLE IF EXISTS `map_country`;
/*!50001 DROP VIEW IF EXISTS `map_country`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_country` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `count_country` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `map_country_admin`
--

DROP TABLE IF EXISTS `map_country_admin`;
/*!50001 DROP VIEW IF EXISTS `map_country_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_country_admin` (
 `year` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `count_country` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `map_region`
--

DROP TABLE IF EXISTS `map_region`;
/*!50001 DROP VIEW IF EXISTS `map_region`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_region` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `regional` tinyint NOT NULL,
  `count_region` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `map_region_admin`
--

DROP TABLE IF EXISTS `map_region_admin`;
/*!50001 DROP VIEW IF EXISTS `map_region_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_region_admin` (
 `year` tinyint NOT NULL,
  `regional` tinyint NOT NULL,
  `count_region` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `map_state`
--

DROP TABLE IF EXISTS `map_state`;
/*!50001 DROP VIEW IF EXISTS `map_state`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_state` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `regional` tinyint NOT NULL,
  `count_state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `map_state_admin`
--

DROP TABLE IF EXISTS `map_state_admin`;
/*!50001 DROP VIEW IF EXISTS `map_state_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_state_admin` (
 `year` tinyint NOT NULL,
  `regional` tinyint NOT NULL,
  `count_state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `master_data`
--

DROP TABLE IF EXISTS `master_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(250) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL,
  `click` varchar(200) NOT NULL,
  `view` varchar(200) NOT NULL,
  `type_device` varchar(200) NOT NULL,
  `language` varchar(150) NOT NULL,
  `state` varchar(200) NOT NULL,
  `regional` varchar(200) NOT NULL,
  `loc` varchar(200) NOT NULL,
  `user` varchar(100) NOT NULL,
  `connected_by` varchar(128) NOT NULL,
  `id_aplikasi` int(10) NOT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `os` varchar(200) DEFAULT NULL,
  `hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_data`
--

LOCK TABLES `master_data` WRITE;
/*!40000 ALTER TABLE `master_data` DISABLE KEYS */;
INSERT INTO `master_data` VALUES (1,'2132411232123213','103.10.105.60','2016-08-31 17:00:00','2016-09-26','login','welcome','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','drikdoank@gmail.com','wifi',3,'Telkomsel','Android',''),(2,'2314321325132','103.10.105.60','2016-09-01 17:00:00','2016-09-26','save','registration','samsung','ID','Sumatera Barat','Medan','-6.5944,106.7892','indriyani.cs49@gmail.com','wifi',2,'Telkomsel','Android',''),(3,'2132411232123211','103.10.105.60','2016-09-02 17:00:00','2016-09-26','login','welcome','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','drikdoank@gmail.com','wifi',1,'Telkomsel','Android',''),(4,'2314321325132','103.10.105.60','2016-09-04 17:00:00','2016-09-26','save','registration','samsung','ID','Kalimantan Barat','Balikpapan','-6.5944,106.7892','indriyani.cs49@gmail.com','wifi',2,'Telkomsel','Android',''),(5,'2314321325133','103.10.105.60','2016-08-31 17:00:00','2016-09-26','close','registration','apple','ID','Sumatera Barat','Medan','-6.5944,106.7892','drikdoank@gmail.com','wifi',1,'Telkomsel','Android',''),(6,'2314321325134','103.10.105.60','2016-08-31 17:00:00','2016-09-26','delete','shopping','apple','ID','Sumatera Barat','Medan','-6.5944,106.7892','drikdoank@gmail.com','cellular',3,'Telkomsel','Android',''),(7,'2314321325135','103.10.105.60','2016-09-01 17:00:00','2016-09-27','login','welcome','apple','ID','Sumatera Barat','Medan','-6.5944,106.7892','drikdoank@gmail.com','cellular',1,'Telkomsel','Android',''),(8,'2314321325136','103.10.105.60','2016-09-02 17:00:00','2016-09-26','save','shopping','apple','ID','Sumatera Utara','Padang','-6.5944,106.7892','indriyani.cs49@gmail.com','cellular',2,'Telkomsel','Android',''),(9,'4356243624354236','103.10.105.60','2016-09-03 17:00:00','2016-09-27','save','order','apple','ID','Jawa Barat','Bogor','-6.5944,106.7892','drikdoank@gmail.com','cellular',1,'Telkomsel','Android',''),(10,'123232323','103.10.105.60','2016-11-21 17:00:00','2016-11-22','save','registration','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','drikdoank@gmail.com','wifi',4,'Telkomsel','Android',''),(11,'123232323','103.10.105.60','2016-11-21 17:00:00','2016-11-22','save','registration','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','indriyani.cs49@gmail.com','cellular',2,'Telkomsel','Android',''),(12,'1232323111','103.10.105.60','2016-11-21 17:00:00','2016-11-22','save','registration','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','drikdoank@gmail.com','cellular',1,'Telkomsel','Android',''),(13,'1232323111','103.10.105.60','2017-01-07 17:16:35','2016-11-22','save','registration','samsung','ID','Jawa Barat','Bogor','-6.5944,106.7892','indriyani.cs49@gmail.com','cellular',6,'Telkomsel','Android',''),(14,'1232323111','103.10.105.60','2016-11-21 17:00:00','2016-11-22','save','registration','samsung','ID','Jawa barat','Bogor','-6.5944,106.7892','indriyani.cs49@gmail.com','cellular',2,'Telkomsel','Android',''),(15,'1232323111','118.136.157.189','2016-11-24 17:00:00','2016-11-25','save','registration','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','',1,'Telkomsel','Android',''),(16,'1232323111','118.136.157.189','2016-11-24 17:00:00','2016-11-25','save','registration','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','',1,'Telkomsel','Android',''),(17,'1232323111','103.10.107.13','2017-03-31 18:57:53','2017-04-01','Checkout','Pembayaran','Samsung J','ID','Jawa Barat','Cikampak','-6.5583,106.6933','indriyani.cs49@gmail.com','wifi',2,'Telkomsel','Android','5defbeedc8a9183e134632d8dbee9dad'),(18,'355010060188489','103.10.66.16','2017-03-31 20:29:59','2017-04-01','start','.MainActivity','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'3','android','0fd058d7383d9b602111acd1a97a1782'),(19,'355010060188489','103.10.66.16','2017-03-31 20:30:47','2017-04-01','start','.MainActivity','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'3','android','4f8d58904d965f516e6da4f740707838'),(20,'000000000000000','103.10.107.11','2017-04-03 22:58:16','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','760472c4cb95e580e7bfa22d9eb65462'),(21,'000000000000000','103.10.107.11','2017-04-03 23:05:53','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','daf4afa6713410996f84812ad265d297'),(22,'000000000000000','103.10.107.11','2017-04-03 23:09:00','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','525822a391108ee48a60dd3e8c9067d5'),(23,'000000000000000','103.10.107.11','2017-04-03 23:12:44','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','2f06eff679cf0ccccb5e51df08f0e938'),(24,'000000000000000','103.10.107.11','2017-04-03 23:14:38','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','76108764ba31957c6efc45aa8beb0761'),(25,'000000000000000','103.10.107.11','2017-04-03 23:20:50','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','eb8ec004a9d7cf2d36f54327d709a35e'),(26,'000000000000000','103.10.107.11','2017-04-03 23:24:30','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','0a3b78124c3565fa67a01fedf691f076'),(27,'355010060188489','103.10.107.11','2017-04-04 00:05:33','2017-04-04','start','.MainActivity','samsung','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'3','android','dcc99d17f9253f7d7f07bad7b3822ac9'),(28,'000000000000000','103.10.107.11','2017-04-04 00:08:29','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','9594f454a7cf7da9a4917c7c0a53368e'),(29,'000000000000000','103.10.107.11','2017-04-04 00:10:40','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','d27166abbd32f3cac59bf0cc86e816b7'),(30,'000000000000000','103.10.107.11','2017-04-04 00:21:31','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','2ff552fd22f7f76725cd0fdba3786071'),(31,'000000000000000','103.10.107.11','2017-04-04 00:23:28','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','9126645284c5e627035821743aebdd9e'),(32,'000000000000000','103.10.107.11','2017-04-04 00:24:56','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','c6de8c5e25b2956d4c58b7cf1f70f88f'),(33,'000000000000000','103.10.107.11','2017-04-04 00:27:18','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','34c73fa40acd4b838185f6513335e4a0'),(34,'000000000000000','103.10.107.11','2017-04-04 00:37:35','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','ee93d0134e80f350d989e00a1de257d6'),(35,'000000000000000','103.10.107.11','2017-04-04 00:39:37','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','3a43a78396e6f298c653d9a59ebe91c5'),(36,'000000000000000','103.10.107.11','2017-04-04 00:40:47','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','4b0447f46d81df2f83f0cc88a553e84e'),(37,'000000000000000','103.10.107.11','2017-04-04 00:42:34','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','ee7f8058f5edb80fe07becf6cb689ab9'),(38,'000000000000000','103.10.107.11','2017-04-04 00:45:45','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','847cb576a265ba48f0dd087bddbfb301'),(39,'000000000000000','103.10.107.11','2017-04-04 00:49:11','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','2f1107ccea7e8dd2a9286da1735ccab8'),(40,'000000000000000','103.10.107.11','2017-04-04 00:51:13','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','33969bcb375ae81be5afc4b3178b8078'),(41,'000000000000000','103.10.107.11','2017-04-04 00:52:52','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','6e1ae661b416aff285f9c6904ebdcd89'),(42,'000000000000000','103.10.107.11','2017-04-04 00:53:51','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','9e9c6af1f4e14fa837b57859cf91f04b'),(43,'000000000000000','103.10.107.11','2017-04-04 00:54:11','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','fcead42542cc16a137fb54445724e70c'),(44,'000000000000000','103.10.107.11','2017-04-04 00:56:30','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','c1b67685ca945ca6851186ee877daee6'),(45,'000000000000000','103.10.107.11','2017-04-04 01:02:46','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','749ee167625fba5790cc674bf44b80f0'),(46,'000000000000000','103.10.107.11','2017-04-04 01:04:50','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','e298a8808af860a28be127359cb06956'),(47,'000000000000000','103.10.107.11','2017-04-04 01:05:24','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','970a2aad86d2525983656efa51723d22'),(48,'000000000000000','103.10.107.11','2017-04-04 01:06:47','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','e309daa45e9c57fcda3bd8327b5842f1'),(49,'000000000000000','103.10.107.11','2017-04-04 01:08:23','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','b5b46e03593acad355d3e3d6881a5c3a'),(50,'000000000000000','103.10.107.11','2017-04-04 01:09:30','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','215f5cd5dad0ed120dc7a30353ebe849'),(51,'000000000000000','103.10.107.11','2017-04-04 01:29:44','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','9d8b37d14cae04ac59791821260f3f3f'),(52,'000000000000000','103.10.107.11','2017-04-04 01:30:30','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','7981d85ad76d126826441f152448d791'),(53,'000000000000000','103.10.107.11','2017-04-04 01:33:42','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','53ea15f9fb29ad658be831acd839a751'),(54,'000000000000000','103.10.107.11','2017-04-04 01:56:44','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','8e8b6d9939563f5af6e6d770d024da55'),(55,'000000000000000','103.10.107.11','2017-04-04 01:57:59','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','ad111bd183361c77f72c3a32e036ed5d'),(56,'000000000000000','103.10.107.11','2017-04-04 01:58:55','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','0266a3ec46ac80f6405820919ae769ac'),(57,'000000000000000','103.10.107.11','2017-04-04 02:17:44','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','f71d04d227768971d073978366225e77'),(58,'000000000000000','103.10.107.11','2017-04-04 02:20:25','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','29d4d1cb297f9e488ab8858169edf338'),(59,'000000000000000','103.10.107.11','2017-04-04 02:22:45','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','1bb11203cd7fa0e6dab18319fa79d134'),(60,'000000000000000','103.10.107.11','2017-04-04 02:25:43','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','3c258bdbb552c11f62340cb6087876f3'),(61,'000000000000000','103.10.107.11','2017-04-04 02:27:11','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','df75b154dff1618540a069726758ed0c'),(62,'000000000000000','103.10.107.11','2017-04-04 02:29:32','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','4bf096c7ec86ec42595ce7a52a06a2cf'),(63,'000000000000000','103.10.107.11','2017-04-04 02:48:38','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','18dcbe067162fa2b3a9e6dfca43ea1b6'),(64,'000000000000000','103.10.107.11','2017-04-04 02:51:20','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','e248cb1251f95f11e10a57a18ca35b80'),(65,'000000000000000','103.10.107.11','2017-04-04 03:47:51','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','6cda74d396e93230de60a686c8f3b22e'),(66,'000000000000000','103.10.107.11','2017-04-04 03:48:06','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','abbc05f55774984963e4f13c4816de5b'),(67,'000000000000000','103.10.107.11','2017-04-04 03:51:35','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','4196ec3df0f81d2db538be5ace3c58de'),(68,'000000000000000','103.10.107.11','2017-04-04 04:01:49','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','e40aa8cb8d34eecde0ee96ca872b2562'),(69,'000000000000000','103.10.107.11','2017-04-04 04:10:59','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','c0e419af9de94d43554fd43be75d1c42'),(70,'000000000000000','103.10.107.11','2017-04-04 04:13:34','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','bcf32c92c4eba861e0e58322ecd4ef18'),(71,'000000000000000','103.10.107.11','2017-04-04 04:14:53','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','0990858514897f3f0a3babc6760fd913'),(72,'000000000000000','103.10.107.11','2017-04-04 04:17:24','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','c3aad914cbd075579131304cc9cf0f73'),(73,'000000000000000','103.10.107.11','2017-04-04 04:25:52','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','fec154a583410a01fe9025475bf4ed0b'),(74,'000000000000000','103.10.107.11','2017-04-04 04:27:09','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','efe0c8084f7a124712c240aaf615f330'),(75,'000000000000000','103.10.107.11','2017-04-04 04:40:16','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','578a37984da1b5231bc0bd26a6e0765a'),(76,'000000000000000','103.10.107.11','2017-04-04 04:41:49','2017-04-04','start','.MainActivity','Android','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'Android','android','ca253db1c4106982bccd45826f694da4'),(77,'355010060188489','103.10.107.11','2017-04-04 04:59:54','2017-04-04','start','.MainActivity','samsung','ID','Jawa Barat','Cikampak','-6.5583,106.6933','drikdoank@gmail.com','wifi',3,'3','android','a06d1362b0e319da3bcc0d2e5d1ef93f'),(78,'000000000000000','121.58.186.17','2017-04-05 02:43:01','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','b38b42a81c87c30eb443105f8c106139'),(79,'000000000000000','121.58.186.17','2017-04-05 02:43:54','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','d5e9b87420a3b22f521f9f4a633a422e'),(80,'000000000000000','121.58.186.17','2017-04-05 03:05:00','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','0c3a901bc3e052363261d7f17a9081f3'),(81,'000000000000000','121.58.186.17','2017-04-05 03:07:33','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','213d63bbc767e8de56e7d453e5a560c9'),(82,'000000000000000','121.58.186.17','2017-04-05 03:08:27','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','c45a460fe6a0f3095e64ae7bc706f99b'),(83,'000000000000000','121.58.186.17','2017-04-05 03:09:40','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','786148686261bb4d531945a1af0edecc'),(84,'355010060188489','121.58.186.17','2017-04-05 03:20:19','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','1a7d9bfc53e063078ea762226f517f07'),(85,'355010060188489','121.58.186.17','2017-04-05 03:21:21','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','e296b90fe09bf198445e776629081f54'),(86,'355010060188489','121.58.186.17','2017-04-05 03:28:19','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','e8b840fcecb34b2e9a7aaf6d445a36e5'),(87,'355010060188489','121.58.186.17','2017-04-05 03:28:48','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','1798ecdd0fe2016f3144c6ea6808e184'),(88,'355010060188489','121.58.186.17','2017-04-05 03:28:53','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','4f044efb95ae1df091ef682d7e4171ec'),(89,'355010060188489','121.58.186.17','2017-04-05 03:30:01','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','9b7bb66f47a98ccbfaee675abc313dcf'),(90,'355010060188489','121.58.186.17','2017-04-05 03:33:13','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','8769f443475e65bf62526705748edadd'),(91,'355010060188489','223.255.229.19','2017-04-05 04:18:25','2017-04-05','start','.MainActivity','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'3','android','e357a60f4b8c77ed1b41621d935a97ee'),(92,'355010060188489','121.58.186.17','2017-04-05 04:37:27','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','52261436b2b3fd97862ffc5ac4c43ece'),(93,'355010060188489','121.58.186.17','2017-04-05 04:46:15','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','8153ca2b4427231cc83c47b9827929b5'),(94,'355010060188489','121.58.186.17','2017-04-05 05:01:03','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','f628a4a89e57943ee1a87b72fda2e682'),(95,'355010060188489','121.58.186.17','2017-04-05 05:16:26','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','68c266ba938f2402561670e7c4b0b6d2'),(96,'355010060188489','121.58.186.17','2017-04-05 05:33:30','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','a65ea4789aaa4ba688c95355b890600d'),(97,'000000000000000','121.58.186.17','2017-04-05 05:42:39','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','cef367aa982bcec45b2c49ec36a608b2'),(98,'000000000000000','121.58.186.17','2017-04-05 05:44:31','2017-04-05','start','.MainActivity','Android','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'Android','android','13ce0c9d94680b02f20bb8a3eee99517'),(99,'355010060188489','121.58.186.17','2017-04-05 05:53:14','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','9c469c9c14b9e639570dc98b5d3cd405'),(100,'355010060188489','121.58.186.17','2017-04-05 07:22:56','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','fbd2bab599a9581d10437188ef8b8740'),(101,'355010060188489','121.58.186.17','2017-04-05 10:02:17','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','920b639ba86bb87b2340f2a8e0971501'),(102,'355010060188489','121.58.186.17','2017-04-05 10:37:05','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','b2157907671fe58ae707a6792c007d33'),(103,'355010060188489','121.58.186.17','2017-04-05 10:37:06','2017-04-05','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','9edc7d728a4ee04b4046c5b2ab74d4e9'),(104,'355010060188489','121.58.186.17','2017-04-05 17:41:55','2017-04-06','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','8bd916e9db8a836791df0ec21b3d3559'),(105,'355010060188489','121.58.186.17','2017-04-05 18:00:37','2017-04-06','start','.MainActivity','samsung','ID','Djawa Barat','Senayan','-6.2283,106.8019','drikdoank@gmail.com','wifi',3,'3','android','3078191807810da13f5b2e907ea0626f'),(106,'355010060188489','223.255.230.67','2017-04-06 22:46:37','2017-04-07','start','.MainActivity','samsung','ID','Jakarta Raya','Batuampar','-6.2824,106.8604','drikdoank@gmail.com','wifi',3,'3','android','247075d8894964c7c23eb11c12865be4'),(107,'355010060188489','223.255.230.26','2017-04-07 02:33:29','2017-04-07','start','.MainActivity','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'3','android','d47b93b71059dd8871fde3c1f97091a4'),(108,'866048021145745','112.215.45.14','2017-04-07 03:18:18','2017-04-07','start','.MainActivity','Xiaomi','ID','Jawa barat','Cileungsir','-6.3947,106.9592','drikdoank@gmail.com','wifi',3,'INDOSAT','android','4cf3cd0ef477ca17c7a8c60ef2c6df68'),(109,'866048021145745','202.62.18.21','2017-04-08 00:50:31','2017-04-08','start','.MainActivity','Xiaomi','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'INDOSAT','android','11435f78b23ae7a26ccc9d30d992c779'),(110,'355010060188489','103.10.66.75','2017-04-08 00:59:54','2017-04-08','start','.MainActivity','samsung','ID','Jakarta Raya','Jakarta','-6.1744,106.8294','drikdoank@gmail.com','wifi',3,'3','android','96e22a22f3b779788588ac97fef7fe57');
/*!40000 ALTER TABLE `master_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_12_150440_create_blogs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `operator_per_day`
--

DROP TABLE IF EXISTS `operator_per_day`;
/*!50001 DROP VIEW IF EXISTS `operator_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_day` (
 `day` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `operator_per_day_user`
--

DROP TABLE IF EXISTS `operator_per_day_user`;
/*!50001 DROP VIEW IF EXISTS `operator_per_day_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_day_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `operator_per_month`
--

DROP TABLE IF EXISTS `operator_per_month`;
/*!50001 DROP VIEW IF EXISTS `operator_per_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_month` (
 `month` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `operator_per_month_user`
--

DROP TABLE IF EXISTS `operator_per_month_user`;
/*!50001 DROP VIEW IF EXISTS `operator_per_month_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_month_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `operator_per_year`
--

DROP TABLE IF EXISTS `operator_per_year`;
/*!50001 DROP VIEW IF EXISTS `operator_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_year` (
 `year` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `operator_per_year_user`
--

DROP TABLE IF EXISTS `operator_per_year_user`;
/*!50001 DROP VIEW IF EXISTS `operator_per_year_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `operator_per_year_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `telkomsel_count` tinyint NOT NULL,
  `indosat_count` tinyint NOT NULL,
  `xl_count` tinyint NOT NULL,
  `smartfren_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('drikdoank@gmail.com','6ab2f44831d31b104d23697c06b771799151b3b56cfcc31c24c34972b0470abc','2017-02-02 06:07:50');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retention`
--

DROP TABLE IF EXISTS `retention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_iklan` int(11) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `operator` varchar(150) NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=336 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retention`
--

LOCK TABLES `retention` WRITE;
/*!40000 ALTER TABLE `retention` DISABLE KEYS */;
INSERT INTO `retention` VALUES (135,3,'drikdoank@gmail.com','2017-04-05 14:23:28','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:23:28'),(136,1,'drikdoank@gmail.com','2017-04-05 14:23:29','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:23:29'),(137,2,'drikdoank@gmail.com','2017-04-05 14:23:29','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:23:29'),(138,3,'drikdoank@gmail.com','2017-04-05 14:23:53','open','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:23:53'),(139,3,'drikdoank@gmail.com','2017-04-05 14:25:06','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:25:06'),(140,2,'drikdoank@gmail.com','2017-04-05 14:25:07','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:25:07'),(141,1,'drikdoank@gmail.com','2017-04-05 14:25:07','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:25:07'),(142,3,'drikdoank@gmail.com','2017-04-05 14:50:29','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:50:29'),(143,1,'drikdoank@gmail.com','2017-04-05 14:50:29','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:50:29'),(144,2,'drikdoank@gmail.com','2017-04-05 14:50:29','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:50:29'),(145,3,'drikdoank@gmail.com','2017-04-05 14:51:09','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:51:09'),(146,2,'drikdoank@gmail.com','2017-04-05 14:51:10','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:51:10'),(147,1,'drikdoank@gmail.com','2017-04-05 14:51:10','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:51:10'),(148,3,'drikdoank@gmail.com','2017-04-05 14:52:09','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:52:09'),(149,1,'drikdoank@gmail.com','2017-04-05 14:52:09','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:52:09'),(150,2,'drikdoank@gmail.com','2017-04-05 14:52:09','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 14:52:09'),(151,3,'drikdoank@gmail.com','2017-04-05 15:00:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:00:52'),(152,2,'drikdoank@gmail.com','2017-04-05 15:00:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:00:52'),(153,1,'drikdoank@gmail.com','2017-04-05 15:00:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:00:52'),(154,3,'drikdoank@gmail.com','2017-04-05 15:26:58','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:26:58'),(155,2,'drikdoank@gmail.com','2017-04-05 15:26:58','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:26:58'),(156,1,'drikdoank@gmail.com','2017-04-05 15:26:58','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 15:26:58'),(157,3,'drikdoank@gmail.com','2017-04-05 17:02:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:02:50'),(158,1,'drikdoank@gmail.com','2017-04-05 17:02:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:02:50'),(159,2,'drikdoank@gmail.com','2017-04-05 17:02:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:02:50'),(160,3,'drikdoank@gmail.com','2017-04-05 17:10:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:49'),(161,1,'drikdoank@gmail.com','2017-04-05 17:10:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:50'),(162,2,'drikdoank@gmail.com','2017-04-05 17:10:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:50'),(163,3,'drikdoank@gmail.com','2017-04-05 17:10:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:51'),(164,2,'drikdoank@gmail.com','2017-04-05 17:10:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:51'),(165,1,'drikdoank@gmail.com','2017-04-05 17:10:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:51'),(166,3,'drikdoank@gmail.com','2017-04-05 17:10:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:52'),(167,2,'drikdoank@gmail.com','2017-04-05 17:10:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:52'),(168,1,'drikdoank@gmail.com','2017-04-05 17:10:52','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:52'),(169,3,'drikdoank@gmail.com','2017-04-05 17:10:54','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:54'),(170,2,'drikdoank@gmail.com','2017-04-05 17:10:54','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:54'),(171,1,'drikdoank@gmail.com','2017-04-05 17:10:54','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:10:54'),(172,3,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(173,2,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(174,1,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(175,3,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(176,2,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(177,1,'drikdoank@gmail.com','2017-04-05 17:11:11','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:11'),(178,3,'drikdoank@gmail.com','2017-04-05 17:11:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:12'),(179,2,'drikdoank@gmail.com','2017-04-05 17:11:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:12'),(180,1,'drikdoank@gmail.com','2017-04-05 17:11:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:12'),(181,3,'drikdoank@gmail.com','2017-04-05 17:11:14','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:14'),(182,2,'drikdoank@gmail.com','2017-04-05 17:11:14','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:14'),(183,1,'drikdoank@gmail.com','2017-04-05 17:11:14','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:14'),(184,3,'drikdoank@gmail.com','2017-04-05 17:11:17','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:17'),(185,2,'drikdoank@gmail.com','2017-04-05 17:11:17','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:17'),(186,1,'drikdoank@gmail.com','2017-04-05 17:11:17','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:17'),(187,3,'drikdoank@gmail.com','2017-04-05 17:11:31','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:31'),(188,2,'drikdoank@gmail.com','2017-04-05 17:11:31','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:31'),(189,1,'drikdoank@gmail.com','2017-04-05 17:11:31','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:31'),(190,3,'drikdoank@gmail.com','2017-04-05 17:11:33','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:33'),(191,1,'drikdoank@gmail.com','2017-04-05 17:11:33','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:33'),(192,2,'drikdoank@gmail.com','2017-04-05 17:11:33','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:33'),(193,3,'drikdoank@gmail.com','2017-04-05 17:11:42','open','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:42'),(194,3,'drikdoank@gmail.com','2017-04-05 17:11:43','open','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:43'),(195,3,'drikdoank@gmail.com','2017-04-05 17:11:44','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:44'),(196,2,'drikdoank@gmail.com','2017-04-05 17:11:44','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:44'),(197,1,'drikdoank@gmail.com','2017-04-05 17:11:44','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:11:44'),(198,3,'drikdoank@gmail.com','2017-04-05 17:13:20','open','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:13:20'),(199,3,'drikdoank@gmail.com','2017-04-05 17:13:24','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:13:24'),(200,1,'drikdoank@gmail.com','2017-04-05 17:13:24','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:13:24'),(201,2,'drikdoank@gmail.com','2017-04-05 17:13:24','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:13:24'),(202,1,'drikdoank@gmail.com','2017-04-05 17:13:37','open','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:13:37'),(203,3,'drikdoank@gmail.com','2017-04-05 17:14:15','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:14:15'),(204,2,'drikdoank@gmail.com','2017-04-05 17:14:16','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:14:16'),(205,1,'drikdoank@gmail.com','2017-04-05 17:14:16','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:14:16'),(206,3,'drikdoank@gmail.com','2017-04-05 17:18:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:48'),(207,2,'drikdoank@gmail.com','2017-04-05 17:18:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:48'),(208,1,'drikdoank@gmail.com','2017-04-05 17:18:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:48'),(209,3,'drikdoank@gmail.com','2017-04-05 17:18:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:49'),(210,1,'drikdoank@gmail.com','2017-04-05 17:18:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:49'),(211,2,'drikdoank@gmail.com','2017-04-05 17:18:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:18:49'),(212,3,'drikdoank@gmail.com','2017-04-05 17:37:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:37:51'),(213,2,'drikdoank@gmail.com','2017-04-05 17:37:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:37:51'),(214,1,'drikdoank@gmail.com','2017-04-05 17:37:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:37:51'),(215,3,'drikdoank@gmail.com','2017-04-05 17:38:05','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:05'),(216,2,'drikdoank@gmail.com','2017-04-05 17:38:05','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:05'),(217,1,'drikdoank@gmail.com','2017-04-05 17:38:05','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:05'),(218,3,'drikdoank@gmail.com','2017-04-05 17:38:53','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:53'),(219,2,'drikdoank@gmail.com','2017-04-05 17:38:53','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:53'),(220,1,'drikdoank@gmail.com','2017-04-05 17:38:53','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:53'),(221,3,'drikdoank@gmail.com','2017-04-05 17:38:59','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:59'),(222,2,'drikdoank@gmail.com','2017-04-05 17:38:59','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:59'),(223,1,'drikdoank@gmail.com','2017-04-05 17:38:59','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:38:59'),(224,3,'drikdoank@gmail.com','2017-04-05 17:39:06','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:06'),(225,1,'drikdoank@gmail.com','2017-04-05 17:39:06','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:06'),(226,2,'drikdoank@gmail.com','2017-04-05 17:39:06','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:06'),(227,3,'drikdoank@gmail.com','2017-04-05 17:39:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:08'),(228,2,'drikdoank@gmail.com','2017-04-05 17:39:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:08'),(229,1,'drikdoank@gmail.com','2017-04-05 17:39:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:08'),(230,3,'drikdoank@gmail.com','2017-04-05 17:39:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:12'),(231,2,'drikdoank@gmail.com','2017-04-05 17:39:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:12'),(232,1,'drikdoank@gmail.com','2017-04-05 17:39:12','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:12'),(233,3,'drikdoank@gmail.com','2017-04-05 17:39:22','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:22'),(234,2,'drikdoank@gmail.com','2017-04-05 17:39:22','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:22'),(235,1,'drikdoank@gmail.com','2017-04-05 17:39:22','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:22'),(236,3,'drikdoank@gmail.com','2017-04-05 17:39:32','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:32'),(237,2,'drikdoank@gmail.com','2017-04-05 17:39:32','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:32'),(238,1,'drikdoank@gmail.com','2017-04-05 17:39:32','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:39:32'),(239,3,'drikdoank@gmail.com','2017-04-05 17:40:58','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:40:58'),(240,2,'drikdoank@gmail.com','2017-04-05 17:40:59','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:40:59'),(241,1,'drikdoank@gmail.com','2017-04-05 17:40:59','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-05 17:40:59'),(242,3,'drikdoank@gmail.com','2017-04-06 00:42:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:42:25'),(243,1,'drikdoank@gmail.com','2017-04-06 00:42:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:42:25'),(244,2,'drikdoank@gmail.com','2017-04-06 00:42:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:42:25'),(245,3,'drikdoank@gmail.com','2017-04-06 00:59:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:59:25'),(246,2,'drikdoank@gmail.com','2017-04-06 00:59:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:59:25'),(247,1,'drikdoank@gmail.com','2017-04-06 00:59:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 00:59:25'),(248,3,'drikdoank@gmail.com','2017-04-06 01:01:07','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:01:07'),(249,1,'drikdoank@gmail.com','2017-04-06 01:01:07','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:01:07'),(250,2,'drikdoank@gmail.com','2017-04-06 01:01:07','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:01:07'),(251,2,'drikdoank@gmail.com','2017-04-06 01:04:38','open','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:04:38'),(252,3,'drikdoank@gmail.com','2017-04-06 01:12:20','open','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:12:20'),(253,3,'drikdoank@gmail.com','2017-04-06 01:37:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:37:48'),(254,1,'drikdoank@gmail.com','2017-04-06 01:37:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:37:48'),(255,2,'drikdoank@gmail.com','2017-04-06 01:37:48','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 01:37:48'),(256,3,'drikdoank@gmail.com','2017-04-06 02:02:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:02:08'),(257,1,'drikdoank@gmail.com','2017-04-06 02:02:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:02:08'),(258,2,'drikdoank@gmail.com','2017-04-06 02:02:08','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:02:08'),(259,3,'drikdoank@gmail.com','2017-04-06 02:56:26','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:56:26'),(260,1,'drikdoank@gmail.com','2017-04-06 02:56:26','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:56:26'),(261,2,'drikdoank@gmail.com','2017-04-06 02:56:27','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:56:27'),(262,3,'drikdoank@gmail.com','2017-04-06 02:57:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:57:49'),(263,2,'drikdoank@gmail.com','2017-04-06 02:57:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:57:49'),(264,1,'drikdoank@gmail.com','2017-04-06 02:57:49','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 02:57:49'),(265,3,'drikdoank@gmail.com','2017-04-06 03:06:46','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:06:46'),(266,1,'drikdoank@gmail.com','2017-04-06 03:06:47','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:06:47'),(267,2,'drikdoank@gmail.com','2017-04-06 03:06:47','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:06:47'),(268,1,'drikdoank@gmail.com','2017-04-06 03:13:16','open','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:13:16'),(269,3,'drikdoank@gmail.com','2017-04-06 03:14:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:14:25'),(270,1,'drikdoank@gmail.com','2017-04-06 03:14:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:14:25'),(271,2,'drikdoank@gmail.com','2017-04-06 03:14:25','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:14:25'),(272,3,'drikdoank@gmail.com','2017-04-06 03:15:53','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:15:53'),(273,2,'drikdoank@gmail.com','2017-04-06 03:15:54','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:15:54'),(274,1,'drikdoank@gmail.com','2017-04-06 03:15:54','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:15:54'),(275,3,'drikdoank@gmail.com','2017-04-06 03:25:50','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:25:50'),(276,1,'drikdoank@gmail.com','2017-04-06 03:25:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:25:51'),(277,2,'drikdoank@gmail.com','2017-04-06 03:25:51','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:25:51'),(278,3,'drikdoank@gmail.com','2017-04-06 03:33:41','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:33:41'),(279,1,'drikdoank@gmail.com','2017-04-06 03:33:41','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:33:41'),(280,2,'drikdoank@gmail.com','2017-04-06 03:33:41','retention','Senayan','Djawa Barat','121.58.186.17','2017-04-06 03:33:41'),(281,3,'drikdoank@gmail.com','2017-04-07 05:51:09','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 05:51:09'),(282,1,'drikdoank@gmail.com','2017-04-07 05:51:10','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 05:51:10'),(283,2,'drikdoank@gmail.com','2017-04-07 05:51:10','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 05:51:10'),(284,3,'drikdoank@gmail.com','2017-04-07 08:09:13','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:09:13'),(285,1,'drikdoank@gmail.com','2017-04-07 08:09:14','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:09:14'),(286,2,'drikdoank@gmail.com','2017-04-07 08:09:14','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:09:14'),(287,3,'drikdoank@gmail.com','2017-04-07 08:17:34','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:17:34'),(288,2,'drikdoank@gmail.com','2017-04-07 08:17:34','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:17:34'),(289,1,'drikdoank@gmail.com','2017-04-07 08:17:34','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:17:34'),(290,3,'drikdoank@gmail.com','2017-04-07 08:18:34','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:18:34'),(291,2,'drikdoank@gmail.com','2017-04-07 08:18:34','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:18:34'),(292,1,'drikdoank@gmail.com','2017-04-07 08:18:35','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:18:35'),(293,3,'drikdoank@gmail.com','2017-04-07 08:45:06','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:45:06'),(294,2,'drikdoank@gmail.com','2017-04-07 08:45:07','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:45:07'),(295,1,'drikdoank@gmail.com','2017-04-07 08:45:07','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:45:07'),(296,3,'drikdoank@gmail.com','2017-04-07 08:47:50','retention','Batuampar','Jakarta Raya','223.255.230.67','2017-04-07 08:47:50'),(297,3,'drikdoank@gmail.com','2017-04-07 10:01:50','retention','Jakarta','Jakarta Raya','223.255.230.33','2017-04-07 10:01:50'),(298,1,'drikdoank@gmail.com','2017-04-07 10:01:51','retention','Jakarta','Jakarta Raya','223.255.230.33','2017-04-07 10:01:51'),(299,2,'drikdoank@gmail.com','2017-04-07 10:01:51','retention','Jakarta','Jakarta Raya','223.255.230.33','2017-04-07 10:01:51'),(300,3,'drikdoank@gmail.com','2017-04-07 10:18:30','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:18:30'),(301,1,'drikdoank@gmail.com','2017-04-07 10:18:30','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:18:30'),(302,2,'drikdoank@gmail.com','2017-04-07 10:18:30','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:18:30'),(303,2,'drikdoank@gmail.com','2017-04-07 10:18:50','open','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:18:50'),(304,3,'drikdoank@gmail.com','2017-04-07 10:19:48','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:48'),(305,1,'drikdoank@gmail.com','2017-04-07 10:19:48','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:48'),(306,2,'drikdoank@gmail.com','2017-04-07 10:19:48','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:48'),(307,3,'drikdoank@gmail.com','2017-04-07 10:19:49','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:49'),(308,2,'drikdoank@gmail.com','2017-04-07 10:19:49','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:49'),(309,1,'drikdoank@gmail.com','2017-04-07 10:19:49','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:19:49'),(310,3,'drikdoank@gmail.com','2017-04-07 10:20:06','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:06'),(311,1,'drikdoank@gmail.com','2017-04-07 10:20:06','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:06'),(312,2,'drikdoank@gmail.com','2017-04-07 10:20:06','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:06'),(313,3,'drikdoank@gmail.com','2017-04-07 10:20:35','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:35'),(314,2,'drikdoank@gmail.com','2017-04-07 10:20:36','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:36'),(315,1,'drikdoank@gmail.com','2017-04-07 10:20:36','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:20:36'),(316,3,'drikdoank@gmail.com','2017-04-07 10:21:36','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:21:36'),(317,1,'drikdoank@gmail.com','2017-04-07 10:21:37','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:21:37'),(318,2,'drikdoank@gmail.com','2017-04-07 10:21:37','retention','Cileungsir','Jawa barat','112.215.45.14','2017-04-07 10:21:37'),(319,3,'drikdoank@gmail.com','2017-04-08 07:50:37','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:50:37'),(320,2,'drikdoank@gmail.com','2017-04-08 07:50:37','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:50:37'),(321,1,'drikdoank@gmail.com','2017-04-08 07:50:38','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:50:38'),(322,1,'drikdoank@gmail.com','2017-04-08 07:53:33','open','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:53:33'),(323,2,'drikdoank@gmail.com','2017-04-08 07:53:36','open','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:53:36'),(324,3,'drikdoank@gmail.com','2017-04-08 07:54:01','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:54:01'),(325,1,'drikdoank@gmail.com','2017-04-08 07:54:01','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:54:01'),(326,2,'drikdoank@gmail.com','2017-04-08 07:54:01','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 07:54:01'),(327,3,'drikdoank@gmail.com','2017-04-08 08:41:26','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:41:26'),(328,1,'drikdoank@gmail.com','2017-04-08 08:41:27','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:41:27'),(329,2,'drikdoank@gmail.com','2017-04-08 08:41:27','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:41:27'),(330,3,'drikdoank@gmail.com','2017-04-08 08:42:31','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:42:31'),(331,1,'drikdoank@gmail.com','2017-04-08 08:42:31','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:42:31'),(332,2,'drikdoank@gmail.com','2017-04-08 08:42:31','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 08:42:31'),(333,3,'drikdoank@gmail.com','2017-04-08 09:08:08','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 09:08:08'),(334,1,'drikdoank@gmail.com','2017-04-08 09:08:08','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 09:08:08'),(335,2,'drikdoank@gmail.com','2017-04-08 09:08:09','retention','Jakarta','Jakarta Raya','202.62.18.21','2017-04-08 09:08:09');
/*!40000 ALTER TABLE `retention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activations`
--

DROP TABLE IF EXISTS `user_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activations` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `activated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activations`
--

LOCK TABLES `user_activations` WRITE;
/*!40000 ALTER TABLE `user_activations` DISABLE KEYS */;
INSERT INTO `user_activations` VALUES (1,10,'e0d6132def4e05d100fd1a7b01b02a480c6aff26c31f9f2cabb414f64722729b','2017-02-04 06:09:53',NULL);
/*!40000 ALTER TABLE `user_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `active_app` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan` int(10) NOT NULL,
  `activated` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Indriyani','indri@gmail.com','user7-128x128.jpg','2','partner','$2y$10$avEe2V5oowSLzBkazFliXOud3urBM9ItlugDteFdXLKKQVTFHqQJK',NULL,'2016-09-23 23:37:50','2016-09-23 23:37:50','1',3,1),(3,'Hendra','hendrik@gmail.com','user2-160x160.jpg','7','partner','c3ec0f7b054e729c5a716c8125839829','I0IdI1Z05VTSkaC88UIU9inheOBfoCBMSPVSD6s0hN5OnJBlJ4QCfz1Ovixy','2016-09-26 18:41:32','2016-09-26 18:41:38','1',3,1),(4,'Budi','budi@gmail.com','user2-160x160.jpg','3','iklan','$2a$06$xIazzKKXSGPXMEwDVYPowObZNROUiNFzo3/DNxoZT9O.LbLcCJMVq','NKJMfhWHM2O97wo8WOaKjIFcafnPyfta4l3m2eWi9ek5ZRmfz9vBHgoyJ7VC','2016-09-26 18:42:01','2017-03-26 23:34:10','1',3,1),(5,'Anis','anis@gmail.com','user2-160x160.jpg','5','partner','$2y$10$Vx7.Ba16euhEsXShotUEeOwFOdtjsz22V0/QgkHSLNFG8ZFP89.c6',NULL,'2017-09-26 18:42:47','2016-09-26 18:42:47','1',3,1),(6,'Indriyani','indriyani.cs49@gmail.com','user7-128x128.jpg','6','partner','$2y$10$Z/CL3nOYV5Q.FM0fSHFRtuqEcE/IDzH9eb7ItbSx9/9.tmzY8cJuS','ffWrZPzxtOXZqZWZJdZLqWtTNbgRN20Z48TapcnFPA4i0TALvUcpH1DPENoW','2016-10-02 07:14:30','2017-01-12 04:24:49','1',3,1),(11,'Admin','dashboard@appxoffer.com','/upload/images/profil/11-Hendrik-hhh.jpg','3','admin','$2a$06$6p5LtvF2r9khqm/31PbyPueMlQWIGJA0RvXR8kGh4h8PnDE1hbT0a','m5m6h2vlrYlx5hxSLYi2mEQts3lFfDOFnERRQOIO49FNWQ0cN3vviHDIOae2','2017-02-12 02:57:38','2017-04-07 05:09:09','1',3,1),(12,'Hendrik','drikdoank@gmail.com','/upload/images/profil/12-Hendrik-2cd5b9399f832b095755404a20e6035d.png','','iklan','$2y$10$HzPlWN977DjEpzPR//mVseM1Ksg/WBuukAgeURL1MlgyWtclQ/Vy2','svpkkdUF9H8KDPZnD4sljHxxbOGdnGkE7MzNZecW1hwIHbeS8Q49TeNXK2Rp','2017-02-13 09:31:28','2017-04-08 01:41:55','1',3,1),(13,'Mujibur Rohman','muji@appxoffer.com','','','iklan','$2y$10$dRLhom8AsY8VhG0wU/.RQOq8oobyjlQv1QbqnaC9FxgF.l.cV02U.','V9nCEXNTsBbVzDiS9fYuiLERFqm0qmuY8WaRrPXFHJGcCAmejO0qZfpHuQJ9','2017-03-27 00:02:07','2017-03-27 01:00:07','1',10,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_activity_by_type_device_per_day`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_day`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_day` (
 `day` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_activity_by_type_device_per_day_user`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_day_user`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_day_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_day_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_activity_by_type_device_per_month`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_month`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_month` (
 `month` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_activity_by_type_device_per_month_user`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_month_user`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_month_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_month_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_activity_by_type_device_per_year`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_year`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_year` (
 `year` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_activity_by_type_device_per_year_user`
--

DROP TABLE IF EXISTS `view_activity_by_type_device_per_year_user`;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_year_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_activity_by_type_device_per_year_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `samsung_count` tinyint NOT NULL,
  `apple_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_day`
--

DROP TABLE IF EXISTS `view_by_click_per_day`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_day` (
 `day` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_day_user`
--

DROP TABLE IF EXISTS `view_by_click_per_day_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_day_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_day_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_month`
--

DROP TABLE IF EXISTS `view_by_click_per_month`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_month` (
 `month` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_month_user`
--

DROP TABLE IF EXISTS `view_by_click_per_month_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_month_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_month_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_year`
--

DROP TABLE IF EXISTS `view_by_click_per_year`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_year` (
 `year` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_click_per_year_user`
--

DROP TABLE IF EXISTS `view_by_click_per_year_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_year_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_click_per_year_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `login_count` tinyint NOT NULL,
  `save_count` tinyint NOT NULL,
  `close_count` tinyint NOT NULL,
  `delete_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_perday`
--

DROP TABLE IF EXISTS `view_by_view_page_perday`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_perday`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_perday` (
 `day` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_perday_user`
--

DROP TABLE IF EXISTS `view_by_view_page_perday_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_perday_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_perday_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_permonth`
--

DROP TABLE IF EXISTS `view_by_view_page_permonth`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_permonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_permonth` (
 `month` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_permonth_user`
--

DROP TABLE IF EXISTS `view_by_view_page_permonth_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_permonth_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_permonth_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_peryear`
--

DROP TABLE IF EXISTS `view_by_view_page_peryear`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_peryear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_peryear` (
 `year` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_by_view_page_peryear_user`
--

DROP TABLE IF EXISTS `view_by_view_page_peryear_user`;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_peryear_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_by_view_page_peryear_user` (
 `user` tinyint NOT NULL,
  `id_aplikasi` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `welcome_count` tinyint NOT NULL,
  `registration_count` tinyint NOT NULL,
  `shopping_count` tinyint NOT NULL,
  `order_count` tinyint NOT NULL,
  `other_count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_month_admin`
--

DROP TABLE IF EXISTS `view_install_month_admin`;
/*!50001 DROP VIEW IF EXISTS `view_install_month_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_month_admin` (
 `month` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_per_day`
--

DROP TABLE IF EXISTS `view_install_per_day`;
/*!50001 DROP VIEW IF EXISTS `view_install_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_per_day` (
 `user` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_per_day_admin`
--

DROP TABLE IF EXISTS `view_install_per_day_admin`;
/*!50001 DROP VIEW IF EXISTS `view_install_per_day_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_per_day_admin` (
 `day` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_per_month`
--

DROP TABLE IF EXISTS `view_install_per_month`;
/*!50001 DROP VIEW IF EXISTS `view_install_per_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_per_month` (
 `user` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_per_year`
--

DROP TABLE IF EXISTS `view_install_per_year`;
/*!50001 DROP VIEW IF EXISTS `view_install_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_per_year` (
 `user` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_install_year_admin`
--

DROP TABLE IF EXISTS `view_install_year_admin`;
/*!50001 DROP VIEW IF EXISTS `view_install_year_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_install_year_admin` (
 `year` tinyint NOT NULL,
  `count_install` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `count_connectedby_day`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_day`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by `master_data`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_connectedby_day_user`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_day_user`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_day_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`,`master_data`.`created_at`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_connectedby_month`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_month`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by month(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_connectedby_month_user`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_month_user`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_month_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_month_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_connectedby_year`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_year`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by year(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_connectedby_year_user`
--

/*!50001 DROP TABLE IF EXISTS `count_connectedby_year_user`*/;
/*!50001 DROP VIEW IF EXISTS `count_connectedby_year_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_connectedby_year_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_dashboard`
--

/*!50001 DROP TABLE IF EXISTS `count_dashboard`*/;
/*!50001 DROP VIEW IF EXISTS `count_dashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_dashboard` AS select count(distinct `master_data`.`id`) AS `count_activity`,count(distinct `master_data`.`id`) AS `count_click`,count(distinct `master_data`.`id`) AS `count_view` from `master_data` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_dashboard_user`
--

/*!50001 DROP TABLE IF EXISTS `count_dashboard_user`*/;
/*!50001 DROP VIEW IF EXISTS `count_dashboard_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_dashboard_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,count(distinct `master_data`.`id`) AS `count_activity`,count(distinct `master_data`.`id`) AS `count_click`,count(distinct `master_data`.`id`) AS `count_view` from `master_data` group by `master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_install`
--

/*!50001 DROP TABLE IF EXISTS `count_install`*/;
/*!50001 DROP VIEW IF EXISTS `count_install`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_install` AS select count(`users`.`id`) AS `total_install` from `users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_country`
--

/*!50001 DROP TABLE IF EXISTS `map_country`*/;
/*!50001 DROP VIEW IF EXISTS `map_country`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_country` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,`master_data`.`language` AS `country`,count(`master_data`.`language`) AS `count_country` from `master_data` group by `master_data`.`language`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_country_admin`
--

/*!50001 DROP TABLE IF EXISTS `map_country_admin`*/;
/*!50001 DROP VIEW IF EXISTS `map_country_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_country_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`language` AS `country`,count(`master_data`.`language`) AS `count_country` from `master_data` group by `master_data`.`language` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_region`
--

/*!50001 DROP TABLE IF EXISTS `map_region`*/;
/*!50001 DROP VIEW IF EXISTS `map_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_region` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,`master_data`.`regional` AS `regional`,count(`master_data`.`regional`) AS `count_region` from `master_data` group by `master_data`.`regional`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_region_admin`
--

/*!50001 DROP TABLE IF EXISTS `map_region_admin`*/;
/*!50001 DROP VIEW IF EXISTS `map_region_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_region_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`regional` AS `regional`,count(`master_data`.`regional`) AS `count_region` from `master_data` group by `master_data`.`regional` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_state`
--

/*!50001 DROP TABLE IF EXISTS `map_state`*/;
/*!50001 DROP VIEW IF EXISTS `map_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_state` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,`master_data`.`state` AS `regional`,count(`master_data`.`state`) AS `count_state` from `master_data` group by `master_data`.`state`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_state_admin`
--

/*!50001 DROP TABLE IF EXISTS `map_state_admin`*/;
/*!50001 DROP VIEW IF EXISTS `map_state_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_state_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`state` AS `regional`,count(`master_data`.`state`) AS `count_state` from `master_data` group by `master_data`.`state` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_day`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_day`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_day_user`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_day_user`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_day_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_month`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_month`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_month_user`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_month_user`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_month_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_month_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_year`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_year`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `operator_per_year_user`
--

/*!50001 DROP TABLE IF EXISTS `operator_per_year_user`*/;
/*!50001 DROP VIEW IF EXISTS `operator_per_year_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `operator_per_year_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_day`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_day`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_day_user`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_day_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_day_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_month`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_month`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_month_user`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_month_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_month_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_month_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_year`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_year`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_activity_by_type_device_per_year_user`
--

/*!50001 DROP TABLE IF EXISTS `view_activity_by_type_device_per_year_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_activity_by_type_device_per_year_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activity_by_type_device_per_year_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_day`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_day`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_day_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_day_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_day_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_month`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_month`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_month_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_month_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_month_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_month_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_year`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_year`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_click_per_year_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_click_per_year_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_click_per_year_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_click_per_year_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_perday`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_perday`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_perday`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_perday` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_perday_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_perday_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_perday_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_perday_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_permonth`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_permonth`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_permonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_permonth` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_permonth_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_permonth_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_permonth_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_permonth_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_peryear`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_peryear`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_peryear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_peryear` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_by_view_page_peryear_user`
--

/*!50001 DROP TABLE IF EXISTS `view_by_view_page_peryear_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_by_view_page_peryear_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_by_view_page_peryear_user` AS select `master_data`.`user` AS `user`,`master_data`.`id_aplikasi` AS `id_aplikasi`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`,`master_data`.`id_aplikasi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_month_admin`
--

/*!50001 DROP TABLE IF EXISTS `view_install_month_admin`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_month_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_month_admin` AS select month(`aplikasi`.`created_at`) AS `month`,count('created_at') AS `count_install` from `aplikasi` group by month(`aplikasi`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_per_day`
--

/*!50001 DROP TABLE IF EXISTS `view_install_per_day`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_per_day` AS select `aplikasi`.`user` AS `user`,cast(`aplikasi`.`created_at` as date) AS `day`,count('created_at') AS `count_install` from `aplikasi` group by cast(`aplikasi`.`created_at` as date),`aplikasi`.`user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_per_day_admin`
--

/*!50001 DROP TABLE IF EXISTS `view_install_per_day_admin`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_per_day_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_per_day_admin` AS select cast(`aplikasi`.`created_at` as date) AS `day`,count('created_at') AS `count_install` from `aplikasi` group by cast(`aplikasi`.`created_at` as date) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_per_month`
--

/*!50001 DROP TABLE IF EXISTS `view_install_per_month`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_per_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_per_month` AS select `aplikasi`.`user` AS `user`,month(`aplikasi`.`created_at`) AS `month`,count('created_at') AS `count_install` from `aplikasi` group by month(`aplikasi`.`created_at`),`aplikasi`.`user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_per_year`
--

/*!50001 DROP TABLE IF EXISTS `view_install_per_year`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_per_year` AS select `aplikasi`.`user` AS `user`,year(`aplikasi`.`created_at`) AS `year`,count('created_at') AS `count_install` from `aplikasi` group by year(`aplikasi`.`created_at`),`aplikasi`.`user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_install_year_admin`
--

/*!50001 DROP TABLE IF EXISTS `view_install_year_admin`*/;
/*!50001 DROP VIEW IF EXISTS `view_install_year_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_install_year_admin` AS select year(`aplikasi`.`created_at`) AS `year`,count('created_at') AS `count_install` from `aplikasi` group by year(`aplikasi`.`created_at`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-08 16:44:34
