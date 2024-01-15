-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `Call_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Call_Date` date DEFAULT NULL,
  PRIMARY KEY (`Call_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES (1,101,'2022-11-15'),(2,101,'2022-11-16'),(3,101,'2022-12-17'),(4,101,'2022-12-18'),(5,102,'2022-11-15'),(6,102,'2022-11-16'),(7,102,'2022-12-17'),(8,102,'2022-12-18'),(9,101,'2022-11-15'),(10,101,'2022-11-16'),(11,101,'2022-11-16'),(12,101,'2022-11-16'),(13,101,'2022-11-16'),(14,101,'2022-12-16');
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `Message_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Message_Date` date DEFAULT NULL,
  PRIMARY KEY (`Message_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,101,'2022-11-15'),(2,101,'2022-11-16'),(3,101,'2022-12-17'),(4,101,'2022-12-18'),(5,102,'2022-11-15'),(6,102,'2022-11-16'),(7,102,'2022-12-17'),(8,102,'2022-12-18'),(9,101,'2022-11-15'),(10,101,'2022-11-16');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pafdirections`
--

DROP TABLE IF EXISTS `pafdirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pafdirections` (
  `Request_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Request_Date` date DEFAULT NULL,
  PRIMARY KEY (`Request_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pafdirections`
--

LOCK TABLES `pafdirections` WRITE;
/*!40000 ALTER TABLE `pafdirections` DISABLE KEYS */;
INSERT INTO `pafdirections` VALUES (1,101,'2022-11-15'),(2,101,'2022-11-16'),(3,101,'2022-12-17'),(4,101,'2022-12-18'),(5,102,'2022-11-15'),(6,102,'2022-11-16'),(7,102,'2022-12-17'),(8,102,'2022-12-18'),(9,101,'2022-11-15'),(10,101,'2022-11-16');
/*!40000 ALTER TABLE `pafdirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profileviews`
--

DROP TABLE IF EXISTS `profileviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profileviews` (
  `View_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `View_Date` date DEFAULT NULL,
  PRIMARY KEY (`View_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profileviews`
--

LOCK TABLES `profileviews` WRITE;
/*!40000 ALTER TABLE `profileviews` DISABLE KEYS */;
INSERT INTO `profileviews` VALUES (1,101,'2022-11-15'),(2,101,'2022-11-16'),(3,101,'2022-12-17'),(4,101,'2022-12-18'),(5,102,'2022-11-15'),(6,102,'2022-11-16'),(7,102,'2022-12-17'),(8,102,'2022-12-18'),(9,101,'2022-11-15'),(10,101,'2022-11-16');
/*!40000 ALTER TABLE `profileviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searches` (
  `Search_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Search_Term` varchar(50) DEFAULT NULL,
  `Search_Date` date DEFAULT NULL,
  PRIMARY KEY (`Search_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
INSERT INTO `searches` VALUES (1,101,'Java','2022-11-15'),(2,101,'Database','2022-11-16'),(3,101,'Web Development','2022-12-17'),(4,101,'Machine Learning','2022-12-18'),(5,102,'Java','2022-11-15'),(6,102,'Database','2022-11-16'),(7,102,'Web Development','2022-12-17'),(8,102,'Machine Learning','2022-12-18'),(9,101,'Java','2022-11-15'),(10,101,'Database','2022-11-16');
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wvfprofile`
--

DROP TABLE IF EXISTS `wvfprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wvfprofile` (
  `Visit_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Visit_Date` date DEFAULT NULL,
  PRIMARY KEY (`Visit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wvfprofile`
--

LOCK TABLES `wvfprofile` WRITE;
/*!40000 ALTER TABLE `wvfprofile` DISABLE KEYS */;
INSERT INTO `wvfprofile` VALUES (1,101,'2022-11-15'),(2,101,'2022-11-16'),(3,101,'2022-12-17'),(4,101,'2022-12-18'),(5,102,'2022-11-15'),(6,102,'2022-11-16'),(7,102,'2022-12-17'),(8,102,'2022-12-18'),(9,101,'2022-11-15'),(10,101,'2022-11-16');
/*!40000 ALTER TABLE `wvfprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 22:42:34
