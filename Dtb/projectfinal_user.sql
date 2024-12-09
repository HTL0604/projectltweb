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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `e_wallet` double NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `isEmailActive` bit(1) NOT NULL,
  `isPhoneActive` bit(1) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER','VENDOR') NOT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK1ep90ws9w518nst3415yen9dv` (`id_card`),
  UNIQUE KEY `UK589idila9li6a4arw1t8ht1gx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=',NULL,1000,'hotunglam@gmail.com','Ho','09092',_binary '',_binary '','Lam','123','0909','VENDOR',NULL),(4,NULL,'https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=',NULL,1000,'hotunglam2@gmail.com','Ho','090392',_binary '',_binary '','Lam','123','09091','VENDOR',NULL),(5,'123 Main St','https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=','2024-12-07 12:00:00.000000',500,'hieu@gmail.com','Hieu','123456789',_binary '',_binary '','Doe','123','0123456789','ADMIN','2024-12-07 12:00:00.000000'),(6,'456 Elm St','https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=','2024-12-07 12:05:00.000000',750,'khang@gmail.com','Khang','987654321',_binary '',_binary '','Smith','123','0987654321','USER','2024-12-07 12:05:00.000000'),(7,'789 Oak St','https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=','2024-12-07 12:10:00.000000',1000,'dat@gmail.com','Dat','456789123',_binary '',_binary '','Wong','123','0938123456','ADMIN','2024-12-07 12:10:00.000000'),(8,'101 Pine St','https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=','2024-12-07 12:15:00.000000',300,'hieu1@gmail.com','Hieu','789123456',_binary '',_binary '','Jones','123','0923456789','USER','2024-12-07 12:15:00.000000'),(9,'202 Maple St','https://cdn2.fptshop.com.vn/small/avatar_trang_1_cd729c335b.jpg','https://media.istockphoto.com/id/1370544962/vi/anh/n%E1%BB%81n-gi%E1%BA%A5y-tr%E1%BA%AFng-k%E1%BA%BFt-c%E1%BA%A5u-b%C3%ACa-c%E1%BB%A9ng-s%E1%BB%A3i-%C4%91%E1%BB%83-c%E1%BA%A1o-r%C3%A2u.jpg?s=612x612&w=0&k=20&c=7fuXKUP3PkMIZhFg4MWyov7kxvVh2oFSQ3qBmhtvodw=','2024-12-07 12:20:00.000000',600,'khang1@gmail.com','Khang','321654987',_binary '',_binary '','Davis','123','0912345678','USER','2024-12-07 12:20:00.000000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
