CREATE DATABASE  IF NOT EXISTS `luyabaya_binary` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `luyabaya_binary`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: luyabaya_binary
-- ------------------------------------------------------
-- Server version	5.5.52-cll-lve

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
-- Table structure for table `_selectedhierarchy`
--

DROP TABLE IF EXISTS `_selectedhierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_selectedhierarchy` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `child` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_selectedhierarchy`
--

LOCK TABLES `_selectedhierarchy` WRITE;
/*!40000 ALTER TABLE `_selectedhierarchy` DISABLE KEYS */;
INSERT INTO `_selectedhierarchy` VALUES (1,2,0,'Luyabaya 1',2,'parent'),(2,3,1,'Luyabaya2 Luyabaya2',2,'left'),(3,4,1,'Luyabaya3 Luiyabaya3',2,'right'),(4,5,2,'Luyabaya4 Luyabaya4',3,'left'),(5,6,2,'Luyabaya5 Luyabaya5',3,'right'),(6,7,2,'Luyabaya6 Luyabaya6',4,'left'),(7,8,2,'Luyabaya7 Luyabaya7',4,'right');
/*!40000 ALTER TABLE `_selectedhierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codes`
--

DROP TABLE IF EXISTS `codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codes` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `generated_date` varchar(100) DEFAULT NULL,
  `generated_by` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `used_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codes`
--

LOCK TABLES `codes` WRITE;
/*!40000 ALTER TABLE `codes` DISABLE KEYS */;
INSERT INTO `codes` VALUES (1,'JldpucSdCk','2017-02-03 13:23:46','1','1','3'),(2,'VeKu12cTgy','2017-02-03 23:06:58','1','1','4'),(3,'dJ0ClFEI3A','2017-02-03 23:06:58','1','1','5'),(4,'uAsz3A1N6x','2017-02-03 23:06:58','1','1','6'),(5,'y1LjwMlIGC','2017-02-03 23:06:58','1','1','7'),(6,'gTlgwHVbpZ','2017-02-03 23:06:58','1','1','8'),(7,'csxqcZGmdS','2017-02-03 23:22:05',NULL,'0',NULL),(8,'NwOO5wuFPS','2017-02-03 23:22:05',NULL,'0',NULL),(9,'gAuQFOjP1Q','2017-02-03 23:22:05',NULL,'0',NULL),(10,'xei5Ev4lRh','2017-02-03 23:22:05',NULL,'0',NULL),(11,'eFN3tTzYzp','2017-02-03 23:22:05',NULL,'0',NULL),(12,'RP0lFF9Zvb','2017-02-03 23:22:05',NULL,'0',NULL),(13,'Q2p874Ecpw','2017-02-03 23:22:05',NULL,'0',NULL),(14,'67gYx6KOI8','2017-02-03 23:22:58','1','1','9'),(15,'BZF6w5ud5O','2017-02-03 23:22:58','1','1','10'),(16,'7m70SmkTNS','2017-02-03 23:22:58','1','1','11'),(17,'KT00Sy7CmP','2017-02-03 23:22:58','1','1','12'),(18,'KXPq4mvyzB','2017-02-03 23:22:58','1','1','13'),(19,'nHYvIQS3KF','2017-02-03 23:22:58','1','1','14'),(20,'VvzVwrtD3Q','2017-02-03 23:22:58','1','1','15'),(21,'Uqk7ZRB1Jl','2017-02-03 23:41:17','1','1','16'),(22,'jnuBfhobad','2017-02-03 23:41:17','1','1','17'),(23,'EjTUA3MKkk','2017-02-03 23:41:17','1','1','18'),(24,'pfLJnKBYMk','2017-02-03 23:41:17','1','1','19'),(25,'k5IPHY659h','2017-02-03 23:41:17','1','1','20'),(26,'jOAcIafuUA','2017-02-03 23:41:17','1','1','21'),(27,'PkQA3dlFc7','2017-02-03 23:41:17','1','1','22'),(28,'HdkIiDPpo0','2017-02-04 10:33:58','1','0',NULL),(29,'5R9nStUkuv','2017-02-04 10:33:58','1','1','23'),(30,'kZD6UHy8uZ','2017-02-04 10:33:58','1','0',NULL),(31,'4bcoTv2JVq','2017-02-04 10:33:58','1','0',NULL),(32,'J1iToamiuR','2017-02-04 10:33:58','1','1','24'),(33,'OORsVL9tTD','2017-02-04 10:33:58','1','1','25'),(34,'tXPGmJcos7','2017-02-04 10:33:58','1','1','26'),(35,'Pb975yirQM','2017-02-04 10:33:58','1','0',NULL),(36,'iFB97wVg0O','2017-02-04 10:33:58','1','0',NULL),(37,'TuMIa8rnxU','2017-02-04 10:33:58','1','0',NULL),(38,'vn5EuacMC3','2017-02-04 10:33:58','1','0',NULL),(39,'zVIb5PI05J','2017-02-04 10:33:58','1','0',NULL),(40,'OZdBIoKaLh','2017-02-04 10:33:58','1','0',NULL),(41,'4gE9V9k7WW','2017-02-04 10:33:58','1','0',NULL),(42,'awSTHXIpXN','2017-02-04 10:33:58','1','0',NULL),(43,'8MNmovK8Fw','2017-02-04 10:33:58','1','0',NULL),(44,'pJN4TIeeQa','2017-02-04 10:33:58','1','0',NULL),(45,'a0G3To0CNY','2017-02-04 10:33:58','1','0',NULL),(46,'pWKdi8I3ho','2017-02-04 10:33:58','1','0',NULL),(47,'zH7nL150fV','2017-02-04 10:33:58','1','0',NULL),(48,'bqWRtQgts3','2017-02-04 10:33:58','1','0',NULL),(49,'sS0c5jlNmC','2017-02-04 10:33:58','1','0',NULL),(50,'cWkkj5lo6A','2017-02-04 10:33:58','1','0',NULL),(51,'kh1g9u6pYy','2017-02-04 10:33:58','1','0',NULL),(52,'tqqtDwMZk9','2017-02-04 10:33:58','1','0',NULL),(53,'Cw5WQp2bO8','2017-02-04 10:33:58','1','0',NULL),(54,'M8qNozivZg','2017-02-04 10:33:58','1','0',NULL),(55,'4sGuWk1Jjl','2017-02-04 10:33:58','1','0',NULL),(56,'SVRYSHnUTc','2017-02-04 10:33:58','1','0',NULL),(57,'3GkttJ2Le1','2017-02-04 10:33:58','1','0',NULL),(58,'2iuJNq3O9n','2017-02-04 10:33:58','1','0',NULL),(59,'92j10bJo5C','2017-02-04 10:33:58','1','0',NULL),(60,'A8iVCMEEyT','2017-02-04 10:33:58','1','0',NULL),(61,'GAcajZBnOL','2017-02-04 10:33:58','1','0',NULL),(62,'KYN3ZOfJdk','2017-02-04 10:33:58','1','0',NULL),(63,'lOtEJ5roKZ','2017-02-04 10:33:58','1','0',NULL),(64,'hrztCTtdgi','2017-02-04 10:33:58','1','0',NULL),(65,'Y1hM4hBj0O','2017-02-04 10:33:58','1','0',NULL),(66,'EmD80merKZ','2017-02-04 10:33:58','1','0',NULL),(67,'q2q0w2T0ga','2017-02-04 10:33:58','1','0',NULL),(68,'iebA1gRCAR','2017-02-04 10:33:58','1','0',NULL),(69,'red4nerBGc','2017-02-04 10:33:58','1','0',NULL);
/*!40000 ALTER TABLE `codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_user_id` int(11) DEFAULT NULL,
  `c_amount` float DEFAULT NULL,
  `r_user_id` int(11) DEFAULT NULL,
  `depth` varchar(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,2,50,3,NULL,'referral','2017-02-03 06:24:58'),(2,2,50,4,NULL,'referral','2017-02-03 16:07:50'),(3,2,50,5,NULL,'referral','2017-02-03 16:09:01'),(4,2,50,6,NULL,'referral','2017-02-03 16:10:44'),(5,2,50,7,NULL,'referral','2017-02-03 16:12:00'),(6,2,50,8,NULL,'referral','2017-02-03 16:13:36'),(7,2,50,9,NULL,'referral','2017-02-03 16:24:28'),(8,9,50,10,NULL,'referral','2017-02-03 16:26:24'),(9,9,50,11,NULL,'referral','2017-02-03 16:28:19'),(10,9,50,12,NULL,'referral','2017-02-03 16:30:51'),(11,9,50,13,NULL,'referral','2017-02-03 16:32:41'),(12,9,50,14,NULL,'referral','2017-02-03 16:34:09'),(13,9,50,15,NULL,'referral','2017-02-03 16:38:30'),(14,5,50,16,NULL,'referral','2017-02-03 16:43:39'),(15,16,50,17,NULL,'referral','2017-02-03 16:48:18'),(16,16,50,18,NULL,'referral','2017-02-03 16:49:51'),(17,16,50,19,NULL,'referral','2017-02-03 17:02:32'),(18,16,50,20,NULL,'referral','2017-02-03 17:03:39'),(19,16,50,21,NULL,'referral','2017-02-03 17:04:37'),(20,16,50,22,NULL,'referral','2017-02-03 17:06:17'),(21,5,50,23,NULL,'referral','2017-02-06 23:23:41'),(22,6,50,24,NULL,'referral','2017-02-06 23:57:48'),(23,23,50,25,NULL,'referral','2017-02-07 00:02:20'),(24,23,50,26,NULL,'referral','2017-02-07 00:07:19');
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchy`
--

DROP TABLE IF EXISTS `hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchy` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchy`
--

LOCK TABLES `hierarchy` WRITE;
/*!40000 ALTER TABLE `hierarchy` DISABLE KEYS */;
INSERT INTO `hierarchy` VALUES (1,2,2,0,'parent','SystemCreate','2017-02-03 06:19:34'),(2,3,3,0,'parent','SystemCreate','2017-02-03 06:24:58'),(3,2,3,1,'left','luyabaya1','2017-02-03 07:25:25'),(4,4,4,0,'parent','SystemCreate','2017-02-03 16:07:50'),(5,5,5,0,'parent','SystemCreate','2017-02-03 16:09:01'),(6,6,6,0,'parent','SystemCreate','2017-02-03 16:10:44'),(7,7,7,0,'parent','SystemCreate','2017-02-03 16:12:00'),(8,8,8,0,'parent','SystemCreate','2017-02-03 16:13:36'),(9,2,4,1,'right','luyabaya1','2017-02-03 16:19:27'),(10,3,5,1,'left','luyabaya1','2017-02-03 16:19:44'),(11,2,5,2,'left','luyabaya1','2017-02-03 16:19:44'),(12,3,6,1,'right','luyabaya1','2017-02-03 16:20:04'),(13,2,6,2,'right','luyabaya1','2017-02-03 16:20:04'),(14,4,7,1,'left','luyabaya1','2017-02-03 16:20:20'),(15,2,7,2,'left','luyabaya1','2017-02-03 16:20:20'),(16,4,8,1,'right','luyabaya1','2017-02-03 16:20:31'),(17,2,8,2,'right','luyabaya1','2017-02-03 16:20:31'),(18,9,9,0,'parent','SystemCreate','2017-02-03 16:24:28'),(19,10,10,0,'parent','SystemCreate','2017-02-03 16:26:24'),(20,11,11,0,'parent','SystemCreate','2017-02-03 16:28:19'),(21,12,12,0,'parent','SystemCreate','2017-02-03 16:30:51'),(22,13,13,0,'parent','SystemCreate','2017-02-03 16:32:41'),(23,14,14,0,'parent','SystemCreate','2017-02-03 16:34:09'),(24,9,10,1,'left','john_erneil','2017-02-03 16:34:50'),(25,9,11,1,'right','john_erneil','2017-02-03 16:34:57'),(26,10,12,1,'left','john_erneil','2017-02-03 16:35:27'),(27,9,12,2,'left','john_erneil','2017-02-03 16:35:27'),(28,10,13,1,'right','john_erneil','2017-02-03 16:35:59'),(29,9,13,2,'right','john_erneil','2017-02-03 16:35:59'),(30,11,14,1,'left','john_erneil','2017-02-03 16:36:37'),(31,9,14,2,'left','john_erneil','2017-02-03 16:36:37'),(32,15,15,0,'parent','SystemCreate','2017-02-03 16:38:30'),(33,11,15,1,'right','john_erneil','2017-02-03 16:39:01'),(34,9,15,2,'right','john_erneil','2017-02-03 16:39:01'),(35,16,16,0,'parent','SystemCreate','2017-02-03 16:43:39'),(36,17,17,0,'parent','SystemCreate','2017-02-03 16:48:18'),(37,18,18,0,'parent','SystemCreate','2017-02-03 16:49:51'),(38,19,19,0,'parent','SystemCreate','2017-02-03 17:02:32'),(39,20,20,0,'parent','SystemCreate','2017-02-03 17:03:39'),(40,21,21,0,'parent','SystemCreate','2017-02-03 17:04:37'),(41,22,22,0,'parent','SystemCreate','2017-02-03 17:06:17'),(42,16,17,1,'left','art_layno','2017-02-03 17:06:46'),(43,16,18,1,'right','art_layno','2017-02-03 17:06:54'),(44,17,19,1,'left','art_layno','2017-02-03 17:07:03'),(45,16,19,2,'left','art_layno','2017-02-03 17:07:03'),(46,17,20,1,'right','art_layno','2017-02-03 17:07:15'),(47,16,20,2,'right','art_layno','2017-02-03 17:07:15'),(48,18,21,1,'left','art_layno','2017-02-03 17:07:25'),(49,16,21,2,'left','art_layno','2017-02-03 17:07:25'),(50,18,22,1,'right','art_layno','2017-02-03 17:07:34'),(51,16,22,2,'right','art_layno','2017-02-03 17:07:34'),(52,23,23,0,'parent','SystemCreate','2017-02-06 23:23:41'),(53,24,24,0,'parent','SystemCreate','2017-02-06 23:57:48'),(54,25,25,0,'parent','SystemCreate','2017-02-07 00:02:20'),(55,26,26,0,'parent','SystemCreate','2017-02-07 00:07:19');
/*!40000 ALTER TABLE `hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `position_left` varchar(100) DEFAULT NULL,
  `position_right` varchar(100) NOT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL,
  `upline` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'2','3','4','2','2'),(2,'3','5','6','2','3'),(3,'4','7','8','2','4'),(4,'5','','','2',''),(5,'6','','','2',''),(6,'7','','','2',''),(7,'8','','','2',''),(8,'9','10','11','2','9'),(9,'10','12','13','9','10'),(10,'11','14','15','9','11'),(11,'12','','','9',''),(12,'13','','','9',''),(13,'14','','','9',''),(14,'15','','','9',''),(15,'16','17','18','5','16'),(16,'17','19','20','16','17'),(17,'18','21','22','16','18'),(18,'19','','','16',''),(19,'20','','','16',''),(20,'21','','','16',''),(21,'22','','','16',''),(22,'23','','','5',''),(23,'24','','','6',''),(24,'25','','','23',''),(25,'26','','','23','');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `entered_on` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','12345','Luyabaya','Admin','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2016-12-23 05:50:47','',1,'luyabaya@gmail.com',''),(2,'luyabaya1','12345','Luyabaya','1','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2016-12-23 05:50:47','1',0,'luyabaya@gmail.com','2'),(3,'luyabaya2','12345','Luyabaya2','Luyabaya2','M','09123123112','Jacinto Extension','2017-02-03 23:06:47',NULL,0,'','2'),(4,'luyabaya3','12345','Luyabaya3','Luiyabaya3','M','3272317','Davao City','2017-02-03 23:07:50',NULL,0,'','2'),(5,'luyabaya4','12345','Luyabaya4','Luyabaya4','M','1234567','Davao City','2017-02-03 23:09:01',NULL,0,'','2'),(6,'luyabaya5','12345','Luyabaya5','Luyabaya5','M','1234567','Davao City','2017-02-03 23:10:44',NULL,0,'','2'),(7,'luyabaya6','12345','Luyabaya6','Luyabaya6','M','1234567','Davao City','2017-02-03 23:12:00',NULL,0,'','2'),(8,'luyabaya7','12345','Luyabaya7','Luyabaya7','M','1234567','Davao City','2017-02-03 23:13:36',NULL,0,'','2'),(9,'john_erneil','8879','John Erneil','Jusi','M','3272317','Davao City','2017-02-03 23:24:28',NULL,0,'nhooj@yahoo.com','2'),(10,'john_erneil2','8879','John_erneil2','Jusi','M','3272317','Davao City','2017-02-03 23:26:24',NULL,0,'nhooj@yahoo.com','9'),(11,'John_erneil3','8879','John_erneil3','Jusi','M','3272317','Davao City','2017-02-03 23:28:19',NULL,0,'','9'),(12,'john_erneil4','8879','John_erneil4','Jusi','M','3272317','Davao City','2017-02-03 23:30:51',NULL,0,'nhooj@yahoo.com','9'),(13,'john_erneil5','8879','John_erneil5','Jusi','M','3272317','Davao City','2017-02-03 23:32:41',NULL,0,'nhooj@yahoo.com','9'),(14,'john_erneil6','8879','John_erneil6','Jusi','M','3272317','Davao City','2017-02-03 23:34:09',NULL,0,'nhooj@yahoo.com','9'),(15,'John_erneil7','8879','John_erneil7','Jusi','M','3272317','Davao City','2017-02-03 23:38:30',NULL,0,'nhooj@yahoo.com','9'),(16,'art_layno','12345','Arthur','Layno','M','1234567','Davao City','2017-02-03 23:43:39',NULL,0,'','5'),(17,'art_layno2','12345','Arthur2','Layno','M','1234567','Davao City','2017-02-03 23:48:18',NULL,0,'','16'),(18,'art_layno3','12345','Arthur3','Layno','M','1234567','Davao City','2017-02-03 23:49:51',NULL,0,'','16'),(19,'art_layno4','12345','Arthur4','Layno','M','1234567','Davao City','2017-02-04 00:02:32',NULL,0,'','16'),(20,'art_layno5','12345','Arthur5','Layno','M','1234567','Davao City','2017-02-04 00:05:11',NULL,0,'','16'),(21,'art_layno6','12345','Arthur6','Layno','M','1234567','Davao City','2017-02-04 00:04:37',NULL,0,'','16'),(22,'art_layno7','12345','Arthur7','Layno','M','1234567','Davao City','2017-02-04 00:06:17',NULL,0,'','16'),(23,'art_layno7','12345','Eduard','Aro','Male','09161964437','Davao City','2017-02-07 06:23:41',NULL,0,'eduard.aro13@rocketmail.com','5'),(24,'ed1','1234567','Eduard','Aro','M','09161964437','Davao City','2017-02-07 06:57:48',NULL,0,'edaro13','6'),(25,'ed2','1234567','Eduard','Aro','M','09161964437','Davao City','2017-02-07 07:02:20',NULL,0,'edaro13','23'),(26,'ruby1','1234567','Rubylyn','Serdan','F','09368625823','Davao City','2017-02-07 07:07:19',NULL,0,'salcedowendy@rocketmail.com','23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal`
--

DROP TABLE IF EXISTS `withdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdrawal` (
  `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_user_id` int(11) DEFAULT NULL,
  `w_amount` float DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`withdrawal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal`
--

LOCK TABLES `withdrawal` WRITE;
/*!40000 ALTER TABLE `withdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'luyabaya_binary'
--

--
-- Dumping routines for database 'luyabaya_binary'
--
/*!50003 DROP FUNCTION IF EXISTS `add_userCommission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` FUNCTION `add_userCommission`(userId INT, amount FLOAT, _desc VARCHAR(45), r_userId INT, _depth VARCHAR(11)) RETURNS varchar(11) CHARSET latin1
BEGIN
	DECLARE _return VARCHAR(11);
    DECLARE _dCounter INT(11);
    
    SET _dCounter = (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND depth = _depth);
    
	IF _desc = 'upline'
		THEN
			IF r_userId IS NOT NULL AND (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND r_user_id = r_userId) != 1
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, _depth, _desc, NOW());
					SET _return = 'success upline';
            ELSE
				SET _return = 'error upline';
            END IF;
            
            
            IF r_userId IS NULL AND _dCounter != 2
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, null, _depth, _desc, NOW());
					SET _return = 'success upline';
			ELSE
				SET _return = 'error upline';
            END IF;
	ELSEIF _desc = 'referral'
		THEN
			INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, null, _desc, NOW());
			SET _return = 'success referral';
	ELSE
			SET _return = 'error referral';
    END IF;
    
    RETURN _return;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_FullName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` FUNCTION `get_FullName`(`userId` INT(11)) RETURNS varchar(100) CHARSET latin1
BEGIN
	DECLARE _desc VARCHAR(100);

	SET _desc = (SELECT CONCAT(n.first_name, ' ', n.last_name) FROM users n WHERE n.user_id = userId);

	RETURN _desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_Parent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` FUNCTION `get_Parent`(`childId` INT(11)) RETURNS int(11)
BEGIN
	DECLARE id INT(11);

	SET id = (SELECT parent FROM hierarchy WHERE child = childId AND parent != child  LIMIT 1);
    
    IF id IS NULL
		THEN 
			SET id = childId;
	ELSE
		SET id = id;
	END IF;

	RETURN id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_userCommission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `add_userCommission`(IN userId INT, IN amount FLOAT, IN _desc VARCHAR(45), IN r_userId INT, _depth VARCHAR(11))
BEGIN
    DECLARE _dCounter INT(11);
    
    SET _dCounter = (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND depth = _depth);
    
	IF _desc = 'upline'
		THEN
			IF r_userId IS NOT NULL AND (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND r_user_id = r_userId) != 1
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, _depth, _desc, NOW());
			END IF;
            
            
            IF r_userId IS NULL AND _dCounter != 2
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, null, _depth, _desc, NOW());
			END IF;
	ELSEIF _desc = 'referral'
		THEN
			INSERT INTO commission (c_user_id, c_amount, r_user_id, remarks, date_create) VALUES(userId, amount, r_userId, _desc, NOW());
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_userDownlines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `add_userDownlines`(IN parentId INT(11), IN childId INT(11), IN _position VARCHAR(100), IN createdBy VARCHAR(100))
BEGIN
	DECLARE userId VARCHAR(100);
    DECLARE _depth INT(11);
    
    IF createdBy = '' THEN 
		SET userId = 'SystemCreate';
	ELSE
		SET userId = (SELECT user_name FROM users WHERE user_id = createdBy);
	END IF;
    
    IF (SELECT COALESCE(depth, 0) FROM hierarchy WHERE parent = parentId ORDER BY datetime DESC LIMIT 1) IS NULL
    THEN
		SET _depth = 0;
		INSERT INTO hierarchy (parent, child, depth, position, created_by, datetime) 
			VALUES (parentId, childId, (_depth), _position, userId, NOW());
	ELSE
		#SET _depth = (SELECT COALESCE(depth, 0) FROM hierarchy WHERE parent = parentId ORDER BY datetime DESC LIMIT 1);
		INSERT INTO hierarchy (parent, child, depth, position, created_by, datetime)
			SELECT parent, childId, 
            CASE WHEN
			depth <> 0	THEN (((SELECT COALESCE(depth, 0) FROM hierarchy WHERE child = parentId ORDER BY datetime DESC LIMIT 1)) + 1)
			ELSE 1 END
            , _position, userId, NOW() FROM hierarchy
				WHERE child = parentId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_Downlines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `check_Downlines`(IN userId INT, IN _depth INT)
BEGIN
	DECLARE str_list VARCHAR(100);
    
	DROP TEMPORARY TABLE IF EXISTS _temp;
	CREATE TEMPORARY TABLE IF NOT EXISTS _temp AS (select 
			-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
			d.child, d.depth,
			get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position
		from hierarchy d
		join hierarchy a on (a.child = d.child)
		join users n on (n.user_id = a.parent)
		where d.parent = userId
		group by d.child);
		
	SET str_list = (SELECT GROUP_CONCAT(DISTINCT(depth) SEPARATOR ',') FROM _temp);
    
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	select 
		-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
        d.child, 
		CASE 
			WHEN d.depth IN (0,1,2) THEN d.depth
            WHEN d.depth IN (1,2) THEN d.depth
            WHEN d.depth IN (2, 3) THEN 
				CASE 
					WHEN (SELECT GROUP_CONCAT(DISTINCT(depth) SEPARATOR ',') FROM _temp) =  '0,1,2,3' THEN d.depth 
					ELSE 2 END 
		ELSE d.depth END AS depth, 
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position,
        get_DescendantCount(d.child) AS child_count
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    SELECT * FROM _hierarchy WHERE depth = _depth;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clean_DB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `clean_DB`()
BEGIN

	TRUNCATE TABLE users;
	TRUNCATE TABLE position;
	TRUNCATE TABLE codes;
	TRUNCATE TABLE commission;
	TRUNCATE TABLE withdrawal;
	TRUNCATE TABLE hierarchy;
	TRUNCATE TABLE _selectedhierarchy;

	INSERT INTO `users`
	(`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`)
	VALUES
	(1, 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2016-12-23 05:50:47', '', 1, 'luyabaya@gmail.com', ''),
	(2, 'luyabaya1', '12345', 'Luyabaya', '1', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2016-12-23 05:50:47', '1', 0, 'luyabaya@gmail.com', '2');

	INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES (1, '2', '', '', '2', '2');
	INSERT INTO `hierarchy` (`p_id`,`parent`,`child`,`depth`,`position`, `created_by`,`datetime`) VALUES (1,2,2, 0,'parent','SystemCreate', NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_AvailableDownline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_AvailableDownline`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN
      DECLARE pr_Id INT(11);
	  DECLARE pl_Id INT(11);

      DROP TABLE IF EXISTS availableDownline;
      IF isPosition = 'L' THEN
				  SET pl_Id = (SELECT position_left FROM position WHERE upline = userId);

                  CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS 
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = pl_Id
					WHERE p.upline = userId)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id 
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = p.position_left
						WHERE p.upline =  pl_Id)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
															  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
										FROM users u
												LEFT JOIN position p ON p.position_right = u.user_id 
												LEFT JOIN users up ON up.user_id = p.upline
												LEFT JOIN position pr ON pr.user_id = p.position_right
											WHERE p.upline =  pl_Id);
      ELSE
					SET pr_Id = (SELECT position_right FROM position WHERE upline = userId);

					CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_right = u.user_id
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = pr_Id
					WHERE p.upline = userId)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id 
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = p.position_left
						WHERE p.upline =  pr_Id)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
															  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
										FROM users u
												LEFT JOIN position p ON p.position_right = u.user_id 
												LEFT JOIN users up ON up.user_id = p.upline
												LEFT JOIN position pr ON pr.user_id = p.position_right
											WHERE p.upline =  pr_Id);

      END IF;

      SELECT * FROM availableDownline WHERE (p_left <= 0 OR p_right <= 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_downLines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_downLines`(IN userId INT)
BEGIN
	SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
	(CASE
		WHEN p.position_right = u.user_id THEN 'R'
		WHEN p.position_left = u.user_id THEN 'L'
		ELSE ''
	END) AS isPosition,
	CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
	up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
	FROM users u
		LEFT JOIN position p ON p.position_left = u.user_id OR p.position_right = u.user_id
		LEFT JOIN users up ON up.user_id = p.upline
	WHERE p.upline = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Hierarchy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
BEGIN
	DECLARE str_list VARCHAR(100);
    
	DROP TEMPORARY TABLE IF EXISTS _temp;
	CREATE TEMPORARY TABLE IF NOT EXISTS _temp AS (select 
			-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
			d.child, d.depth,
			get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position
		from hierarchy d
		join hierarchy a on (a.child = d.child)
		join users n on (n.user_id = a.parent)
		where d.parent = userId
		group by d.child);
		
	SET str_list = (SELECT GROUP_CONCAT(DISTINCT(depth) SEPARATOR ',') FROM _temp);
    
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	select 
		-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
        d.child, d.depth, 
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    TRUNCATE TABLE _selectedhierarchy;
    INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position) 
		SELECT child, depth, full_name, parent, position FROM _hierarchy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_MembersAssigned` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_MembersAssigned`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN

	IF isPosition = 'L' THEN
			SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
				CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
				up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
				FROM users u
					LEFT JOIN position p ON p.position_left = u.user_id
					LEFT JOIN users up ON up.user_id = p.upline
				WHERE p.upline = userId AND p.position_left >  0;
	ELSE
			SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
				CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
				up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
				FROM users u
					LEFT JOIN position p ON p.position_right = u.user_id
					LEFT JOIN users up ON up.user_id = p.upline
				WHERE p.upline = userId AND p.position_right > 0;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_selectedHierarchy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_selectedHierarchy`(IN _val INT, IN _get VARCHAR(11))
BEGIN
	IF _get = 'depth'
		THEN
			SELECT * FROM _selectedhierarchy WHERE depth = _val;
	ELSE
			SELECT * FROM _selectedhierarchy WHERE parent = _val OR child = _val;
		END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_unAssignedUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_unAssignedUsers`(IN userId INT)
BEGIN
	
	DROP TABLE IF EXISTS unassignedUsers;
	CREATE TEMPORARY TABLE IF NOT EXISTS unassignedUsers AS
	(SELECT 
		u.user_id as u_user_id, u.first_name as u_first_name, u.last_name as u_last_name,
		u.contact as u_contact, u.address as u_address, u.email as u_email, u.gender as u_gender,
		u.sponsor_by as u_sponsor,
		p.position_id as p_position_id,
		p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, p.position_left as p_left, p.position_right as p_right
		FROM users u 
		JOIN position p ON p.user_id = u.user_id
		WHERE
			NOT EXISTS(SELECT pos.position_right 
						  FROM   position pos
						  WHERE  pos.position_right <> '' AND pos.position_right = u.user_id
						 )
			AND
			NOT EXISTS(SELECT pos.position_left 
						  FROM   position pos
						  WHERE  pos.position_left <> '' AND pos.position_left = u.user_id
						 ));

	SELECT * FROM unassignedUsers
		WHERE p_left = '' AND p_right = '' AND p_user_id != userId AND p_sponsor_by = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_userCashOnHand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_userCashOnHand`(IN userId INT)
BEGIN
	DROP TABLE IF EXISTS totalCashOnHand;

	CREATE TEMPORARY TABLE IF NOT EXISTS totalCashOnHand AS(
	SELECT COALESCE(SUM(c.c_amount), 0) AS total_commissions, COALESCE(SUM(w.w_amount), 0) AS total_withdrawals
		FROM commission c
			LEFT JOIN withdrawal w ON w.w_user_id = c.c_user_id
	WHERE w.w_user_id = userId OR c.c_user_id = userId);

	SELECT CONCAT('Php. ', CONVERT(COALESCE((total_commissions - total_withdrawals), 0), DECIMAL(10, 2))) AS totalCashOnHand FROM totalCashOnHand;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_userCommissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_userCommissions`(IN userId INT)
BEGIN
	SELECT 
		CONCAT('Php. ', CONVERT(COALESCE(c_amount, 0), DECIMAL(10, 2))) AS c_amount, 
		DATE_FORMAT(date_create,'%m-%d-%Y') AS date_create, 
        (CASE 
			WHEN remarks = 'referral' THEN 'Lead Referral'
            WHEN remarks = 'upline' THEN 'Complete Downlines'
			ELSE ''
		END) AS remarks
	FROM commission WHERE c_user_id = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_userMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_userMembers`(IN userId INT)
BEGIN
	SELECT 
	(CASE WHEN
		position_left = '' THEN 0 ELSE COALESCE(COUNT(position_left), 0) END) + (CASE WHEN
		position_right = '' THEN 0 ELSE COALESCE(COUNT(position_right), 0) END) AS countMembers
	FROM position WHERE user_id = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_userWithdrawals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`admindev_db`@`localhost` PROCEDURE `get_userWithdrawals`(IN userId INT)
BEGIN
	SELECT 
		CONCAT('Php. ', CONVERT(COALESCE(w_amount, 0), DECIMAL(10, 2))) AS w_amount, 
		DATE_FORMAT(date_create,'%m-%d-%Y') AS date_create 
	FROM withdrawal WHERE w_user_id = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-13 19:54:15
