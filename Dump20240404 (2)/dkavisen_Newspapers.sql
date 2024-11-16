-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: dkavisen
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.16-MariaDB-1:10.6.16+maria~ubu2004

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
-- Table structure for table `Newspapers`
--

DROP TABLE IF EXISTS `Newspapers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Newspapers` (
  `Newspaper_ID` int(11) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `founding_Date` varchar(50) DEFAULT NULL,
  `periodicity` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Newspaper_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Newspapers`
--

LOCK TABLES `Newspapers` WRITE;
/*!40000 ALTER TABLE `Newspapers` DISABLE KEYS */;
INSERT INTO `Newspapers` VALUES (1,'Sales','Mon Dec 12 00:00:00 CEST 2021','Weekly'),(2,'Stock Market','Fri Feb 23 00:00:00 CEST 2020','Daily'),(3,'Homeowners','Tue Jan 16 00:00:00 CEST 2018','Weekly'),(4,'Social Media','Wen Nov 25 00:00:00 CEST 2022','Weekly'),(5,'Cities','Mon Mar 08 00:00:00 CEST 2010','Montly'),(6,'Sport','Thu Apr 17 00:00:00 CEST 2013','Weekly'),(7,'Events','Mon Oct 14 00:00:00 CEST 2016','Montly'),(8,'Vacations','Tue Dec 23 00:00:00 CEST 2013','Yearly'),(9,'Healthy Food','Thu Mar 10 00:00:00 CEST 2016','Weekly'),(10,'How to','Wen Jun 26 00:00:00 CEST 2023','Weekly');
/*!40000 ALTER TABLE `Newspapers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 14:42:23
