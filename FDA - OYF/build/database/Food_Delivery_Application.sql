-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: food_delivery_application
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotel_details`
--

DROP TABLE IF EXISTS `hotel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_details` (
  `Hotel_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pricepercent` int DEFAULT NULL,
  `taxpercent` int DEFAULT NULL,
  `HotelId` int NOT NULL AUTO_INCREMENT,
  `IsDeleted` varchar(5) DEFAULT 'False',
  PRIMARY KEY (`HotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_details`
--

LOCK TABLES `hotel_details` WRITE;
/*!40000 ALTER TABLE `hotel_details` DISABLE KEYS */;
INSERT INTO `hotel_details` VALUES ('Hotel Ganga','Anna Nagar West','Chennai','Tamil Nadu',25,18,1,'False'),('Adayar Ananda Bhavan (A2B)','Adayar','Chennai','Tamil Nadu',13,14,2,'False'),('Perambur Srinivasa (PS4)','Perambur','Chennai','Tamil Nadu',26,12,3,'False'),('Hot Chips','Vadapalani','Chennai','Tamil Nadu',20,11,4,'True'),('The Patiala House','Anna nagar','Chennai','Tamil Nadu',25,16,5,'False'),('Sangeetha','Perungalathur','Chennai','Tamil Nadu',35,17,6,'False'),('Shree Mithai','Chetpet','Chennai','Tamil Nadu',30,16,7,'False'),('Lavanya\'s Kitchen','Plot No 77, Hotel No - 14A','Chennai','State',38,16,9,'False');
/*!40000 ALTER TABLE `hotel_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `Item_Name` varchar(50) DEFAULT NULL,
  `BasePrice` int DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `ItemId` int NOT NULL AUTO_INCREMENT,
  `IsDeleted` varchar(5) DEFAULT 'False',
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('Plain Dosa',60,'breakfast/dinner',1,'False'),('Masala Dosa',90,'breakfast/dinner',2,'False'),('Podi Dosa',70,'breakfast/dinner',3,'False'),('Idli',40,'breakfast/dinner',4,'False'),('Mini Idli',50,'breakfast/dinner',5,'False'),('Podi Idli',50,'breakfast/dinner',6,'False'),('Chilli Idli',70,'breakfast/dinner',7,'False'),('Veg Biriyani',100,'lunch/dinner',8,'False'),('Veg Pulav',90,'lunch/dinner',9,'False'),('Kashmir Pulav',110,'lunch/dinner',10,'False'),('Garlic Naan',110,'lunch/dinner',11,'False'),('Jishnu\'s Recipe',5000,'breakfast/lunch/dinner',12,'False'),('Paneer Butter Masala',160,'lunch/dinner',13,'False'),('Filter Coffee',30,'beverage',14,'False'),('Pav Bhaji',45,'chaat',15,'False'),('Lavanya\'s Recipe',6000,'chaat',16,'False'),('Tea',20,'beverage',17,'False');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials` (
  `username` varchar(25) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `is_Admin` varchar(5) DEFAULT NULL,
  `CustId` int NOT NULL AUTO_INCREMENT,
  `IsDeleted` varchar(5) DEFAULT 'False',
  PRIMARY KEY (`CustId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials`
--

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;
INSERT INTO `login_credentials` VALUES ('jishnu.one','Jishnu@0n3','False',1,'False'),('tempuser2','Jishnu@0n3','False',10,'False'),('hello_world','Jishnu@0n3','False',12,'True'),('tempuser1','Temp@123','False',13,'False'),('admin','admin','True',14,'False'),('admin1','Admin@123','True',15,'False');
/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `OrderId` varchar(20) DEFAULT NULL,
  `ItemId` varchar(20) DEFAULT NULL,
  `Quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES ('48','10',1),('49','11',1),('50','6',1),('50','7',1),('50','8',1),('51','9',1),('51','8',4),('51','7',1),('52','9',1),('52','8',1),('53','8',100),('53','7',100),('53','6',100),('53','9',100),('53','10',100),('53','11',100),('53','1',100),('53','2',100),('53','3',100),('53','4',100),('53','5',100),('54','6',1),('54','7',1),('54','1',2),('54','2',1),('54','4',1),('54','5',1),('55','10',1),('56','6',1),('56','7',1),('56','8',1),('56','9',1),('57','12',3),('58','12',1),('58','16',1),('59','14',1),('59','15',1),('59','17',1),('60','13',1),('60','2',1),('60','9',1),('61','13',1),('62','17',1),('63','12',1),('63','15',1),('64','12',1),('64','15',1),('65','15',1),('65','14',1),('65','1',1),('66','12',1),('67','14',1),('68','14',1),('69','15',1),('70','16',1),('71','1',1),('71','2',2),('72','16',1),('72','12',1),('73','17',2),('74','1',3),('74','3',1),('74','5',1),('74','13',1),('74','11',1);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderId` int NOT NULL AUTO_INCREMENT,
  `OrderDatetime` datetime DEFAULT NULL,
  `HotelId` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(200) DEFAULT NULL,
  `custid` int DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `custid` (`custid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `login_credentials` (`CustId`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (48,'2024-05-20 08:51:14','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(49,'2024-05-20 08:52:02','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(50,'2024-05-20 08:52:27','3','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(51,'2024-05-20 09:02:37','4','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(52,'2024-05-20 09:04:02','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(53,'2024-05-20 09:06:03','4','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(54,'2024-05-22 08:04:16','3','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(55,'2024-05-22 08:07:10','4','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(56,'2024-05-23 19:02:18','9','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(57,'2024-05-23 19:28:00','9','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(58,'2024-05-24 13:19:42','3','a b',13),(59,'2024-05-24 13:20:09','4','a b',13),(60,'2024-05-24 13:20:29','1','a b',13),(61,'2024-05-24 15:07:55','1','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(62,'2024-05-24 23:36:43','4','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(63,'2024-05-24 23:38:49','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(64,'2024-05-24 23:39:20','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(65,'2024-05-26 10:58:55','3','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(66,'2024-05-26 11:00:44','6','a b',13),(67,'2024-05-26 19:31:26','1','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(68,'2024-05-26 19:43:13','4','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(69,'2024-05-26 20:14:39','3','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(70,'2024-05-26 20:16:32','6','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(71,'2024-05-26 20:49:31','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(72,'2024-05-26 21:32:28','9','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(73,'2024-05-27 12:38:46','3','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1),(74,'2024-05-30 20:25:18','5','plot no 77. door no 14 A, Pillaiyar kovil street pallavan nagar , nerkundram',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `Name` varchar(30) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `EmailId` varchar(40) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `Custid` int DEFAULT NULL,
  KEY `CustID` (`Custid`),
  CONSTRAINT `personal_details_ibfk_1` FOREIGN KEY (`Custid`) REFERENCES `login_credentials` (`CustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES ('Jishnu One','7305479990','jishnu.one@gmail.com','plot no 77. door no 14 A, Pillaiyar kovil street | pallavan nagar , nerkundram','Chennai','Tamil Nadu',1),('Temp User Two','2135464677','rgs@g.g','g | f','fr','r',10),('Hello World one','1237894560','hello@world.now','mother | earth','earth','universe',12),('Temp User One','1235436789','a@b.c','a | b','earth','b',13),('Admin (do not edit)','0000000000','admin@oyf.com','admin | oyF - HQ','chennai','tn',14),('Admin One','0000011111','admin1@oyf.com','admin | oyF-Hq','Chennai','Tamil Nadu',15);
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 23:28:53
