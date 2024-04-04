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
-- Table structure for table `ArticleJournalists`
--

DROP TABLE IF EXISTS `ArticleJournalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArticleJournalists` (
  `Article_ID` int(11) DEFAULT NULL,
  `Journalist_ID` int(11) DEFAULT NULL,
  `role_Name` varchar(20) DEFAULT NULL,
  KEY `Article_ID` (`Article_ID`),
  KEY `Journalist_ID` (`Journalist_ID`),
  KEY `role_Name` (`role_Name`),
  CONSTRAINT `ArticleJournalists_ibfk_1` FOREIGN KEY (`Article_ID`) REFERENCES `Articles` (`Article_ID`),
  CONSTRAINT `ArticleJournalists_ibfk_2` FOREIGN KEY (`Journalist_ID`) REFERENCES `Journalists` (`Journalist_ID`),
  CONSTRAINT `ArticleJournalists_ibfk_3` FOREIGN KEY (`role_Name`) REFERENCES `Roles` (`role_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticleJournalists`
--

LOCK TABLES `ArticleJournalists` WRITE;
/*!40000 ALTER TABLE `ArticleJournalists` DISABLE KEYS */;
INSERT INTO `ArticleJournalists` VALUES (1,1,'Writer'),(2,2,'Publisher'),(3,3,'Writer'),(4,4,'Writer'),(5,5,'Publisher'),(6,6,'Publisher'),(7,7,'Writer'),(8,NULL,'Publisher'),(9,NULL,'Writer'),(10,NULL,'Publisher');
/*!40000 ALTER TABLE `ArticleJournalists` ENABLE KEYS */;
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
