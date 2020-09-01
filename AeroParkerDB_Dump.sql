-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: aeroparker
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customer sites`
--

DROP TABLE IF EXISTS `customer sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer sites` (
  `CUSTOMER_ID` int NOT NULL,
  `SITE_ID` int DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `SITE_ID_idx` (`SITE_ID`),
  CONSTRAINT `CUSTOMER_ID` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SITE_ID` FOREIGN KEY (`SITE_ID`) REFERENCES `sites` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer sites`
--

LOCK TABLES `customer sites` WRITE;
/*!40000 ALTER TABLE `customer sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `REGISTERED` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `E-MAIL ADDRESS` varchar(255) NOT NULL,
  `TITLE` varchar(5) NOT NULL,
  `FIRST NAME` varchar(50) NOT NULL,
  `LAST NAME` varchar(50) NOT NULL,
  `ADDRESS LINE 1` varchar(255) NOT NULL,
  `ADDRESS LINE 2` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `POSTCODE` varchar(10) NOT NULL,
  `TELEPHONE NUMBER` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `E-MAIL ADDRESS_UNIQUE` (`E-MAIL ADDRESS`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (35,'2020-09-01 00:53:57','tester@mail.com','Mr','web','xml','267 KMN Rd','','','267KMN',''),(36,'2020-09-01 01:01:21','H.Simpson@doh.com','Mr','Homer','Simpson','742 Evergreen Terrace','','Springfield','3123',''),(37,'2020-09-01 01:03:39','M.Simpson@mail.com','Mrs','Marge','Simpson','742 Evergreen Terrace','','','1111',''),(40,'2020-09-01 01:17:25','johndoe@mail.com','Mr','John','Doe','123 Nowhere','','','3213',''),(41,'2020-09-01 01:31:01','JoBloggs@mail.com','Mrs','Joanne','Bloggs','123 Street','','','321321','');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME_idx1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (4,'AceParks\r'),(3,'Avalon City\r');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aeroparker'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01  1:31:50
