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
-- Dumping data for table `_selectedhierarchy`
--

LOCK TABLES `_selectedhierarchy` WRITE;
/*!40000 ALTER TABLE `_selectedhierarchy` DISABLE KEYS */;
INSERT INTO `_selectedhierarchy` VALUES (1,2,0,'Luyabaya 1',2,'parent',NULL),(2,3,1,'Luyabaya 2',2,'left','left'),(3,4,1,'Luyabaya 3',2,'right','right'),(4,5,2,'Luyabaya 4',3,'left','left'),(5,6,2,'Luyabaya 5',3,'right','left'),(6,7,2,'Luyabaya 6',4,'left','right'),(7,8,2,'Luyabaya 7',4,'right','right');
/*!40000 ALTER TABLE `_selectedhierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `codes`
--

LOCK TABLES `codes` WRITE;
/*!40000 ALTER TABLE `codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,2,60,2,'depth_2-0','upline','2017-02-14 19:38:34'),(2,2,60,NULL,'depth_2-1','upline','2017-02-14 19:40:01');
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hierarchy`
--

LOCK TABLES `hierarchy` WRITE;
/*!40000 ALTER TABLE `hierarchy` DISABLE KEYS */;
INSERT INTO `hierarchy` VALUES (1,2,2,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(2,2,2,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(3,3,3,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(4,4,4,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(5,5,5,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(6,6,6,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(7,7,7,0,'parent',NULL,'SystemCreate','2017-02-14 08:59:29'),(8,2,3,1,'left','left','luyabaya1','2017-02-14 19:38:30'),(9,2,3,1,'left','left','luyabaya1','2017-02-14 19:38:30'),(10,2,4,1,'right','right','luyabaya1','2017-02-14 19:38:42'),(11,2,4,1,'right','right','luyabaya1','2017-02-14 19:38:42'),(12,3,5,1,'left','left','luyabaya1','2017-02-14 19:39:13'),(13,2,5,2,'left','left','luyabaya1','2017-02-14 19:39:13'),(14,2,5,2,'left','left','luyabaya1','2017-02-14 19:39:13'),(15,3,6,1,'right','left','luyabaya1','2017-02-14 19:39:43'),(16,2,6,2,'right','left','luyabaya1','2017-02-14 19:39:43'),(17,2,6,2,'right','left','luyabaya1','2017-02-14 19:39:43'),(18,3,6,1,'right','left','luyabaya1','2017-02-14 19:39:44'),(19,2,6,2,'right','left','luyabaya1','2017-02-14 19:39:44'),(20,2,6,2,'right','left','luyabaya1','2017-02-14 19:39:44'),(21,4,7,1,'left','right','luyabaya1','2017-02-14 19:40:00'),(22,2,7,2,'left','right','luyabaya1','2017-02-14 19:40:00'),(23,2,7,2,'left','right','luyabaya1','2017-02-14 19:40:00'),(24,4,8,1,'right','right','luyabaya1','2017-02-14 19:40:37'),(25,2,8,2,'right','right','luyabaya1','2017-02-14 19:40:37'),(26,2,8,2,'right','right','luyabaya1','2017-02-14 19:40:37');
/*!40000 ALTER TABLE `hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'2','3','4','2','2'),(2,'3','5','6','2','3'),(3,'4','7','8','2','4'),(4,'5','','','2',NULL),(5,'6','','','2',NULL),(6,'7','','','2',NULL),(7,'8','','','2',NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','12345','Luyabaya','Admin','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','',1,'luyabaya@gmail.com',''),(2,'luyabaya1','12345','Luyabaya','1','','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya@gmail.com','2'),(3,'luyabaya2','12345','Luyabaya','2','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya2@gmail.com','2'),(4,'luyabaya3','12345','Luyabaya','3','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya3@gmail.com','2'),(5,'luyabaya4','12345','Luyabaya','4','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya4@gmail.com','2'),(6,'luyabaya5','12345','Luyabaya','5','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya5@gmail.com','2'),(7,'luyabaya6','12345','Luyabaya','6','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya6@gmail.com','2'),(8,'luyabaya7','12345','Luyabaya','7','M','(082) 282 8849','Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines','2017-02-14 08:59:29','1',0,'luyabaya7@gmail.com','2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-02-18 12:53:09
