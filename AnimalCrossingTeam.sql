CREATE DATABASE  IF NOT EXISTS `animal_crossing_team` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `animal_crossing_team`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: animal_crossing_team
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `b_name` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2509 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (2500,'Able Sisters'),(2501,'Crazy Redds'),(2502,'GracieGracie'),(2503,'Kicks'),(2504,'Nook n Go'),(2505,'Nooks Cranny'),(2506,'Nookway'),(2507,'Re-Tail'),(2508,'Tom Nooks Store');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessinfrastructure`
--

DROP TABLE IF EXISTS `businessinfrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businessinfrastructure` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `i_id` int NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `i_id` (`i_id`),
  CONSTRAINT `businessinfrastructure_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `business` (`b_id`),
  CONSTRAINT `businessinfrastructure_ibfk_2` FOREIGN KEY (`i_id`) REFERENCES `infrastructure` (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessinfrastructure`
--

LOCK TABLES `businessinfrastructure` WRITE;
/*!40000 ALTER TABLE `businessinfrastructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `businessinfrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesssales`
--

DROP TABLE IF EXISTS `businesssales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesssales` (
  `bs_id` int NOT NULL AUTO_INCREMENT,
  `b_id` int NOT NULL,
  `bs_value` float NOT NULL,
  PRIMARY KEY (`bs_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `businesssales_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `business` (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3509 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesssales`
--

LOCK TABLES `businesssales` WRITE;
/*!40000 ALTER TABLE `businesssales` DISABLE KEYS */;
INSERT INTO `businesssales` VALUES (3500,2500,128450),(3501,2501,34820),(3502,2502,97200),(3503,2503,55310),(3504,2504,72150),(3505,2505,61990),(3506,2506,89430),(3507,2507,110270),(3508,2508,46580);
/*!40000 ALTER TABLE `businesssales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessworkers`
--

DROP TABLE IF EXISTS `businessworkers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businessworkers` (
  `bw_id` int NOT NULL AUTO_INCREMENT,
  `b_id` int NOT NULL,
  `vc_id` int NOT NULL,
  PRIMARY KEY (`bw_id`),
  KEY `b_id` (`b_id`),
  KEY `vc_id` (`vc_id`),
  CONSTRAINT `businessworkers_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `business` (`b_id`),
  CONSTRAINT `businessworkers_ibfk_2` FOREIGN KEY (`vc_id`) REFERENCES `villagercareer` (`vc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessworkers`
--

LOCK TABLES `businessworkers` WRITE;
/*!40000 ALTER TABLE `businessworkers` DISABLE KEYS */;
/*!40000 ALTER TABLE `businessworkers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_title` varchar(50) DEFAULT NULL,
  `c_salary` float DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house` (
  `h_id` int NOT NULL AUTO_INCREMENT,
  `h_floors` tinyint NOT NULL,
  `h_price` float NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housepayment`
--

DROP TABLE IF EXISTS `housepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housepayment` (
  `hp_id` int NOT NULL AUTO_INCREMENT,
  `h_id` int NOT NULL,
  `v_id` int NOT NULL,
  `hp_amount` float DEFAULT NULL,
  PRIMARY KEY (`hp_id`),
  KEY `h_id` (`h_id`),
  CONSTRAINT `housepayment_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `house` (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housepayment`
--

LOCK TABLES `housepayment` WRITE;
/*!40000 ALTER TABLE `housepayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `housepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructure`
--

DROP TABLE IF EXISTS `infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructure` (
  `i_id` int NOT NULL AUTO_INCREMENT,
  `i_name` varchar(255) NOT NULL,
  `i_total_cost` float NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructure`
--

LOCK TABLES `infrastructure` WRITE;
/*!40000 ALTER TABLE `infrastructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `infrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructurepayments`
--

DROP TABLE IF EXISTS `infrastructurepayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructurepayments` (
  `ip_id` int NOT NULL AUTO_INCREMENT,
  `i_id` int NOT NULL,
  `ip_payment` float NOT NULL,
  `v_id` int NOT NULL,
  PRIMARY KEY (`ip_id`),
  KEY `i_id` (`i_id`),
  KEY `v_id` (`v_id`),
  CONSTRAINT `infrastructurepayments_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `infrastructure` (`i_id`),
  CONSTRAINT `infrastructurepayments_ibfk_2` FOREIGN KEY (`v_id`) REFERENCES `villager` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructurepayments`
--

LOCK TABLES `infrastructurepayments` WRITE;
/*!40000 ALTER TABLE `infrastructurepayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `infrastructurepayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villager`
--

DROP TABLE IF EXISTS `villager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villager` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_name` varchar(25) NOT NULL,
  `vs_id` int NOT NULL,
  `vp_id` int NOT NULL,
  `h_id` int DEFAULT NULL,
  PRIMARY KEY (`v_id`),
  KEY `vs_id` (`vs_id`),
  KEY `vp_id` (`vp_id`),
  KEY `h_id` (`h_id`),
  CONSTRAINT `villager_ibfk_1` FOREIGN KEY (`vs_id`) REFERENCES `villagerspecies` (`vs_id`),
  CONSTRAINT `villager_ibfk_2` FOREIGN KEY (`vp_id`) REFERENCES `villagerpersonality` (`vp_id`),
  CONSTRAINT `villager_ibfk_3` FOREIGN KEY (`h_id`) REFERENCES `house` (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villager`
--

LOCK TABLES `villager` WRITE;
/*!40000 ALTER TABLE `villager` DISABLE KEYS */;
INSERT INTO `villager` VALUES (1,'Bob',2,2,NULL),(2,'Mac',4,1,NULL),(3,'Moe',2,2,NULL),(4,'Ace',6,1,NULL),(5,'Bam',9,1,NULL),(6,'Bud',13,1,NULL),(7,'Cobb',1,1,NULL),(8,'Ed',18,3,NULL),(9,'Hugh',1,2,NULL),(10,'Jay',6,1,NULL),(11,'Kody',3,1,NULL),(12,'Rex',13,2,NULL),(13,'Rudy',2,1,NULL),(14,'Shep',4,3,NULL),(15,'Stu',7,2,NULL),(16,'Tad',14,1,NULL),(17,'Bea',4,6,NULL),(18,'Beau',9,2,NULL),(19,'Bill',11,1,NULL),(20,'Bones',4,2,NULL),(21,'Chops',1,3,NULL),(22,'Curly',1,1,NULL),(23,'Dom',20,1,NULL),(24,'Erik',9,2,NULL),(25,'Huck',14,3,NULL),(26,'Joey',11,2,NULL),(27,'Kevin',1,1,NULL),(28,'Kidd',12,3,NULL),(29,'Kyle',8,3,NULL),(30,'Lucky',4,2,NULL),(31,'Marty',3,2,NULL),(32,'Mott',13,1,NULL),(33,'Nate',10,2,NULL),(34,'Peck',6,1,NULL),(35,'Pudge',3,2,NULL),(36,'Rod',17,1,NULL),(37,'Rory',13,1,NULL),(38,'Spork',1,2,NULL),(39,'Tom',2,5,NULL),(40,'Zell',9,3,NULL),(41,'Al',25,2,NULL),(42,'Barold',3,2,NULL),(43,'Biff',22,1,NULL),(44,'Billy',12,1,NULL),(45,'Biskit',4,2,NULL),(46,'Buck',18,1,NULL),(47,'Cheri',3,4,NULL),(48,'Coach',7,1,NULL),(49,'Doc',23,2,NULL),(50,'Drake',11,2,NULL),(51,'Drift',14,1,NULL),(52,'Gala',1,6,NULL),(53,'Henry',14,3,NULL),(54,'Ike',10,5,NULL),(55,'Jacob',6,2,NULL),(56,'Judy',3,7,NULL),(57,'June',3,6,NULL),(58,'Kiki',2,6,NULL),(59,'Klaus',10,3,NULL),(60,'Lopez',9,3,NULL),(61,'Lucha',6,3,NULL),(62,'Lucy',1,6,NULL),(63,'Marcel',4,2,NULL),(64,'Merry',2,4,NULL),(65,'Nan',12,6,NULL),(66,'Papi',18,2,NULL),(67,'Pate',11,4,NULL),(68,'Patty',5,4,NULL),(69,'Peggy',1,4,NULL),(70,'Poncho',3,1,NULL),(71,'Punchy',2,2,NULL),(72,'Rodeo',7,2,NULL),(73,'Rosie',2,4,NULL),(74,'Scoot',11,1,NULL),(75,'Sherb',12,2,NULL),(76,'Stinky',2,1,NULL),(77,'Tabby',2,4,NULL),(78,'Tangy',2,4,NULL),(79,'Tank',19,1,NULL),(80,'Teddy',10,1,NULL),(81,'Tutu',10,4,NULL),(82,'Vic',7,5,NULL),(83,'Walker',4,2,NULL),(84,'Weber',11,2,NULL),(85,'Ankha',2,7,NULL),(86,'Audie',8,4,NULL),(87,'Beardo',10,3,NULL),(88,'Boris',1,5,NULL),(89,'Butch',4,5,NULL),(90,'Chester',3,2,NULL),(91,'Chow',10,5,NULL),(92,'Clyde',18,2,NULL),(93,'Cole',23,2,NULL),(94,'Cookie',4,4,NULL),(95,'Curt',10,5,NULL),(96,'Daisy',4,6,NULL),(97,'Deli',24,2,NULL),(98,'Derwin',11,2,NULL),(99,'Elmer',18,2,NULL),(100,'Fang',8,5,NULL),(101,'Flip',24,1,NULL),(102,'Frett',4,5,NULL),(103,'Gigi',14,7,NULL),(104,'Ken',28,3,NULL),(105,'Kid Cat',2,1,NULL),(106,'Kitty',2,7,NULL),(107,'Lily',14,6,NULL),(108,'Lionel',13,3,NULL),(109,'Lobo',8,5,NULL),(110,'Lolly',2,6,NULL),(111,'Lyman',15,1,NULL),(112,'Maddie',4,4,NULL),(113,'Maple',3,6,NULL),(114,'Mitzi',2,6,NULL),(115,'Moose',17,1,NULL),(116,'Naomi',5,7,NULL),(117,'Norma',5,6,NULL),(118,'Olive',3,6,NULL),(119,'Ozzie',15,2,NULL),(120,'Pekoe',3,6,NULL),(121,'Pinky',10,4,NULL),(122,'Piper',6,4,NULL),(123,'Prince',14,2,NULL),(124,'Purrl',2,7,NULL),(125,'Raddle',14,2,NULL),(126,'Raymond',2,3,NULL),(127,'Ribbot',14,1,NULL),(128,'Rowan',21,1,NULL),(129,'Shino',9,4,NULL),(130,'Skye',8,6,NULL),(131,'Sparro',6,1,NULL),(132,'Tex',27,3,NULL),(133,'Toby',23,3,NULL),(134,'Anchovy',6,2,NULL),(135,'Angus',7,5,NULL),(136,'Bella',17,4,NULL),(137,'Benjamin',4,2,NULL),(138,'Bree',17,7,NULL),(139,'Bruce',9,5,NULL),(140,'Buzz',16,5,NULL),(141,'Candi',17,4,NULL),(142,'Chief',8,5,NULL),(143,'Clay',26,2,NULL),(144,'Cleo',18,7,NULL),(145,'Colton',18,3,NULL),(146,'Cube',27,2,NULL),(147,'Curlos',20,3,NULL),(148,'Deena',11,6,NULL),(149,'Diana',9,7,NULL),(150,'Dobie',8,5,NULL),(151,'Dora',17,6,NULL),(152,'Elvis',13,5,NULL),(153,'Eugene',15,3,NULL),(154,'Fauna',9,6,NULL),(155,'Freya',8,7,NULL),(156,'Frobert',14,1,NULL),(157,'Gabi',23,4,NULL),(158,'Genji',23,1,NULL),(159,'Goldie',4,6,NULL),(160,'Gruff',12,5,NULL),(161,'Hans',25,3,NULL),(162,'Jacques',6,3,NULL),(163,'Jitters',6,1,NULL),(164,'Julian',18,3,NULL),(165,'Kabuki',2,5,NULL),(166,'Keaton',16,3,NULL),(167,'Leopold',13,3,NULL),(168,'Maggie',1,6,NULL),(169,'Megan',10,6,NULL),(170,'Midge',6,6,NULL),(171,'Molly',11,6,NULL),(172,'Murphy',3,5,NULL),(173,'Olivia',2,7,NULL),(174,'Phil',29,3,NULL),(175,'Pierce',16,1,NULL),(176,'Pietro',20,3,NULL),(177,'Pompom',11,4,NULL),(178,'Portia',4,7,NULL),(179,'Puck',27,2,NULL),(180,'Rasher',1,5,NULL),(181,'Rio',29,4,NULL),(182,'Robin',6,7,NULL),(183,'Rolf',21,5,NULL),(184,'Ruby',23,4,NULL),(185,'Samson',17,1,NULL),(186,'Sasha',23,2,NULL),(187,'Simon',24,2,NULL),(188,'Snake',23,1,NULL),(189,'Stitches',3,2,NULL),(190,'Tipper',5,7,NULL),(191,'Twiggy',6,4,NULL),(192,'Tybalt',21,1,NULL),(193,'Velma',12,7,NULL),(194,'Wade',27,2,NULL),(195,'Wendy',20,4,NULL),(196,'Yuka',15,7,NULL),(197,'Alice',15,6,NULL),(198,'Ava',28,6,NULL),(199,'Avery',16,5,NULL),(200,'Axel',34,1,NULL),(201,'Bangle',21,4,NULL),(202,'Bianca',21,4,NULL),(203,'Bitty',22,7,NULL),(204,'Bluebear',3,4,NULL),(205,'Boone',25,1,NULL),(206,'Celia',16,6,NULL),(207,'Chadder',17,3,NULL),(208,'Chevre',12,6,NULL),(209,'Claude',23,2,NULL),(210,'Coco',23,6,NULL),(211,'Cousteau',14,1,NULL),(212,'Croque',14,5,NULL),(213,'Dotty',23,4,NULL),(214,'Faith',15,6,NULL),(215,'Felicity',2,4,NULL),(216,'Frank',16,5,NULL),(217,'Gloria',11,7,NULL),(218,'Gonzo',15,5,NULL),(219,'Goose',28,1,NULL),(220,'Greta',17,7,NULL),(221,'Harry',22,5,NULL),(222,'Hippeux',22,3,NULL),(223,'Hornsby',19,2,NULL),(224,'Iggly',27,1,NULL),(225,'Jeremiah',14,2,NULL),(226,'Ketchup',11,4,NULL),(227,'Louie',25,1,NULL),(228,'Maelle',11,7,NULL),(229,'Melba',15,6,NULL),(230,'Monique',2,7,NULL),(231,'Nana',24,6,NULL),(232,'Olaf',32,3,NULL),(233,'Petri',17,7,NULL),(234,'Pippy',23,4,NULL),(235,'Puddles',14,4,NULL),(236,'Quillson',11,3,NULL),(237,'Rizzo',17,5,NULL),(238,'Roald',27,1,NULL),(239,'Rocco',22,5,NULL),(240,'Sly',35,1,NULL),(241,'Spike',19,5,NULL),(242,'T-Bone',7,5,NULL),(243,'Tammi',24,4,NULL),(244,'Truffles',1,4,NULL),(245,'Vesta',20,6,NULL),(246,'Vivian',8,7,NULL),(247,'Winnie',18,4,NULL),(248,'Zucker',30,2,NULL),(249,'Admiral',6,5,NULL),(250,'Amelia',16,7,NULL),(251,'Apollo',16,5,NULL),(252,'Apple',26,4,NULL),(253,'Azalea',19,7,NULL),(254,'Bertha',22,6,NULL),(255,'Bonbon',23,4,NULL),(256,'Boomer',27,2,NULL),(257,'Boyd',25,5,NULL),(258,'Broccolo',17,2,NULL),(259,'Bubbles',22,4,NULL),(260,'Bunnie',23,4,NULL),(261,'Carmen',23,4,NULL),(262,'Chai',34,4,NULL),(263,'Chelsea',9,6,NULL),(264,'Cyd',34,5,NULL),(265,'Dizzy',34,2,NULL),(266,'Egbert',28,2,NULL),(267,'Elise',24,7,NULL),(268,'Eunice',20,6,NULL),(269,'Flora',29,4,NULL),(270,'Freckles',11,4,NULL),(271,'Graham',26,3,NULL),(272,'Grizzly',10,5,NULL),(273,'Groucho',10,5,NULL),(274,'Gwen',27,7,NULL),(275,'Hamlet',26,1,NULL),(276,'Hopkins',23,2,NULL),(277,'Knox',28,5,NULL),(278,'Leonardo',21,1,NULL),(279,'Mallary',11,7,NULL),(280,'Miranda',11,7,NULL),(281,'Monty',24,5,NULL),(282,'O\'Hare',23,3,NULL),(283,'Pancetti',1,7,NULL),(284,'Paolo',34,2,NULL),(285,'Rhonda',19,6,NULL),(286,'Rilla',25,4,NULL),(287,'Rodney',26,3,NULL),(288,'Roscoe',18,5,NULL),(289,'Stella',20,6,NULL),(290,'Sterling',16,1,NULL),(291,'Sydney',15,6,NULL),(292,'Tia',34,6,NULL),(293,'Timbra',20,7,NULL),(294,'Vladimir',3,5,NULL),(295,'Whitney',8,7,NULL),(296,'Willow',20,7,NULL),(297,'Zoe',32,6,NULL),(298,'Anicotti',17,4,NULL),(299,'Baabara',20,7,NULL),(300,'Becky',28,7,NULL),(301,'Bettina',17,6,NULL),(302,'Boots',35,1,NULL),(303,'Camofrog',14,5,NULL),(304,'Cesar',25,5,NULL),(305,'Chrissy',23,4,NULL),(306,'Claudia',21,7,NULL),(307,'Del',35,5,NULL),(308,'Drago',35,2,NULL),(309,'Étoile',20,6,NULL),(310,'Friga',27,7,NULL),(311,'Gaston',23,5,NULL),(312,'Ione',31,6,NULL),(313,'Jambette',14,6,NULL),(314,'Julia',29,7,NULL),(315,'Kitt',33,6,NULL),(316,'Limberg',17,5,NULL),(317,'Marlo',26,5,NULL),(318,'Mint',31,7,NULL),(319,'Opal',34,7,NULL),(320,'Pango',32,4,NULL),(321,'Peaches',18,6,NULL),(322,'Penelope',17,4,NULL),(323,'Sandy',29,6,NULL),(324,'Tucker',34,2,NULL),(325,'Victoria',18,4,NULL),(326,'Walt',33,5,NULL),(327,'Wart Jr.',14,5,NULL),(328,'Wolfgang',8,5,NULL),(329,'Alli',35,7,NULL),(330,'Annalise',18,7,NULL),(331,'Antonio',32,1,NULL),(332,'Aurora',27,6,NULL),(333,'Benedict',28,2,NULL),(334,'Big Top',34,2,NULL),(335,'Cally',31,6,NULL),(336,'Cashmere',20,7,NULL),(337,'Chabwick',27,2,NULL),(338,'Cranston',29,2,NULL),(339,'Ellie',34,6,NULL),(340,'Filbert',31,2,NULL),(341,'Flurry',26,6,NULL),(342,'Gladys',29,6,NULL),(343,'Hopper',27,5,NULL),(344,'Marina',30,6,NULL),(345,'Marshal',31,3,NULL),(346,'Merengue',19,6,NULL),(347,'Peanut',31,4,NULL),(348,'Pecan',31,7,NULL),(349,'Peewee',25,5,NULL),(350,'Poppy',31,6,NULL),(351,'Ricky',31,5,NULL),(352,'Sally',31,6,NULL),(353,'Savannah',18,6,NULL),(354,'Sheldon',31,1,NULL),(355,'Soleil',26,7,NULL),(356,'Sprocket',29,1,NULL),(357,'Tasha',31,7,NULL),(358,'Tiansheng',24,1,NULL),(359,'Tiffany',23,7,NULL),(360,'Violet',25,7,NULL),(361,'Agent S',31,4,NULL),(362,'Alfonso',35,2,NULL),(363,'Astrid',33,7,NULL),(364,'Blaire',31,7,NULL),(365,'Blanche',29,7,NULL),(366,'Carrie',33,6,NULL),(367,'Cyrano',32,5,NULL),(368,'Eloise',34,7,NULL),(369,'Francine',23,7,NULL),(370,'Gayle',35,6,NULL),(371,'Marcie',33,6,NULL),(372,'Margie',34,6,NULL),(373,'Nibbles',31,4,NULL),(374,'Queenie',29,7,NULL),(375,'Rooney',33,5,NULL),(376,'Roswell',35,2,NULL),(377,'Snooty',32,7,NULL),(378,'Sprinkle',27,4,NULL),(379,'Static',31,5,NULL),(380,'Anabelle',32,4,NULL),(381,'Broffina',28,7,NULL),(382,'Cephalobot',30,3,NULL),(383,'Hamphrey',26,5,NULL),(384,'Octavian',30,5,NULL),(385,'Sylvana',31,6,NULL),(386,'Annalisa',32,6,NULL),(387,'Caroline',31,6,NULL),(388,'Katt',2,8,NULL),(389,'Mathilda',33,7,NULL),(390,'Agnes',1,8,NULL),(391,'Diva',14,8,NULL),(392,'Tammy',3,8,NULL),(393,'Cherry',4,8,NULL),(394,'Paula',10,8,NULL),(395,'Flo',27,8,NULL),(396,'Frita',20,8,NULL),(397,'Mira',23,8,NULL),(398,'Muffy',20,8,NULL),(399,'Quinn',16,8,NULL),(400,'Ursala',10,8,NULL),(401,'Deirdre',9,8,NULL),(402,'Fuchsia',9,8,NULL),(403,'Renée',19,8,NULL),(404,'Shari',24,8,NULL),(405,'Charlise',10,8,NULL),(406,'Pashmina',12,8,NULL),(407,'Reneigh',18,8,NULL),(408,'Canberra',15,8,NULL),(409,'Hazel',31,8,NULL),(410,'Phoebe',29,8,NULL),(411,'Plucky',28,8,NULL),(412,'Rocket',25,8,NULL),(413,'Sylvia',33,8,NULL);
/*!40000 ALTER TABLE `villager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villagercareer`
--

DROP TABLE IF EXISTS `villagercareer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villagercareer` (
  `vc_id` int NOT NULL AUTO_INCREMENT,
  `v_id` int NOT NULL,
  `c_id` int NOT NULL,
  PRIMARY KEY (`vc_id`),
  KEY `v_id` (`v_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `villagercareer_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `villager` (`v_id`),
  CONSTRAINT `villagercareer_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `career` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villagercareer`
--

LOCK TABLES `villagercareer` WRITE;
/*!40000 ALTER TABLE `villagercareer` DISABLE KEYS */;
/*!40000 ALTER TABLE `villagercareer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villagerpersonality`
--

DROP TABLE IF EXISTS `villagerpersonality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villagerpersonality` (
  `vp_id` int NOT NULL AUTO_INCREMENT,
  `vp_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`vp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villagerpersonality`
--

LOCK TABLES `villagerpersonality` WRITE;
/*!40000 ALTER TABLE `villagerpersonality` DISABLE KEYS */;
INSERT INTO `villagerpersonality` VALUES (1,'Jock'),(2,'Lazy'),(3,'Smug'),(4,'Peppy'),(5,'Cranky'),(6,'Normal'),(7,'Snooty'),(8,'Uchi (Sisterly)');
/*!40000 ALTER TABLE `villagerpersonality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villagerspecies`
--

DROP TABLE IF EXISTS `villagerspecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villagerspecies` (
  `vs_id` int NOT NULL AUTO_INCREMENT,
  `vs_spec` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`vs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villagerspecies`
--

LOCK TABLES `villagerspecies` WRITE;
/*!40000 ALTER TABLE `villagerspecies` DISABLE KEYS */;
INSERT INTO `villagerspecies` VALUES (1,'Pig'),(2,'Cat'),(3,'Cub'),(4,'Dog'),(5,'Cow'),(6,'Bird'),(7,'Bull'),(8,'Wolf'),(9,'Deer'),(10,'Bear'),(11,'Duck'),(12,'Goat'),(13,'Lion'),(14,'Frog'),(15,'Koala'),(16,'Eagle'),(17,'Mouse'),(18,'Horse'),(19,'Rhino'),(20,'Sheep'),(21,'Tiger'),(22,'Hippo'),(23,'Rabbit'),(24,'Monkey'),(25,'Gorilla'),(26,'Hamster'),(27,'Penguin'),(28,'Chicken'),(29,'Ostrich'),(30,'Octopus'),(31,'Squirrel'),(32,'Anteater'),(33,'Kangaroo'),(34,'Elephant'),(35,'Alligator');
/*!40000 ALTER TABLE `villagerspecies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-18 14:39:17

