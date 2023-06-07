CREATE DATABASE  IF NOT EXISTS `stelleguide` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stelleguide`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: stelleguide
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `discount_history`
--

DROP TABLE IF EXISTS `discount_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_history` (
  `gid` int NOT NULL,
  `discountRatio` float NOT NULL,
  `discountPrice` float NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`discountRatio`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_history`
--

LOCK TABLES `discount_history` WRITE;
/*!40000 ALTER TABLE `discount_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `ChineseTitle` varchar(45) NOT NULL,
  `EnglishTitle` varchar(45) NOT NULL,
  `Cover` text,
  `LinkToStore` varchar(45) DEFAULT NULL,
  `SteamStoreID` int DEFAULT NULL,
  `DeveloperID` int NOT NULL,
  `PublisherID` int NOT NULL,
  `isDiscount` int DEFAULT '0',
  `DefaultPrice` float DEFAULT NULL,
  `AllTimeLowPrice` float DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `NumberOfRatings` int DEFAULT NULL,
  `info` text,
  `AllTimeLowRatio` float DEFAULT NULL,
  `theme` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `brief` text,
  `developer` varchar(45) DEFAULT NULL,
  `onSalePrice` float DEFAULT NULL,
  PRIMARY KEY (`gid`),
  UNIQUE KEY `gid_UNIQUE` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5.66668,9,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(2,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,10,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(3,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(4,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,2,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(5,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,8,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(6,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(7,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(8,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(9,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,2,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(10,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(11,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,2,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(12,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(13,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(14,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,2,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(15,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(16,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(17,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,2,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(18,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,2,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(19,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(20,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(21,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(22,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(23,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(24,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(25,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(26,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(27,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(28,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,4.5,2,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(29,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(30,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(31,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(32,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(33,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(34,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(35,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(36,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(37,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(38,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(39,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(40,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(41,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(42,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(43,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(44,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(45,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,5,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(46,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,5,2,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(47,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,5,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(48,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,5,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(49,'星球大战绝地：幸存者','Star Wars Jedi:Survivor','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000',NULL,NULL,2,2,1,298,198,2.66667,3,'你说得对，但是DXGI_ERROR',NULL,'科幻、类魂','ACT',2023,'你说得对，但是DXGI_ERROR','Respawn Entertainment',198),(50,'彩虹六号：围攻','Rainbow Six:Siege','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg',NULL,NULL,3,3,1,98,68,5,1,'谈判破裂，准备攻坚',NULL,'战术、PVP','FPS',2015,'坏了，播彩六的屏幕变成我面前这块了','Ubisoft',68),(51,'赛博朋克2077','Cyberpunk2077','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg',NULL,NULL,4,4,1,298,198,5,1,'其鞋甚多...',NULL,'赛博朋克、剧情','开放世界FPS',2020,'还好网站没有跳票','CD Project Red',198);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamecompany`
--

DROP TABLE IF EXISTS `gamecompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamecompany` (
  `companyID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(45) DEFAULT NULL,
  `EnglishName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`companyID`),
  UNIQUE KEY `companyID_UNIQUE` (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamecompany`
--

LOCK TABLES `gamecompany` WRITE;
/*!40000 ALTER TABLE `gamecompany` DISABLE KEYS */;
INSERT INTO `gamecompany` VALUES (1,'米哈游','miHoYo/HoYoVerse');
/*!40000 ALTER TABLE `gamecompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `gid` int NOT NULL,
  `rating` float NOT NULL,
  PRIMARY KEY (`gid`,`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `nickname` text,
  `username` varchar(45) NOT NULL,
  `password` text,
  `email` varchar(45) DEFAULT NULL,
  `steamid` varchar(45) DEFAULT NULL,
  `permissionlevel` int NOT NULL DEFAULT '0',
  `avatar` text,
  `bio` text,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'星空凌','Hosisora_Ling','114514','2374416274@qq.com','Hosisora_Ling',3,'http://localhost:8192/updateAvatar/Hosisora_Ling.png','向着星辰与深渊~为什么这么多bug——————我要死了————修好了啊————————————————————————————'),(2,'1','1','1',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(3,'2','2','2',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(4,'希娜小姐','1123','111',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(5,'3','313','3',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(6,'搪瓷丝','tangcisi','XQLC123456789',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(7,'komeiji_koyomi','komeiji_koyomi','gugu',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(9,'zw1111','zw1111','123456',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(10,'艾拉','Aira','uwu2333',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(11,'XIEXIE_Kawaii','XIEXIEkawaii','XIEXIEkawaii',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(13,'123','123','123',NULL,NULL,0,'123',NULL),(14,'411','gresa411','731207',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(17,'11','test','11',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(18,'%20%58','#1！¥£*€¶~✓」%','Null',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(19,'11','1g','11',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(20,'yyyy','ssss','111111',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(21,'23232','23232','23232',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(22,'grates','grates','123456',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(23,'drop','--','select *** from name where id=1 and 1=1',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(24,'DELETE FROM confirm','DELETE FROM nickname','DELETE FROM username',NULL,NULL,0,'www.openslr.org/resources/85/test.tar.gz',NULL),(25,'小狼','1592811761@qq.com','1592811761',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(26,'希汐','HiyouNeko','12345678',NULL,NULL,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(27,'root','root','root',NULL,NULL,0,'http://localhost:8192/updateAvatar/root.png',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrating`
--

DROP TABLE IF EXISTS `userrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrating` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `gid` int NOT NULL,
  `uid` int NOT NULL,
  `rating` int DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `performance` int DEFAULT NULL,
  `graphic` int DEFAULT NULL,
  `story` int DEFAULT NULL,
  `gameplay` int DEFAULT NULL,
  `lifetime` int DEFAULT NULL,
  `PriceToFunRatio` int DEFAULT NULL,
  `comment` text,
  `agree` int DEFAULT '0',
  `disagree` int DEFAULT '0',
  `useful` int DEFAULT '0',
  `funny` int DEFAULT '0',
  `shit` int DEFAULT '0',
  `voiceofpeople` int DEFAULT '0',
  `avatar` text,
  `nickname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `rid_UNIQUE` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrating`
--

LOCK TABLES `userrating` WRITE;
/*!40000 ALTER TABLE `userrating` DISABLE KEYS */;
INSERT INTO `userrating` VALUES (1,1,1,10,'2023/6/1 21:23:37',NULL,NULL,NULL,NULL,NULL,NULL,'111',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(2,1,1,10,'2023/6/1 21:26:54',NULL,NULL,NULL,NULL,NULL,NULL,'222',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(3,1,1,10,'2023/6/2 09:57:00',NULL,NULL,NULL,NULL,NULL,NULL,'333',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(4,1,1,10,'2023/6/2 09:58:23',NULL,NULL,NULL,NULL,NULL,NULL,'444',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(5,50,1,10,'2023/6/2 09:59:13',NULL,NULL,NULL,NULL,NULL,NULL,'ubi：你很可疑',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(6,1,1,5,'2023/6/2 10:42:53',NULL,NULL,NULL,NULL,NULL,NULL,'555',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(7,1,1,4,'2023/6/2 11:06:10',NULL,NULL,NULL,NULL,NULL,NULL,'6545',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(8,1,1,4,'2023/6/2 11:12:57',NULL,NULL,NULL,NULL,NULL,NULL,'11113',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(9,1,1,4,'2023/6/2 11:13:47',NULL,NULL,NULL,NULL,NULL,NULL,'test3',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(10,1,1,4,'2023/6/2 11:23:04',NULL,NULL,NULL,NULL,NULL,NULL,'12313213132314',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(11,49,1,1,'2023/6/2 11:37:27',NULL,NULL,NULL,NULL,NULL,NULL,'优化极差',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(12,49,1,2,'2023/6/2 11:37:52',NULL,NULL,NULL,NULL,NULL,NULL,'111',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(13,1,10,5,'2023/6/2 11:50:34',NULL,NULL,NULL,NULL,NULL,NULL,'uwu',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','艾拉'),(14,5,7,5,'2023/6/2 11:52:51',NULL,NULL,NULL,NULL,NULL,NULL,'哦我的老天爷啊还需要我来告诉大家这游戏有多好玩吗它就像邻居玛丽阿姨早晨刚烤的苹果派一样香甜如果你不赶紧去玩的话我一定会向汤姆叔叔那样用铮亮的马靴狠狠的踹你的屁股',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(15,5,7,5,'2023/6/2 11:58:48',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(16,5,7,5,'2023/6/2 11:58:48',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(17,5,7,5,'2023/6/2 11:58:55',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(18,5,7,5,'2023/6/2 11:58:55',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(19,5,7,5,'2023/6/2 11:59:28',NULL,NULL,NULL,NULL,NULL,NULL,'test',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(20,5,7,5,'2023/6/2 11:59:28',NULL,NULL,NULL,NULL,NULL,NULL,'test',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','komeiji_koyomi'),(21,14,6,5,'2023/6/2 下午12:01:54',NULL,NULL,NULL,NULL,NULL,NULL,'11111',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','搪瓷丝'),(22,17,6,5,'2023/6/2 下午12:02:42',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','搪瓷丝'),(23,9,6,5,'2023/6/2 下午12:12:59',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','搪瓷丝'),(24,18,13,5,'2023/6/2 12:16:04',NULL,NULL,NULL,NULL,NULL,NULL,'1温泉企鹅',0,0,0,0,0,0,'123','123'),(25,1,17,5,'2023/6/2 12:59:34',NULL,NULL,NULL,NULL,NULL,NULL,'11',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','11'),(26,1,19,5,'2023/6/2 13:02:09',NULL,NULL,NULL,NULL,NULL,NULL,'11',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','11'),(27,28,20,4,'2023/6/2 下午2:23:02',NULL,NULL,NULL,NULL,NULL,NULL,'1',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','yyyy'),(28,1,1,4,'2023/6/2 16:31:01',NULL,NULL,NULL,NULL,NULL,NULL,'114514',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(29,1,24,5,'2023/6/2 17:04:22',NULL,NULL,NULL,NULL,NULL,NULL,'<span style=\"color: rgb(0, 0, 0); background-color: rgb(246, 249, 251);\">啊哈真怎么你了</span><div><span style=\"color: rgb(0, 0, 0); background-color: rgb(246, 249, 251);\"><br></span></div>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(30,2,24,5,'2023/6/2 17:14:27',NULL,NULL,NULL,NULL,NULL,NULL,'<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=2\">世不二出的奇迹</a>&lt;br&gt;<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=2\">出色的第九艺术</a>&lt;/span&gt;&lt;span&gt;&lt;font color=\"red\"&gt;red&lt;/font&gt;',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(31,2,24,5,'2023/6/2 17:15:37',NULL,NULL,NULL,NULL,NULL,NULL,'<div class=\"msgTxt\" style=\"padding: 10px; min-height: 40px; line-height: 24px; box-sizing: border-box; overflow-wrap: break-word; background-image: linear-gradient(to right, rgb(119, 136, 153) 0%, rgb(51, 51, 51) 100%);\">&lt;/span&gt;&lt;span&gt;&lt;font color=\"red\"&gt;red&lt;/font&gt;</div><hr style=\"color: rgb(0, 0, 0);\"><br>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(32,2,24,5,'2023/6/2 17:16:20',NULL,NULL,NULL,NULL,NULL,NULL,'&lt;/div&gt;&lt;font color=\"red\"&gt;red&lt;/font&gt;<div><br></div>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(33,2,24,5,'2023/6/2 17:20:45',NULL,NULL,NULL,NULL,NULL,NULL,'<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=2\">世迹</a>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(34,2,24,5,'2023/6/2 17:21:39',NULL,NULL,NULL,NULL,NULL,NULL,'<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=2\">世</a>&lt;font color=\"red\"&gt;red',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(35,2,24,5,'2023/6/2 17:22:07',NULL,NULL,NULL,NULL,NULL,NULL,'<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=2\">世<span style=\"color: rgba(0, 0, 0, 0);\">&lt;font color=\"red\"&gt;red</span>迹</a>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(36,2,24,5,'2023/6/2 17:26:01',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(37,46,24,5,'2023/6/2 17:30:21',NULL,NULL,NULL,NULL,NULL,NULL,'<a href=\"https://frp-cup.top:10936/GameDetail.html?gid=46\">1</a>',0,0,0,0,0,0,'www.openslr.org/resources/85/test.tar.gz','DELETE FROM confirm'),(38,1,25,5,'2023/6/2 17:53:25',NULL,NULL,NULL,NULL,NULL,NULL,'1234',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(39,4,123321,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'123321',0,0,0,0,0,0,NULL,NULL),(40,4,123321,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'123321',0,0,0,0,0,0,NULL,NULL),(41,4,123321,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'abcdeldkfjlsdkjflask',0,0,0,0,0,0,NULL,NULL),(42,4,123321,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'abcdeldkfjlsdkjflask',0,0,0,0,0,0,NULL,NULL),(43,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'GVSWTBQOIN',0,0,0,0,0,0,NULL,NULL),(44,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'VANBRLBMPJ',0,0,0,0,0,0,NULL,NULL),(45,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'HIQCWXLRIE',0,0,0,0,0,0,NULL,NULL),(46,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'QQURAAVCLL',0,0,0,0,0,0,NULL,NULL),(47,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'TCKXOATYGV',0,0,0,0,0,0,NULL,NULL),(48,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'XVWKFUIFDI',0,0,0,0,0,0,NULL,NULL),(49,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'TDPEBWQFSM',0,0,0,0,0,0,NULL,NULL),(50,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'GESAYTUTSL',0,0,0,0,0,0,NULL,NULL),(51,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'DBPJLZLXAA',0,0,0,0,0,0,NULL,NULL),(52,4,123321,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'朋友，发现漏洞了，修一下',0,0,0,0,0,0,NULL,NULL),(53,4,114514,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(54,4,1,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(55,10,1,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(56,10,2,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(57,10,567,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(58,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'WMDGEBKZHZ',0,0,0,0,0,0,NULL,NULL),(59,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'VLNAPLNDTB',0,0,0,0,0,0,NULL,NULL),(60,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'FEPMHJIWBG',0,0,0,0,0,0,NULL,NULL),(61,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'AKPYKDGSTA',0,0,0,0,0,0,NULL,NULL),(62,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'FXBSCYAAXZ',0,0,0,0,0,0,NULL,NULL),(63,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'OCWCAYJSKZ',0,0,0,0,0,0,NULL,NULL),(64,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'PBVEJNKOLC',0,0,0,0,0,0,NULL,NULL),(65,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'RNAUOMPYNZ',0,0,0,0,0,0,NULL,NULL),(66,2,0,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'JVZALWISSH',0,0,0,0,0,0,NULL,NULL),(67,10,25,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,NULL,NULL),(68,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'GMMLOBINTT',0,0,0,0,0,0,NULL,NULL),(69,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'RCWDXWHNHE',0,0,0,0,0,0,NULL,NULL),(70,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'PYRKYTJXWU',0,0,0,0,0,0,NULL,NULL),(71,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'MXCTHLPAHP',0,0,0,0,0,0,NULL,NULL),(72,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'SRKHYBTTHA',0,0,0,0,0,0,NULL,NULL),(73,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'AHDTDWBDXW',0,0,0,0,0,0,NULL,NULL),(74,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'ALWWHRPSIG',0,0,0,0,0,0,NULL,NULL),(75,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'AOHDKNVNME',0,0,0,0,0,0,NULL,NULL),(76,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'KCIINFRNKE',0,0,0,0,0,0,NULL,NULL),(77,10,25,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,'\"https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp\"',NULL),(78,10,25,5,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color=\"red\">r</font>',0,0,0,0,0,0,'i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp',NULL),(79,3,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<script src=\"https://cdn.jsdelivr.net/npm/three@0.153.0/build/three.min.js\">',0,0,0,0,0,0,NULL,NULL),(80,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','\"小狼\"'),(81,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(82,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,'<font color:\"red\">r</font>',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(83,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,'<iframe src=\"ip.skk.moe/simple\"></iframe>',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(84,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,'<iframe src=\"ip.skk.moe/simple\"></iframe>',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(85,6,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<iframe src=\"//player.bilibili.com/player.html?aid=382827685&bvid=BV1SZ4y1m7e9&cid=565225880&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>',0,0,0,0,0,0,NULL,NULL),(86,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,'<iframe src=\"ip.skk.moe/simple\"></iframe>',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(87,10,25,5,'2023/6/2 19:51:30',NULL,NULL,NULL,NULL,NULL,NULL,'<img src=\"https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf…jpg@240w_240h_1c_1s_!web-avatar-space-header.webp\">',0,0,0,0,0,0,'https://i2.hdslb.com/bfs/face/e76fc676b58f23c6bd9161723f12da00c7e051c5.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','小狼'),(88,6,1,1,'2023/6/2 18:45:30',NULL,NULL,NULL,NULL,NULL,NULL,'<iframe src=\"//player.bilibili.com/player.html?aid=382827685&bvid=BV1SZ4y1m7e9&cid=565225880&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>',0,0,0,0,0,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','星空凌'),(89,11,1,5,'2023/6/2 20:25:23',NULL,NULL,NULL,NULL,NULL,NULL,'11',0,0,0,0,0,0,'http://localhost:8192/updateAvatar/Hosisora_Ling.jpg','星空凌');
/*!40000 ALTER TABLE `userrating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 10:11:13
