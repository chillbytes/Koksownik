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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyparts`
--

LOCK TABLES `bodyparts` WRITE;
/*!40000 ALTER TABLE `bodyparts` DISABLE KEYS */;
INSERT INTO `bodyparts` VALUES (1,'Klatka piersiowa'),(2,'Plecy'),(3,'Nogi'),(4,'Ramiona'),(5,'Barki');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'Sztanga'),(3,2,'Hantle'),(4,1,'Maszyna'),(5,1,'Ciężar ciała'),(6,1,'Gumy'),(7,1,'Ciężar ciała z asystą');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_modes`
--

DROP TABLE IF EXISTS `exercise_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_modes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_modes`
--

LOCK TABLES `exercise_modes` WRITE;
/*!40000 ALTER TABLE `exercise_modes` DISABLE KEYS */;
INSERT INTO `exercise_modes` VALUES (1,'Seria treningowa','Trening'),(2,'Seria rozgrzewkowa','Rozgrzewka'),(3,'Trening do upadku mięśniowego','Upadek'),(4,'Trening ze zmniejszeniem obciążenia','Dropset');
/*!40000 ALTER TABLE `exercise_modes` ENABLE KEYS */;
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
  `body_part_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbfrh4202ef14ooi7dnfmj97xb` (`body_part_id`),
  KEY `FKire7458l3f5p2odvr56iv4ew1` (`category_id`),
  CONSTRAINT `FKbfrh4202ef14ooi7dnfmj97xb` FOREIGN KEY (`body_part_id`) REFERENCES `bodyparts` (`id`),
  CONSTRAINT `FKire7458l3f5p2odvr56iv4ew1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'','Wyciskanie na ławeczce',1,1),(2,'','Martwy ciąg',2,1),(3,'Shrug','Shrug',2,1),(4,'','Wspięcia na palce',3,1),(5,'','Wyciskanie nóg na prasie',3,1),(6,'','Hack przysiady',3,1),(7,'','Zginanie nóg',3,1),(8,'','Prostowanie nóg',3,1),(9,'','Rozpiętki na maszunie',1,4),(10,'','Rozpiętki hantlami',1,3),(11,'','Wyciskanie hantli w leżeniu',1,3),(12,'','Arnold press',5,3),(13,'','Prostownie pleców',2,4),(14,'','Wyciskanie na skośnej ławce',1,3),(15,'','Wiosłowanie jednorącz hantlami',2,3),(16,'','Wiosłowanie sztangą w pochyle',2,1),(17,'','Zginanie ramion',4,1),(18,'','Rozpiętki na wyciągu',1,4),(19,'','Wyciskanie w wąskim uchwycie',1,3),(20,'','Wyciskanie na ławeczce w ujemnym skosie',1,3),(21,'','Przyciąganie wyciągu do twarzy',5,4),(22,'','Wzniosy sztangielek przodem',5,1),(23,'','Zginanie młotkowe ramion',4,3),(24,'','Unoszenie bioder',3,1),(25,'','Wyciskanie w sztangielek leżeniu',1,1),(26,'','Rozpiętki na skośnej ławce',1,3),(27,'','Wiosłowanie w podparciu na ławeczce',2,3),(28,'','Odwrotne rozpiętki',2,4),(29,'','Przyklęki na jedno kolano',3,3),(30,'','Wniosy sztangi nad głowę',5,1),(31,'','Zginanie ramion na modlitewniku',4,1),(32,'','Pullover',2,1),(33,'','Zginanie ramion nachwytem',4,1),(34,'','Rumuński martwy ciąg',2,1),(35,'','Wyciskanie sztangielek nad głowę',5,3),(36,'','Wznoszenie sztangielek bokiem',5,3),(37,'','Francuskie wyciskanie w leżeniu',4,1),(38,'','Przusiady',3,1),(39,'','Step up',3,3),(40,'','Martwy ciąg na prostych nogach',3,1),(41,'','Martwy ciąg sumo',2,1),(42,'','Prostowanie ramion',4,4),(43,'','Francuskie wyciskanie sztangielkami',4,3),(44,'','Przysiad ze sztangą trzymaną z przodu',3,1),(45,'Ćwiczenie na mięśnie przedramion','Zginanie nadgarstków ze sztangą',4,1);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_session_positions`
--

DROP TABLE IF EXISTS `workout_session_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout_session_positions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` bit(1) NOT NULL,
  `exercise_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exercise_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exercise_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repetitions` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `workout_session_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs1gqpof875iew8es0s0q3g98d` (`workout_session_id`),
  CONSTRAINT `FKs1gqpof875iew8es0s0q3g98d` FOREIGN KEY (`workout_session_id`) REFERENCES `workout_sessions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_session_positions`
--

LOCK TABLES `workout_session_positions` WRITE;
/*!40000 ALTER TABLE `workout_session_positions` DISABLE KEYS */;
INSERT INTO `workout_session_positions` VALUES (747,'Sztanga',_binary '\0','','Trening','Wyciskanie na ławeczce',10,50,85),(748,'Sztanga',_binary '\0','','Trening','Wyciskanie na ławeczce',10,30,85),(749,'Sztanga',_binary '\0','','Trening','Wyciskanie na ławeczce',10,30,85),(750,'Sztanga',_binary '\0','','Trening','Wyciskanie na ławeczce',10,30,85),(751,'Maszyna',_binary '\0','','Trening','Prostownie pleców',9,50,85),(752,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',10,12,85),(753,'Hantle',_binary '\0','','Dropset','Wyciskanie w wąskim uchwycie',10,50,85),(754,'Maszyna',_binary '\0','','Upadek','Prostownie pleców',10,50,85),(755,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',1,111,85),(756,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',20,86,85),(757,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',20,20,85),(758,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',111,111,86),(759,'Maszyna',_binary '\0','','Dropset','Prostownie pleców',11,111,86),(760,'Sztanga',_binary '\0','','Dropset','Wiosłowanie sztangą w pochyle',99,99,86),(761,'Sztanga',_binary '\0','','Rozgrzewka','Wiosłowanie sztangą w pochyle',11,11,86),(762,'Hantle',_binary '\0','','Dropset','Wiosłowanie jednorącz hantlami',12,20,86),(763,'Maszyna',_binary '\0','','Upadek','Prostownie pleców',10,10,87);
/*!40000 ALTER TABLE `workout_session_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_sessions`
--

DROP TABLE IF EXISTS `workout_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `begining_date_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` bit(1) NOT NULL,
  `session_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_sessions`
--

LOCK TABLES `workout_sessions` WRITE;
/*!40000 ALTER TABLE `workout_sessions` DISABLE KEYS */;
INSERT INTO `workout_sessions` VALUES (85,'2023-05-02 12:37:39.820950','Workout 001',_binary '\0','2023-05-02','12:37'),(86,'2023-05-02 12:37:47.144155','Workout 002',_binary '\0','2023-05-02','12:37'),(87,'2023-05-02 12:52:46.847537','Workout 004',_binary '\0','2023-05-02','12:52');
/*!40000 ALTER TABLE `workout_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workoutpositions`
--

DROP TABLE IF EXISTS `workoutpositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workoutpositions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `position_number` bigint DEFAULT NULL,
  `repetitions` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `exercise_id` bigint DEFAULT NULL,
  `exercise_mode_id` bigint DEFAULT NULL,
  `workout_template_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf87rv5twrhuy8qrjp87usvbhv` (`exercise_id`),
  KEY `FKt7nku7w2sbjkhujo1ye3tbkyh` (`exercise_mode_id`),
  KEY `FKdwio83ukpn3y5fu01sdo3rued` (`workout_template_id`),
  CONSTRAINT `FKdwio83ukpn3y5fu01sdo3rued` FOREIGN KEY (`workout_template_id`) REFERENCES `workouts` (`id`),
  CONSTRAINT `FKf87rv5twrhuy8qrjp87usvbhv` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`),
  CONSTRAINT `FKt7nku7w2sbjkhujo1ye3tbkyh` FOREIGN KEY (`exercise_mode_id`) REFERENCES `exercise_modes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workoutpositions`
--

LOCK TABLES `workoutpositions` WRITE;
/*!40000 ALTER TABLE `workoutpositions` DISABLE KEYS */;
INSERT INTO `workoutpositions` VALUES (1,1,10,50,1,1,1),(2,2,10,30,1,1,1),(5,3,10,30,1,1,1),(6,4,10,30,1,1,1),(7,5,9,50,13,1,1),(11,NULL,11,12,NULL,4,NULL),(12,NULL,111,111,NULL,3,NULL),(13,NULL,111,111,NULL,3,NULL),(14,NULL,20,100,NULL,4,NULL),(15,NULL,11,111,NULL,4,NULL),(16,NULL,11,111,NULL,4,NULL),(17,NULL,11,111,NULL,4,NULL),(18,NULL,1111,111,NULL,4,NULL),(19,NULL,111,111,13,4,2),(20,NULL,11,111,13,4,2),(21,NULL,99,99,16,4,2),(22,NULL,11,11,16,2,2),(23,NULL,12,20,15,4,2),(24,NULL,10,12,13,4,1),(25,NULL,10,50,19,4,1),(27,NULL,10,50,13,3,1),(29,NULL,10,10,13,3,3),(30,NULL,1,111,13,4,1),(31,NULL,20,86,13,4,1),(32,NULL,20,20,13,4,1),(33,NULL,10,10,13,3,4),(34,NULL,20,20,37,4,2),(36,NULL,33,33,37,1,2),(37,NULL,11,111,6,4,3),(38,NULL,20,66,8,4,3),(39,NULL,11,86,41,1,3);
/*!40000 ALTER TABLE `workoutpositions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (1,'Trening numer 1','Workout 001'),(2,'Trening numer 2','Workout 002'),(3,'Trening numer 3','Workout 003'),(4,'Trening numer 4','Workout 004');
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-02 12:59:43
