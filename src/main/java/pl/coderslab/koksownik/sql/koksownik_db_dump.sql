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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyparts`
--

LOCK TABLES `bodyparts` WRITE;
/*!40000 ALTER TABLE `bodyparts` DISABLE KEYS */;
INSERT INTO `bodyparts` VALUES (1,'Chest'),(2,'Back'),(3,'Legs'),(4,'Arms'),(5,'Shoulders'),(6,'Neck');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'Barbel'),(3,2,'Dumbell'),(4,1,'Machine'),(5,1,'Bodyweight'),(6,1,'Rubber');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_modes`
--

LOCK TABLES `exercise_modes` WRITE;
/*!40000 ALTER TABLE `exercise_modes` DISABLE KEYS */;
INSERT INTO `exercise_modes` VALUES (1,'','Work out'),(2,'','Warmout'),(3,'','Failure'),(4,'','Drop set');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'','Chest press',1,1),(2,'','Deadlift',2,1),(3,'Shrug','Shrug',2,1),(4,'','Standing calf rise',3,1),(5,'','Leg press',3,1),(6,'','Hack squat',3,1),(7,'','Leg curl',3,1),(8,'','Leg extension',3,1),(9,'','Chest fly',1,4),(10,'','Dubbel fly',1,3),(11,'','Barel press',1,3),(12,'','Arnold press',5,3),(13,'','Back extension',2,4),(14,'','Dumbbell bench press',1,3),(15,'','Bent over one arm row',2,3),(16,'','Bent over row',2,1),(17,'','Bicep curl',4,1),(18,'','Cable crosover',1,4),(19,'','Coffin press',1,3),(20,'','Decline bench press',1,3),(21,'','Face pulls',5,4),(22,'','Front rise',5,1),(23,'','Hammer curl',4,3),(24,'','Hip thrust',3,1),(25,'','Incline bench press',1,1),(26,'','Incline chest fly',1,3),(27,'','Incline row',2,3),(28,'','Lat pull down',2,4),(29,'','Lunge',3,3),(30,'','Overhead press',5,1),(31,'','Preacher curl',4,1),(32,'','Pullover',2,1),(33,'','Reverse curl',4,1),(34,'','Romanian deadlift',2,1),(35,'','Shoulder press',5,3),(36,'','Side laterals',5,3),(37,'','Skullcrusher',4,1),(38,'','Squat',3,1),(39,'','Step up',3,3),(40,'','Stiff leg deadlift',3,1),(41,'','Sumo deadlift',2,1),(42,'','Tricep extension',4,4),(43,'','Tricep extension dumbbells',4,3),(44,'','Front squat',3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_session_positions`
--

LOCK TABLES `workout_session_positions` WRITE;
/*!40000 ALTER TABLE `workout_session_positions` DISABLE KEYS */;
INSERT INTO `workout_session_positions` VALUES (652,'Barbel',_binary '\0','','Work out','Chest press',10,50,74),(653,'Barbel',_binary '\0','','Work out','Chest press',10,30,74),(654,'Barbel',_binary '\0','','Work out','Chest press',10,30,74),(655,'Barbel',_binary '\0','','Work out','Chest press',10,30,74),(656,'Machine',_binary '\0','','Work out','Back extension',9,50,74),(657,'Machine',_binary '\0','','Drop set','Back extension',10,12,74),(658,'Dumbell',_binary '\0','','Drop set','Coffin press',10,50,74),(659,'Machine',_binary '\0','','Failure','Back extension',10,50,74),(660,'Machine',_binary '\0','','Drop set','Back extension',1,111,74),(661,'Machine',_binary '\0','','Drop set','Back extension',20,86,74),(662,'Machine',_binary '\0','','Drop set','Back extension',20,20,74),(663,'Barbel',_binary '\0','','Work out','Chest press',10,50,75),(664,'Barbel',_binary '\0','','Work out','Chest press',10,30,75),(665,'Barbel',_binary '\0','','Work out','Chest press',10,30,75),(666,'Barbel',_binary '\0','','Work out','Chest press',10,30,75),(667,'Machine',_binary '\0','','Work out','Back extension',9,50,75),(668,'Machine',_binary '\0','','Drop set','Back extension',10,12,75),(669,'Dumbell',_binary '\0','','Drop set','Coffin press',10,50,75),(670,'Machine',_binary '\0','','Failure','Back extension',10,50,75),(671,'Machine',_binary '\0','','Drop set','Back extension',1,111,75),(672,'Machine',_binary '\0','','Drop set','Back extension',20,86,75),(673,'Machine',_binary '\0','','Drop set','Back extension',20,20,75);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_sessions`
--

LOCK TABLES `workout_sessions` WRITE;
/*!40000 ALTER TABLE `workout_sessions` DISABLE KEYS */;
INSERT INTO `workout_sessions` VALUES (74,'2023-04-29 17:18:00.676561','Workout1',_binary '\0'),(75,'2023-04-29 17:18:09.088850','Workout1',_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workoutpositions`
--

LOCK TABLES `workoutpositions` WRITE;
/*!40000 ALTER TABLE `workoutpositions` DISABLE KEYS */;
INSERT INTO `workoutpositions` VALUES (1,1,10,50,1,1,1),(2,2,10,30,1,1,1),(5,3,10,30,1,1,1),(6,4,10,30,1,1,1),(7,5,9,50,13,1,1),(11,NULL,11,12,NULL,4,NULL),(12,NULL,111,111,NULL,3,NULL),(13,NULL,111,111,NULL,3,NULL),(14,NULL,20,100,NULL,4,NULL),(15,NULL,11,111,NULL,4,NULL),(16,NULL,11,111,NULL,4,NULL),(17,NULL,11,111,NULL,4,NULL),(18,NULL,1111,111,NULL,4,NULL),(19,NULL,111,111,13,4,2),(20,NULL,11,111,13,4,2),(21,NULL,99,99,16,4,2),(22,NULL,11,11,16,2,2),(23,NULL,12,20,15,4,2),(24,NULL,10,12,13,4,1),(25,NULL,10,50,19,4,1),(27,NULL,10,50,13,3,1),(29,NULL,10,10,13,3,3),(30,NULL,1,111,13,4,1),(31,NULL,20,86,13,4,1),(32,NULL,20,20,13,4,1),(33,NULL,10,10,13,3,4);
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
INSERT INTO `workouts` VALUES (1,'Workout no one','Workout1'),(2,'workout no. two','Workout 2 '),(3,'Workout number three','Workout 3'),(4,'Workout number four','Workout 4');
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

-- Dump completed on 2023-04-29 17:25:24
