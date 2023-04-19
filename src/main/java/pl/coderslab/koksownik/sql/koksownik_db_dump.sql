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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyparts`
--

LOCK TABLES `bodyparts` WRITE;
/*!40000 ALTER TABLE `bodyparts` DISABLE KEYS */;
INSERT INTO `bodyparts` VALUES (1,'Chest'),(2,'Back'),(3,'Legs'),(4,'Arms'),(5,'Shoulders');
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
INSERT INTO `categories` VALUES (1,1,'Barbel'),(3,2,'Dumbell'),(4,1,'Machine'),(5,1,'Bodyweight');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'','Chest press',1,1),(2,'','Deadlift',2,1),(3,'Shrug','Shrug',2,1),(4,'','Standing calf rise',3,1),(5,'','Leg press',3,1),(6,'','Hack squat',3,1),(7,'','Leg curl',3,1),(8,'','Leg extension',3,1),(9,'','Chest fly',1,4),(10,'','Dubbel fly',1,3),(11,'','Barel press',1,3),(12,'','Arnold press',5,3),(13,'','Back extension',2,4),(14,'','Dumbbell bench press',1,3),(15,'','Bent over one arm row',2,3),(16,'','Bent over row',2,1),(17,'','Bicep curl',4,1),(18,'','Cable crosover',1,4),(19,'','Coffin press',1,3),(20,'','Decline bench press',1,3),(21,'','Face pulls',5,4),(22,'','Front rise',5,1),(23,'','Hammer curl',4,3),(24,'','Hip thrust',3,1),(25,'','Incline bench press',1,1),(26,'','Incline chest fly',1,3),(27,'','Incline row',2,3),(28,'','Lat pull down',2,4),(29,'','Lunge',3,3),(30,'','Overhead press',5,1),(31,'','Preacher curl',4,1),(32,'','Pullover',2,1),(33,'','Reverse curl',4,1),(34,'','Romanian deadlift',2,1),(35,'','Shoulder press',5,3),(36,'','Side laterals',5,3),(37,'','Skullcrusher',4,1),(38,'','Squat',3,1),(39,'','Step up',3,3),(40,'','Stiff leg deadlift',3,1),(41,'','Sumo deadlift',2,1),(42,'','Tricep extension',4,4),(43,'','Tricep extension dumbbells',4,3);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workoutpositions`
--

LOCK TABLES `workoutpositions` WRITE;
/*!40000 ALTER TABLE `workoutpositions` DISABLE KEYS */;
INSERT INTO `workoutpositions` VALUES (1,1,10,50,1,1,1),(2,2,10,30,1,1,1),(3,3,10,30,1,1,1),(4,4,10,30,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (1,'Workout no one','Workout1'),(2,'workout no. two','Workout 2 ');
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

-- Dump completed on 2023-04-21 12:12:00
