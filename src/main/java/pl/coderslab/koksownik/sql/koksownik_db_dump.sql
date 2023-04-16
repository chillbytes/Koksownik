-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: koksownik
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bodyparts`
--

DROP TABLE IF EXISTS `bodyparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodyparts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyparts`
--

LOCK TABLES `bodyparts` WRITE;
/*!40000 ALTER TABLE `bodyparts` DISABLE KEYS */;
INSERT INTO `bodyparts` VALUES (1,'Chest'),(2,'Back'),(3,'Arms'),(4,'Shoulders'),(5,'Legs');
/*!40000 ALTER TABLE `bodyparts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `multiplier` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Dumbbell'),(2,1,'Barbell'),(3,1,'Machine'),(4,1,'Bodyweight'),(5,1,'Kettlebell');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercises` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_part_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbfrh4202ef14ooi7dnfmj97xb` (`body_part_id`),
  KEY `FKire7458l3f5p2odvr56iv4ew1` (`category_id`),
  CONSTRAINT `FKbfrh4202ef14ooi7dnfmj97xb` FOREIGN KEY (`body_part_id`) REFERENCES `bodyparts` (`id`),
  CONSTRAINT `FKire7458l3f5p2odvr56iv4ew1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (2,'Wyciskanie na ławeczce','Bench press',1,2);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mass` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repetition` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (1,'Dupa','Dupa'),(2,'','trening'),(3,'trening drugi','trening2'),(4,'trening 3','trening 3 '),(5,'trening czwarty','trening 4'),(6,'trening 5','5'),(7,'trening 6','6'),(8,'777','7'),(9,'8','8'),(10,'trening numer 9','trening 9 '),(11,'Opis treningu numer 10','Trening nr 10'),(12,'Opis treningu nr 11','Trening nr 11'),(13,'opis treningu 12','trening 12 '),(14,'222','22'),(15,'222','22');
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts_excercises`
--

DROP TABLE IF EXISTS `workouts_excercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts_excercises` (
  `workout_id` bigint NOT NULL,
  `excercise_id` bigint NOT NULL,
  KEY `FK717howsfp21ctokhfpafq0diy` (`workout_id`),
  KEY `FKr8oyqgy9gdceurf4quku63xr2` (`excercise_id`),
  CONSTRAINT `FK717howsfp21ctokhfpafq0diy` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`),
  CONSTRAINT `FKr8oyqgy9gdceurf4quku63xr2` FOREIGN KEY (`excercise_id`) REFERENCES `exercises` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts_excercises`
--

LOCK TABLES `workouts_excercises` WRITE;
/*!40000 ALTER TABLE `workouts_excercises` DISABLE KEYS */;
INSERT INTO `workouts_excercises` VALUES (1,2),(13,2);
/*!40000 ALTER TABLE `workouts_excercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts_exercises`
--

DROP TABLE IF EXISTS `workouts_exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts_exercises` (
  `workout_id` bigint NOT NULL,
  `exercise_id` bigint NOT NULL,
  KEY `FKi7264u1fw298c0ysf28x39hs6` (`exercise_id`),
  KEY `FKr3gxh8hss94yyf7ygthm544fp` (`workout_id`),
  CONSTRAINT `FKi7264u1fw298c0ysf28x39hs6` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`),
  CONSTRAINT `FKr3gxh8hss94yyf7ygthm544fp` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts_exercises`
--

LOCK TABLES `workouts_exercises` WRITE;
/*!40000 ALTER TABLE `workouts_exercises` DISABLE KEYS */;
/*!40000 ALTER TABLE `workouts_exercises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16 15:06:38
