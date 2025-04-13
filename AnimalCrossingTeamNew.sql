-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: animal_crossing_team
-- ------------------------------------------------------
-- Server version	8.0.41

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesssales`
--

LOCK TABLES `businesssales` WRITE;
/*!40000 ALTER TABLE `businesssales` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (1,3,22847),(2,4,56847),(3,3,3593),(4,4,35565),(5,4,50676),(6,3,34241),(7,2,98877),(8,1,72723),(9,2,98123),(10,4,83420),(11,3,4274),(12,3,45451),(13,3,22452),(14,3,63299),(15,3,38954),(16,3,76528),(17,2,54136),(18,3,24830),(19,2,37237),(20,4,84301),(21,1,515),(22,2,75104),(23,3,12880),(24,3,49052),(25,2,53748),(26,2,9504),(27,3,59326),(28,2,30876),(29,4,50450),(30,1,32346),(31,1,28154),(32,1,88299),(33,2,80557),(34,3,76136),(35,4,98208),(36,3,11757),(37,3,24133),(38,3,35653),(39,4,36435),(40,3,47402),(41,2,67717),(42,1,7507),(43,4,5405),(44,2,8135),(45,3,24537),(46,2,45899),(47,3,76977),(48,2,30339),(49,3,82641),(50,2,47547),(51,2,52164),(52,3,34609),(53,2,96273),(54,1,83524),(55,1,8215),(56,1,11372),(57,1,660),(58,2,15388),(59,4,68169),(60,2,7473),(61,3,19672),(62,1,77775),(63,4,15486),(64,2,39356),(65,2,40395),(66,1,45438),(67,2,45378),(68,1,79116),(69,2,69630),(70,2,22468),(71,2,55111),(72,4,33736),(73,1,28838),(74,4,87228),(75,3,39437),(76,4,540),(77,1,68894),(78,1,54968),(79,2,89521),(80,3,32914),(81,4,66593),(82,1,99995),(83,4,67375),(84,1,33660),(85,4,10715),(86,3,61882),(87,3,74465),(88,1,57209),(89,2,93099),(90,4,68684),(91,4,94880),(92,1,79084),(93,3,50972),(94,2,60202),(95,4,24513),(96,3,43761),(97,2,68024),(98,4,54392),(99,2,86273),(100,3,19344),(101,4,44781),(102,3,3278),(103,1,80056),(104,4,53533),(105,3,8709),(106,4,48232),(107,3,80899),(108,1,81028),(109,4,70631),(110,3,57038),(111,4,54846),(112,1,37735),(113,1,80966),(114,4,20918),(115,4,62948),(116,1,53892),(117,3,65389),(118,3,745),(119,3,72785),(120,4,8647),(121,1,31999),(122,3,12663),(123,3,50064),(124,1,28018),(125,1,61205),(126,2,6105),(127,1,8812),(128,3,63066),(129,2,87500),(130,4,43574),(131,2,48303),(132,3,70248),(133,4,18131),(134,2,90391),(135,1,77857),(136,4,4261),(137,4,46407),(138,1,12771),(139,4,60715),(140,1,35388),(141,2,37504),(142,2,38843),(143,4,78885),(144,2,3061),(145,1,76662),(146,3,79046),(147,2,8809),(148,4,36500),(149,1,82576),(150,1,81303),(151,2,86772),(152,1,82145),(153,1,80081),(154,2,9254),(155,3,36088),(156,1,81957),(157,1,6738),(158,3,45580),(159,4,12668),(160,3,64846),(161,4,36753),(162,4,12416),(163,1,46101),(164,1,8432),(165,2,75009),(166,2,71364),(167,3,47757),(168,1,50168),(169,3,95000),(170,3,9339),(171,4,36500),(172,2,36909),(173,4,30509),(174,2,37024),(175,4,59612),(176,4,2704),(177,2,48814),(178,2,11274),(179,3,8799),(180,3,42668),(181,3,46795),(182,1,99747),(183,2,94755),(184,3,25933),(185,2,2674),(186,4,90282),(187,2,11559),(188,3,5821),(189,1,76267),(190,2,50937),(191,4,9538),(192,1,38085),(193,4,21792),(194,4,44921),(195,4,50689),(196,2,43760),(197,4,36128),(198,3,8478),(199,2,50721),(200,3,28967),(201,4,16578),(202,2,35170),(203,3,4293),(204,4,46366),(205,3,62904),(206,1,56021),(207,1,96874),(208,4,89803),(209,1,54253),(210,3,19010),(211,3,13292),(212,4,96609),(213,4,73163),(214,3,60020),(215,3,13469),(216,2,8057),(217,2,7773),(218,1,28411),(219,3,5325),(220,2,40395),(221,2,53442),(222,1,16533),(223,2,44652),(224,1,44962),(225,4,73771),(226,3,19348),(227,4,73626),(228,1,88439),(229,2,36102),(230,1,80963),(231,2,24722),(232,3,42826),(233,2,15043),(234,1,49334),(235,4,14644),(236,2,33045),(237,4,79291),(238,2,50521),(239,4,67876),(240,3,13191),(241,2,85425),(242,4,68937),(243,1,51437),(244,3,9943),(245,1,50913),(246,4,90486),(247,3,74391),(248,3,34949),(249,2,92269),(250,2,43917),(251,2,9508),(252,2,72714),(253,3,95467),(254,2,75197),(255,3,63761),(256,1,29609),(257,4,74993),(258,1,7425),(259,2,51522),(260,1,521),(261,4,21341),(262,2,42946),(263,4,16254),(264,2,75509),(265,2,32818),(266,3,28230),(267,3,13112),(268,2,78018),(269,1,13752),(270,4,82257),(271,2,46949),(272,1,81742),(273,2,6839),(274,4,40669),(275,3,93879),(276,3,23435),(277,3,8066),(278,3,45133),(279,4,29719),(280,2,77814),(281,2,94443),(282,1,64621),(283,3,21268),(284,3,83493),(285,3,37170),(286,3,45538),(287,4,14381),(288,4,38837),(289,4,51551),(290,4,57448),(291,1,57846),(292,2,52456),(293,2,74874),(294,1,93064),(295,3,87891),(296,2,99429),(297,1,25137),(298,4,70946),(299,3,23486),(300,3,83344),(301,4,9555),(302,4,24534),(303,4,12516),(304,4,36721),(305,2,13610),(306,1,42977),(307,4,17745),(308,2,94356),(309,4,92507),(310,2,25802),(311,3,998),(312,3,1934),(313,3,34175),(314,3,11511),(315,1,60289),(316,1,4311),(317,3,45324),(318,4,83418),(319,1,81309),(320,2,12672),(321,3,49629),(322,2,34153),(323,1,47785),(324,1,44623),(325,4,49257),(326,1,5040),(327,3,60702),(328,4,2845),(329,4,88034),(330,2,32200),(331,2,7632),(332,1,1375),(333,2,3061),(334,4,76319),(335,3,94067),(336,2,41881),(337,4,55389),(338,4,18786),(339,2,82010),(340,4,21511),(341,1,53554),(342,3,72934),(343,2,19953),(344,4,38220),(345,4,42344),(346,4,38432),(347,2,73281),(348,4,45957),(349,2,62792),(350,4,14572),(351,1,51052),(352,3,83172),(353,4,42140),(354,3,6405),(355,2,4696),(356,1,24221),(357,4,98864),(358,3,743),(359,2,34517),(360,4,4785),(361,2,82542),(362,3,86494),(363,3,6719),(364,2,85021),(365,3,91505),(366,4,52343),(367,4,7889),(368,3,41692),(369,3,10436),(370,3,4671),(371,3,6064),(372,4,95012),(373,4,38899),(374,3,10299),(375,1,67557),(376,1,12307),(377,4,5756),(378,3,25958),(379,1,70139),(380,4,599),(381,3,20439),(382,2,95357),(383,1,54071),(384,4,43417),(385,1,57406),(386,3,17542),(387,3,74685),(388,2,85585),(389,3,80169),(390,3,60306),(391,3,45216),(392,1,82094),(393,2,98085),(394,2,67232),(395,3,51567),(396,1,62760),(397,3,95866),(398,2,27066),(399,2,5508),(400,3,57910),(401,3,41745),(402,3,83705),(403,3,68136),(404,1,67035),(405,1,94109),(406,4,55412),(407,3,61211),(408,3,59797),(409,3,24908),(410,1,99603),(411,1,30392),(412,4,86026),(413,4,48714);
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
) ENGINE=InnoDB AUTO_INCREMENT=1653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housepayment`
--

LOCK TABLES `housepayment` WRITE;
/*!40000 ALTER TABLE `housepayment` DISABLE KEYS */;
INSERT INTO `housepayment` VALUES (1240,380,1,304.62),(1241,89,2,87773),(1242,25,3,22246.3),(1243,126,4,4128.87),(1244,269,5,8467.29),(1245,162,6,11569.1),(1246,19,7,36394.7),(1247,29,8,46418.1),(1248,361,9,0),(1249,311,10,465.21),(1250,291,11,30104.5),(1251,357,12,96712.5),(1252,123,13,18516.2),(1253,242,14,67388.7),(1254,266,15,8464.9),(1255,122,16,6796.6),(1256,108,17,14992.7),(1257,97,18,0),(1258,409,19,10675.2),(1259,354,20,4769.18),(1260,86,21,26733.1),(1261,172,22,22776.6),(1262,292,23,28579.8),(1263,407,24,8122.03),(1264,385,25,39397.8),(1265,400,26,0),(1266,23,27,5953.24),(1267,218,28,13712.6),(1268,369,29,7174.21),(1269,41,30,59271.8),(1270,229,31,11904.3),(1271,287,32,2203.26),(1272,258,33,5415.98),(1273,184,34,0),(1274,279,35,19199.8),(1275,133,36,1807.05),(1276,141,37,33045.6),(1277,268,38,19.23),(1278,146,39,8164.52),(1279,363,40,1288.81),(1280,215,41,2367.93),(1281,159,42,10626),(1282,399,43,5315.83),(1283,11,44,2558.93),(1284,67,45,26182.3),(1285,88,46,19386.7),(1286,201,47,923.04),(1287,404,48,19071.9),(1288,40,49,27060.5),(1289,298,50,51792.2),(1290,59,51,47958.7),(1291,405,52,86248.5),(1292,391,53,7507.36),(1293,48,54,25267.3),(1294,280,55,71225.9),(1295,401,56,2789.05),(1296,255,57,0),(1297,253,58,37185),(1298,60,59,4407.16),(1299,403,60,9730.6),(1300,38,61,10660.3),(1301,77,62,16694.8),(1302,156,63,36456.6),(1303,12,64,20127.3),(1304,366,65,16822.2),(1305,194,66,35697.5),(1306,167,67,23987.2),(1307,337,68,34037.7),(1308,178,69,8688.12),(1309,304,70,19668.3),(1310,129,71,55363.6),(1311,30,72,733.49),(1312,109,73,50238),(1313,216,74,6721.74),(1314,290,75,49052.4),(1315,115,76,27383.3),(1316,190,77,30502.1),(1317,125,78,13629.5),(1318,52,79,13380.6),(1319,170,80,9106.69),(1320,152,81,29899.5),(1321,75,82,30282.7),(1322,254,83,46392.2),(1323,132,84,32457.9),(1324,238,85,29912.8),(1325,327,86,38593.4),(1326,230,87,0),(1327,324,88,3172.55),(1328,227,89,32657.6),(1329,177,90,12972.3),(1330,188,91,289.46),(1331,307,92,3870.27),(1332,83,93,29510.3),(1333,74,94,8496.53),(1334,387,95,73355.1),(1335,411,96,10493.1),(1336,346,97,12575.8),(1337,87,98,0),(1338,134,99,53816.5),(1339,137,100,8356.13),(1340,151,101,60656.4),(1341,1,102,5320.57),(1342,31,103,16947.7),(1343,49,104,27353.4),(1344,145,105,16051.6),(1345,16,106,53318.9),(1346,206,107,22675.9),(1347,349,108,37933.9),(1348,308,109,29617.6),(1349,80,110,19082.8),(1350,235,111,13252.6),(1351,294,112,11890.2),(1352,158,113,25318.9),(1353,165,114,0),(1354,252,115,10563.5),(1355,142,116,36287.5),(1356,330,117,30668.1),(1357,336,118,7542.47),(1358,204,119,38966),(1359,343,120,820.06),(1360,186,121,81097.9),(1361,34,122,37384.7),(1362,397,123,67950.9),(1363,43,124,1212.73),(1364,396,125,48836.4),(1365,105,126,7284.71),(1366,378,127,6397.65),(1367,36,128,2028.43),(1368,286,129,21876.8),(1369,386,130,0),(1370,245,131,29101.7),(1371,225,132,30845.7),(1372,236,133,21689.6),(1373,5,134,1329.57),(1374,348,135,11133.2),(1375,293,136,0),(1376,353,137,22160),(1377,93,138,29790.9),(1378,297,139,6419.48),(1379,408,140,12343.7),(1380,110,141,113.95),(1381,352,142,4153.24),(1382,68,143,33287.6),(1383,99,144,45344.4),(1384,383,145,45890),(1385,51,146,1739.68),(1386,199,147,31337),(1387,331,148,2719.44),(1388,27,149,12582.8),(1389,351,150,627.9),(1390,24,151,38330.6),(1391,139,152,33141.3),(1392,309,153,57767.7),(1393,325,154,39634.3),(1394,50,155,31069.4),(1395,222,156,8324.47),(1396,32,157,0),(1397,119,158,61078),(1398,61,159,17203.5),(1399,313,160,26871.2),(1400,98,161,43553.7),(1401,393,162,21645.6),(1402,270,163,42979),(1403,263,164,2045.13),(1404,317,165,24132.5),(1405,187,166,7113.19),(1406,79,167,7213.29),(1407,365,168,63967.9),(1408,232,169,10050.3),(1409,192,170,0),(1410,179,171,486.24),(1411,174,172,6716.38),(1412,144,173,1485.41),(1413,272,174,37642.2),(1414,202,175,23661.5),(1415,223,176,0),(1416,333,177,2953.9),(1417,221,178,27644.6),(1418,185,179,0),(1419,111,180,0),(1420,372,181,74656.6),(1421,240,182,955.18),(1422,182,183,98300.6),(1423,251,184,0),(1424,237,185,40720.8),(1425,169,186,49056.1),(1426,92,187,27530),(1427,76,188,399.48),(1428,37,189,18077.2),(1429,347,190,72288.1),(1430,54,191,73069),(1431,195,192,45399.1),(1432,260,193,81.44),(1433,295,194,7353.11),(1434,138,195,11395),(1435,382,196,35811.4),(1436,147,197,1086.06),(1437,44,198,5005.82),(1438,278,199,3161.99),(1439,33,200,32572.8),(1440,248,201,9788.96),(1441,155,202,4194.63),(1442,91,203,47184.1),(1443,200,204,22612.6),(1444,53,205,34131.5),(1445,358,206,676.31),(1446,340,207,18932.4),(1447,84,208,12573.8),(1448,46,209,7173.9),(1449,191,210,5382.9),(1450,176,211,19.52),(1451,124,212,6615.91),(1452,72,213,23834.2),(1453,355,214,3658.98),(1454,261,215,10916.4),(1455,112,216,8445.32),(1456,277,217,1398.42),(1457,14,218,43358.1),(1458,335,219,54086.9),(1459,203,220,1658.85),(1460,113,221,14346.5),(1461,150,222,45006.1),(1462,82,223,37299.2),(1463,356,224,4205.94),(1464,312,225,1827.5),(1465,281,226,77946.2),(1466,342,227,31544.8),(1467,207,228,68464.7),(1468,323,229,13170.2),(1469,302,230,12639.2),(1470,15,231,2969.81),(1471,262,232,35511.3),(1472,273,233,4720.12),(1473,359,234,10893.6),(1474,136,235,1131.09),(1475,171,236,19770.7),(1476,96,237,12127.8),(1477,226,238,2070.58),(1478,219,239,1432.29),(1479,234,240,40405.2),(1480,107,241,51140.8),(1481,7,242,19080.2),(1482,264,243,1197.47),(1483,228,244,75144.5),(1484,2,245,1563.19),(1485,140,246,25573.6),(1486,118,247,40.41),(1487,102,248,2703.49),(1488,250,249,20430.8),(1489,214,250,17443.7),(1490,283,251,15724.8),(1491,257,252,71790.4),(1492,274,253,0),(1493,148,254,6750.26),(1494,301,255,0),(1495,288,256,28485.6),(1496,241,257,0),(1497,303,258,12096.6),(1498,322,259,2704.73),(1499,259,260,28736.2),(1500,374,261,454.9),(1501,117,262,16555),(1502,116,263,20277.9),(1503,316,264,1787.35),(1504,265,265,12926),(1505,392,266,0),(1506,398,267,18639),(1507,328,268,348.39),(1508,233,269,1770.22),(1509,205,270,8190.6),(1510,20,271,80616.5),(1511,209,272,48326.6),(1512,341,273,48976.3),(1513,402,274,0),(1514,364,275,75005.6),(1515,275,276,39619.5),(1516,332,277,772.6),(1517,256,278,194.03),(1518,224,279,37332.1),(1519,154,280,0),(1520,106,281,40626.6),(1521,65,282,19818.7),(1522,345,283,11222.8),(1523,63,284,4875.28),(1524,246,285,79044.1),(1525,94,286,34442.8),(1526,181,287,0),(1527,71,288,0),(1528,143,289,6432.62),(1529,220,290,0),(1530,338,291,5766.74),(1531,3,292,2665.66),(1532,267,293,1881.98),(1533,10,294,0),(1534,310,295,15671.2),(1535,70,296,20733.6),(1536,64,297,0),(1537,175,298,55188.7),(1538,45,299,2381.03),(1539,163,300,30942.2),(1540,120,301,2721.74),(1541,360,302,4309.6),(1542,244,303,3323.83),(1543,326,304,0),(1544,299,305,5701.84),(1545,371,306,4400.94),(1546,57,307,81.88),(1547,231,308,6774.99),(1548,381,309,0),(1549,153,310,43762.5),(1550,410,311,0),(1551,197,312,25252.9),(1552,370,313,3177.66),(1553,384,314,3011.93),(1554,149,315,31067.3),(1555,339,316,58003.2),(1556,389,317,2622.16),(1557,104,318,1489.95),(1558,130,319,0),(1559,28,320,30103.2),(1560,284,321,8096.63),(1561,128,322,32994.2),(1562,321,323,42761.8),(1563,160,324,26235.4),(1564,306,325,15775.6),(1565,100,326,16201.1),(1566,239,327,2805.96),(1567,285,328,22596.4),(1568,4,329,24373.1),(1569,377,330,4074.71),(1570,13,331,12285.7),(1571,56,332,1475.61),(1572,85,333,1176.49),(1573,183,334,22262.2),(1574,350,335,10427.2),(1575,373,336,12111.2),(1576,208,337,6979.15),(1577,121,338,9450.61),(1578,376,339,5440.73),(1579,103,340,27723.8),(1580,196,341,33253.1),(1581,318,342,16261.4),(1582,300,343,80971.3),(1583,39,344,12849.6),(1584,395,345,41519.5),(1585,249,346,41850.1),(1586,6,347,16547.4),(1587,9,348,76001.7),(1588,135,349,44801.2),(1589,69,350,0),(1590,296,351,56884.5),(1591,247,352,71032),(1592,189,353,66868.3),(1593,22,354,57563.3),(1594,17,355,45783.3),(1595,334,356,71401.7),(1596,344,357,3774.25),(1597,367,358,2754.35),(1598,319,359,6080.19),(1599,320,360,0),(1600,362,361,36446.6),(1601,180,362,13031),(1602,213,363,7899.69),(1603,379,364,49304.9),(1604,271,365,0),(1605,210,366,9870.24),(1606,8,367,45502.8),(1607,289,368,0),(1608,276,369,16461.5),(1609,412,370,53730.3),(1610,157,371,514.57),(1611,282,372,56225.5),(1612,127,373,396.91),(1613,18,374,4295.62),(1614,198,375,5213.85),(1615,66,376,7046.25),(1616,368,377,24474.9),(1617,21,378,255.3),(1618,305,379,7422.88),(1619,217,380,1727.84),(1620,329,381,7501.2),(1621,101,382,29556.2),(1622,173,383,2843.69),(1623,58,384,6625.2),(1624,394,385,61233.8),(1625,47,386,36982.4),(1626,243,387,11074.3),(1627,413,388,2482.7),(1628,95,389,11267.3),(1629,168,390,49027.9),(1630,164,391,1917.02),(1631,90,392,8016.24),(1632,314,393,0),(1633,26,394,3445.25),(1634,390,395,26731.8),(1635,161,396,2343.01),(1636,73,397,24967.7),(1637,55,398,0),(1638,114,399,5223.82),(1639,388,400,82820.2),(1640,35,401,19216.7),(1641,406,402,23145.5),(1642,212,403,0),(1643,42,404,6800.5),(1644,211,405,11773.8),(1645,193,406,2503.54),(1646,78,407,32039.8),(1647,131,408,33215),(1648,62,409,40572.6),(1649,81,410,37409.5),(1650,375,411,61862.4),(1651,166,412,21168.6),(1652,315,413,25023.5);
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

-- Dump completed on 2025-04-13 12:51:00
