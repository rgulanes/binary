CREATE DATABASE  IF NOT EXISTS `luyabaya_binary` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `luyabaya_binary`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: luyabaya_binary
-- ------------------------------------------------------
-- Server version	5.6.33-cll-lve

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
-- Table structure for table `_currentchild`
--

DROP TABLE IF EXISTS `_currentchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_currentchild` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `old_count` int(11) DEFAULT '0',
  `new_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_currentchild`
--

LOCK TABLES `_currentchild` WRITE;
/*!40000 ALTER TABLE `_currentchild` DISABLE KEYS */;
INSERT INTO `_currentchild` VALUES (1,2,9,9),(2,3,5,5),(3,4,2,2),(4,5,3,3),(5,6,0,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(16,11,0,0);
/*!40000 ALTER TABLE `_currentchild` ENABLE KEYS */;
UNLOCK TABLES;

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
  `m_position` varchar(50) DEFAULT NULL,
  `m_parent` int(10) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_selectedhierarchy`
--

LOCK TABLES `_selectedhierarchy` WRITE;
/*!40000 ALTER TABLE `_selectedhierarchy` DISABLE KEYS */;
INSERT INTO `_selectedhierarchy` VALUES (1,8,0,'Luyabaya 7',4,'right','right',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codes`
--

LOCK TABLES `codes` WRITE;
/*!40000 ALTER TABLE `codes` DISABLE KEYS */;
INSERT INTO `codes` VALUES (1,'xLnrK5QRKv','2017-03-05 04:37:05','1','1','9'),(2,'Lcw8JtfXfw','2017-03-05 04:37:05','1','1','10'),(3,'cNHtU7QL44','2017-03-05 04:37:05','1','1','11'),(4,'aCPx3ACTrn','2017-03-05 04:37:05','1','0',NULL),(5,'oczVlioAgE','2017-03-05 04:37:05','1','0',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,2,50,3,NULL,'referral','2017-03-04 21:36:17'),(2,2,50,4,NULL,'referral','2017-03-04 21:36:17'),(3,2,50,5,NULL,'referral','2017-03-04 21:36:17'),(4,2,50,6,NULL,'referral','2017-03-04 21:36:17'),(5,2,50,7,NULL,'referral','2017-03-04 21:36:17'),(6,2,50,8,NULL,'referral','2017-03-04 21:36:17'),(7,3,50,9,NULL,'referral','2017-03-04 21:42:05'),(8,3,50,10,NULL,'referral','2017-03-04 21:43:26'),(9,2,60,2,'pairing_1','upline','2017-03-04 22:00:01'),(10,2,60,2,'pairing_2','upline','2017-03-04 22:00:01'),(11,2,60,2,'pairing_3','upline','2017-03-04 22:00:01'),(12,2,60,2,'pairing_4','upline','2017-03-04 22:00:01'),(13,3,60,3,'pairing_1','upline','2017-03-04 22:00:02'),(14,3,60,3,'pairing_2','upline','2017-03-04 22:00:02'),(15,4,60,4,'pairing_1','upline','2017-03-04 22:00:03'),(16,5,60,5,'pairing_1','upline','2017-03-04 22:00:03'),(17,2,50,11,NULL,'referral','2017-03-05 03:32:47'),(18,2,60,2,'pairing_5','upline','2017-03-05 04:00:03'),(19,3,60,3,'pairing_3','upline','2017-03-05 04:00:04'),(20,5,60,5,'pairing_2','upline','2017-03-05 04:00:05');
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
  `m_position` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchy`
--

LOCK TABLES `hierarchy` WRITE;
/*!40000 ALTER TABLE `hierarchy` DISABLE KEYS */;
INSERT INTO `hierarchy` VALUES (1,2,2,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(2,2,2,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(3,3,3,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(4,4,4,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(5,5,5,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(6,6,6,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(7,7,7,0,'parent',NULL,'SystemCreate','2017-03-04 21:36:17'),(8,2,3,1,'left','left','SystemCreate','2017-03-04 21:36:17'),(9,2,3,1,'left','left','SystemCreate','2017-03-04 21:36:17'),(10,3,3,0,'left','left','SystemCreate','2017-03-04 21:36:17'),(11,2,4,1,'right','right','SystemCreate','2017-03-04 21:36:17'),(12,2,4,1,'right','right','SystemCreate','2017-03-04 21:36:17'),(13,4,4,0,'right','right','SystemCreate','2017-03-04 21:36:17'),(14,3,5,1,'left','left','SystemCreate','2017-03-04 21:36:17'),(15,2,5,2,'left','left','SystemCreate','2017-03-04 21:36:17'),(16,2,5,2,'left','left','SystemCreate','2017-03-04 21:36:17'),(17,3,5,1,'left','left','SystemCreate','2017-03-04 21:36:17'),(18,5,5,0,'left','left','SystemCreate','2017-03-04 21:36:17'),(21,3,6,1,'right','left','SystemCreate','2017-03-04 21:36:17'),(22,2,6,2,'right','left','SystemCreate','2017-03-04 21:36:17'),(23,2,6,2,'right','left','SystemCreate','2017-03-04 21:36:17'),(24,3,6,1,'right','left','SystemCreate','2017-03-04 21:36:17'),(25,6,6,0,'right','left','SystemCreate','2017-03-04 21:36:17'),(28,4,7,1,'left','right','SystemCreate','2017-03-04 21:36:17'),(29,2,7,2,'left','right','SystemCreate','2017-03-04 21:36:17'),(30,2,7,2,'left','right','SystemCreate','2017-03-04 21:36:17'),(31,4,7,1,'left','right','SystemCreate','2017-03-04 21:36:17'),(32,7,7,0,'left','right','SystemCreate','2017-03-04 21:36:17'),(35,4,8,1,'right','right','SystemCreate','2017-03-04 21:36:17'),(36,2,8,2,'right','right','SystemCreate','2017-03-04 21:36:17'),(37,2,8,2,'right','right','SystemCreate','2017-03-04 21:36:17'),(38,4,8,1,'right','right','SystemCreate','2017-03-04 21:36:17'),(39,8,8,0,'right','right','SystemCreate','2017-03-04 21:36:17'),(42,9,9,0,'parent','','mike-1','2017-03-04 21:42:05'),(43,5,9,1,'left','left','luyabaya4','2017-03-04 21:42:05'),(44,3,9,2,'left','left','luyabaya4','2017-03-04 21:42:05'),(45,2,9,3,'left','left','luyabaya4','2017-03-04 21:42:05'),(46,2,9,3,'left','left','luyabaya4','2017-03-04 21:42:05'),(47,3,9,2,'left','left','luyabaya4','2017-03-04 21:42:05'),(48,5,9,1,'left','left','luyabaya4','2017-03-04 21:42:05'),(49,9,9,0,'left','left','luyabaya4','2017-03-04 21:42:05'),(50,10,10,0,'parent','','mike-2','2017-03-04 21:43:26'),(51,5,10,1,'right','left','luyabaya4','2017-03-04 21:43:26'),(52,3,10,2,'right','left','luyabaya4','2017-03-04 21:43:26'),(53,2,10,3,'right','left','luyabaya4','2017-03-04 21:43:26'),(54,2,10,3,'right','left','luyabaya4','2017-03-04 21:43:26'),(55,3,10,2,'right','left','luyabaya4','2017-03-04 21:43:26'),(56,5,10,1,'right','left','luyabaya4','2017-03-04 21:43:26'),(57,10,10,0,'right','left','luyabaya4','2017-03-04 21:43:26'),(58,11,11,0,'parent','','jj','2017-03-05 03:32:47'),(59,10,11,1,'right','right','mike-2','2017-03-05 03:32:47'),(60,5,11,2,'right','right','mike-2','2017-03-05 03:32:47'),(61,3,11,3,'right','right','mike-2','2017-03-05 03:32:47'),(62,2,11,4,'right','right','mike-2','2017-03-05 03:32:47'),(63,2,11,4,'right','right','mike-2','2017-03-05 03:32:47'),(64,3,11,3,'right','right','mike-2','2017-03-05 03:32:47'),(65,5,11,2,'right','right','mike-2','2017-03-05 03:32:47'),(66,10,11,1,'right','right','mike-2','2017-03-05 03:32:47'),(67,11,11,0,'right','right','mike-2','2017-03-05 03:32:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'2','3','4','2','2'),(2,'3','5','6','2','3'),(3,'4','7','8','2','4'),(4,'5','9','10','2','5'),(5,'6','','','2',NULL),(6,'7','','','2',NULL),(7,'8','','','2',NULL),(8,'9','','','3',''),(9,'10','','11','3','10'),(10,'11','','','2','');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_purchase`
--

DROP TABLE IF EXISTS `product_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_purchase` (
  `product_purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_purchase` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`product_purchase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_purchase`
--

LOCK TABLES `product_purchase` WRITE;
/*!40000 ALTER TABLE `product_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_withdrawal`
--

DROP TABLE IF EXISTS `request_withdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_withdrawal` (
  `request_withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_requested` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`request_withdrawal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_withdrawal`
--

LOCK TABLES `request_withdrawal` WRITE;
/*!40000 ALTER TABLE `request_withdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_withdrawal` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','12345','Luyabaya','Admin','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','',1,'luyabaya@gmail.com',''),(2,'luyabaya1','12345','Luyabaya','1','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya@gmail.com','2'),(3,'luyabaya2','12345','Luyabaya','2','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya2@gmail.com','2'),(4,'luyabaya3','12345','Luyabaya','3','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya3@gmail.com','2'),(5,'luyabaya4','12345','Luyabaya','4','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya4@gmail.com','2'),(6,'luyabaya5','12345','Luyabaya','5','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya5@gmail.com','2'),(7,'luyabaya6','12345','Luyabaya','6','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya6@gmail.com','2'),(8,'luyabaya7','12345','Luyabaya','7','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-03-04 21:36:17','1',0,'luyabaya7@gmail.com','2'),(9,'mike-1','12345','Mike','1','M','09123012487','Sasa','2017-03-05 04:42:05',NULL,0,'mike1@gmail.com','3'),(10,'mike-2','12345','Mike','2','M','90123197512','Sasa','2017-03-05 04:43:26',NULL,0,'mike2@gmail.com','3'),(11,'jj','jj','Jj','Jj','M','12345','Dd','2017-03-05 10:32:47',NULL,0,'','2');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-06  0:31:23
