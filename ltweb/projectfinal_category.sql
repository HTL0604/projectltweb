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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isDeleted` bit(1) NOT NULL,
  `name` varchar(32) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UK46ccwnsi9409t36lurvtyljak` (`name`),
  UNIQUE KEY `UKhqknmjh5423vchi4xkyhxlhg2` (`slug`),
  KEY `FK2y94svpmqttx80mshyny85wqr` (`parent_id`),
  CONSTRAINT `FK2y94svpmqttx80mshyny85wqr` FOREIGN KEY (`parent_id`) REFERENCES `category` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2024-12-06 18:01:07.000000','https://noconcept.vn/ao-phong',_binary '\0','Áo phông','ao-phong','2024-12-06 18:01:07.000000',NULL),(2,'2024-12-06 18:01:50.000000','https://www.dongphuctranganh.vn/ao-tot-nghiep-dai-hoc',_binary '\0','Áo tốt nghiệp','ao-tot-nghiep','2024-12-06 18:01:50.000000',NULL),(3,'2024-12-06 18:04:19.000000','https://dongphuchaianh.com/dong-phuc-hoc-sinh/mau-quan-ao-dong-phuc-the-duc-hoc-sinh-tieu-hoc-cao-cap/',_binary '\0','Áo thể dục','Áo thể dục','2024-12-06 18:04:19.000000',NULL),(4,'2024-12-06 18:06:47.000000','https://colormatestore.vn/products/ao-thun-den-khong-in-size-m',_binary '\0','Áo thun','ao-thun','2024-12-06 18:06:47.000000',NULL),(5,'2024-12-06 18:06:47.000000','https://torano.vn/products/quan-short-gio-basic-phoi-chun-cap-4-fsbw001',_binary '\0','Quần short','quan-short','2024-12-06 18:06:47.000000',NULL),(6,'2024-12-06 18:06:47.000000','https://grimmdc.com/products/functional-jacket-fj01',_binary '\0','Áo khoác','ao-khoac','2024-12-06 18:06:47.000000',NULL),(7,'2024-12-06 18:06:47.000000','https://oldsailor.com.vn/quan-jogger-2-0-old-sailor-o-s-l-jogger-black-jgde11068-den-big-size-upto-4xl.html',_binary '\0','Quần jogger','quan-jogger','2024-12-06 18:06:47.000000',NULL),(8,'2024-12-06 18:06:47.000000','https://oldsailor.com.vn/quan-jean-nam-old-sailor-osl-premium-aero-cool-jeans-6198-big-size-upto-42.html',_binary '\0','Quần jeans','quan-jeans','2024-12-06 18:06:47.000000',NULL),(9,'2024-12-06 18:06:47.000000','https://torano.vn/products/ao-so-mi-dai-tay-tron-bamboo-datb920',_binary '\0','Áo sơ mi','ao-so-mi','2024-12-06 18:06:47.000000',NULL),(10,'2024-12-06 18:06:47.000000','https://www.acfc.com.vn/old-navy-ao-len-tre-em-oln-807791-00.html',_binary '\0','Áo len','ao-len','2024-12-06 18:06:47.000000',NULL),(11,'2024-12-06 18:06:47.000000','https://vitimex.com.vn/quan-kaki-dang-om-vitimex-ksg7606-dp330.html',_binary '\0','Quần kaki','quan-kaki','2024-12-06 18:06:47.000000',NULL),(12,'2024-12-06 18:06:47.000000','https://shopee.vn/B%E1%BB%99-%C4%91%E1%BB%93-th%E1%BB%83-thao-nam-%F0%9F%9A%9A-FREESHIP-%F0%9F%9A%9A-Gi%C3%A1-S%E1%BB%89-s%C3%A9t-b%E1%BB%99-qu%E1%BA%A7n-%C3%A1o-th%E1%BB%83-thao-nam-i.105859914.1946338058',_binary '\0','Đồ thể thao','do-the-thao','2024-12-06 18:06:47.000000',NULL),(13,'2024-12-06 18:06:47.000000','https://orchid.com.vn/bo-mac-nha-pc414432.html',_binary '\0','Đồ mặc nhà','do-mac-nha','2024-12-06 18:06:47.000000',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 22:48:29
