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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `_id` int NOT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `isActive` bit(1) NOT NULL,
  `isSelling` bit(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `promotionalPrice` double NOT NULL,
  `quantity` int NOT NULL,
  `rating` int NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sold` int NOT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UK88yb4l9100epddqsrdvxerhq9` (`slug`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKjlfidudl1gwqem0flrlomvlcl` (`store_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`_id`),
  CONSTRAINT `FKjlfidudl1gwqem0flrlomvlcl` FOREIGN KEY (`store_id`) REFERENCES `store` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2024-12-06 18:01:10.000000','Áo phông ',_binary '',_binary '','Áo phông',100,90,50,5,'ao-phong',10,'2024-12-06 18:01:10.000000',1,1),(2,'2024-12-06 18:02:50.000000','Áo tốt nghiệp 2025',_binary '',_binary '','Áo tốt nghiệp',100,90,50,5,'ao-tot-nghiep',10,'2024-12-06 18:02:50.000000',2,1),(3,'2024-12-06 18:05:06.000000','Áo thể dục chất lượng cao',_binary '',_binary '','Áo thể dục',100,90,50,5,'ao-the-duc',10,'2024-12-06 18:05:06.000000',3,1),(4,'2024-12-06 18:09:09.000000','Áo thun nam chất lượng cao',_binary '',_binary '','Áo thun nam',150,120,30,5,'ao-thun-nam',15,'2024-12-06 18:09:09.000000',4,1),(5,'2024-12-06 18:09:09.000000','Quần short thể thao nữ',_binary '',_binary '','Quần short nữ',130,110,50,4,'quan-short-nu',20,'2024-12-06 18:09:09.000000',5,1),(6,'2024-12-06 18:09:09.000000','Áo khoác chống gió',_binary '',_binary '','Áo khoác gió',300,270,20,5,'ao-khoac-gio',10,'2024-12-06 18:09:09.000000',6,1),(7,'2024-12-06 18:09:09.000000','Quần jogger nam cao cấp',_binary '',_binary '','Quần jogger nam',250,220,40,5,'quan-jogger-nam',18,'2024-12-06 18:09:09.000000',7,5),(8,'2024-12-06 18:09:09.000000','Quần jeans nữ thời trang',_binary '',_binary '','Quần jeans nữ',200,180,25,5,'quan-jeans-nu',12,'2024-12-06 18:09:09.000000',8,5),(9,'2024-12-06 18:09:09.000000','Áo sơ mi trắng công sở',_binary '',_binary '','Áo sơ mi trắng',180,160,60,4,'ao-so-mi-trang',25,'2024-12-06 18:09:09.000000',9,5),(10,'2024-12-06 18:09:09.000000','Áo len giữ nhiệt',_binary '',_binary '','Áo len giữ nhiệt',220,200,35,5,'ao-len-giu-nhiet',20,'2024-12-06 18:09:09.000000',10,5),(11,'2024-12-06 18:09:09.000000','Quần kaki nam',_binary '',_binary '','Quần kaki nam',190,170,45,4,'quan-kaki-nam',14,'2024-12-06 18:09:09.000000',11,5),(12,'2024-12-06 18:09:09.000000','Bộ đồ thể thao nữ',_binary '',_binary '','Đồ thể thao nữ',350,300,15,5,'do-the-thao-nu',8,'2024-12-06 18:09:09.000000',12,5),(13,'2024-12-06 18:09:09.000000','Bộ đồ mặc nhà',_binary '',_binary '','Đồ mặc nhà',100,90,80,5,'do-mac-nha',35,'2024-12-06 18:09:09.000000',13,5),(14,'2024-12-07 22:28:23.000000','Quần short thể thao nam',_binary '',_binary '','Quần short nam',150,130,50,5,'quan-short-nam',30,'2024-12-07 22:28:23.000000',5,5),(15,'2024-12-07 22:28:23.000000','Quần short thời trang nữ',_binary '',_binary '','Quần short nữ-2',120,100,40,4,'quan-short-nu-2',25,'2024-12-07 22:28:23.000000',5,5),(16,'2024-12-07 22:28:23.000000','Áo khoác gió nam chống nước',_binary '',_binary '','Áo khoác nam',300,250,30,5,'ao-khoac-nam',20,'2024-12-07 22:28:23.000000',6,5),(17,'2024-12-07 22:28:23.000000','Áo khoác thời trang nữ',_binary '',_binary '','Áo khoác nữ',250,220,35,4,'ao-khoac-nu',15,'2024-12-07 22:28:23.000000',6,5),(18,'2024-12-07 22:28:23.000000','Quần jogger nam thời trang',_binary '',_binary '','Quần jogger nam',220,200,60,5,'quan-jogger-nam-2',40,'2024-12-07 22:28:23.000000',7,8),(19,'2024-12-07 22:28:23.000000','Quần jogger nữ thể thao',_binary '',_binary '','Quần jogger nữ',210,190,55,5,'quan-jogger-nu',35,'2024-12-07 22:28:23.000000',7,8),(20,'2024-12-07 22:28:23.000000','Quần jeans nam thời trang',_binary '',_binary '','Quần jeans nam',300,270,50,5,'quan-jeans-nam',45,'2024-12-07 22:28:23.000000',8,7),(21,'2024-12-07 22:28:23.000000','Quần jeans nữ phong cách',_binary '',_binary '','Quần jeans nữ',280,250,40,4,'quan-jeans-nu-2',30,'2024-12-07 22:28:23.000000',8,7),(22,'2024-12-07 22:28:23.000000','Áo sơ mi nam công sở',_binary '',_binary '','Áo sơ mi nam',180,160,50,5,'ao-so-mi-nam',20,'2024-12-07 22:28:23.000000',9,7),(23,'2024-12-07 22:28:23.000000','Áo sơ mi nữ thời trang',_binary '',_binary '','Áo sơ mi nữ',170,150,45,4,'ao-so-mi-nu',25,'2024-12-07 22:28:23.000000',9,7),(24,'2024-12-07 22:28:23.000000','Áo len nam giữ nhiệt',_binary '',_binary '','Áo len nam',220,200,30,5,'ao-len-nam',15,'2024-12-07 22:28:23.000000',10,8),(25,'2024-12-07 22:28:23.000000','Áo len nữ thời trang',_binary '',_binary '','Áo len nữ',210,190,25,5,'ao-len-nu',20,'2024-12-07 22:28:23.000000',10,8),(26,'2024-12-07 22:28:23.000000','Quần kaki nam công sở',_binary '',_binary '','Quần kaki nam',250,230,40,5,'quan-kaki-nam-2',30,'2024-12-07 22:28:23.000000',11,11),(27,'2024-12-07 22:28:23.000000','Quần kaki nữ thanh lịch',_binary '',_binary '','Quần kaki nữ',240,220,35,4,'quan-kaki-nu',25,'2024-12-07 22:28:23.000000',11,11),(28,'2024-12-07 22:28:23.000000','Bộ đồ thể thao nam cao cấp',_binary '',_binary '','Đồ thể thao nam',300,270,20,5,'do-the-thao-nam',15,'2024-12-07 22:28:23.000000',12,9),(29,'2024-12-07 22:28:23.000000','Bộ đồ thể thao nữ cao cấp',_binary '',_binary '','Đồ thể thao nữ',280,250,25,5,'do-the-thao-nu-2',20,'2024-12-07 22:28:23.000000',12,9),(30,'2024-12-07 22:28:23.000000','Bộ đồ mặc nhà nam',_binary '',_binary '','Đồ mặc nhà nam',100,90,30,5,'do-mac-nha-nam',10,'2024-12-07 22:28:23.000000',13,10),(31,'2024-12-07 22:28:23.000000','Bộ đồ mặc nhà nữ',_binary '',_binary '','Đồ mặc nhà nữ',90,80,25,4,'do-mac-nha-nu',15,'2024-12-07 22:28:23.000000',13,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09  9:13:14
