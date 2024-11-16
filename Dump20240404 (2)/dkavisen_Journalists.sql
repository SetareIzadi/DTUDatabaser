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
-- Table structure for table `Journalists`
--

DROP TABLE IF EXISTS `Journalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Journalists` (
  `Journalist_ID` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `CPR_Number` varchar(10) DEFAULT NULL,
  `street_Name` varchar(30) DEFAULT NULL,
  `civic_Number` varchar(5) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `ZIP_code` varchar(4) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `telephone_Number` varchar(8) DEFAULT NULL,
  `email_address` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Journalist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Journalists`
--

LOCK TABLES `Journalists` WRITE;
/*!40000 ALTER TABLE `Journalists` DISABLE KEYS */;
INSERT INTO `Journalists` VALUES (0,'Mark','Miller','10103040','Nullvej','132','Kgs. Lyngby','2800','Denmark','33200728','Mark@gmail.com'),(1,'Olga','Owens','30302125','Nybrovej','28','Holte','2840','Denmark','52566418','Olga@gmail.com'),(2,'Olga','Owens','30302125','Nybrovej','28','Holte','2840','Denmark','11772306','Olga@gmail.com'),(3,'Lukas','Laas','10203344','Østergaardsvej','12','Gentofte','2820','Denmark','23213170','Lukas@gmail.com'),(4,'Pia','Pabst','20208981','Hovedgade','9','Nærum','2850','Denmark','27042044','Pia@gmail.com'),(5,'Olga','Owens','30302125','Nybrovej','28','Holte','2840','Denmark','45134585','Olga@gmail.com'),(6,'Nick','Nassar','10204410','Vestergaardsvej','13','Virum','2830','Denmark','57435133','Nick@gmail.com'),(7,'Mark','Miller','10103040','Nullvej','132','Kgs. Lyngby','2800','Denmark','71268066','Mark@gmail.com');
/*!40000 ALTER TABLE `Journalists` ENABLE KEYS */;
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
