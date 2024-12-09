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
-- Table structure for table `store_featuredimages`
--

DROP TABLE IF EXISTS `store_featuredimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_featuredimages` (
  `Store__id` int NOT NULL,
  `featuredImages` varchar(255) DEFAULT NULL,
  KEY `FK68h0mibgvqj7t6st2ub4xkhlp` (`Store__id`),
  CONSTRAINT `FK68h0mibgvqj7t6st2ub4xkhlp` FOREIGN KEY (`Store__id`) REFERENCES `store` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_featuredimages`
--

LOCK TABLES `store_featuredimages` WRITE;
/*!40000 ALTER TABLE `store_featuredimages` DISABLE KEYS */;
INSERT INTO `store_featuredimages` VALUES (1,'https://dongphuckhanhvy.vn/san-pham/ao-dong-phuc-hoc-sinh-sinh-vien-ma-01.html'),(1,'https://dongphucconggiao.vn/Ao-Sinh-Vien-Giao-Xu-Van-Hoach-p206.html'),(5,'https://vn.lovepik.com/image-501391572/college-students-studying-in-classroom.html'),(5,'https://caodang.fpt.edu.vn/tin-tuc-poly/tin-moi-nhat/sinh-vien-hoc-ky-4-fpt-polytechnic-tu-tin-voi-du-an-mau.html'),(7,'https://natoli.vn/blogs/news/thoi-trang-di-hoc-cho-sinh-vien'),(7,'https://kiigruss24h.com/meo-phoi-do-cho-sinh-vien-nu-thanh-lich-vua-don-gian-ma-lai-rat-xinh/'),(8,'https://wada.vn/thoi-trang-cong-so-nu-2021-1655058998'),(8,'https://damaushop.vn/mau-ao-dam-cong-so-dep/'),(9,'https://thoitranghanquoc.vn/wp-content/uploads/2021/08/thoi-trang-van-phong-1.jpg'),(9,'https://4menshop.com/images/upload/images/Thoi-trang-van-phong-nam.jpg'),(10,'https://afamilycdn.com/150157425591193600/2022/4/22/4-kieu-trang-phuc-dung-mang-di-du-lich-khien-hanh-ly-cong-kenh-dien-len-thanh-lam-lo-1-1650624850-1650624850-1650624860-1650624860.jpg'),(10,'https://danangbest.com/wp-content/uploads/2021/05/thoi-trang-du-lich-da-nang.jpg'),(11,'https://xaydungso.vn/bai-viet-khac/nghe-thuat-ve-quan-ao-hoc-sinh-cho-phong-cach-ca-tinh-hon-vi-cb.html'),(11,'https://hangthungnguyenkiencaocap.com/cach-ban-quan-ao-cho-sinh-vien-nen-biet/');
/*!40000 ALTER TABLE `store_featuredimages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09  9:13:13
