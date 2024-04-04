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
-- Table structure for table `Articles`
--

DROP TABLE IF EXISTS `Articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Articles` (
  `Article_ID` int(11) NOT NULL,
  `Edition_ID` int(11) DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `article_Text` text DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `read_Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`Article_ID`),
  KEY `Edition_ID` (`Edition_ID`),
  CONSTRAINT `Articles_ibfk_1` FOREIGN KEY (`Edition_ID`) REFERENCES `Editions` (`Edition_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articles`
--

LOCK TABLES `Articles` WRITE;
/*!40000 ALTER TABLE `Articles` DISABLE KEYS */;
INSERT INTO `Articles` VALUES (1,1,'Sales','text','Store Sales',4215),(2,2,'Stock Market','text','Investments',1453),(3,3,'Homeowners','text','Home Tips',2301),(4,4,'Social Media','text','Social Medias',19203),(5,5,'Cities','text','Vacations',9231),(6,6,'Sport','text','Sport',23193),(7,7,'Events','text','Events',523),(8,8,'Vacations','text','Vacations',1393),(9,9,'Healthy Food','text','Health and Lifecare',924),(10,NULL,'How to','text','Tutorials',3483);
/*!40000 ALTER TABLE `Articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 14:42:24
