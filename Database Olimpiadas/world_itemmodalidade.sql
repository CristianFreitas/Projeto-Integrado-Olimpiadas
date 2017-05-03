-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemmodalidade`
--

DROP TABLE IF EXISTS `itemmodalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemmodalidade` (
  `Cod_Atleta` int(8) DEFAULT NULL,
  `Cod_Mod` int(8) DEFAULT NULL,
  KEY `ItemModalidade_Cod_Atleta_fk` (`Cod_Atleta`),
  KEY `ItemModalidade_Cod_Mod_fk` (`Cod_Mod`),
  CONSTRAINT `ItemModalidade_Cod_Atleta_fk` FOREIGN KEY (`Cod_Atleta`) REFERENCES `atleta` (`Cod_Atleta`),
  CONSTRAINT `ItemModalidade_Cod_Mod_fk` FOREIGN KEY (`Cod_Mod`) REFERENCES `modalidade` (`Cod_Mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemmodalidade`
--

LOCK TABLES `itemmodalidade` WRITE;
/*!40000 ALTER TABLE `itemmodalidade` DISABLE KEYS */;
INSERT INTO `itemmodalidade` VALUES (1,1),(2,2),(3,3),(4,4),(5,6),(6,5),(7,4),(8,4),(9,7),(10,8),(11,4),(12,4),(13,4),
(14,9),(15,4),(16,4),(17,4),(18,4),(19,4),(20,11),(21,10),(22,12),(23,4),(24,13),(25,14),(26,15),(27,16),(28,17),
(29,18),(30,19),(31,20),(32,21),(33,22),(34,23),(35,24),(36,25),(37,26),(38,27),(39,28),(40,29),(41,30),(42,31),
(43,32),(44,33),(45,34),(46,35),(47,36),(48,37),(49,38),(50,39),(51,40),(52,41),(53,42),(54,43),(55,44),(56,45),
(57,46),(58,47),(59,48),(60,49),(61,50),(62,51),(63,52),(64,53),(65,54),(66,55),(67,56),(68,57),(69,58),(70,59),
(71,60),(72,61),(73,62),(74,63),(75,64),(76,65);
/*!40000 ALTER TABLE `itemmodalidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-20 20:23:30
