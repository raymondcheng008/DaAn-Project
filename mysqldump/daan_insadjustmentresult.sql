CREATE DATABASE  IF NOT EXISTS `daan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `daan`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: daan
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `insadjustmentresult`
--

DROP TABLE IF EXISTS `insadjustmentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insadjustmentresult` (
  `Absorbance` text,
  `Barcode` text,
  `DeviationRange` text,
  `ExpireDate` text,
  `LotNo` text,
  `Name` text,
  `OpenDate` text,
  `OpenValidDays` text,
  `ReagentLotNo` text,
  `RefValue` text,
  `ResultDate` text,
  `ResultValue` text,
  `TestCode` text,
  `Unit` text,
  `Sent` int(11) default '0',
  `ID` int(11) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insadjustmentresult`
--

LOCK TABLES `insadjustmentresult` WRITE;
/*!40000 ALTER TABLE `insadjustmentresult` DISABLE KEYS */;
INSERT INTO `insadjustmentresult` VALUES ('11','22','33','2016-02-16 08:11:12','55','66','2016-02-16 08:11:12','88','99','1010','2016-02-16 08:11:12','1212','1313','1414',0,1);
/*!40000 ALTER TABLE `insadjustmentresult` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-09 14:24:41