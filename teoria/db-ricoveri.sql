-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: db_ricoveri
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `MEDICI`
--

DROP TABLE IF EXISTS `MEDICI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDICI` (
  `MATR` int(11) NOT NULL,
  `Cognome` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nome` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Residenza` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Reparto` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MATR`),
  KEY `MEDICI_REPARTI_COD_fk` (`Reparto`),
  CONSTRAINT `MEDICI_REPARTI_COD_fk` FOREIGN KEY (`Reparto`) REFERENCES `REPARTI` (`COD`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDICI`
--

LOCK TABLES `MEDICI` WRITE;
/*!40000 ALTER TABLE `MEDICI` DISABLE KEYS */;
INSERT INTO `MEDICI` VALUES (203,'Neri','Piero','AL','A'),(405,'Mizzi','Nicola','AT','R'),(461,'Bargio','Sergio','TO','B'),(501,'Monti','Mario','VC','A'),(530,'Belli','Nicola','TO','B'),(574,'Bisi','Mario','MI','B');
/*!40000 ALTER TABLE `MEDICI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAZIENTI`
--

DROP TABLE IF EXISTS `PAZIENTI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAZIENTI` (
  `COD` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cognome` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nome` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Residenza` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnnoNascita` int(11) DEFAULT NULL,
  PRIMARY KEY (`COD`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAZIENTI`
--

LOCK TABLES `PAZIENTI` WRITE;
/*!40000 ALTER TABLE `PAZIENTI` DISABLE KEYS */;
INSERT INTO `PAZIENTI` VALUES ('A102','Necchi','Luca','TO',1950),('B372','Rossigni','Piero','NO',1940),('B444','Missoni','Luigi','VC',2000),('B543','Missoni','Nadia','TO',1960),('S555','Rossetti','Gino','AT',2010);
/*!40000 ALTER TABLE `PAZIENTI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REPARTI`
--

DROP TABLE IF EXISTS `REPARTI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPARTI` (
  `COD` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome-Rep` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Primario` int(11) DEFAULT NULL,
  PRIMARY KEY (`COD`),
  KEY `REPARTI_MEDICI_MATR_fk` (`Primario`),
  CONSTRAINT `REPARTI_MEDICI_MATR_fk` FOREIGN KEY (`Primario`) REFERENCES `MEDICI` (`MATR`) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REPARTI`
--

LOCK TABLES `REPARTI` WRITE;
/*!40000 ALTER TABLE `REPARTI` DISABLE KEYS */;
INSERT INTO `REPARTI` VALUES ('A','Chirurgua',203),('B','Pediatria',574),('C','Medicina',530),('L','Lab-Analisi',530),('R','Radiologia',405);
/*!40000 ALTER TABLE `REPARTI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RICOVERI`
--

DROP TABLE IF EXISTS `RICOVERI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RICOVERI` (
  `PAZ` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Inizio` date NOT NULL,
  `Fine` date DEFAULT NULL,
  `Reparto` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PAZ`,`Inizio`),
  KEY `RICOVERI_REPARTI_COD_fk` (`Reparto`),
  CONSTRAINT `RICOVERI_PAZIENTI_COD_fk` FOREIGN KEY (`PAZ`) REFERENCES `PAZIENTI` (`COD`) ON UPDATE CASCADE,
  CONSTRAINT `RICOVERI_REPARTI_COD_fk` FOREIGN KEY (`Reparto`) REFERENCES `REPARTI` (`COD`) ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RICOVERI`
--

LOCK TABLES `RICOVERI` WRITE;
/*!40000 ALTER TABLE `RICOVERI` DISABLE KEYS */;
INSERT INTO `RICOVERI` VALUES ('A102','2004-12-02','2005-01-02','A'),('A102','2014-05-02','2014-05-09','A'),('B444','2004-12-01','2005-01-02','B'),('S555','2014-10-05','2014-12-03','B'),('S555','2015-09-06','2015-11-01','A');
/*!40000 ALTER TABLE `RICOVERI` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-09 19:14:20
