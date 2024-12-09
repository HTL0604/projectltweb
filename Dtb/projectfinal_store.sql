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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `commissionSold` double NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `e_wallet` double NOT NULL,
  `isActive` bit(1) NOT NULL,
  `isOpen` bit(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `point` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  `commission_id` int DEFAULT NULL,
  `ownerId` int NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UKd0p5ly1cv6guij7sq1mbnr8ec` (`name`),
  UNIQUE KEY `UK2xc6chch7w1j55t87eweo7db7` (`ownerId`),
  UNIQUE KEY `UKnd2cis6rtj0gotql4wln0ojkv` (`commission_id`),
  UNIQUE KEY `UKbwvqu2tos6did876lm8p7daul` (`slug`),
  CONSTRAINT `FKl47kr15lo5teogrtuikje1uns` FOREIGN KEY (`ownerId`) REFERENCES `user` (`_id`),
  CONSTRAINT `FKs1xigept9683jdp78tn8rkigs` FOREIGN KEY (`commission_id`) REFERENCES `commission` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'https://smartfashion.ai/vi/cua-hang-quan-ao-nam.html','Đây là cửa hàng áo sinh viên năm 1',100,'','2024-12-06 09:52:19.000000',100,_binary '',_binary '','Store A',110,4.3,'store-a','2024-12-06 09:52:19.000000',1,1),(5,'https://kenhtuyensinh.vn/top-5-shop-quan-ao-dep-gia-re-danh-cho-sinh-vien-tai-tphcm','Đây là cửa hàng áo sinh viên đang học',200,NULL,'2024-12-06 09:54:19.000000',110,_binary '',_binary '','Store B',130,4.2,'store-b','2024-12-06 09:54:19.000000',4,4),(7,'https://www.langf.vn/cam-nang-lang-dai-hoc/cua-hang-ao-quan/','Đây là cửa hàng thời trang cho sinh viên ',500,'','2024-12-07 13:00:00.000000',15,_binary '',_binary '','Store C',100,4.5,'store-c','2024-12-07 13:00:00.000000',5,5),(8,'https://topaz.vn/toplist/shop-thoi-trang-cong-so-tai-tphcm','Đây là cửa hàng thời trang công sở',600,'','2024-12-07 13:05:00.000000',20,_binary '',_binary '','Store D',120,4.7,'store-d','2024-12-07 13:05:00.000000',6,6),(9,'https://www.kkfashion.vn/blog/dia-chi-mua-vay-dam-cong-so-dep-thoi-trang-cho-gioi-van-phong','Đây là cửa hàng thời trang văn phòng',700,'','2024-12-07 13:10:00.000000',25,_binary '',_binary '','Store E',140,4.8,'store-e','2024-12-07 13:10:00.000000',7,7),(10,'https://www.kkfashion.vn/blog/dia-chi-mua-vay-dam-cong-so-dep-thoi-trang-cho-gioi-van-phong','Đây là cửa hàng thời trang du lịch',800,'','2024-12-07 13:15:00.000000',30,_binary '',_binary '','Store F',160,4.9,'store-f','2024-12-07 13:15:00.000000',8,8),(11,'https://palia.vn/san-pham/230-chon-den-led-cho-shop-quan-ao-quan-cafe-html/','Đây là cửa hàng quần cho sinh viên',900,'','2024-12-07 13:20:00.000000',35,_binary '',_binary '','Store G',180,5,'store-g','2024-12-07 13:20:00.000000',9,9);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09  7:31:54
