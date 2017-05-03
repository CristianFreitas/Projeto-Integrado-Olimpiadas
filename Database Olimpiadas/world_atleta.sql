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
-- Table structure for table `atleta`
--

DROP TABLE IF EXISTS `atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atleta` (
  `Cod_Atleta` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Atleta` varchar(40) NOT NULL,
  `Dt_Nasc` date DEFAULT NULL,
  `Sexo` varchar(2) DEFAULT NULL,
  `Cod_Pais` int(8) DEFAULT NULL,
  `Cod_Tec` int(8) DEFAULT NULL,
  PRIMARY KEY (`Cod_Atleta`),
  KEY `Atleta_Cod_Pais_fk` (`Cod_Pais`),
  KEY `Atleta_Cod_Tec_fk` (`Cod_Tec`),
  CONSTRAINT `Atleta_Cod_Pais_fk` FOREIGN KEY (`Cod_Pais`) REFERENCES `pais` (`Cod_Pais`),
  CONSTRAINT `Atleta_Cod_Tec_fk` FOREIGN KEY (`Cod_Tec`) REFERENCES `tecnico` (`Cod_Tec`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atleta`
--

LOCK TABLES `atleta` WRITE;
/*!40000 ALTER TABLE `atleta` DISABLE KEYS */;
INSERT INTO `atleta` VALUES (1,'Kamia Yousufi','1996-05-20','F',1,1),
(2,'Abdul Wahab Zahiri','1992-05-27','M',1,1),(3,'Mohammad Tawfiq Bakhshi','1986-03-11','M',1,1),
(4,'Sibide Aicha ','1995-12-03','F',2,2),(5,'Jean Pierre Renan Bourhis ','1995-03-29','M',2,1),
(6,'Alexandre Bouzaid ','1981-06-29','M',2,1),(7,'Ramata Daou ','1988-03-23','F',2,2),
(8,'Maimouna Diarra ','1991-01-30','F',2,2),(9,'Adama Diatta','1988-08-14','M',2,1),
(10,'Hortance Diedhiou ','1983-08-19','F',2,1),(11,'Bintou Dieme ','1984-02-01','F',2,2),
(12,'Fatou Dieng','1983-08-18','F',2,2),(13,'Ndeye Khadidiatou Dieng','1994-12-01','F',2,2),
(14,'Balla Dieye ','1980-11-13','M',2,1),(15,'Yacine Diop ','1995-10-08','F',2,2),
(16,'Diary Diouf ','1984-12-15','F',2,2),(17,'Aida Fall ','1986-11-10','F',2,2),
(18,'Magali Mendy ','1990-03-06','F',2,2),(19,'Couna Ndao ','1996-04-22','F',2,1),
(20,'Amadou Ndiaye','1992-12-06','M',2,1),(21,'Awa Ly Ndiaye ','2000-01-15','F',2,1),
(22,'Abdoul Khadre MbayeNiane ','1988-08-20','M',2,1),(23,'Marie-Sadio Rosche ','1987-08-10','F',2,2),
(24,'Isabelle Sambou ','1980-10-20','F',2,1),(25,'Isabella_amado','1996-08-09','F',3,1),(26,'Rolanda_bell','1987-10-27','F',3,1),
(27,'Atheyna_bylon','1989-04-06','F',3,1),(28,'Yassir_cabrera','1989-01-28','M',3,1),(29,'Carolena_Carstens','1960-01-18','F',3,1),
(30,'Jorge_castelblanco','1987-09-23','M',3,1),(31,'edgar_crespo','1989-05-11','M',3,1),(32,'Alonso_edward','1989-12-08','M',3,1),
(33,'mateo_edward','1993-05-01','M',3,1),(34,'Maria_far','1998-01-06','F',3,1),(35,'Mohamed Daud Mohamed','1996-03-01','M',4,1),
(36,'Maryan Muse','1997-01-01','F',4,1),(37,'Adam Okruashvili','1989-01-01','M',5,1),
(38,'Amiran Papinashvili','1988-06-17','M',5,1),(39,'Anastasiia Hotfrid','1996-04-25','F',5,1),
(40,'Avtandili Tchrikishvili','1991-03-18','M',5,1),(41,'Bachana Khorava','1993-03-15','F',5,1),
(42,'Beka Gviniashvili','1995-10-26','F',5,1),(43,'Benik Abrahamyan','1985-07-31','M',5,1),
(44,'Daviti Kharazishvili','1992-04-24','M',5,1),(45,'Elizbar Odikadze','1989-06-14','F',5,1),
(46,'Esther Stam','1987-03-11','F',5,1),(47,'Geno Petriashvili','1994-04-01','M',5,1),
(48,'Giorgi Chkheidze','1997-10-30','M',5,1),(49,'Iakobi Kajaia','1993-09-28','M',5,1),
(50,'Irakli Revishvili','1989-11-03','M',5,1),(51,'Irakli Turmanidze','1984-12-13','M',5,1),
(52,'Jakob Makarashvili','1985-12-28','M',5,1),(53,'Khatuna Narimanidze','1974-02-02','M',5,1),
(54,'Kristine Esebua','1985-03-19','F',5,1),(55,'Lasha Shavdatuashvili','1992-01-31','F',5,1),
(56,'Lasha Talakhadze','1993-10-02','F',5,1),(57,'Lasha Torgvaidze','1993-05-26','F',5,1),
(58,'Luba Golovina','1990-04-20','M',5,1),(59,'Nikoloz Basilashvili','1992-02-23','M',5,1),
(60,'Nino Salukvadze','1969-02-01','M',5,1),(61,'Revazi Nadareishvili','1991-06-21','M',5,1),
(62,'Roberti Kobliashvili','1993-12-06','M',5,1),(63,'Salome Pazhava','1997-09-03','F',5,1),
(64,'Sandro Aminashvili','1992-02-21','M',5,1),(65,'Sandro Bazadze','1993-07-29','M',5,1),
(66,'Shmagi Bolkvadze','1994-07-26','M',5,1),(67,'Teona Bostashvili','1998-01-19','F',5,1),
(68,'Tsotne Machavariani','1997-09-26','M',5,1),(69,'Valentina Liashenko','1981-01-30','F',5,1),
(70,'Varlam Liparteliani','1989-02-27','M',5,1),(71,'Vazha Margvelashvili','1993-10-03','F',5,1),
(72,'Vladimer Khinchegashvili','1991-04-18','M',5,1),(73,'Yuliya Lobzhenidze','1977-08-23','F',5,1),
(74,'Zaza Nadiradze','1993-09-02','F',5,1),(75,'Zurabi Datunashvili','1991-06-18','F',5,1),
(76,'Zurabi Iakobishvili','1992-02-04','F',5,1);
/*!40000 ALTER TABLE `atleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-20 20:23:31
