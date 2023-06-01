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
INSERT INTO `game` VALUES (1,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(2,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(3,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(4,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(5,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(6,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(7,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(8,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(9,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(10,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(11,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(12,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(13,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(14,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(15,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(16,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(17,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(18,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(19,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(20,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(21,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(22,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(23,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(24,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(25,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(26,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(27,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(28,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(29,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(30,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(31,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(32,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(33,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(34,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(35,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(36,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(37,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(38,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(39,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(40,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(41,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(42,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(43,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(44,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(45,'崩坏：星穹铁道','Honkai:Star Rail','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','sr.mihoyo.com',NULL,1,1,0,0,0,10,1,'啊哈真没面子！',NULL,'科幻、冒险','回合制RPG',2023,'啊哈真没面子','miHoYo',NULL),(46,'原神','Genshin Impact','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg','yuanshen.com',NULL,1,1,0,0,0,10,1,'原来你也玩原神',NULL,'奇幻、冒险','开放世界RPG',2020,'欢迎来到提瓦特大陆','miHoYo',NULL),(47,'绝区零','Zenless Zone Zero','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','zzz.mihoyo.com',NULL,1,1,0,0,0,10,1,'手磨咖啡怎么你了',NULL,'科幻、肉鸽','ACT',2024,'速溶咖啡天下第一','miHoYo',NULL),(48,'崩坏3','Honkai Impact 3rd','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000','bh3.com',NULL,1,1,0,0,0,10,1,'一定是米哈游干的！',NULL,'科幻、剧情','ACT',2016,'姬子温柔地注视着你，不再言语','miHoYo',NULL),(49,'星球大战绝地：幸存者','Star Wars Jedi:Survivor','https://inews.gtimg.com/newsapp_bt/0/14820336071/1000',NULL,NULL,2,2,1,298,198,8.5,1,'你说得对，但是DXGI_ERROR',NULL,'科幻、类魂','ACT',2023,'你说得对，但是DXGI_ERROR','Respawn Entertainment',198),(50,'彩虹六号：围攻','Rainbow Six:Siege','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg',NULL,NULL,3,3,1,98,68,9,1,'谈判破裂，准备攻坚',NULL,'战术、PVP','FPS',2015,'坏了，播彩六的屏幕变成我面前这块了','Ubisoft',68),(51,'赛博朋克2077','Cyberpunk2077','https://www.3wka.com/d/file/p/2021/10-19/bde5d1772072f4c0c28795da89bbc59d.jpg',NULL,NULL,4,4,1,298,198,7,1,'其鞋甚多...',NULL,'赛博朋克、剧情','开放世界FPS',2020,'还好网站没有跳票','CD Project Red',198);
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
  `nickname` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `steamid` varchar(45) DEFAULT NULL,
  `permissionlevel` int NOT NULL DEFAULT '0',
  `avatar` text,
  `bio` text,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'星空凌','Hosisora_Ling','114514','2374416274@qq.com','233zuoer',3,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(2,'1','1','1',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(3,'2','2','2',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(4,'希娜小姐','1123','111',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊'),(5,'3','313','3',NULL,NULL,0,'https://i1.hdslb.com/bfs/face/b9f3d00b2646e42e0fbf45215b4b0fb3e0859644.jpg@240w_240h_1c_1s_!web-avatar-space-header.webp','向着星辰与深渊');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrating`
--

DROP TABLE IF EXISTS `userrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrating` (
  `gid` int NOT NULL,
  `uid` int NOT NULL,
  `rating` int NOT NULL,
  `time` date DEFAULT NULL,
  `performance` int DEFAULT NULL,
  `graphic` int DEFAULT NULL,
  `story` int DEFAULT NULL,
  `gameplay` int DEFAULT NULL,
  `lifetime` int DEFAULT NULL,
  `PriceToFunRatio` int DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`gid`,`uid`),
  UNIQUE KEY `gid_UNIQUE` (`gid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrating`
--

LOCK TABLES `userrating` WRITE;
/*!40000 ALTER TABLE `userrating` DISABLE KEYS */;
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

-- Dump completed on 2023-06-01 17:35:44
