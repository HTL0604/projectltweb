-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projectfinal
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `description` varchar(3000) NOT NULL,
  `isDeleted` bit(1) NOT NULL,
  `name` varchar(32) NOT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UKo9tu0m9jstfgqj7bake90dc9c` (`cost`),
  UNIQUE KEY `UK4dlf4e5rg83kmepglbnv44hgs` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,100,'2024-12-06 09:52:02.000000','Default commission',_binary '\0','Standard Commission','2024-12-06 09:52:02.000000'),(4,101,'2024-12-06 09:53:15.000000','Default 1 commission',_binary '\0','Standard 1 Commission','2024-12-06 09:53:15.000000'),(5,150,'2024-12-07 12:30:00.000000','Premium commission',_binary '\0','Premium Commission','2024-12-07 12:30:00.000000'),(6,120,'2024-12-07 12:35:00.000000','Gold commission',_binary '\0','Gold Commission','2024-12-07 12:35:00.000000'),(7,80,'2024-12-07 12:40:00.000000','Silver commission',_binary '\0','Silver Commission','2024-12-07 12:40:00.000000'),(8,50,'2024-12-07 12:45:00.000000','Basic commission',_binary '\0','Basic Commission','2024-12-07 12:45:00.000000'),(9,200,'2024-12-07 12:50:00.000000','Platinum commission',_binary '\0','Platinum Commission','2024-12-07 12:50:00.000000');
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09  7:31:55
