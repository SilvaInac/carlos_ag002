DROP SCHEMA IF EXISTS `ag002`;
CREATE DATABASE IF NOT EXISTS `ag002` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ag002`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ag002
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cancer`
--

DROP TABLE IF EXISTS `cancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cancer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `menopause` int DEFAULT NULL,
  `tumor_size` int DEFAULT NULL,
  `inv_nodes` int DEFAULT NULL,
  `node_caps` int DEFAULT NULL,
  `deg_malig` int DEFAULT NULL,
  `breast` int DEFAULT NULL,
  `breast_quad` int DEFAULT NULL,
  `irradiat` int DEFAULT NULL,
  `class` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancer`
--

LOCK TABLES `cancer` WRITE;
/*!40000 ALTER TABLE `cancer` DISABLE KEYS */;
INSERT INTO `cancer` VALUES (1,3,3,7,1,1,3,1,2,1,1),(2,4,3,5,1,1,2,2,3,1,1),(3,4,3,5,1,1,2,1,2,1,1),(4,6,2,4,1,1,2,2,1,1,1),(5,4,3,1,1,1,2,2,4,1,1),(6,6,2,4,1,1,2,1,2,1,1),(7,5,3,6,1,1,2,1,2,1,1),(8,6,2,5,1,1,1,1,2,1,1),(9,4,3,11,1,1,2,1,2,1,1),(10,4,3,5,1,1,2,2,1,1,1),(11,4,3,1,1,1,3,1,5,1,1),(12,5,2,6,1,1,2,1,2,1,1),(13,6,1,3,1,1,1,1,3,1,1),(14,5,2,6,1,1,3,1,3,1,1),(15,4,3,7,1,1,3,1,1,1,1),(16,6,1,7,1,1,1,1,2,1,1),(17,4,3,4,1,1,2,1,2,1,1),(18,5,3,7,1,1,3,1,2,1,1),(19,6,2,7,1,1,3,1,2,1,1),(20,5,2,7,1,1,1,2,3,1,1),(21,5,2,9,1,1,2,1,2,1,1),(22,6,2,4,1,1,2,1,2,1,1),(23,3,3,6,1,1,2,2,2,1,1),(24,5,3,9,1,1,2,1,1,1,1),(25,5,3,8,1,1,2,2,1,1,1),(26,4,3,6,1,1,2,1,1,1,1),(27,5,3,5,1,1,1,1,2,1,1),(28,6,2,6,1,1,3,2,1,1,1),(29,4,3,9,1,1,2,2,2,1,1),(30,6,2,7,1,1,2,1,2,1,1),(31,5,2,9,1,1,3,2,1,1,1),(32,5,3,4,1,1,2,2,2,1,1),(33,5,3,3,1,1,3,1,2,1,1),(34,5,2,3,1,1,1,2,1,1,1),(35,5,2,3,1,1,1,1,1,1,1),(36,3,3,7,1,1,2,1,1,1,1),(37,5,2,1,1,1,2,1,5,1,1),(38,5,2,4,1,1,1,2,5,1,1),(39,4,3,3,1,1,2,1,2,1,1),(40,4,3,7,1,1,1,1,2,1,1),(41,5,2,5,1,1,1,2,2,1,1),(42,6,2,6,1,1,2,1,2,1,1),(43,6,2,2,1,1,1,1,5,1,1),(44,4,3,3,1,1,2,1,1,1,1),(45,5,2,11,1,1,1,2,3,1,1),(46,5,2,7,1,1,1,1,1,1,1),(47,4,3,6,1,1,2,2,2,1,1),(48,5,3,6,1,1,1,2,1,1,1),(49,4,3,5,1,1,1,2,3,1,1),(50,4,3,5,1,1,1,2,2,1,1),(51,5,1,4,1,1,2,1,2,1,1),(52,3,3,5,1,1,2,1,4,1,1),(53,5,3,4,1,1,1,1,2,1,1),(54,7,2,5,1,1,3,1,1,1,1),(55,7,2,9,1,1,1,2,1,1,1),(56,7,2,9,1,1,1,2,3,1,1),(57,5,2,1,1,1,1,2,5,1,1),(58,5,2,2,1,1,2,2,3,1,1),(59,6,2,7,1,1,1,1,1,1,1),(60,6,2,4,1,1,1,2,1,1,1),(61,4,3,5,1,1,2,1,5,1,1),(62,4,3,3,1,1,1,2,4,1,1),(63,5,2,1,1,1,1,1,2,1,1),(64,2,3,8,1,1,2,2,3,1,1),(65,4,3,6,1,1,1,1,4,1,1),(66,4,3,3,1,1,1,2,1,1,1),(67,4,3,6,1,1,1,2,4,1,1),(68,5,2,5,1,1,3,1,1,1,1),(69,5,2,8,1,1,3,1,2,1,1),(70,6,2,11,1,1,2,1,2,1,1),(71,6,2,3,1,1,1,1,2,1,1),(72,4,3,6,1,1,2,2,1,1,1),(73,6,2,5,1,1,2,1,1,1,1),(74,5,3,4,1,1,2,2,4,1,1),(75,3,3,2,1,1,2,1,4,1,1),(76,5,2,3,1,1,1,1,2,1,1),(77,5,2,3,1,1,2,1,2,1,1),(78,3,3,6,1,1,1,1,5,1,1),(79,5,3,6,1,1,2,1,2,1,1),(80,4,3,6,1,1,2,2,5,1,1),(81,5,2,3,1,1,2,2,2,1,1),(82,6,2,3,1,1,1,1,1,1,1),(83,6,2,4,1,1,2,2,2,1,1),(84,5,2,4,1,1,2,2,2,1,1),(85,4,3,5,1,1,1,1,4,1,1),(86,5,2,8,1,1,3,1,1,1,1),(87,6,2,6,1,1,2,2,2,1,1),(88,7,2,1,1,1,1,1,4,1,1),(89,5,2,5,1,1,3,2,1,1,1),(90,4,3,9,1,1,1,2,1,1,1),(91,3,3,1,1,1,2,2,5,1,1),(92,5,2,5,1,1,3,1,1,1,1),(93,5,2,6,1,1,2,2,1,1,1),(94,6,2,5,1,1,2,2,1,1,1),(95,5,3,3,1,1,1,1,2,1,1),(96,4,3,7,1,1,2,2,4,1,1),(97,6,2,7,1,1,2,1,1,1,1),(98,6,2,4,1,1,2,2,1,1,1),(99,4,3,7,1,1,1,1,3,1,1),(100,3,3,6,1,1,2,1,2,1,1),(101,4,2,5,1,1,3,1,2,1,1),(102,5,2,7,1,1,3,2,2,1,1),(103,5,3,6,1,1,2,2,4,1,1),(104,4,3,5,1,1,2,1,4,1,1),(105,4,3,3,1,1,2,2,2,1,1),(106,4,3,7,1,1,1,2,1,1,1),(107,4,3,5,1,1,2,1,1,1,1),(108,3,3,9,1,1,2,2,3,1,1),(109,4,3,7,1,1,3,2,3,1,1),(110,6,2,7,1,1,1,2,1,1,1),(111,5,2,6,1,1,1,1,2,1,1),(112,5,2,4,1,1,1,2,5,1,1),(113,4,3,5,1,1,2,2,1,1,1),(114,4,3,3,1,1,1,2,1,1,1),(115,4,3,8,1,1,2,2,3,1,1),(116,5,2,5,1,1,2,2,1,1,1),(117,3,3,4,1,1,1,1,2,1,1),(118,4,2,5,1,1,3,1,1,1,1),(119,3,3,3,1,1,1,2,2,1,1),(120,6,2,4,1,1,1,1,4,1,1),(121,6,2,5,1,1,1,1,2,1,1),(122,5,2,4,1,1,2,2,3,1,1),(123,5,2,9,1,1,3,1,1,1,1),(124,5,2,7,1,1,1,2,2,1,1),(125,6,2,3,1,1,1,2,2,1,1),(126,7,2,3,1,1,2,1,5,1,1),(127,3,3,7,3,2,2,2,3,1,1),(128,3,3,6,3,2,2,2,1,2,1),(129,5,3,6,1,2,2,1,1,1,1),(130,4,3,8,4,2,2,2,1,2,1),(131,4,3,8,4,2,2,2,3,2,1),(132,4,3,9,2,2,3,2,1,2,1),(133,4,3,7,3,1,2,1,1,1,1),(134,5,2,9,1,1,3,1,3,1,1),(135,6,2,7,1,1,2,1,2,2,1),(136,3,3,5,2,1,2,2,5,1,1),(137,3,3,9,2,1,3,2,3,2,1),(138,4,3,2,1,1,1,1,2,2,1),(139,3,3,9,1,1,2,1,2,2,1),(140,4,3,7,1,1,2,1,4,1,1),(141,5,2,9,2,2,2,1,2,1,1),(142,5,3,5,2,2,2,1,2,1,1),(143,6,2,3,1,1,1,1,1,1,1),(144,4,3,10,1,1,2,1,2,2,1),(145,6,2,10,3,2,3,1,5,1,1),(146,6,2,11,1,1,2,2,1,2,1),(147,5,3,7,2,2,2,1,2,2,1),(148,3,3,5,1,1,3,1,5,1,1),(149,5,1,7,1,1,3,2,1,1,1),(150,5,2,6,6,2,3,2,1,1,1),(151,6,2,7,2,2,3,1,2,1,1),(152,5,2,8,6,1,3,1,2,1,1),(153,6,2,4,1,1,3,2,1,2,1),(154,3,1,4,1,1,3,2,1,1,1),(155,6,2,9,2,1,2,2,1,2,1),(156,5,2,6,2,2,3,2,1,1,1),(157,5,3,7,1,1,1,1,5,1,1),(158,5,2,7,1,1,1,2,5,1,1),(159,4,3,8,1,1,1,1,2,1,1),(160,4,3,6,1,1,3,2,1,2,1),(161,4,3,7,2,2,2,2,2,1,1),(162,6,2,3,1,1,2,2,1,2,1),(163,4,3,5,2,1,2,2,1,1,1),(164,4,3,5,2,1,2,2,2,1,1),(165,4,2,9,6,2,2,2,1,2,1),(166,5,3,3,1,1,2,2,1,1,1),(167,4,2,7,1,1,2,1,1,2,1),(168,3,3,5,2,2,2,2,1,2,1),(169,3,3,4,1,1,1,1,2,1,1),(170,6,2,7,3,2,2,2,3,1,1),(171,5,2,5,2,2,2,2,1,1,1),(172,5,3,6,2,2,2,1,2,2,1),(173,4,3,7,1,1,2,2,3,2,1),(174,4,2,6,1,1,2,1,2,1,1),(175,6,2,3,1,1,2,1,2,1,1),(176,5,3,6,2,1,2,2,1,2,1),(177,4,3,5,1,1,3,2,2,2,1),(178,4,3,8,1,2,3,2,1,2,1),(179,4,3,8,1,2,3,2,2,2,1),(180,4,3,6,1,1,1,2,2,2,1),(181,4,3,5,3,1,2,2,2,2,1),(182,5,2,6,1,1,1,1,4,1,1),(183,6,2,4,1,1,2,1,1,2,1),(184,4,3,3,1,1,2,2,1,1,1),(185,5,2,5,1,2,2,2,1,1,1),(186,4,3,4,5,1,3,2,4,2,1),(187,4,3,6,1,1,2,1,1,2,1),(188,5,2,7,3,2,2,1,2,1,1),(189,3,3,3,1,1,2,1,4,1,1),(190,5,3,11,1,2,2,2,1,2,1),(191,5,2,8,1,1,2,1,1,1,1),(192,5,3,3,2,1,1,2,1,1,1),(193,4,3,3,1,1,2,1,2,2,1),(194,5,2,4,1,2,2,1,5,2,1),(195,5,3,6,1,1,1,1,2,1,1),(196,6,2,6,1,1,3,2,2,1,1),(197,5,3,4,1,1,2,1,2,1,2),(198,4,3,9,1,1,1,1,2,1,2),(199,5,2,8,1,1,2,1,2,1,2),(200,5,3,6,1,1,2,1,3,1,2),(201,3,3,1,1,1,2,2,5,1,2),(202,5,3,6,1,1,2,1,3,1,2),(203,5,3,7,1,1,3,1,3,1,2),(204,4,3,8,1,1,1,2,1,1,2),(205,4,3,5,1,1,2,1,2,1,2),(206,5,2,5,1,1,2,2,5,1,2),(207,4,3,7,1,1,3,2,3,1,2),(208,5,3,6,1,1,1,2,1,1,2),(209,6,2,9,1,1,2,2,2,1,2),(210,4,2,5,1,1,2,2,1,1,2),(211,5,2,5,1,1,2,1,1,1,2),(212,4,3,4,1,1,2,1,1,1,2),(213,6,2,7,1,1,3,2,5,1,2),(214,3,3,4,1,1,1,2,2,1,2),(215,4,3,6,1,1,3,1,3,1,2),(216,3,3,7,1,1,1,2,1,1,2),(217,6,2,6,1,1,3,1,4,2,2),(218,6,2,5,1,1,3,2,2,1,2),(219,3,3,6,2,2,3,1,2,2,2),(220,4,2,5,2,1,3,2,2,2,2),(221,4,3,7,6,2,3,1,2,1,2),(222,5,3,7,1,1,3,2,1,2,2),(223,6,2,9,2,2,3,2,2,1,2),(224,6,2,10,1,1,1,2,3,2,2),(225,5,3,11,4,2,2,2,1,1,2),(226,4,3,7,2,1,2,2,1,1,2),(227,3,3,7,2,1,3,2,1,2,2),(228,6,2,7,1,1,3,2,1,2,2),(229,5,3,6,2,2,3,1,2,2,2),(230,4,3,6,1,1,2,2,2,1,2),(231,4,3,6,1,1,2,2,2,1,2),(232,3,3,8,1,1,3,1,2,1,2),(233,4,3,5,2,2,2,2,3,2,2),(234,6,2,5,2,1,2,1,2,2,2),(235,4,3,4,6,2,3,1,2,1,2),(236,5,2,6,3,1,3,1,2,2,2),(237,5,2,5,2,2,3,2,3,1,2),(238,4,3,7,5,2,3,1,1,2,2),(239,3,3,7,4,1,2,2,1,2,2),(240,3,3,4,3,2,3,1,2,2,2),(241,5,2,7,4,2,3,1,4,2,2),(242,6,2,8,3,2,3,1,2,1,2),(243,3,3,5,2,2,2,1,2,1,2),(244,4,3,6,1,1,3,1,1,1,2),(245,4,3,11,1,1,2,2,2,2,2),(246,3,3,9,1,1,1,1,1,1,2),(247,6,2,11,1,1,3,2,1,1,2),(248,4,3,7,1,2,3,2,3,1,2),(249,4,3,7,3,2,3,2,1,1,2),(250,4,3,7,1,1,1,1,2,2,2),(251,4,3,5,2,2,2,1,2,2,2),(252,5,2,7,3,2,2,1,4,2,2),(253,5,2,7,2,1,3,2,1,1,2),(254,6,2,6,2,1,2,2,3,1,2),(255,4,2,6,5,2,3,1,4,2,2),(256,6,2,6,1,1,3,1,1,1,2),(257,3,3,8,4,2,3,1,2,1,2),(258,4,3,7,2,2,2,1,3,1,2),(259,6,2,5,9,2,3,1,2,2,2),(260,3,3,8,1,1,3,1,2,1,2),(261,4,3,6,1,1,2,1,2,2,2),(262,5,2,7,3,2,3,1,4,1,2),(263,5,3,6,1,1,3,2,2,2,2),(264,4,3,4,1,2,3,2,1,1,2),(265,6,2,7,1,2,2,2,3,2,2),(266,6,2,7,2,2,2,1,5,2,2),(267,4,3,6,4,2,3,2,1,1,2),(268,3,3,6,3,2,3,1,4,2,2),(269,6,2,3,3,2,3,1,1,2,2),(270,5,3,8,6,2,3,2,3,1,2),(271,5,2,9,3,2,3,1,2,2,2),(272,5,2,9,3,2,3,1,2,2,2),(273,3,3,7,1,1,2,1,1,1,2),(274,3,3,5,1,1,3,1,1,2,2),(275,6,2,5,1,1,1,2,1,1,2),(276,4,2,7,2,1,3,1,2,1,2),(277,5,2,7,2,1,3,1,2,1,2);
/*!40000 ALTER TABLE `cancer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-17 13:05:14