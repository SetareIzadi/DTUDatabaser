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
-- Table structure for table `Photos`
--

DROP TABLE IF EXISTS `Photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Photos` (
  `Photo_ID` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shot_Date` varchar(30) DEFAULT NULL,
  `Reporter_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Photo_ID`),
  KEY `Reporter_ID` (`Reporter_ID`),
  CONSTRAINT `Photos_ibfk_1` FOREIGN KEY (`Reporter_ID`) REFERENCES `Journalists` (`Journalist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Photos`
--

LOCK TABLES `Photos` WRITE;
/*!40000 ALTER TABLE `Photos` DISABLE KEYS */;
INSERT INTO `Photos` VALUES (0,' Royal Wedding','Fri May 14 00:00:00 CEST 2004',0),(1,' COVID-19 Restrictions','Wed Mar 11 00:00:00 CET 2020',1),(2,' Fatal Car Accident','Sat Oct 09 00:00:00 CEST 2021',2),(3,' Pottery Exhibit','Wed Nov 10 00:00:00 CET 2021',3),(4,' Superliga Final Match','Sun May 29 00:00:00 CEST 2022',4),(5,' SAS Strike','Mon Jul 18 00:00:00 CEST 2022',5),(6,' Election Day','Tue Nov 01 00:00:00 CET 2022',6),(7,' Snowstorm','Mon Mar 06 00:00:00 CET 2023',7);
/*!40000 ALTER TABLE `Photos` ENABLE KEYS */;
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
