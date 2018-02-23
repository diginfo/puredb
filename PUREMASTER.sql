-- MySQL dump 10.16  Distrib 10.1.23-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: PUREMASTER
-- ------------------------------------------------------
-- Server version	10.1.23-MariaDB

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
-- Table structure for table `BOILER_PLATE`
--

DROP TABLE IF EXISTS `BOILER_PLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOILER_PLATE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `REV` decimal(14,4) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DEFAULT_VAL` varchar(1) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `MODULE_ID` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOILER_PLATE`
--

LOCK TABLES `BOILER_PLATE` WRITE;
/*!40000 ALTER TABLE `BOILER_PLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOILER_PLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOILER_PLATE_LINK`
--

DROP TABLE IF EXISTS `BOILER_PLATE_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOILER_PLATE_LINK` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) NOT NULL,
  `DOC_ID` varchar(30) NOT NULL,
  `BOILER_ID` varchar(15) NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOILER_PLATE_LINK`
--

LOCK TABLES `BOILER_PLATE_LINK` WRITE;
/*!40000 ALTER TABLE `BOILER_PLATE_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOILER_PLATE_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAAS_AW`
--

DROP TABLE IF EXISTS `CAAS_AW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAAS_AW` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `FORM_NO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PART_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` decimal(14,4) DEFAULT NULL,
  `UOM_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ELIGIBILITY` text COLLATE utf8mb4_unicode_ci,
  `SERIAL_NO` text COLLATE utf8mb4_unicode_ci,
  `REMARKS` text COLLATE utf8mb4_unicode_ci,
  `STATUS_WORK` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEW_PARTS_OPTION` int(11) DEFAULT '0',
  `USED_PARTS_OPTION` int(11) DEFAULT '0',
  `APPROVAL_NO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SIGNATORY_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FORM_DATE` datetime DEFAULT NULL,
  `USER_1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FORM_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAAS_AW`
--

LOCK TABLES `CAAS_AW` WRITE;
/*!40000 ALTER TABLE `CAAS_AW` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAAS_AW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAAS_AW95`
--

DROP TABLE IF EXISTS `CAAS_AW95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAAS_AW95` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `FORM_NO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PART_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` decimal(14,4) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `ELIGIBILITY` text COLLATE utf8mb4_unicode_ci,
  `SERIAL_NO` text COLLATE utf8mb4_unicode_ci,
  `REMARKS` text COLLATE utf8mb4_unicode_ci,
  `STATUS_WORK` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEW_PARTS_OPTION` int(11) DEFAULT '0',
  `USED_PARTS_OPTION` int(11) DEFAULT '0',
  `APPROVAL_NO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SIGNATORY_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FORM_DATE` datetime DEFAULT NULL,
  `USER_1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UOM_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FORM_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAAS_AW95`
--

LOCK TABLES `CAAS_AW95` WRITE;
/*!40000 ALTER TABLE `CAAS_AW95` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAAS_AW95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAL_ACTIVITY_TYPE`
--

DROP TABLE IF EXISTS `CAL_ACTIVITY_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAL_ACTIVITY_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CAL_TYPE_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COLOUR_CODE` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CAL_TYPE_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAL_ACTIVITY_TYPE`
--

LOCK TABLES `CAL_ACTIVITY_TYPE` WRITE;
/*!40000 ALTER TABLE `CAL_ACTIVITY_TYPE` DISABLE KEYS */;
INSERT INTO `CAL_ACTIVITY_TYPE` VALUES (2,'AUDIT','Audit Events','bg-blu','2018-01-23 13:43:54',NULL,NULL,NULL),(1,'COMPANY-EVENT','Company Events','bg-red','2018-01-23 13:43:54',NULL,NULL,NULL);
/*!40000 ALTER TABLE `CAL_ACTIVITY_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAL_CLASS`
--

DROP TABLE IF EXISTS `CAL_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAL_CLASS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CAL_TYPE_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CAL_CLASS_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SUBSCRIBERS` text COLLATE utf8mb4_unicode_ci,
  `DURATION` int(11) DEFAULT NULL,
  PRIMARY KEY (`CAL_CLASS_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAL_CLASS`
--

LOCK TABLES `CAL_CLASS` WRITE;
/*!40000 ALTER TABLE `CAL_CLASS` DISABLE KEYS */;
INSERT INTO `CAL_CLASS` VALUES (1,'COMPANY-EVENT','D&D','Dinner and Dance','2018-01-23 13:43:54',NULL,NULL,NULL,NULL,NULL),(4,'AUDIT','ISO14001','ISO14001 Audit','2018-01-23 13:43:55',NULL,NULL,NULL,NULL,NULL),(3,'AUDIT','ISO9001','ISO9001 Audit','2018-01-23 13:43:54',NULL,NULL,NULL,NULL,NULL),(2,'COMPANY-EVENT','SHUTDOWN','Plant Shutdown','2018-01-23 13:43:54',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CAL_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAL_CLASS_SUBSCRIBER`
--

DROP TABLE IF EXISTS `CAL_CLASS_SUBSCRIBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAL_CLASS_SUBSCRIBER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CAL_CLASS_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SUBSCRIBER_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SUBSCRIBER_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SUBSCRIBER_EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CAL_CLASS_ID`,`SUBSCRIBER_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAL_CLASS_SUBSCRIBER`
--

LOCK TABLES `CAL_CLASS_SUBSCRIBER` WRITE;
/*!40000 ALTER TABLE `CAL_CLASS_SUBSCRIBER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAL_CLASS_SUBSCRIBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAL_SCHEDULE`
--

DROP TABLE IF EXISTS `CAL_SCHEDULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAL_SCHEDULE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CAL_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CAL_TYPE_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CAL_CLASS_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `REMARKS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CAL_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAL_SCHEDULE`
--

LOCK TABLES `CAL_SCHEDULE` WRITE;
/*!40000 ALTER TABLE `CAL_SCHEDULE` DISABLE KEYS */;
INSERT INTO `CAL_SCHEDULE` VALUES (1,'','','','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2018-02-13 20:17:54',NULL,NULL,NULL),(3,'CAL-0003-18','COMPANY-EVENT','ISO14001','2018-02-13 00:00:00','2018-02-13 00:00:00','testing','2018-02-13 20:38:39',NULL,NULL,NULL);
/*!40000 ALTER TABLE `CAL_SCHEDULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAPACITY_OVERRIDES`
--

DROP TABLE IF EXISTS `CAPACITY_OVERRIDES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAPACITY_OVERRIDES` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RES_ID` varchar(15) NOT NULL,
  `YYMMDD` varchar(6) NOT NULL,
  `UNITS` decimal(15,2) DEFAULT '0.00',
  `HOURS` decimal(15,2) DEFAULT '0.00',
  `NOTE` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RES_ID`,`YYMMDD`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAPACITY_OVERRIDES`
--

LOCK TABLES `CAPACITY_OVERRIDES` WRITE;
/*!40000 ALTER TABLE `CAPACITY_OVERRIDES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAPACITY_OVERRIDES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAUSE`
--

DROP TABLE IF EXISTS `CAUSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAUSE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CLASS_ID` varchar(15) DEFAULT NULL,
  `TYPE` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAUSE`
--

LOCK TABLES `CAUSE` WRITE;
/*!40000 ALTER TABLE `CAUSE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAUSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAUSE_CLASS`
--

DROP TABLE IF EXISTS `CAUSE_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAUSE_CLASS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAUSE_CLASS`
--

LOCK TABLES `CAUSE_CLASS` WRITE;
/*!40000 ALTER TABLE `CAUSE_CLASS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAUSE_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CAUSE_VIEW_1`
--

DROP TABLE IF EXISTS `CAUSE_VIEW_1`;
/*!50001 DROP VIEW IF EXISTS `CAUSE_VIEW_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CAUSE_VIEW_1` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL,
  `ID_AND_DESC` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CF_AGING`
--

DROP TABLE IF EXISTS `CF_AGING`;
/*!50001 DROP VIEW IF EXISTS `CF_AGING`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CF_AGING` (
  `CREATE_DATE` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `CNT` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CF_CAUSE`
--

DROP TABLE IF EXISTS `CF_CAUSE`;
/*!50001 DROP VIEW IF EXISTS `CF_CAUSE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CF_CAUSE` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CI_AGING`
--

DROP TABLE IF EXISTS `CI_AGING`;
/*!50001 DROP VIEW IF EXISTS `CI_AGING`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CI_AGING` (
  `CREATE_DATE` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `CNT` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CI_TYPE`
--

DROP TABLE IF EXISTS `CI_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CI_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CI_TYPE`
--

LOCK TABLES `CI_TYPE` WRITE;
/*!40000 ALTER TABLE `CI_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CI_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `COMPANY_TASK_ALERT`
--

DROP TABLE IF EXISTS `COMPANY_TASK_ALERT`;
/*!50001 DROP VIEW IF EXISTS `COMPANY_TASK_ALERT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `COMPANY_TASK_ALERT` (
  `TASKLIST` tinyint NOT NULL,
  `JSON_DATA` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CPAR_AGING`
--

DROP TABLE IF EXISTS `CPAR_AGING`;
/*!50001 DROP VIEW IF EXISTS `CPAR_AGING`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CPAR_AGING` (
  `CREATE_DATE` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `CNT` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CPAR_CAUSE`
--

DROP TABLE IF EXISTS `CPAR_CAUSE`;
/*!50001 DROP VIEW IF EXISTS `CPAR_CAUSE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CPAR_CAUSE` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CPROP_HEAD`
--

DROP TABLE IF EXISTS `CPROP_HEAD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CPROP_HEAD` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CP_ID` varchar(15) NOT NULL,
  `CUST_ID` varchar(15) NOT NULL,
  `CP_DATE` datetime NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CP_ID`),
  UNIQUE KEY `ROWID` (`ROWID`),
  KEY `CP_ID` (`CP_ID`),
  KEY `CP_ID_2` (`CP_ID`),
  KEY `CP_ID_3` (`CP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CPROP_HEAD`
--

LOCK TABLES `CPROP_HEAD` WRITE;
/*!40000 ALTER TABLE `CPROP_HEAD` DISABLE KEYS */;
INSERT INTO `CPROP_HEAD` VALUES (2,'CP-0002-17','APPLE','2017-07-21 00:00:00','PAC',NULL,'2017-07-21 13:30:51',NULL,NULL);
/*!40000 ALTER TABLE `CPROP_HEAD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CPROP_IDS`
--

DROP TABLE IF EXISTS `CPROP_IDS`;
/*!50001 DROP VIEW IF EXISTS `CPROP_IDS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CPROP_IDS` (
  `CP_ID` tinyint NOT NULL,
  `CUST_ID` tinyint NOT NULL,
  `LINE_NO` tinyint NOT NULL,
  `CP_ID_LN_VALUE` tinyint NOT NULL,
  `CP_ID_LN_TEXT` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `QTY_RECV` tinyint NOT NULL,
  `CP_DATE` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CPROP_ITEMS`
--

DROP TABLE IF EXISTS `CPROP_ITEMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CPROP_ITEMS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CP_ID` varchar(15) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `CUST_PART_ID` varchar(30) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LOCN` varchar(30) DEFAULT NULL,
  `NCR_ID` varchar(30) DEFAULT NULL,
  `QTY_RECV` int(11) NOT NULL,
  `ACTION` varchar(50) DEFAULT NULL,
  `BASE_ID` varchar(30) DEFAULT NULL,
  `DATE_RETURN` datetime DEFAULT NULL,
  `SALES_ORDER_ID` varchar(35) DEFAULT NULL,
  `COC_ID` varchar(255) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `CP_REF` varchar(30) DEFAULT NULL,
  `USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `CUST_PO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CP_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`),
  KEY `CP_ID` (`CP_ID`,`LINE_NO`),
  KEY `CP_ID_2` (`CP_ID`,`LINE_NO`),
  KEY `BASE_ID` (`BASE_ID`),
  KEY `CP_ID_3` (`CP_ID`,`LINE_NO`),
  KEY `BASE_ID_2` (`BASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CPROP_ITEMS`
--

LOCK TABLES `CPROP_ITEMS` WRITE;
/*!40000 ALTER TABLE `CPROP_ITEMS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CPROP_ITEMS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER CPROP_ITEMS_BI BEFORE INSERT ON CPROP_ITEMS
  FOR EACH ROW 
  BEGIN
    SET NEW.CP_REF=CONCAT(NEW.CP_ID,'^',NEW.LINE_NO);
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `CPROP_ITEMS_RETURN`
--

DROP TABLE IF EXISTS `CPROP_ITEMS_RETURN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CPROP_ITEMS_RETURN` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CP_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CP_LINE_NO` int(11) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `QTY_RETURN` int(11) DEFAULT NULL,
  `DATE_RETURN` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CP_ID`,`CP_LINE_NO`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CPROP_ITEMS_RETURN`
--

LOCK TABLES `CPROP_ITEMS_RETURN` WRITE;
/*!40000 ALTER TABLE `CPROP_ITEMS_RETURN` DISABLE KEYS */;
/*!40000 ALTER TABLE `CPROP_ITEMS_RETURN` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER CPROP_ITEMS_RETURN_AI
AFTER INSERT ON CPROP_ITEMS_RETURN 
FOR EACH ROW
BEGIN 
	DECLARE MIN_DATE DATETIME;
	SELECT MIN(DATE_RETURN) FROM CPROP_ITEMS_RETURN WHERE CP_ID=NEW.CP_ID AND CP_LINE_NO=NEW.CP_LINE_NO INTO MIN_DATE;
	UPDATE CPROP_ITEMS SET DATE_RETURN=MIN_DATE WHERE CP_ID=NEW.CP_ID AND LINE_NO=NEW.CP_LINE_NO;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER CPROP_ITEMS_RETURN_AU
AFTER UPDATE ON CPROP_ITEMS_RETURN 
FOR EACH ROW
BEGIN 
	DECLARE MIN_DATE DATETIME;
	SELECT MIN(DATE_RETURN) FROM CPROP_ITEMS_RETURN WHERE CP_ID=NEW.CP_ID AND CP_LINE_NO=NEW.CP_LINE_NO INTO MIN_DATE;
	UPDATE CPROP_ITEMS SET DATE_RETURN=MIN_DATE WHERE CP_ID=NEW.CP_ID AND LINE_NO=NEW.CP_LINE_NO;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER CPROP_ITEMS_RETURN_AD
AFTER DELETE ON CPROP_ITEMS_RETURN 
FOR EACH ROW
BEGIN 
	DECLARE MIN_DATE DATETIME;
	SELECT MIN(DATE_RETURN) FROM CPROP_ITEMS_RETURN WHERE CP_ID=OLD.CP_ID AND CP_LINE_NO=OLD.CP_LINE_NO INTO MIN_DATE;
	UPDATE CPROP_ITEMS SET DATE_RETURN=MIN_DATE WHERE CP_ID=OLD.CP_ID AND LINE_NO=OLD.CP_LINE_NO;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `CP_PROGRESS`
--

DROP TABLE IF EXISTS `CP_PROGRESS`;
/*!50001 DROP VIEW IF EXISTS `CP_PROGRESS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CP_PROGRESS` (
  `CP_ID` tinyint NOT NULL,
  `CUST_ID` tinyint NOT NULL,
  `CP_DATE` tinyint NOT NULL,
  `LINE_NO` tinyint NOT NULL,
  `BASE_ID` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `REV_NO` tinyint NOT NULL,
  `SO_CREATE_DATE` tinyint NOT NULL,
  `WO_CREATE_DATE` tinyint NOT NULL,
  `WO_WANT_DATE` tinyint NOT NULL,
  `CP_STATUS` tinyint NOT NULL,
  `WO_STATUS` tinyint NOT NULL,
  `SO_STATUS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CRM_COMPANY`
--

DROP TABLE IF EXISTS `CRM_COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CRM_COMPANY` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CO_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CO_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDR_1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDR_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ADDR_3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `POSTCODE` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PHONE_NO` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAX_NO` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEBSITE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRIMARY_CONTACT_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_EVENT_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_EVENT_DATE` datetime DEFAULT NULL,
  `STATUS_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOTES` longtext COLLATE utf8mb4_unicode_ci,
  `SOURCE_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_EVENT_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ORDER_MODE` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INDUSTRY_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODSERV` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_FLAG` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `STAGE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'LEAD',
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRM_COMPANY`
--

LOCK TABLES `CRM_COMPANY` WRITE;
/*!40000 ALTER TABLE `CRM_COMPANY` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRM_COMPANY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRM_CONTACT`
--

DROP TABLE IF EXISTS `CRM_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CRM_CONTACT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CO_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACT_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAME_FIRST` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAME_LAST` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_TITLE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MOBILE` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PHONE` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_PRIMARY` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `NOTES` longtext COLLATE utf8mb4_unicode_ci,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRM_CONTACT`
--

LOCK TABLES `CRM_CONTACT` WRITE;
/*!40000 ALTER TABLE `CRM_CONTACT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRM_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRM_EVENT`
--

DROP TABLE IF EXISTS `CRM_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CRM_EVENT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CO_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACT_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EVENT_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EVENT_DATE` datetime DEFAULT NULL,
  `EVENT_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TYPE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_STEP` longtext COLLATE utf8mb4_unicode_ci,
  `NEXT_DATE` datetime DEFAULT NULL,
  `DETAILS` longtext COLLATE utf8mb4_unicode_ci,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `CO_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRM_EVENT`
--

LOCK TABLES `CRM_EVENT` WRITE;
/*!40000 ALTER TABLE `CRM_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRM_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `ADDR_1` varchar(50) DEFAULT NULL,
  `ADDR_2` varchar(50) DEFAULT NULL,
  `ADDR_3` varchar(50) DEFAULT NULL,
  `CONTACT_PERSON` varchar(80) DEFAULT NULL,
  `CONTACT_PHONE` varchar(80) DEFAULT NULL,
  `CONTACT_fax` varchar(80) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(80) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `COC_ADDR_1` varchar(50) DEFAULT NULL,
  `COC_ADDR_2` varchar(50) DEFAULT NULL,
  `COC_ADDR_3` varchar(50) DEFAULT NULL,
  `BILL_TO_PERSON` varchar(80) DEFAULT NULL,
  `BILL_TO_PHONE` varchar(80) DEFAULT NULL,
  `BILL_TO_FAX` varchar(80) DEFAULT NULL,
  `BILL_TO_EMAIL` varchar(80) DEFAULT NULL,
  `COC_EMAIL` varchar(80) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `SUBSCRIBE_EVENT` char(1) DEFAULT 'N',
  `CURRENCY_ID` char(3) DEFAULT NULL,
  `GST_ID` char(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'APPLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 09:04:41','N','SGD','GST7',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HEAD_ID` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (1,'IT','IT',NULL,NULL,NULL,'2017-07-21 10:30:38',NULL,NULL);
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEVIATION`
--

DROP TABLE IF EXISTS `DEVIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVIATION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEVIATION`
--

LOCK TABLES `DEVIATION` WRITE;
/*!40000 ALTER TABLE `DEVIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEVIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEVIATION_REASON`
--

DROP TABLE IF EXISTS `DEVIATION_REASON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVIATION_REASON` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEVIATION_REASON`
--

LOCK TABLES `DEVIATION_REASON` WRITE;
/*!40000 ALTER TABLE `DEVIATION_REASON` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEVIATION_REASON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIS_AMTS_DEVIATIONS`
--

DROP TABLE IF EXISTS `DIS_AMTS_DEVIATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DIS_AMTS_DEVIATIONS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `PENDING_ID` int(11) DEFAULT NULL,
  `LT_TRANS_ID` int(11) DEFAULT NULL,
  `DEVIATION_ID` varchar(50) DEFAULT NULL,
  `BAD_QTY` decimal(14,4) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIS_AMTS_DEVIATIONS`
--

LOCK TABLES `DIS_AMTS_DEVIATIONS` WRITE;
/*!40000 ALTER TABLE `DIS_AMTS_DEVIATIONS` DISABLE KEYS */;
INSERT INTO `DIS_AMTS_DEVIATIONS` VALUES (1,NULL,8406,'COAT',1.0000,'2016-05-25 13:12:13',NULL,NULL,NULL,NULL),(2,NULL,8573,'COAT',1.0000,'2016-05-25 16:29:31',NULL,NULL,NULL,NULL),(3,NULL,25722,'DIMENSIONAL',1.0000,'2016-08-02 17:58:27',NULL,NULL,NULL,NULL),(4,NULL,25723,'DIMENSIONAL',1.0000,'2016-08-02 17:58:39',NULL,NULL,NULL,NULL),(5,NULL,25721,'DIMENSIONAL',1.0000,'2016-08-02 17:59:08',NULL,NULL,NULL,NULL),(6,NULL,25724,'DIMENSIONAL',1.0000,'2016-08-02 17:59:19',NULL,NULL,NULL,NULL),(7,NULL,25747,'DIMENSIONAL',1.0000,'2016-08-02 17:59:26',NULL,NULL,NULL,NULL),(8,NULL,40082,'DIMENSIONAL',1.0000,'2016-09-26 09:42:16',NULL,NULL,NULL,NULL),(9,NULL,41315,'OTHER',1.0000,'2016-09-29 10:40:31',NULL,NULL,NULL,NULL),(10,NULL,58463,'DIMENSIONAL',2.0000,'2016-11-30 13:42:38',NULL,NULL,NULL,NULL),(11,NULL,62388,'OTHER',1.0000,'2016-12-14 09:19:55',NULL,NULL,NULL,NULL),(12,NULL,62392,'OTHER',1.0000,'2016-12-14 09:20:05',NULL,NULL,NULL,NULL),(13,NULL,62397,'OTHER',1.0000,'2016-12-14 09:20:31',NULL,NULL,NULL,NULL),(14,NULL,62396,'OTHER',1.0000,'2016-12-14 09:20:43',NULL,NULL,NULL,NULL),(15,NULL,62395,'OTHER',1.0000,'2016-12-14 09:20:53',NULL,NULL,NULL,NULL),(16,NULL,62394,'OTHER',1.0000,'2016-12-14 09:21:01',NULL,NULL,NULL,NULL),(17,NULL,62525,'OTHER',1.0000,'2016-12-14 12:32:34',NULL,NULL,NULL,NULL),(18,NULL,62692,'OTHER',1.0000,'2016-12-14 16:12:49',NULL,NULL,NULL,NULL),(19,NULL,66580,'OTHER',1.0000,'2016-12-30 11:47:42',NULL,NULL,NULL,NULL),(20,NULL,66583,'OTHER',1.0000,'2016-12-30 11:48:37',NULL,NULL,NULL,NULL),(21,NULL,78607,'OTHER',1.0000,'2017-02-22 15:51:51',NULL,NULL,NULL,NULL),(22,NULL,95793,'OTHER',1.0000,'2017-04-28 15:01:50',NULL,NULL,NULL,NULL),(23,NULL,103505,'DIMENSIONAL',1.0000,'2017-05-26 16:28:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `DIS_AMTS_DEVIATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIS_EMP_STATUS`
--

DROP TABLE IF EXISTS `DIS_EMP_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DIS_EMP_STATUS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(15) DEFAULT NULL,
  `TRANS_TYPE` varchar(1) DEFAULT NULL,
  `TRANS_DATETIME` datetime DEFAULT NULL,
  `JOB_TYPE` varchar(1) DEFAULT NULL,
  `JOB_ID` varchar(80) DEFAULT NULL,
  `PENDING_ID` int(11) DEFAULT NULL,
  `WO_BASE_ID` varchar(30) DEFAULT NULL,
  `WO_LOT_ID` varchar(3) DEFAULT NULL,
  `WO_SPLIT_ID` varchar(3) DEFAULT NULL,
  `WO_SUB_ID` varchar(3) DEFAULT NULL,
  `WO_SEQ_NO` smallint(6) DEFAULT NULL,
  `TX_TYPE` varchar(4) DEFAULT NULL,
  `INDIRECT_ID` varchar(25) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIS_EMP_STATUS`
--

LOCK TABLES `DIS_EMP_STATUS` WRITE;
/*!40000 ALTER TABLE `DIS_EMP_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `DIS_EMP_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `DIS_EMP_STATUS_VIEW_1`
--

DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_1`;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DIS_EMP_STATUS_VIEW_1` (
  `JOB_ID` tinyint NOT NULL,
  `WO_BASE_ID` tinyint NOT NULL,
  `WO_LOT_ID` tinyint NOT NULL,
  `WO_SPLIT_ID` tinyint NOT NULL,
  `WO_SUB_ID` tinyint NOT NULL,
  `MAX_SEQ_NO` tinyint NOT NULL,
  `IS_FIRST_OP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `DIS_EMP_STATUS_VIEW_2`
--

DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_2`;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DIS_EMP_STATUS_VIEW_2` (
  `JOB_ID` tinyint NOT NULL,
  `AUTO_ISSUE_LOC` tinyint NOT NULL,
  `QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `DIS_EMP_STATUS_VIEW_3`
--

DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_3`;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DIS_EMP_STATUS_VIEW_3` (
  `JOB_ID` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `DUPLICATE_SALES_ORDERS`
--

DROP TABLE IF EXISTS `DUPLICATE_SALES_ORDERS`;
/*!50001 DROP VIEW IF EXISTS `DUPLICATE_SALES_ORDERS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DUPLICATE_SALES_ORDERS` (
  `ROWID` tinyint NOT NULL,
  `WO_CLASS` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `BASE_ID` tinyint NOT NULL,
  `LOT_ID` tinyint NOT NULL,
  `SPLIT_ID` tinyint NOT NULL,
  `SUB_ID` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DESIRED_QTY` tinyint NOT NULL,
  `RECEIVED_QTY` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `DESIRED_RLS_DATE` tinyint NOT NULL,
  `DESIRED_WANT_DATE` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `ENGINEERED_BY` tinyint NOT NULL,
  `ENGINEERED_DATE` tinyint NOT NULL,
  `DRAWING_ID` tinyint NOT NULL,
  `DRAWING_REV_NO` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `COMMODITY_CODE` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `PRINTED_DATE` tinyint NOT NULL,
  `DRAWING_FILE` tinyint NOT NULL,
  `WAREHOUSE_ID` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `PART_ALIAS` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `CUSTOMER_ID` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `EST_COST` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `SALES_ORDER_LINE_NO` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `PART_REV_NO` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QC_TEST_ID` tinyint NOT NULL,
  `COC_QTY` tinyint NOT NULL,
  `PRIORITY` tinyint NOT NULL,
  `LEAD_TIME` tinyint NOT NULL,
  `CUSTOMER_PO` tinyint NOT NULL,
  `CUSTOMER_PO_LINE_NO` tinyint NOT NULL,
  `CUSTOMER_PART_ID` tinyint NOT NULL,
  `TYPE_CLASS` tinyint NOT NULL,
  `FLAGS` tinyint NOT NULL,
  `SHIPPED_QTY` tinyint NOT NULL,
  `WO_TYPE` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `SALES_ORDER_NOTES` tinyint NOT NULL,
  `SALES_ORDER_REF` tinyint NOT NULL,
  `SALES_ORDER_REV_NO` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `ACT_TOTAL_COST` tinyint NOT NULL,
  `GRAND_TOTAL_COST` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL,
  `ESTIMATOR_COST` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `LAST_NAME` varchar(30) DEFAULT NULL,
  `FIRST_NAME` varchar(30) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `DEPARTMENT_ID` varchar(15) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `SHIFT_ID` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(8) DEFAULT NULL,
  `EMAIL_ADDR` varchar(80) DEFAULT NULL,
  `BASE_PAY_RATE` decimal(15,2) DEFAULT '0.00',
  `EARNING_CODE_ID` varchar(15) DEFAULT NULL,
  `UAU_IMAGE1` longtext,
  `TEMPLATE` longblob,
  `RFID_TAG` varchar(15) DEFAULT NULL,
  `LANGUAGE_ID` varchar(3) DEFAULT NULL,
  `RESOURCE_IDS` longtext,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1,'DIS','SUPPORT','DIS',NULL,NULL,'IT','Y','DAY',NULL,NULL,0.00,NULL,NULL,NULL,NULL,'eng',NULL,'JOB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 10:31:03',NULL,NULL);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER EMP_RESOURCE_AU
AFTER UPDATE ON EMPLOYEE
FOR EACH ROW

BEGIN 
DECLARE my_delimiter CHAR(1);
DECLARE split_RESOURCE varchar(8000);


DECLARE done INT;
DECLARE occurance INT;

DECLARE i INT;
DECLARE p INT;
DECLARE f INT;
DECLARE split_id INT;
DECLARE ins_query VARCHAR(500);
DECLARE vRESOURCE VARCHAR(15);



DECLARE splitter_cur CURSOR FOR
SELECT NEW.RESOURCE_IDS ;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;

OPEN splitter_cur;
splitter_loop:LOOP
      FETCH splitter_cur INTO split_RESOURCE;

SET occurance=length(split_RESOURCE)-length(replace(split_RESOURCE,',',''))+1;

SET my_delimiter=',';
  IF done=1 THEN
    LEAVE splitter_loop;
  END IF;
#  select occurance;
DELETE FROM EMP_RESOURCE WHERE EMPLOYEE_ID=NEW.ID;
  IF occurance > 0 then
    #select occurance;
    set i=1;
    while i <= occurance do
        SET vRESOURCE=SUBSTRING_INDEX(SUBSTRING_INDEX(split_RESOURCE,',',i),',',-1);
        IF length(vRESOURCE)>0 THEN
			insert into EMP_RESOURCE(EMPLOYEE_ID,RESOURCE_ID,CREATE_DATE)VALUES(NEW.ID,vRESOURCE,NOW());
		END IF;
      set i=i+1;
    end while;
  ELSE
	IF length(NEW.RESOURCE_IDS)>0 THEN
        insert into EMP_RESOURCE(EMPLOYEE_ID,RESOURCE_ID,CREATE_DATE)VALUES(NEW.ID,NEW.RESOURCE_IDS,NOW());
	END IF;
  END IF;
  set occurance=0;
END LOOP;

CLOSE splitter_cur;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EMPLOYEE_CERTIFICATE`
--

DROP TABLE IF EXISTS `EMPLOYEE_CERTIFICATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE_CERTIFICATE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(15) NOT NULL,
  `MODULE_ID` varchar(15) NOT NULL,
  `PLAN_DATE` datetime DEFAULT NULL,
  `COMPLETED_DATE` datetime DEFAULT NULL,
  `ATTENDED` varchar(3) DEFAULT NULL,
  `RESULT` varchar(4) DEFAULT NULL,
  `TRAINING_ID` varchar(30) NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_CERTIFICATE`
--

LOCK TABLES `EMPLOYEE_CERTIFICATE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_CERTIFICATE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE_CERTIFICATE` VALUES (1,'','','2017-07-21 12:00:00',NULL,'No','','T001-170721',NULL,NULL,'2017-07-21 13:43:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `EMPLOYEE_CERTIFICATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_QUALIFICATION`
--

DROP TABLE IF EXISTS `EMPLOYEE_QUALIFICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE_QUALIFICATION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QUALIFICATION_ID` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QUALIFICATION_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`,`QUALIFICATION_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_QUALIFICATION`
--

LOCK TABLES `EMPLOYEE_QUALIFICATION` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_QUALIFICATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE_QUALIFICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPWO`
--

DROP TABLE IF EXISTS `EMPWO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPWO` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `WOREF` varchar(50) NOT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`,`WOREF`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPWO`
--

LOCK TABLES `EMPWO` WRITE;
/*!40000 ALTER TABLE `EMPWO` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPWO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `EMP_DAILY_LABOR_CLOCK`
--

DROP TABLE IF EXISTS `EMP_DAILY_LABOR_CLOCK`;
/*!50001 DROP VIEW IF EXISTS `EMP_DAILY_LABOR_CLOCK`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `EMP_DAILY_LABOR_CLOCK` (
  `EMPLOYEE_ID` tinyint NOT NULL,
  `TRANSACTION_DATE` tinyint NOT NULL,
  `START_TIME` tinyint NOT NULL,
  `END_TIME` tinyint NOT NULL,
  `INDIRECT_HRS` tinyint NOT NULL,
  `BREAK_HRS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `EMP_OPENJOBS`
--

DROP TABLE IF EXISTS `EMP_OPENJOBS`;
/*!50001 DROP VIEW IF EXISTS `EMP_OPENJOBS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `EMP_OPENJOBS` (
  `JOB_TYPE` tinyint NOT NULL,
  `woref` tinyint NOT NULL,
  `QTY_REQ` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `setup_completed` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `IS_FIRST_OP` tinyint NOT NULL,
  `PREV_OP_COMPLETED_QTY` tinyint NOT NULL,
  `PREV_OP_BAD_QTY` tinyint NOT NULL,
  `PREV_OP_STATUS` tinyint NOT NULL,
  `PREV_OP_QTY_TYPE` tinyint NOT NULL,
  `AUTO_ISSUE_LOC` tinyint NOT NULL,
  `QTY` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `DEVIATED_QTY` tinyint NOT NULL,
  `EMPLOYEE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EMP_RESOURCE`
--

DROP TABLE IF EXISTS `EMP_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMP_RESOURCE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `RESOURCE_ID` varchar(15) NOT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMP_RESOURCE`
--

LOCK TABLES `EMP_RESOURCE` WRITE;
/*!40000 ALTER TABLE `EMP_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMP_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ONESHOT`
--

DROP TABLE IF EXISTS `EVENT_ONESHOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ONESHOT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` varchar(50) NOT NULL,
  `EVENT_DATA` text,
  `EVENT_SQL` text,
  `EVENT_SQLID` varchar(50) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EVENT_RECIPIENT` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ONESHOT`
--

LOCK TABLES `EVENT_ONESHOT` WRITE;
/*!40000 ALTER TABLE `EVENT_ONESHOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ONESHOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAUGE`
--

DROP TABLE IF EXISTS `GAUGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(50) NOT NULL,
  `GAUGE_TYPE` varchar(15) DEFAULT NULL,
  `QPH_ID` varchar(15) DEFAULT NULL,
  `CYCLE_TIME` decimal(5,0) DEFAULT NULL,
  `CYCLE_TYPE` varchar(10) DEFAULT NULL,
  `DEPARTMENT_ID` varchar(80) DEFAULT NULL,
  `MANUFACTURER` varchar(30) DEFAULT NULL,
  `MODEL` varchar(80) DEFAULT NULL,
  `PURCHASE_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `NOTES` longtext,
  `GAUGE_CLASS` varchar(15) DEFAULT NULL,
  `OP_RANGE` longtext,
  `SERIAL_NO` varchar(80) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CALIBRATE_1` datetime DEFAULT NULL,
  `CALIBRATE_2` datetime DEFAULT NULL,
  `LAST_CAL` datetime DEFAULT NULL,
  `CYCLE_COUNT` decimal(5,0) DEFAULT NULL,
  `LOCATION` varchar(80) DEFAULT NULL,
  `INV_STAT` varchar(15) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT 'Y',
  `CALDAYS_1` decimal(14,4) DEFAULT '0.0000',
  `CALDAYS_2` decimal(14,4) DEFAULT '0.0000',
  `ACQUIRED_DATE` datetime DEFAULT NULL,
  `DOC_REF` varchar(80) DEFAULT NULL,
  `CAL_BY` varchar(255) DEFAULT NULL,
  `TOLERANCE` varchar(80) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DUE_DATE_ALERT_DAYS` decimal(5,0) DEFAULT '0',
  `RESET_REASON` varchar(80) DEFAULT NULL,
  `PLAN_ID` varchar(15) DEFAULT NULL,
  `NUMBERING` varchar(15) DEFAULT NULL,
  `OWNER_TYPE` varchar(30) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `CAL_TYPE` varchar(15) DEFAULT NULL,
  `OLD_ID` longtext,
  `RETURN_DATE` datetime DEFAULT NULL,
  `GAUGE_ROYALTY_TYPE` varchar(30) DEFAULT NULL,
  `GAUGE_RENT_DIAMETER` decimal(15,4) DEFAULT NULL,
  `GAUGE_RENT_WEIGHT` varchar(30) DEFAULT NULL,
  `GAUGE_RENT_THREAD` varchar(30) DEFAULT NULL,
  `GAUGE_RENT_PINBOX` varchar(30) DEFAULT NULL,
  `RENTAL_DAILY` decimal(15,2) DEFAULT NULL,
  `RENTAL_ROYALTY` decimal(15,2) DEFAULT NULL,
  `RENTAL_CURRENCY` varchar(3) DEFAULT NULL,
  `RENTAL_GAUGE_TYPE` varchar(30) DEFAULT NULL,
  `RENTAL_LICENSOR_ID` varchar(30) DEFAULT NULL,
  `RENTAL_LT_PERIOD` decimal(5,0) DEFAULT NULL,
  `RENTAL_LT_START` datetime DEFAULT NULL,
  `RENTAL_LT_END` datetime DEFAULT NULL,
  `RENTAL_JSON_DATA` longtext,
  `ROYALTY_CURRENCY` char(3) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE`
--

LOCK TABLES `GAUGE` WRITE;
/*!40000 ALTER TABLE `GAUGE` DISABLE KEYS */;
INSERT INTO `GAUGE` VALUES (1,'G001','GT1',NULL,1,'MONTHS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL,NULL,NULL,0,NULL,'INV-IN','Y',60.0000,90.0000,'2017-07-21 00:00:00',NULL,NULL,NULL,NULL,14,NULL,NULL,NULL,'long',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VERIFY',NULL,NULL,'ENDS-RATE',NULL,NULL,NULL,NULL,0.00,0.00,NULL,'LONG','LIC001',0,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 13:34:24',NULL,NULL);
/*!40000 ALTER TABLE `GAUGE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_AU
AFTER UPDATE ON GAUGE 
FOR EACH ROW

BEGIN 
	IF IFNULL(OLD.RESET_REASON,'') <> IFNULL(NEW.RESET_REASON,'') THEN
		INSERT INTO GAUGE_RESET_NEXT_DUE(REASON,GAUGE_ID,NEW_CAL_DATE,OLD_CAL_DATE)
		VALUES(NEW.RESET_REASON,NEW.ID,NEW.DUE_DATE,OLD.DUE_DATE);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `GAUGE_DUE`
--

DROP TABLE IF EXISTS `GAUGE_DUE`;
/*!50001 DROP VIEW IF EXISTS `GAUGE_DUE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `GAUGE_DUE` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `GAUGE_TYPE` tinyint NOT NULL,
  `QPH_ID` tinyint NOT NULL,
  `CYCLE_TIME` tinyint NOT NULL,
  `CYCLE_TYPE` tinyint NOT NULL,
  `DEPARTMENT_ID` tinyint NOT NULL,
  `MANUFACTURER` tinyint NOT NULL,
  `MODEL` tinyint NOT NULL,
  `PURCHASE_DATE` tinyint NOT NULL,
  `DUE_DATE` tinyint NOT NULL,
  `NOTES` tinyint NOT NULL,
  `GAUGE_CLASS` tinyint NOT NULL,
  `OP_RANGE` tinyint NOT NULL,
  `SERIAL_NO` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `CALIBRATE_1` tinyint NOT NULL,
  `CALIBRATE_2` tinyint NOT NULL,
  `LAST_CAL` tinyint NOT NULL,
  `CYCLE_COUNT` tinyint NOT NULL,
  `LOCATION` tinyint NOT NULL,
  `INV_STAT` tinyint NOT NULL,
  `ACTIVE` tinyint NOT NULL,
  `CALDAYS_1` tinyint NOT NULL,
  `CALDAYS_2` tinyint NOT NULL,
  `ACQUIRED_DATE` tinyint NOT NULL,
  `DOC_REF` tinyint NOT NULL,
  `CAL_BY` tinyint NOT NULL,
  `TOLERANCE` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `DUE_DATE_ALERT_DAYS` tinyint NOT NULL,
  `RESET_REASON` tinyint NOT NULL,
  `PLAN_ID` tinyint NOT NULL,
  `NUMBERING` tinyint NOT NULL,
  `OWNER_TYPE` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `CAL_TYPE` tinyint NOT NULL,
  `OLD_ID` tinyint NOT NULL,
  `RETURN_DATE` tinyint NOT NULL,
  `GAUGE_ROYALTY_TYPE` tinyint NOT NULL,
  `GAUGE_RENT_DIAMETER` tinyint NOT NULL,
  `GAUGE_RENT_WEIGHT` tinyint NOT NULL,
  `GAUGE_RENT_THREAD` tinyint NOT NULL,
  `GAUGE_RENT_PINBOX` tinyint NOT NULL,
  `RENTAL_DAILY` tinyint NOT NULL,
  `RENTAL_ROYALTY` tinyint NOT NULL,
  `RENTAL_CURRENCY` tinyint NOT NULL,
  `RENTAL_GAUGE_TYPE` tinyint NOT NULL,
  `RENTAL_LICENSOR_ID` tinyint NOT NULL,
  `RENTAL_LT_PERIOD` tinyint NOT NULL,
  `RENTAL_LT_START` tinyint NOT NULL,
  `RENTAL_LT_END` tinyint NOT NULL,
  `RENTAL_JSON_DATA` tinyint NOT NULL,
  `ROYALTY_CURRENCY` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `GAUGE_HOLD`
--

DROP TABLE IF EXISTS `GAUGE_HOLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_HOLD` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `GAUGE_ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(35) DEFAULT NULL,
  `HOLD_TYPE` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`GAUGE_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_HOLD`
--

LOCK TABLES `GAUGE_HOLD` WRITE;
/*!40000 ALTER TABLE `GAUGE_HOLD` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAUGE_HOLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAUGE_LICENSOR`
--

DROP TABLE IF EXISTS `GAUGE_LICENSOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_LICENSOR` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `LICENSOR_ID` char(30) NOT NULL,
  `LICENSOR_NAME` char(80) NOT NULL,
  `LICENSOR_START_DATE` char(30) NOT NULL,
  `LICENSOR_END_DATE` char(30) NOT NULL,
  `MIN_DAYS` int(11) DEFAULT '0',
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`LICENSOR_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_LICENSOR`
--

LOCK TABLES `GAUGE_LICENSOR` WRITE;
/*!40000 ALTER TABLE `GAUGE_LICENSOR` DISABLE KEYS */;
INSERT INTO `GAUGE_LICENSOR` VALUES (1,'LIC001','LIC001','SHIP_DATE','RETURN_DATE',0,NULL,NULL,'2017-07-21 13:40:00',NULL,NULL);
/*!40000 ALTER TABLE `GAUGE_LICENSOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAUGE_RENTAL`
--

DROP TABLE IF EXISTS `GAUGE_RENTAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_RENTAL` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RENTAL_ID` char(30) NOT NULL,
  `STATUS` char(30) NOT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `LICENSOR_ID` char(30) NOT NULL,
  `LICENSOR_SERIAL` char(30) NOT NULL,
  `LICENSOR_GAUGE_NO` char(30) NOT NULL,
  `REQUEST_DATE` datetime DEFAULT NULL,
  `BOOK_DATE` datetime DEFAULT NULL,
  `SHIP_DATE` datetime DEFAULT NULL,
  `RECEIPT_DATE` datetime DEFAULT NULL,
  `RETURN_DATE` datetime DEFAULT NULL,
  `RETURN_ARRIVAL_DATE` datetime DEFAULT NULL,
  `GAUGE_RENT_DIAMETER` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `GAUGE_RENT_WEIGHT` char(30) NOT NULL,
  `GAUGE_RENT_THREAD` char(30) NOT NULL,
  `GAUGE_RENT_PINBOX` char(30) NOT NULL,
  `INCOMING_CO` char(30) NOT NULL,
  `OUTGOING_CO` char(30) NOT NULL,
  `INCOMING_AWB` char(30) NOT NULL,
  `OUTGOING_AWB` char(30) NOT NULL,
  `INCOMING_FREIGHT_COST` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_FREIGHT_COST` decimal(15,2) DEFAULT '0.00',
  `INCOMING_HANDLING_COST` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_HANDLING_COST` decimal(15,2) DEFAULT '0.00',
  `INCOMING_FUEL_SURCHARGE` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_FUEL_SURCHARGE` decimal(15,2) DEFAULT '0.00',
  `INCOMING_OTHER_COSTS` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_OTHER_COSTS` decimal(15,2) DEFAULT '0.00',
  `INCOMING_GST` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_GST` decimal(15,2) DEFAULT '0.00',
  `INCOMING_TOTAL` decimal(15,2) DEFAULT '0.00',
  `OUTGOING_TOTAL` decimal(15,2) DEFAULT '0.00',
  `PR_NO` char(30) NOT NULL,
  `PR_START_DATE` datetime DEFAULT NULL,
  `PR_END_DATE` datetime DEFAULT NULL,
  `PO_NO` char(30) NOT NULL,
  `PO_START_DATE` datetime DEFAULT NULL,
  `PO_END_DATE` datetime DEFAULT NULL,
  `PO_CURRENCY_ID` varchar(3) DEFAULT NULL,
  `PO_RENTAL_LINE_NO` char(30) NOT NULL,
  `RENTAL_CURRENCY_ID` char(30) NOT NULL,
  `PO_RENTAL_AMT` decimal(15,2) DEFAULT '0.00',
  `PO_TRANSPORT_LINE_NO` char(30) NOT NULL,
  `PO_TRANSPORT_AMT` decimal(15,2) DEFAULT '0.00',
  `LICENSOR_INVOICE_NO` char(30) NOT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `WO_QTY_TOTAL` decimal(15,2) DEFAULT '0.00',
  `WO_COC_TOTAL` decimal(15,2) DEFAULT '0.00',
  `RENTAL_DAILY` decimal(15,2) DEFAULT NULL,
  `RENTAL_DAYS` decimal(15,2) DEFAULT NULL,
  `RENTAL_COST` decimal(15,2) DEFAULT NULL,
  `RENTAL_ROYALTY` decimal(15,2) DEFAULT NULL,
  `ROYALTY_QTY` decimal(15,2) DEFAULT NULL,
  `ROYALTY_COST` decimal(15,2) DEFAULT NULL,
  `OUTGOING_CURRENCY` varchar(3) DEFAULT NULL,
  `LICENSOR_START_DATE` char(30) DEFAULT NULL,
  `LICENSOR_END_DATE` char(30) DEFAULT NULL,
  `INCOMING_CURRENCY` varchar(3) DEFAULT NULL,
  `ROYALTY_CURRENCY` varchar(3) DEFAULT NULL,
  `RENTAL_CURRENCY` varchar(3) DEFAULT NULL,
  `INCOMING_LOCATION` varchar(30) DEFAULT NULL,
  `OUTGOING_LOCATION` varchar(30) DEFAULT NULL,
  `PO_ROYALTY_LINE_NO` varchar(30) DEFAULT NULL,
  `ROYALTY_TYPE` varchar(30) DEFAULT NULL,
  `JSON_DATA` longtext,
  `RENTAL_XRATE` decimal(15,4) DEFAULT '1.0000',
  `ROYALTY_XRATE` decimal(15,4) DEFAULT '1.0000',
  `COST_TOTAL` decimal(15,2) DEFAULT '0.00',
  `COST_PER_PIECE` decimal(15,2) DEFAULT '0.00',
  `RENTAL_SYSCUR` decimal(15,2) DEFAULT '0.00',
  `ENDS_RATE_SYSCUR` decimal(15,2) DEFAULT '0.00',
  `INCLUDE_OUTBOUND_FREIGHT` char(1) DEFAULT 'N',
  `LICENSOR_CLOSE` char(30) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `NOTES` longtext,
  PRIMARY KEY (`RENTAL_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_RENTAL`
--

LOCK TABLES `GAUGE_RENTAL` WRITE;
/*!40000 ALTER TABLE `GAUGE_RENTAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAUGE_RENTAL` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_RENTAL_AI AFTER INSERT  ON GAUGE_RENTAL
  FOR EACH ROW 
  BEGIN
	/*UPDATE GAUGE SET RETURN_DATE=NEW.RETURN_DATE,ACQUIRED_DATE=NEW.RECEIPT_DATE WHERE ID=NEW.GAUGE_ID;*/
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_RENTAL_AU AFTER UPDATE on GAUGE_RENTAL
  FOR EACH ROW 
  BEGIN
	/*UPDATE GAUGE SET RETURN_DATE=NEW.RETURN_DATE,ACQUIRED_DATE=NEW.RECEIPT_DATE WHERE ID=NEW.GAUGE_ID; */
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `GAUGE_RENTAL_LINE`
--

DROP TABLE IF EXISTS `GAUGE_RENTAL_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_RENTAL_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RENTAL_ID` char(30) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `SALES_ORDER_REF` char(30) NOT NULL,
  `ORDER_ID` char(30) NOT NULL,
  `ORDER_LINE` char(30) NOT NULL,
  `OPERATION_REF` char(30) NOT NULL,
  `WO_QTY` char(30) NOT NULL,
  `COC_QTY` char(30) NOT NULL,
  `WO_RELEASE` datetime DEFAULT NULL,
  `WO_WANT` datetime DEFAULT NULL,
  `LICENSOR_JOB` char(30) DEFAULT NULL,
  `LICENSOR_USER_1` char(30) NOT NULL,
  `LICENSOR_USER_2` char(30) NOT NULL,
  `LICENSOR_USER_3` char(30) NOT NULL,
  `LICENSOR_USER_4` char(30) NOT NULL,
  `LICENSOR_USER_5` char(30) NOT NULL,
  `CUSTOMER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `WO_COMPLETED_QTY` char(30) DEFAULT NULL,
  `FIXED_QTY` varchar(30) DEFAULT NULL,
  `OPERATION_COST` varchar(30) DEFAULT NULL,
  `ZERO_QTY` varchar(15) DEFAULT NULL,
  `LINE_JSON_DATA` longtext,
  `RESOURCE_ID` varchar(15) DEFAULT NULL,
  `CALC_QTY` decimal(15,2) DEFAULT '0.00',
  `USER_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RENTAL_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_RENTAL_LINE`
--

LOCK TABLES `GAUGE_RENTAL_LINE` WRITE;
/*!40000 ALTER TABLE `GAUGE_RENTAL_LINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAUGE_RENTAL_LINE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_RENTAL_LINE_BU BEFORE UPDATE on GAUGE_RENTAL_LINE
  FOR EACH ROW 
  BEGIN
  /*
   DECLARE pENDS_RATE_SYSCUR DECIMAL(15,2);
   DECLARE pRENTAL_SYSCUR DECIMAL(15,2);
   DECLARE pROYALTY_QTY DECIMAL(15,2);
   DECLARE pCALC_END_QTY DECIMAL(15,2);
   DECLARE pCOC_QTY DECIMAL(15,2);
   DECLARE pCALC_QTY DECIMAL(15,2);
   
   DECLARE pCOMPLETED_QTY varchar(30);
   DECLARE pROYALTY_TYPE varchar(30);
   
   SELECT ENDS_RATE_SYSCUR,RENTAL_SYSCUR,ROYALTY_QTY,ROYALTY_TYPE FROM GAUGE_RENTAL WHERE RENTAL_ID=NEW.RENTAL_ID INTO pENDS_RATE_SYSCUR,pRENTAL_SYSCUR,pROYALTY_QTY,pROYALTY_TYPE;
   
   SELECT IFNULL(OPN.CALC_END_QTY,0),IFNULL(OPN.COMPLETED_QTY,0),IFNULL(WO.COC_QTY,0) FROM OPERATION OPN,WORK_ORDER WO WHERE OPN.WORKORDER_BASE_ID=WO.BASE_ID AND OPN.WORKORDER_SUB_ID=WO.SUB_ID AND OPN.WOREF=NEW.OPERATION_REF into pCALC_END_QTY,pCOMPLETED_QTY,pCOC_QTY;
   
   set NEW.WO_QTY = pCALC_END_QTY;
   SET NEW.COC_QTY = pCOC_QTY;
   SET NEW.WO_COMPLETED_QTY = pCOMPLETED_QTY;
   
   if pROYALTY_TYPE<>'ENDS-RATE' THEN
		set pCALC_QTY=1;
   END IF;
   if pROYALTY_TYPE='ENDS-RATE' THEN
		IF NEW.ZERO_QTY='YES' THEN
			set pCALC_QTY=0;
        END IF;
        IF NEW.ZERO_QTY<>'YES' THEN
			IF NEW.FIXED_QTY>0 THEN
				set pCALC_QTY=NEW.FIXED_QTY;
            END IF;
            IF NEW.FIXED_QTY<=0 THEN
				set pCALC_QTY=NEW.WO_COMPLETED_QTY;
            END IF;
            
        END IF;
        
   END IF;   
   SET NEW.CALC_QTY=pCALC_QTY;
   set NEW.OPERATION_COST=(pENDS_RATE_SYSCUR * NEW.CALC_QTY) + ((IFNULL(pRENTAL_SYSCUR,0)/pROYALTY_QTY) * NEW.CALC_QTY);
  */
   
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_RENTAL_LINE_AU AFTER UPDATE on GAUGE_RENTAL_LINE
  FOR EACH ROW 
  BEGIN
  
	-- UPDATE OPERATION OPN SET LICENSOR_JOB = NEW.LICENSOR_JOB, ACT_RENTAL_COST = NEW.OPERATION_COST WHERE WOREF=NEW.OPERATION_REF;
	/*UPDATE GAUGE SET RETURN_DATE=NEW.RETURN_DATE,ACQUIRED_DATE=NEW.RECEIPT_DATE WHERE ID=NEW.GAUGE_ID; */
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `GAUGE_REQUIREMENT_TYPE_1`
--

DROP TABLE IF EXISTS `GAUGE_REQUIREMENT_TYPE_1`;
/*!50001 DROP VIEW IF EXISTS `GAUGE_REQUIREMENT_TYPE_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `GAUGE_REQUIREMENT_TYPE_1` (
  `TITLE` tinyint NOT NULL,
  `VALUE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `GAUGE_REQUIREMENT_TYPE_2`
--

DROP TABLE IF EXISTS `GAUGE_REQUIREMENT_TYPE_2`;
/*!50001 DROP VIEW IF EXISTS `GAUGE_REQUIREMENT_TYPE_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `GAUGE_REQUIREMENT_TYPE_2` (
  `TITLE` tinyint NOT NULL,
  `VALUE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `GAUGE_RESET_NEXT_DUE`
--

DROP TABLE IF EXISTS `GAUGE_RESET_NEXT_DUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_RESET_NEXT_DUE` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANSACTION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `REASON` varchar(80) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `NEW_CAL_DATE` datetime DEFAULT NULL,
  `OLD_CAL_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  UNIQUE KEY `TRANSACTION_ID` (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_RESET_NEXT_DUE`
--

LOCK TABLES `GAUGE_RESET_NEXT_DUE` WRITE;
/*!40000 ALTER TABLE `GAUGE_RESET_NEXT_DUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAUGE_RESET_NEXT_DUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAUGE_STATUS`
--

DROP TABLE IF EXISTS `GAUGE_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_STATUS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ALLOW_ISSUE` varchar(1) DEFAULT NULL,
  `ALLOW_RECEIPT` varchar(1) DEFAULT NULL,
  `CHECK_IN` varchar(1) DEFAULT NULL,
  `CHECK_OUT` varchar(1) DEFAULT NULL,
  `CALIBRATE_IN` varchar(1) DEFAULT NULL,
  `CALIBRATE_OUT` varchar(1) DEFAULT NULL,
  `REPAIR_IN` varchar(1) DEFAULT NULL,
  `REPAIR_OUT` varchar(1) DEFAULT NULL,
  `INV_IN` varchar(1) DEFAULT NULL,
  `INV_OUT` varchar(1) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_STATUS`
--

LOCK TABLES `GAUGE_STATUS` WRITE;
/*!40000 ALTER TABLE `GAUGE_STATUS` DISABLE KEYS */;
INSERT INTO `GAUGE_STATUS` VALUES (1,'ACTIVE',NULL,NULL,NULL,'Y','Y','Y','Y','Y','Y','Y','Y',NULL,NULL,'2017-07-21 13:33:34',NULL,NULL),(2,'INACTIVE',NULL,NULL,NULL,'N','N','N','N','N','N','N','N',NULL,NULL,'2017-07-21 13:33:58',NULL,NULL);
/*!40000 ALTER TABLE `GAUGE_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAUGE_TRANS`
--

DROP TABLE IF EXISTS `GAUGE_TRANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_TRANS` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANSACTION_DATE` datetime DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `EMPLOYEE_ID` varchar(50) DEFAULT NULL,
  `DOC_ID` varchar(50) DEFAULT NULL,
  `VENDOR_ID` varchar(15) DEFAULT NULL,
  `PO_REF` varchar(50) DEFAULT NULL,
  `RECEIPT_REF` varchar(50) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `TYPE_VALUE` decimal(3,0) DEFAULT NULL,
  `NOTES` longtext,
  `RENTAL_ID` char(30) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  UNIQUE KEY `TRANSACTION_ID` (`TRANSACTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_TRANS`
--

LOCK TABLES `GAUGE_TRANS` WRITE;
/*!40000 ALTER TABLE `GAUGE_TRANS` DISABLE KEYS */;
INSERT INTO `GAUGE_TRANS` VALUES (1,'2017-07-21 00:00:00','INV-IN',NULL,NULL,NULL,NULL,NULL,'G001','2017-07-21 13:34:35','CLS',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `GAUGE_TRANS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_TRANS_USAGE_COUNT_BI BEFORE INSERT ON GAUGE_TRANS
FOR EACH ROW
BEGIN
	DECLARE vRENTAL_ID CHAR(30);

	IF NEW.TYPE='INV-IN' OR NEW.TYPE='INV_IN' THEN
		SELECT RENTAL_ID FROM GAUGE_RENTAL WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='OPEN' LIMIT 1 INTO vRENTAL_ID;
        SET NEW.RENTAL_ID=vRENTAL_ID;
    END IF;
	IF NEW.TYPE='INV-OUT' OR NEW.TYPE='INV_OUT' THEN
		SELECT RENTAL_ID FROM GAUGE_RENTAL WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='RECEIVED' LIMIT 1  INTO vRENTAL_ID;
        SET NEW.RENTAL_ID=vRENTAL_ID;
    END IF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_TRANS_USAGE_COUNT_AI AFTER INSERT ON GAUGE_TRANS
FOR EACH ROW
BEGIN
	DECLARE vTTL_COUNT decimal(5,0);
   	SELECT IFNULL(SUM(OP.CALC_END_QTY), 0) FROM OPERATION OP WHERE OP.WOREF IN (SELECT REPLACE(GT.DOC_ID, '.', '^') FROM GAUGE_TRANS GT WHERE GT.TYPE = 'JOB-OUT' AND gauge_id = NEW.GAUGE_ID) INTO vTTL_COUNT;
	IF NEW.TYPE='INV-IN' OR NEW.TYPE='INV_IN' THEN
		UPDATE GAUGE SET ACQUIRED_DATE=NEW.TRANSACTION_DATE,RETURN_DATE=NULL,STATUS='ACTIVE',ACTIVE='Y' WHERE ID=NEW.GAUGE_ID;
		/*UPDATE GAUGE_RENTAL SET RECEIPT_DATE=NEW.TRANSACTION_DATE,STATUS='RECEIVED' WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='OPEN';*/
		UPDATE GAUGE_RENTAL SET RECEIPT_DATE=NEW.TRANSACTION_DATE,STATUS='RECEIVED' WHERE RENTAL_ID=NEW.RENTAL_ID;
        
    END IF;
 	IF NEW.TYPE='INV-OUT' OR NEW.TYPE='INV_OUT' THEN
		UPDATE GAUGE SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='HOLD',ACTIVE='N' WHERE ID=NEW.GAUGE_ID;
        /*UPDATE GAUGE_RENTAL SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='RETURNED' WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='RECEIVED';*/
        UPDATE GAUGE_RENTAL SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='RETURNED' WHERE RENTAL_ID=NEW.RENTAL_ID;
	END IF;   
    UPDATE GAUGE SET CYCLE_COUNT=vTTL_COUNT,INV_STAT=NEW.TYPE WHERE ID=NEW.GAUGE_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_TRANS_USAGE_COUNT_BU BEFORE UPDATE ON GAUGE_TRANS
FOR EACH ROW
BEGIN
	
	DECLARE vRENTAL_ID VARCHAR(30);
	IF NEW.GAUGE_ID=OLD.GAUGE_ID THEN
    
		IF NEW.TYPE='INV-IN' OR NEW.TYPE='INV_IN' THEN
			SELECT RENTAL_ID FROM GAUGE_RENTAL WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='OPEN'  LIMIT 1 INTO vRENTAL_ID;
			SET NEW.RENTAL_ID=vRENTAL_ID;
		END IF;
		IF NEW.TYPE='INV-OUT' OR NEW.TYPE='INV_OUT' THEN
			SELECT RENTAL_ID FROM GAUGE_RENTAL WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='RECEIVED' LIMIT 1 INTO vRENTAL_ID;
			SET NEW.RENTAL_ID=vRENTAL_ID;
		END IF;
	
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER GAUGE_TRANS_USAGE_COUNT_AU AFTER UPDATE ON GAUGE_TRANS
FOR EACH ROW
BEGIN
	DECLARE vTTL_COUNT decimal(5,0);
    IF NEW.GAUGE_ID=OLD.GAUGE_ID THEN
		SELECT IFNULL(SUM(OP.CALC_END_QTY),0)
				FROM OPERATION OP 
					WHERE OP.WOREF in (SELECT REPLACE(GT.DOC_ID,'.','^') FROM GAUGE_TRANS GT WHERE 
					GT.TYPE='JOB-OUT' and gauge_id=NEW.GAUGE_ID) INTO vTTL_COUNT;
		UPDATE GAUGE SET CYCLE_COUNT=vTTL_COUNT WHERE ID=NEW.GAUGE_ID;
		IF NEW.TYPE='INV-IN' OR NEW.TYPE='INV_IN'  THEN
			UPDATE GAUGE SET ACQUIRED_DATE=NEW.TRANSACTION_DATE,RETURN_DATE=NULL,STATUS='ACTIVE',ACTIVE='Y' WHERE ID=NEW.GAUGE_ID;
			
			/*UPDATE GAUGE_RENTAL SET RECEIPT_DATE=NEW.TRANSACTION_DATE,STATUS='RECEIVED' WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='OPEN';*/
			UPDATE GAUGE_RENTAL SET RECEIPT_DATE=NEW.TRANSACTION_DATE,STATUS='RECEIVED' WHERE RENTAL_ID=NEW.RENTAL_ID ;
			
			UPDATE GAUGE_RENTAL SET RECEIPT_DATE=NEW.TRANSACTION_DATE WHERE RENTAL_ID=NEW.RENTAL_ID AND STATUS='RECEIVED';
		END IF;
		IF NEW.TYPE='INV-OUT' OR NEW.TYPE='INV_OUT' THEN
			UPDATE GAUGE SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='HOLD',ACTIVE='N' WHERE ID=NEW.GAUGE_ID;
			/*UPDATE GAUGE_RENTAL SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='RETURNED' WHERE GAUGE_ID=NEW.GAUGE_ID and STATUS='RECEIVED';*/
			UPDATE GAUGE_RENTAL SET RETURN_DATE=NEW.TRANSACTION_DATE,STATUS='RETURNED' WHERE RENTAL_ID=NEW.RENTAL_ID;
			
			
		END IF; 
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `GAUGE_TYPE`
--

DROP TABLE IF EXISTS `GAUGE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAUGE_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAUGE_TYPE`
--

LOCK TABLES `GAUGE_TYPE` WRITE;
/*!40000 ALTER TABLE `GAUGE_TYPE` DISABLE KEYS */;
INSERT INTO `GAUGE_TYPE` VALUES (1,'GT1','',NULL,NULL,'2017-07-21 13:32:49',NULL,NULL);
/*!40000 ALTER TABLE `GAUGE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INDIRECT`
--

DROP TABLE IF EXISTS `INDIRECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INDIRECT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GL_ACCOUNT_ID` varchar(30) DEFAULT NULL,
  `INDIRECT_CODE` varchar(1) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INDIRECT`
--

LOCK TABLES `INDIRECT` WRITE;
/*!40000 ALTER TABLE `INDIRECT` DISABLE KEYS */;
INSERT INTO `INDIRECT` VALUES (1,'INDIRECT','Indirect',NULL,NULL,NULL,NULL,'2017-07-21 09:10:06',NULL,NULL);
/*!40000 ALTER TABLE `INDIRECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `JOB_OPN`
--

DROP TABLE IF EXISTS `JOB_OPN`;
/*!50001 DROP VIEW IF EXISTS `JOB_OPN`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `JOB_OPN` (
  `RESOURCE_ID` tinyint NOT NULL,
  `OPN_WOREF` tinyint NOT NULL,
  `OP_STATUS` tinyint NOT NULL,
  `OP_CLOSE_DATE` tinyint NOT NULL,
  `OP_QTY` tinyint NOT NULL,
  `OP_COMPLETED_QTY` tinyint NOT NULL,
  `OP_BAL_QTY` tinyint NOT NULL,
  `LT_OPENJOB` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_TYPE` tinyint NOT NULL,
  `RESOURCE_DESC` tinyint NOT NULL,
  `COC_ID` tinyint NOT NULL,
  `COC_QUANTITY` tinyint NOT NULL,
  `COC_DATE` tinyint NOT NULL,
  `COC_STATUS` tinyint NOT NULL,
  `LATE` tinyint NOT NULL,
  `OTD` tinyint NOT NULL,
  `LATE_DAYS` tinyint NOT NULL,
  `SHIP_LATE` tinyint NOT NULL,
  `COST_QTY` tinyint NOT NULL,
  `OPN_COST_MATL` tinyint NOT NULL,
  `OPN_COST_SUBCON` tinyint NOT NULL,
  `OPN_COST_TOOLING` tinyint NOT NULL,
  `OPN_COST_OTHERS` tinyint NOT NULL,
  `OPN_COST_TOTAL` tinyint NOT NULL,
  `OPN_ACT_LABOR_COST` tinyint NOT NULL,
  `OPN_ACT_BURDEN_COST` tinyint NOT NULL,
  `ROWID` tinyint NOT NULL,
  `WO_CLASS` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `BASE_ID` tinyint NOT NULL,
  `LOT_ID` tinyint NOT NULL,
  `SPLIT_ID` tinyint NOT NULL,
  `SUB_ID` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DESIRED_QTY` tinyint NOT NULL,
  `RECEIVED_QTY` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `DESIRED_RLS_DATE` tinyint NOT NULL,
  `DESIRED_WANT_DATE` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `ENGINEERED_BY` tinyint NOT NULL,
  `ENGINEERED_DATE` tinyint NOT NULL,
  `DRAWING_ID` tinyint NOT NULL,
  `DRAWING_REV_NO` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `COMMODITY_CODE` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `PRINTED_DATE` tinyint NOT NULL,
  `DRAWING_FILE` tinyint NOT NULL,
  `WAREHOUSE_ID` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `PART_ALIAS` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `CUSTOMER_ID` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `EST_COST` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `SALES_ORDER_LINE_NO` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `PART_REV_NO` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QC_TEST_ID` tinyint NOT NULL,
  `COC_QTY` tinyint NOT NULL,
  `PRIORITY` tinyint NOT NULL,
  `LEAD_TIME` tinyint NOT NULL,
  `CUSTOMER_PO` tinyint NOT NULL,
  `CUSTOMER_PO_LINE_NO` tinyint NOT NULL,
  `CUSTOMER_PART_ID` tinyint NOT NULL,
  `TYPE_CLASS` tinyint NOT NULL,
  `FLAGS` tinyint NOT NULL,
  `SHIPPED_QTY` tinyint NOT NULL,
  `WO_TYPE` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `SALES_ORDER_NOTES` tinyint NOT NULL,
  `SALES_ORDER_REF` tinyint NOT NULL,
  `SALES_ORDER_REV_NO` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `ACT_TOTAL_COST` tinyint NOT NULL,
  `GRAND_TOTAL_COST` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL,
  `ESTIMATOR_COST` tinyint NOT NULL,
  `OTD_CODE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `JOB_OPN_MIN_RLS_OPN`
--

DROP TABLE IF EXISTS `JOB_OPN_MIN_RLS_OPN`;
/*!50001 DROP VIEW IF EXISTS `JOB_OPN_MIN_RLS_OPN`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `JOB_OPN_MIN_RLS_OPN` (
  `RESOURCE_ID` tinyint NOT NULL,
  `OPN_WOREF` tinyint NOT NULL,
  `OP_STATUS` tinyint NOT NULL,
  `OP_CLOSE_DATE` tinyint NOT NULL,
  `OP_QTY` tinyint NOT NULL,
  `OP_COMPLETED_QTY` tinyint NOT NULL,
  `OP_BAL_QTY` tinyint NOT NULL,
  `LT_OPENJOB` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_TYPE` tinyint NOT NULL,
  `RESOURCE_DESC` tinyint NOT NULL,
  `COC_ID` tinyint NOT NULL,
  `COC_QUANTITY` tinyint NOT NULL,
  `COC_DATE` tinyint NOT NULL,
  `COC_STATUS` tinyint NOT NULL,
  `LATE` tinyint NOT NULL,
  `OTD` tinyint NOT NULL,
  `LATE_DAYS` tinyint NOT NULL,
  `SHIP_LATE` tinyint NOT NULL,
  `COST_QTY` tinyint NOT NULL,
  `OPN_COST_MATL` tinyint NOT NULL,
  `OPN_COST_SUBCON` tinyint NOT NULL,
  `OPN_COST_TOOLING` tinyint NOT NULL,
  `OPN_COST_OTHERS` tinyint NOT NULL,
  `OPN_COST_TOTAL` tinyint NOT NULL,
  `OPN_ACT_LABOR_COST` tinyint NOT NULL,
  `OPN_ACT_BURDEN_COST` tinyint NOT NULL,
  `ROWID` tinyint NOT NULL,
  `WO_CLASS` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `BASE_ID` tinyint NOT NULL,
  `LOT_ID` tinyint NOT NULL,
  `SPLIT_ID` tinyint NOT NULL,
  `SUB_ID` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DESIRED_QTY` tinyint NOT NULL,
  `RECEIVED_QTY` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `DESIRED_RLS_DATE` tinyint NOT NULL,
  `DESIRED_WANT_DATE` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `ENGINEERED_BY` tinyint NOT NULL,
  `ENGINEERED_DATE` tinyint NOT NULL,
  `DRAWING_ID` tinyint NOT NULL,
  `DRAWING_REV_NO` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `COMMODITY_CODE` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `PRINTED_DATE` tinyint NOT NULL,
  `DRAWING_FILE` tinyint NOT NULL,
  `WAREHOUSE_ID` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `PART_ALIAS` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `CUSTOMER_ID` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `EST_COST` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `SALES_ORDER_LINE_NO` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `PART_REV_NO` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QC_TEST_ID` tinyint NOT NULL,
  `COC_QTY` tinyint NOT NULL,
  `PRIORITY` tinyint NOT NULL,
  `LEAD_TIME` tinyint NOT NULL,
  `CUSTOMER_PO` tinyint NOT NULL,
  `CUSTOMER_PO_LINE_NO` tinyint NOT NULL,
  `CUSTOMER_PART_ID` tinyint NOT NULL,
  `TYPE_CLASS` tinyint NOT NULL,
  `FLAGS` tinyint NOT NULL,
  `SHIPPED_QTY` tinyint NOT NULL,
  `WO_TYPE` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `SALES_ORDER_NOTES` tinyint NOT NULL,
  `SALES_ORDER_REF` tinyint NOT NULL,
  `SALES_ORDER_REV_NO` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `ACT_TOTAL_COST` tinyint NOT NULL,
  `GRAND_TOTAL_COST` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL,
  `ESTIMATOR_COST` tinyint NOT NULL,
  `OTD_CODE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `JOB_PLAN`
--

DROP TABLE IF EXISTS `JOB_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JOB_PLAN` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RESOURCE_ID` varchar(15) NOT NULL,
  `WOREF` varchar(50) NOT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB_PLAN`
--

LOCK TABLES `JOB_PLAN` WRITE;
/*!40000 ALTER TABLE `JOB_PLAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `JOB_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `JOB_PLAN_VIEW1`
--

DROP TABLE IF EXISTS `JOB_PLAN_VIEW1`;
/*!50001 DROP VIEW IF EXISTS `JOB_PLAN_VIEW1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `JOB_PLAN_VIEW1` (
  `RESOURCE_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `JOB_TEMPLATE`
--

DROP TABLE IF EXISTS `JOB_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JOB_TEMPLATE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `RESOURCE_ID` varchar(15) NOT NULL,
  `SETUP_HRS` decimal(8,3) DEFAULT NULL,
  `RUN` decimal(15,8) DEFAULT NULL,
  `RUN_TYPE` varchar(15) NOT NULL,
  `RUN_HRS` decimal(7,2) DEFAULT NULL,
  `CALC_START_QTY` decimal(14,4) DEFAULT NULL,
  `CALC_END_QTY` decimal(14,4) DEFAULT NULL,
  `SETUP_COMPLETED` varchar(1) NOT NULL,
  `RUN_QTY_PER_CYCLE` decimal(14,4) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `SERVICE_ID` varchar(15) DEFAULT NULL,
  `BUR_PER_HR_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PERCENT_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PER_UNIT_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PER_OPERATION` decimal(15,2) DEFAULT '0.00',
  `QTY_PER` decimal(15,8) DEFAULT '1.00000000',
  `LONG_SPEC` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(50) DEFAULT NULL,
  `COST_PER_HR` decimal(15,2) DEFAULT '0.00',
  `JOB_PLAN_SEQ` int(11) DEFAULT NULL,
  `LT_OPENJOB` varchar(1) DEFAULT NULL,
  `JOB_PLAN_HRS` int(11) DEFAULT '0',
  `HTYPE` varchar(255) DEFAULT NULL,
  `OP_DATA` longtext,
  `RESOURCE_CLASS_ID` varchar(15) DEFAULT NULL,
  `SPEC` longtext,
  `MATERIAL_SPEC` longtext,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `COST_UM` varchar(15) DEFAULT NULL,
  `COST_QTY` decimal(15,2) DEFAULT NULL,
  `COST_MATL` decimal(15,2) DEFAULT NULL,
  `COST_SUBCON` decimal(15,2) DEFAULT NULL,
  `COST_TOTAL` decimal(15,2) DEFAULT NULL,
  `NCR_ID` varchar(30) DEFAULT NULL,
  `COST_TOOLING` decimal(15,2) DEFAULT '0.00',
  `COST_OTHERS` decimal(15,2) DEFAULT '0.00',
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB_TEMPLATE`
--

LOCK TABLES `JOB_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `JOB_TEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JOB_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `JOB_TRAVELLER`
--

DROP TABLE IF EXISTS `JOB_TRAVELLER`;
/*!50001 DROP VIEW IF EXISTS `JOB_TRAVELLER`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `JOB_TRAVELLER` (
  `BASE_ID` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `SALES_ORDER_LINE_NO` tinyint NOT NULL,
  `CUSTOMER_ID` tinyint NOT NULL,
  `CUSTOMER_PO` tinyint NOT NULL,
  `CUSTOMER_PO_LINE_NO` tinyint NOT NULL,
  `SO_REV_NO` tinyint NOT NULL,
  `CUST_PART_ID` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DESIRED_QTY` tinyint NOT NULL,
  `DESIRED_WANT_DATE` tinyint NOT NULL,
  `DRAWING_ID` tinyint NOT NULL,
  `DRAWING_REV_NO` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `CALC_END_QTY` tinyint NOT NULL,
  `CALC_START_QTY` tinyint NOT NULL,
  `SETUP_HRS` tinyint NOT NULL,
  `RUN_HRS` tinyint NOT NULL,
  `WO_LONG_SPEC` tinyint NOT NULL,
  `WO_USER_1` tinyint NOT NULL,
  `WO_USER_2` tinyint NOT NULL,
  `WO_USER_3` tinyint NOT NULL,
  `WO_USER_4` tinyint NOT NULL,
  `WO_USER_5` tinyint NOT NULL,
  `WO_USER_6` tinyint NOT NULL,
  `WO_USER_7` tinyint NOT NULL,
  `WO_USER_8` tinyint NOT NULL,
  `WO_USER_9` tinyint NOT NULL,
  `OP_USER_1` tinyint NOT NULL,
  `OP_USER_2` tinyint NOT NULL,
  `OP_USER_3` tinyint NOT NULL,
  `OP_USER_4` tinyint NOT NULL,
  `OP_USER_5` tinyint NOT NULL,
  `OP_SPEC` tinyint NOT NULL,
  `MATERIAL_SPEC` tinyint NOT NULL,
  `SUB_ID` tinyint NOT NULL,
  `PART_DESCRIPTION` tinyint NOT NULL,
  `ENGINEERED_BY` tinyint NOT NULL,
  `ENGINEERED_DATE` tinyint NOT NULL,
  `QPLAN_NO` tinyint NOT NULL,
  `PP_NO` tinyint NOT NULL,
  `APPROVAL` tinyint NOT NULL,
  `OPN_WOREF` tinyint NOT NULL,
  `CUST_NAME` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `JSON_DATA`
--

DROP TABLE IF EXISTS `JSON_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JSON_DATA` (
  `ID` varchar(15) NOT NULL,
  `JSON` longtext NOT NULL,
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `DATA_KEY` varchar(20) NOT NULL DEFAULT '',
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`,`DATA_KEY`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=132612 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JSON_DATA`
--

LOCK TABLES `JSON_DATA` WRITE;
/*!40000 ALTER TABLE `JSON_DATA` DISABLE KEYS */;
INSERT INTO `JSON_DATA` VALUES ('plan','%7B%22class%22%3A%22%22%2C%22desc%22%3A%22Assembly%22%2C%22idx%22%3A0%2C%22units%22%3A1%2C%22wcap%22%3A%5B8%2C8%2C8%2C8%2C8%2C8%2C8%5D%2C%22days%22%3A%7B%2220171101%22%3A%7B%22id%22%3A%2220171101%22%2C%22dow%22%3A3%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A7.983%2C%22acap%22%3A8%2C%22opns%22%3A%5B%22J-00002%5E0%5E10%22%5D%2C%22len%22%3A1%7D%2C%2220171102%22%3A%7B%22id%22%3A%2220171102%22%2C%22dow%22%3A4%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171103%22%3A%7B%22id%22%3A%2220171103%22%2C%22dow%22%3A5%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171104%22%3A%7B%22id%22%3A%2220171104%22%2C%22dow%22%3A6%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171105%22%3A%7B%22id%22%3A%2220171105%22%2C%22dow%22%3A0%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171106%22%3A%7B%22id%22%3A%2220171106%22%2C%22dow%22%3A1%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171107%22%3A%7B%22id%22%3A%2220171107%22%2C%22dow%22%3A2%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171108%22%3A%7B%22id%22%3A%2220171108%22%2C%22dow%22%3A3%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171109%22%3A%7B%22id%22%3A%2220171109%22%2C%22dow%22%3A4%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171110%22%3A%7B%22id%22%3A%2220171110%22%2C%22dow%22%3A5%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171111%22%3A%7B%22id%22%3A%2220171111%22%2C%22dow%22%3A6%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171112%22%3A%7B%22id%22%3A%2220171112%22%2C%22dow%22%3A0%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171113%22%3A%7B%22id%22%3A%2220171113%22%2C%22dow%22%3A1%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171114%22%3A%7B%22id%22%3A%2220171114%22%2C%22dow%22%3A2%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171115%22%3A%7B%22id%22%3A%2220171115%22%2C%22dow%22%3A3%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171116%22%3A%7B%22id%22%3A%2220171116%22%2C%22dow%22%3A4%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171117%22%3A%7B%22id%22%3A%2220171117%22%2C%22dow%22%3A5%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171118%22%3A%7B%22id%22%3A%2220171118%22%2C%22dow%22%3A6%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171119%22%3A%7B%22id%22%3A%2220171119%22%2C%22dow%22%3A0%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171120%22%3A%7B%22id%22%3A%2220171120%22%2C%22dow%22%3A1%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171121%22%3A%7B%22id%22%3A%2220171121%22%2C%22dow%22%3A2%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171122%22%3A%7B%22id%22%3A%2220171122%22%2C%22dow%22%3A3%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171123%22%3A%7B%22id%22%3A%2220171123%22%2C%22dow%22%3A4%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171124%22%3A%7B%22id%22%3A%2220171124%22%2C%22dow%22%3A5%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171125%22%3A%7B%22id%22%3A%2220171125%22%2C%22dow%22%3A6%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171126%22%3A%7B%22id%22%3A%2220171126%22%2C%22dow%22%3A0%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171127%22%3A%7B%22id%22%3A%2220171127%22%2C%22dow%22%3A1%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%2C%2220171128%22%3A%7B%22id%22%3A%2220171128%22%2C%22dow%22%3A2%2C%22units%22%3A1%2C%22dhrs%22%3A8%2C%22dcap%22%3A8%2C%22acap%22%3A8%2C%22opns%22%3A%5B%5D%2C%22len%22%3A0%7D%7D%2C%22olpct%22%3A0%2C%22active%22%3Atrue%2C%22capor%22%3A%7B%7D%7D',132599,'ASSEMBLY',NULL,NULL,'2017-07-21 10:08:52',NULL,NULL),('vars','%7B%22horiz%22%3A%224.00%22%2C%22sqlops%22%3A%221000%22%2C%22zerohrs_ok%22%3A%22y%22%2C%22hrscalc%22%3A%22HRS%22%2C%22enable_test%22%3A%22n%22%2C%22NOzeros%22%3A%22-1%22%2C%22fscreen%22%3A%22n%22%2C%22off_col%22%3A%22bg-gry%22%2C%22cor_col%22%3A%22bg-cyn%22%2C%22pln_col%22%3A%22bg-grn%22%2C%22unp_col%22%3A%22bg-yel%22%2C%22act_col%22%3A%22bg-blu%22%2C%22flt_col%22%3A%22bg-pur%22%7D',132596,'bhave',NULL,NULL,'2017-07-20 18:20:14',NULL,NULL),('vars','%5B20171101%2C20171102%2C20171103%2C20171104%2C20171105%2C20171106%2C20171107%2C20171108%2C20171109%2C20171110%2C20171111%2C20171112%2C20171113%2C20171114%2C20171115%2C20171116%2C20171117%2C20171118%2C20171119%2C20171120%2C20171121%2C20171122%2C20171123%2C20171124%2C20171125%2C20171126%2C20171127%2C20171128%5D',132581,'days',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%5B%22Sun%22%2C%22Mon%22%2C%22Tue%22%2C%22Wed%22%2C%22Thu%22%2C%22Fri%22%2C%22Sat%22%2C%22Sun%22%5D',132579,'dow',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%22n%22',132583,'groupstat',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','28',132582,'horiz',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%5B%22Jan%22%2C%22Feb%22%2C%22Mar%22%2C%22Apr%22%2C%22May%22%2C%22Jun%22%2C%22Jul%22%2C%22Aug%22%2C%22Sep%22%2C%22Oct%22%2C%22Nov%22%2C%22Dec%22%5D',132580,'moy',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%7B%22day%22%3A%22Thu%22%2C%22dow%22%3A4%2C%22off%22%3Afalse%2C%22date%22%3A%222017-07-20T04%3A58%3A19.730Z%22%2C%22yymmdd%22%3A%221170720%22%2C%22yyyymmdd%22%3A%2220170720%22%2C%22dmon%22%3A%2220%20Jul%22%7D',132587,'now',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%7B%22error%22%3Afalse%2C%22msg%22%3A%22%22%2C%22warn%22%3A%22%22%7D',132585,'ok',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%5B%5D',132597,'resids',NULL,NULL,'2017-07-20 18:20:14',NULL,NULL),('vars','1000',132584,'sqlops',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('vars','%7B%22error%22%3Afalse%2C%22plan%22%3A%7B%22warn%22%3A%22%22%2C%22busy%22%3Afalse%2C%22stamp%22%3A1509505207619%2C%22opstot%22%3A1%2C%22jobtot%22%3A1%7D%2C%22apply%22%3A%7B%22busy%22%3Afalse%2C%22stamp%22%3A1509505207626%2C%22opstot%22%3A1%2C%22durn%22%3A85%2C%22msup%22%3A%2285.00%22%7D%7D',132586,'stats',NULL,NULL,'2017-07-20 12:58:19',NULL,NULL),('xops','%7B%22plan%22%3A%5B%7B%22wor%22%3A%22J-00002%5E0%5E10%22%2C%22sort%22%3A%22J-00002.000.0010%22%2C%22mode%22%3A%22plan%22%2C%22data%22%3A%7B%22zerohrs%22%3Atrue%2C%22fixed%22%3A20170719%7D%2C%22brel%22%3A20170721%2C%22bwant%22%3A20170719%2C%22rid%22%3A%22ASSEMBLY%22%2C%22hrs%22%3A0.0167%2C%22sdate%22%3A%2220171101%22%2C%22edate%22%3A20171101%2C%22astart%22%3A0%2C%22class%22%3A%22fixed%22%2C%22prio%22%3A100%2C%22ldays%22%3A0%2C%22chi%22%3A%7B%2220171101-0%22%3A0.017%7D%7D%5D%2C%22uldata%22%3A%7B%7D%7D',132611,'ASSEMBLY',NULL,NULL,'2017-07-21 10:24:29',NULL,NULL);
/*!40000 ALTER TABLE `JSON_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LABOR_TICKET`
--

DROP TABLE IF EXISTS `LABOR_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LABOR_TICKET` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WORKORDER_TYPE` varchar(1) DEFAULT NULL,
  `WORKORDER_BASE_ID` varchar(30) DEFAULT NULL,
  `WORKORDER_LOT_ID` varchar(3) DEFAULT NULL,
  `WORKORDER_SPLIT_ID` varchar(3) DEFAULT NULL,
  `WORKORDER_SUB_ID` varchar(3) DEFAULT NULL,
  `OPERATION_SEQ_NO` smallint(6) DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT '',
  `SETUP_COMPLETED` varchar(1) DEFAULT '',
  `EMPLOYEE_ID` varchar(15) NOT NULL,
  `DEPARTMENT_ID` varchar(15) NOT NULL,
  `RESOURCE_ID` varchar(15) DEFAULT NULL,
  `HOURLY_COST` decimal(15,2) DEFAULT NULL,
  `CLOCK_IN` datetime DEFAULT NULL,
  `CLOCK_OUT` datetime DEFAULT NULL,
  `HOURS_WORKED` decimal(7,2) DEFAULT NULL,
  `HOURS_BREAK` decimal(7,2) DEFAULT '0.00',
  `MULTIPLIER_1` decimal(5,3) DEFAULT NULL,
  `MULTIPLIER_2` decimal(5,3) DEFAULT NULL,
  `GOOD_QTY` decimal(14,4) NOT NULL,
  `BAD_QTY` decimal(14,4) DEFAULT '0.0000',
  `TRANSACTION_DATE` datetime NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(20) DEFAULT NULL,
  `BURDEN_PER_HR` decimal(15,2) DEFAULT NULL,
  `BURDEN_PERCENT` decimal(6,3) DEFAULT NULL,
  `BUR_PER_OPERATION` decimal(15,2) DEFAULT NULL,
  `POSTING_CANDIDATE` varchar(1) DEFAULT '',
  `HOURS_OVERALL` decimal(7,2) DEFAULT NULL,
  `HOURS_PREVIOUS` decimal(7,2) DEFAULT NULL,
  `INDIRECT_CODE` varchar(1) DEFAULT '',
  `INDIRECT_ID` varchar(15) DEFAULT NULL,
  `SHIFT_DATE` datetime DEFAULT NULL,
  `BREAK_CLOCKIN` datetime DEFAULT NULL,
  `HOURS_BREAK_IND` decimal(5,2) DEFAULT NULL,
  `ACT_LABOR_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_BURDEN_COST` decimal(15,2) DEFAULT '0.00',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `ACT_CLOCK_IN` datetime DEFAULT NULL,
  `ACT_CLOCK_OUT` datetime DEFAULT NULL,
  `STARTING_TRANS` varchar(1) DEFAULT NULL,
  `BURDEN_PER_UNIT` decimal(15,6) DEFAULT NULL,
  `UNIT_COST` decimal(15,6) DEFAULT NULL,
  `GL_ACCT_ID` varchar(30) DEFAULT NULL,
  `EARNING_CODE_ID` varchar(15) DEFAULT NULL,
  `BUDGET_ACCT_YEAR` decimal(4,0) DEFAULT NULL,
  `BUDGET_ACCT_PERIOD` decimal(2,0) DEFAULT NULL,
  `MILESTONE_TXN_ID` int(11) DEFAULT NULL,
  `MILESTONE_UPDATED` varchar(1) DEFAULT NULL,
  `COST_CATEGORY_ID` varchar(15) DEFAULT NULL,
  `AUTOGEN_TXN_ID` int(11) DEFAULT NULL,
  `UNADJ_CLOCK_IN` datetime DEFAULT NULL,
  `UNADJ_CLOCK_OUT` datetime DEFAULT NULL,
  `DEVIATION_ID` varchar(15) DEFAULT NULL,
  `DATA_COLL_COMP` varchar(1) DEFAULT NULL,
  `PRD_INSP_PLAN_ID` varchar(16) DEFAULT NULL,
  `ACT_RATE_ID` varchar(15) DEFAULT NULL,
  `ACT_PERIOD_ID` varchar(15) DEFAULT NULL,
  `RETRO_RATE_ID` varchar(15) DEFAULT NULL,
  `RETRO_PERIOD_ID` varchar(15) DEFAULT NULL,
  `RETRO_RATE_CODE` varchar(1) DEFAULT NULL,
  `SITE_ID` varchar(30) DEFAULT NULL,
  `WOREF` varchar(38) DEFAULT NULL,
  `EVENT_COMPLETED` varchar(1) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  UNIQUE KEY `TRANSACTION_ID` (`TRANSACTION_ID`),
  KEY `PK_LABOR_TICKET_1` (`WOREF`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LABOR_TICKET`
--

LOCK TABLES `LABOR_TICKET` WRITE;
/*!40000 ALTER TABLE `LABOR_TICKET` DISABLE KEYS */;
INSERT INTO `LABOR_TICKET` VALUES (1,NULL,'J-00002','1','0','0',10,'R','N','DIS','IT','ASSEMBLY',0.00,'2017-07-21 10:47:00','2017-07-21 10:47:00',0.00,0.00,NULL,NULL,0.0000,0.0000,'2017-07-21 00:00:00','PUREMFG','CLS',0.00,NULL,NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,0.00,0.00,'2017-07-21 10:47:26','2017-07-21 10:47:00','2017-07-21 10:47:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'J-00002^0^10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `LABOR_TICKET` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_BI BEFORE INSERT ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DECLARE vDEPARTMENT_ID VARCHAR(15);
    DECLARE vHOURLY_COST  DEC(15,2) ;
    DECLARE vRESOURCE_ID VARCHAR(15);
    DECLARE vBURDEN_PER_HR  DEC(15,2) ;
    
    DECLARE IN_TIME DATETIME;
    DECLARE OUT_TIME DATETIME;
	DECLARE vSHIFT_ID VARCHAR(15);
    DECLARE vBREAK DOUBLE;
	DECLARE vSHIFT_START DATETIME;
    DECLARE vSHIFT_END DATETIME;
    DECLARE vMEAL_START DATETIME;
    DECLARE vMEAL_END DATETIME;
    DECLARE vBREAK1_START DATETIME;
    DECLARE vBREAK1_END DATETIME;
    DECLARE vBREAK2_START DATETIME;
    DECLARE vBREAK2_END DATETIME;
    DECLARE vBREAK3_START DATETIME;
    DECLARE vBREAK3_END DATETIME;
    DECLARE vhrs DOUBLE;
    
    SET NEW.WOREF=CONCAT(NEW.WORKORDER_BASE_ID,'^',NEW.WORKORDER_SUB_ID,'^',NEW.OPERATION_SEQ_NO);
    
    SELECT DEPARTMENT_ID,BASE_PAY_RATE,SHIFT_ID FROM EMPLOYEE WHERE ID=NEW.EMPLOYEE_ID INTO vDEPARTMENT_ID,vHOURLY_COST,vSHIFT_ID;
    
    SET NEW.DEPARTMENT_ID=vDEPARTMENT_ID;
    SET NEW.HOURLY_COST=vHOURLY_COST;
    
    
    SELECT RESOURCE_ID FROM OPERATION WHERE WOREF=NEW.WOREF INTO vRESOURCE_ID;
    SET NEW.RESOURCE_ID=vRESOURCE_ID;
    
    SELECT COST_PER_HR FROM SHOP_RESOURCE WHERE ID=vRESOURCE_ID INTO vBURDEN_PER_HR;
    SET NEW.BURDEN_PER_HR=vBURDEN_PER_HR;
    
    IF IFNULL(NEW.HOURS_WORKED,'999')<>'999' THEN

        
        SET IN_TIME=NEW.ACT_CLOCK_IN;
        SET OUT_TIME=NEW.ACT_CLOCK_OUT;
    SELECT 
		CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(SHIFT_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(SHIFT_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(MEAL_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(MEAL_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK1_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK1_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK2_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK2_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK3_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK3_END,'%H:%i:%s'))  
				FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID
			INTO vSHIFT_START,vSHIFT_END,vMEAL_START,vMEAL_END,vBREAK1_START,vBREAK1_END,vBREAK2_START,vBREAK2_END,vBREAK3_START,vBREAK3_END;
			
	SET vBREAK=0;
     IF IN_TIME < vMEAL_START AND OUT_TIME > vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vMEAL_START,vMEAL_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vMEAL_START AND OUT_TIME>=vMEAL_START AND OUT_TIME<= vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vMEAL_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vMEAL_START AND OUT_TIME<= vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vMEAL_START AND IN_TIME<=vMEAL_END AND OUT_TIME> vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vMEAL_END)/60 INTO vBREAK;
    END IF; 
    

    IF IN_TIME < vBREAK1_START AND OUT_TIME > vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK1_START,vBREAK1_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK1_START AND OUT_TIME>=vBREAK1_START AND OUT_TIME<= vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK1_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK1_START AND OUT_TIME<= vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK1_START AND IN_TIME<=vBREAK1_END AND OUT_TIME> vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK1_END)/60 INTO vBREAK;
    END IF; 


    IF IN_TIME < vBREAK2_START AND OUT_TIME > vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK2_START,vBREAK2_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK2_START AND OUT_TIME>=vBREAK2_START AND OUT_TIME<= vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK2_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK2_START AND OUT_TIME<= vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK2_START AND IN_TIME<=vBREAK2_END AND OUT_TIME> vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK2_END)/60 INTO vBREAK;
    END IF; 
    
    IF IN_TIME < vBREAK3_START AND OUT_TIME > vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK3_START,vBREAK3_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK3_START AND OUT_TIME>=vBREAK3_START AND OUT_TIME<= vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK3_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK3_START AND OUT_TIME<= vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK3_START AND IN_TIME<=vBREAK3_END AND OUT_TIME> vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK3_END)/60 INTO vBREAK;
    END IF; 
    
		
        SELECT TIMESTAMPDIFF(MINUTE,NEW.CLOCK_IN,NEW.CLOCK_OUT)/60 INTO vhrs;
        
		SET NEW.HOURS_BREAK=vBREAK;
		SET NEW.HOURS_WORKED=vhrs;
		
        if (vhrs-vBREAK)>0 THEN
     		SET NEW.ACT_LABOR_COST=(ROUND(vhrs,2)-ROUND(vBREAK,2)) * vHOURLY_COST;
		    SET NEW.ACT_BURDEN_COST=(ROUND(vhrs,2)-ROUND(vBREAK,2))  *vBURDEN_PER_HR;       
        END IF;
        
        if (vhrs-vBREAK)<=0 THEN
    		SET NEW.ACT_LABOR_COST=0 * vHOURLY_COST;
		    SET NEW.ACT_BURDEN_COST=0 *vBURDEN_PER_HR;
        END IF;
        
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_BD BEFORE DELETE ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DELETE FROM DIS_EMP_STATUS WHERE PENDING_ID=OLD.TRANSACTION_ID AND TX_TYPE='LT';
    DELETE FROM DIS_EMP_STATUS WHERE EMPLOYEE_ID IS NULL;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_AI AFTER INSERT ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DECLARE vLAST_SEQ_NO SMALLINT ;
	DECLARE vLAST2_SEQ_NO SMALLINT ;
	DECLARE vWO_TYPE VARCHAR(15);
	DECLARE vWO_COMPLETED_QTY DECIMAL(14,4);
	DECLARE vWO_SHIPPED_QTY DECIMAL(14,4);
    DECLARE vDEPARTMENT_ID VARCHAR(15);
    
    DECLARE vCALC_END_QTY              DEC(14,4) ;
	DECLARE vCOMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_COMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_DEVIATED_QTY             DEC(14,4) ;
	DECLARE vEST_LABOR_COST            DEC(15,2) ;
	DECLARE vEST_BURDEN_COST           DEC(15,2) ;
	DECLARE vSTATUS                    CHAR ;
	DECLARE vCLOSE_DATE                DATETIME ;
	DECLARE vNewCompletedQty           DEC(14,4) ;
	DECLARE vQtyOver                   DEC(14,4) ;
	DECLARE vGOOD_QTY                  DEC(14,4) ;
	DECLARE vTotalLaborCost            DEC(15,2) ;
	DECLARE vTotalBurdenCost           DEC(15,2) ;
	DECLARE vLaborCost                 DEC(15,2) ;
	DECLARE vBurdenCost                DEC(15,2) ;
	DECLARE vHOURS_WORKED              DEC(7,2) ;
	DECLARE vHOURLY_COST               DEC(15,2) ;
	DECLARE vBAD_QTY                   DEC(14,4) ;
	DECLARE vUNIT_COST                 DEC(15,6) ;
	DECLARE vBURDEN_PERCENT            DEC(6,3) ;
	DECLARE vBURDEN_PER_HR             DEC(15,2) ;
	DECLARE vBURDEN_PER_UNIT           DEC(15,6) ;
	DECLARE vBUR_PER_OPERATION         DEC(15,2) ;
	DECLARE vACT_LABOR_COST            DEC(15,2) ;
	DECLARE vACT_BURDEN_COST           DEC(15,2) ;
	DECLARE vSetupHrs                  DEC(7,2) ;
	DECLARE vRunHrs                    DEC(7,2) ;
	DECLARE vTRANSACTION_DATE          DATETIME ;
	DECLARE vEMPLOYEE_ID				VARCHAR(15);

	DECLARE vRESOURCE_ID				VARCHAR(15);
	DECLARE vIN_TIME					DATETIME;
	DECLARE vOUT_TIME					DATETIME;
	DECLARE vLT_OPENJOB					VARCHAR(1);
	DECLARE vNCR_ID						VARCHAR(30);
	DECLARE vNCR_STATUS					VARCHAR(15);
	DECLARE vOP_COUNT				   INT;
	DECLARE vOP_CLOSE_COUNT            INT;
	DECLARE vOP_OPENJOB					int;


	DECLARE vTRANS_TYPE VARCHAR(15)  ;
    DECLARE vWORK_ID VARCHAR(30) ; 
	DECLARE vLOT_ID VARCHAR(3) ;
	DECLARE vSPLIT_ID VARCHAR(3);
	DECLARE vSUB_ID VARCHAR(3);
	DECLARE vOP_SEQ_NO INT;
    DECLARE vTRANS_DATETIME DATETIME;

    SET vTRANS_TYPE=NEW.TYPE;
    SET vWORK_ID=NEW.WORKORDER_BASE_ID;
    SET vLOT_ID=NEW.WORKORDER_LOT_ID;
    SET vSPLIT_ID=NEW.WORKORDER_SPLIT_ID;
    SET vSUB_ID=NEW.WORKORDER_SUB_ID;
    SET vOP_SEQ_NO=NEW.OPERATION_SEQ_NO;
    SET vTRANS_DATETIME=NEW.CREATE_DATE;
    
    SET vLT_OPENJOB='0';
    
	IF IFNULL(NEW.HOURS_WORKED ,99999)=99999 THEN
		BEGIN
			SET vLT_OPENJOB='1';
			DELETE FROM DIS_EMP_STATUS WHERE PENDING_ID=NEW.TRANSACTION_ID AND TX_TYPE='LT';
            IF IFNULL(NEW.BREAK_CLOCKIN,'ZZZ')<>'ZZZ' THEN
				SET vTRANS_TYPE='B';
			END IF;
            
			INSERT INTO DIS_EMP_STATUS(EMPLOYEE_ID,TRANS_TYPE,TRANS_DATETIME,JOB_TYPE,JOB_ID,pending_id,WO_BASE_ID,WO_LOT_ID,WO_SPLIT_ID,WO_SUB_ID,WO_SEQ_NO,TX_TYPE,INDIRECT_ID)
			VALUES(NEW.EMPLOYEE_ID,vTRANS_TYPE,vTRANS_DATETIME,vTRANS_TYPE,CONCAT(vWORK_ID,'$',vLOT_ID,'$',vSPLIT_ID,'$',vSUB_ID,'$',cast(vOP_SEQ_NO as char(5))),NEW.TRANSACTION_ID,vWORK_ID,vLOT_ID,vSPLIT_ID,vSUB_ID,vOP_SEQ_NO,'LT',NEW.INDIRECT_ID);
        END;
	END IF;
    
	IF IFNULL(NEW.HOURS_WORKED ,99999)<>99999 THEN
		DELETE FROM DIS_EMP_STATUS WHERE pending_id=NEW.TRANSACTION_ID and TX_TYPE='LT';
    END IF;
    
    
      
      SELECT DEPARTMENT_ID,BASE_PAY_RATE FROM EMPLOYEE WHERE ID=NEW.EMPLOYEE_ID INTO vDEPARTMENT_ID,vHOURLY_COST;
	  SET vHOURS_WORKED=TIMESTAMPDIFF(SECOND,NEW.ACT_CLOCK_IN,NEW.ACT_CLOCK_OUT)/60;
      
        select CALC_END_QTY, STATUS , CLOSE_DATE , RESOURCE_ID,  IFNULL(NCR_ID,'')  from OPERATION where WOREF=NEW.WOREF
        INTO vCALC_END_QTY , vSTATUS , vCLOSE_DATE  , vRESOURCE_ID,  vNCR_ID ;
        
	SELECT COST_PER_HR FROM SHOP_RESOURCE WHERE ID=vRESOURCE_ID INTO vBURDEN_PER_HR;
    
    IF vNCR_ID<>'' THEN
       select STATUS FROM QC_NCR WHERE NCR_ID=vNCR_ID INTO vNCR_STATUS;
    END IF;
    
    SET vNewCompletedQty=vCOMPLETED_QTY+NEW.GOOD_QTY;
    SET vLaborCost=vHOURS_WORKED * vHOURLY_COST;
    SET vBurdenCost=vHOURS_WORKED * vBURDEN_PER_HR;
    
    SET vACT_LABOR_COST=vLaborCost + 0.005;
    SET vACT_BURDEN_COST=vBurdenCost + 0.005;
    

    /*
    UPDATE LABOR_TICKET SET ACT_LABOR_COST=vACT_LABOR_COST,ACT_BURDEN_COST=vACT_BURDEN_COST,RESOURCE_ID=vRESOURCE_ID,DEPARTMENT_ID=vDEPARTMENT_ID WHERE TRANSACTION_ID=NEw.TRANSACTION_ID;
    */
      SELECT IFNULL(SUM(GOOD_QTY),0), IFNULL(SUM(BAD_QTY),0),
  IFNULL(SUm(ACT_LABOR_COST),0),
  IFNULL(SUM(ACT_BURDEN_COST),0),
  IFNULL(SUM(Case WHEN type='R' then HOURS_WORKED end),0),
  IFNULL(SUM(Case WHEN type='S' then HOURS_WORKED end) ,0)
  FROM LABOR_TICKET 
  WHERE WOREF=NEW.WOREF INTO vTOTAL_COMPLETED_QTY,  vTOTAL_DEVIATED_QTY,vTotalLaborCost,vTotalBurdenCost,vRunHrs,vSetupHrs;

  SELECT COUNT(*) FROM LABOR_TICKET WHERE WOREF=NEW.WOREF AND HOURS_WORKED IS NULL INTO vOP_OPENJOB;
  
  IF vSTATUS<>'C' then
	IF vLT_OPENJOB='0' THEN
		If vTOTAL_COMPLETED_QTY >= vCALC_END_QTY THEN
			  if vNCR_ID<>'' THEN
					 if vNCR_STATUS<>'COMPLETED' OR vNCR_STATUS<>'REJECTED'  THEN
							SET vSTATUS = 'R';
							SET vCLOSE_DATE=NULL;
					 END IF;
			  END IF;
			  if vNCR_ID='' THEN
					SET vSTATUS = 'C' ;
					SET vCLOSE_DATE = NEW.TRANSACTION_DATE ;
			  END IF;
        END IF;
    END IF;
  
    IF vOP_OPENJOB>0 THEN
		SET vSTATUS='R';
		SET vCLOSE_DATE=NULL;
    END IF;
  END IF;  
  
  
	UPDATE OPERATION set 
        act_labor_cost = round( vTotalLaborCost, 2 ), 
        act_burden_cost = round( vTotalBurdenCost, 2 ), 
        completed_qty    = vTOTAL_COMPLETED_QTY, 
        deviated_qty     = vTOTAL_DEVIATED_QTY, 
        act_setup_hrs    = vSetupHrs, 
        act_run_hrs      = vRunHrs, 
        status           = vSTATUS, 
        close_date       = vCLOSE_DATE ,
        LT_OPENJOB		 = vLT_OPENJOB
      where WOREF=NEW.WOREF;
	
      /*
      	CALL PURE_RECALC_WO_SHIPPED_COMPLETED_QTY(NEW.WORKORDER_BASE_ID);
*/

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_BU BEFORE UPDATE ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DECLARE vTRANS_TYPE VARCHAR(15)  ;
    DECLARE vWORK_ID VARCHAR(30) ; 
	DECLARE vLOT_ID VARCHAR(3) ;
	DECLARE vSPLIT_ID VARCHAR(3);
	DECLARE vSUB_ID VARCHAR(3);
	DECLARE vOP_SEQ_NO INT;
    DECLARE vTRANS_DATETIME DATETIME;
    DECLARE vRESOURCE_ID	VARCHAR(15);
    DECLARE vBURDEN_PER_HR      DEC(15,2) ;
    DECLARE VHOURLY_COST dec(15,2);
    
    
    DECLARE IN_TIME DATETIME;
    DECLARE OUT_TIME DATETIME;
	DECLARE vSHIFT_ID VARCHAR(15);
    DECLARE vBREAK DOUBLE;
	DECLARE vSHIFT_START DATETIME;
    DECLARE vSHIFT_END DATETIME;
    DECLARE vMEAL_START DATETIME;
    DECLARE vMEAL_END DATETIME;
    DECLARE vBREAK1_START DATETIME;
    DECLARE vBREAK1_END DATETIME;
    DECLARE vBREAK2_START DATETIME;
    DECLARE vBREAK2_END DATETIME;
    DECLARE vBREAK3_START DATETIME;
    DECLARE vBREAK3_END DATETIME;
    DECLARE vhrs DOUBLE;
    
    SET vRESOURCE_ID=NEW.RESOURCE_ID;
    SET vTRANS_TYPE=NEW.TYPE;
    SET vWORK_ID=NEW.WORKORDER_BASE_ID;
    SET vLOT_ID=NEW.WORKORDER_LOT_ID;
    SET vSPLIT_ID=NEW.WORKORDER_SPLIT_ID;
    SET vSUB_ID=NEW.WORKORDER_SUB_ID;
    SET vOP_SEQ_NO=NEW.OPERATION_SEQ_NO;
    SET vTRANS_DATETIME=NEW.CREATE_DATE;
    
    SELECT BASE_PAY_RATE ,SHIFT_ID FROM EMPLOYEE WHERE ID=NEW.EMPLOYEE_ID INTO vHOURLY_COST,vSHIFT_ID;
    SET NEW.HOURLY_COST=vHOURLY_COST;
    
    SELECT COST_PER_HR FROM SHOP_RESOURCE WHERE ID=vRESOURCE_ID INTO vBURDEN_PER_HR;
	SET NEW.BURDEN_PER_HR=vBURDEN_PER_HR;
        
	IF IFNULL(NEW.HOURS_WORKED ,99999)=99999 THEN
		BEGIN
			DELETE FROM DIS_EMP_STATUS WHERE PENDING_ID=NEW.TRANSACTION_ID AND TX_TYPE='LT';
            IF IFNULL(NEW.BREAK_CLOCKIN,'ZZZ')<>'ZZZ' THEN
				SET vTRANS_TYPE='B';
			END IF;
            
			INSERT INTO DIS_EMP_STATUS(EMPLOYEE_ID,TRANS_TYPE,TRANS_DATETIME,JOB_TYPE,JOB_ID,pending_id,WO_BASE_ID,WO_LOT_ID,WO_SPLIT_ID,WO_SUB_ID,WO_SEQ_NO,TX_TYPE,INDIRECT_ID)
			VALUES(NEW.EMPLOYEE_ID,vTRANS_TYPE,vTRANS_DATETIME,vTRANS_TYPE,CONCAT(vWORK_ID,'$',vLOT_ID,'$',vSPLIT_ID,'$',vSUB_ID,'$',cast(vOP_SEQ_NO as char(5))),NEW.TRANSACTION_ID,vWORK_ID,vLOT_ID,vSPLIT_ID,vSUB_ID,vOP_SEQ_NO,'LT',NEW.INDIRECT_ID);
        END;
	END IF;
    
	IF IFNULL(NEW.HOURS_WORKED ,99999)<>99999 THEN
		DELETE FROM DIS_EMP_STATUS WHERE pending_id=NEW.TRANSACTION_ID and TX_TYPE='LT';
       


        
        SET IN_TIME=NEW.ACT_CLOCK_IN;
        SET OUT_TIME=NEW.ACT_CLOCK_OUT;
    SELECT 
		CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(SHIFT_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(SHIFT_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(MEAL_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(MEAL_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK1_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK1_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK2_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK2_END,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK3_START,'%H:%i:%s')),
        CONCAT(DATE_FORMAT(IN_TIME,'%Y-%m-%d'), ' ',DATE_FORMAT(BREAK3_END,'%H:%i:%s'))  
				FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID
			INTO vSHIFT_START,vSHIFT_END,vMEAL_START,vMEAL_END,vBREAK1_START,vBREAK1_END,vBREAK2_START,vBREAK2_END,vBREAK3_START,vBREAK3_END;
			
	SET vBREAK=0;
 
     IF IN_TIME < vMEAL_START AND OUT_TIME > vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vMEAL_START,vMEAL_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vMEAL_START AND OUT_TIME>=vMEAL_START AND OUT_TIME<= vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vMEAL_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vMEAL_START AND OUT_TIME<= vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vMEAL_START AND IN_TIME<=vMEAL_END AND OUT_TIME> vMEAL_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vMEAL_END)/60 INTO vBREAK;
    END IF; 
    

    IF IN_TIME < vBREAK1_START AND OUT_TIME > vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK1_START,vBREAK1_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK1_START AND OUT_TIME>=vBREAK1_START AND OUT_TIME<= vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK1_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK1_START AND OUT_TIME<= vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK1_START AND IN_TIME<=vBREAK1_END AND OUT_TIME> vBREAK1_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK1_END)/60 INTO vBREAK;
    END IF; 


    IF IN_TIME < vBREAK2_START AND OUT_TIME > vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK2_START,vBREAK2_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK2_START AND OUT_TIME>=vBREAK2_START AND OUT_TIME<= vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK2_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK2_START AND OUT_TIME<= vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK2_START AND IN_TIME<=vBREAK2_END AND OUT_TIME> vBREAK2_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK2_END)/60 INTO vBREAK;
    END IF; 
    
    IF IN_TIME < vBREAK3_START AND OUT_TIME > vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK3_START,vBREAK3_END)/60 INTO vBREAK;
    END IF;
    IF IN_TIME < vBREAK3_START AND OUT_TIME>=vBREAK3_START AND OUT_TIME<= vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,vBREAK3_START,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK3_START AND OUT_TIME<= vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,OUT_TIME)/60 INTO vBREAK;
    END IF;
    IF IN_TIME >= vBREAK3_START AND IN_TIME<=vBREAK3_END AND OUT_TIME> vBREAK3_END THEN
		SELECT vBREAK+TIMESTAMPDIFF(MINUTE,IN_TIME,vBREAK3_END)/60 INTO vBREAK;
    END IF; 
    
		
        SELECT TIMESTAMPDIFF(MINUTE,NEW.CLOCK_IN,NEW.CLOCK_OUT)/60 INTO vhrs;
        
		SET NEW.HOURS_BREAK=vBREAK;
		SET NEW.HOURS_WORKED=vhrs;
    
      
        if (vhrs-vBREAK)>0 THEN
     		SET NEW.ACT_LABOR_COST=(ROUND(vhrs,2)-ROUND(vBREAK,2)) * vHOURLY_COST;
		    SET NEW.ACT_BURDEN_COST=(ROUND(vhrs,2)-ROUND(vBREAK,2)) * vBURDEN_PER_HR;       
        END IF;
        
        if (vhrs-vBREAK)<=0 THEN
    		SET NEW.ACT_LABOR_COST=0 * vHOURLY_COST;
		    SET NEW.ACT_BURDEN_COST=0 *vBURDEN_PER_HR;
        END IF;
    
        
    END IF;

    
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_AU AFTER UPDATE ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DECLARE vLAST_SEQ_NO SMALLINT ;
	DECLARE vLAST2_SEQ_NO SMALLINT ;
	DECLARE vWO_TYPE VARCHAR(15);
	DECLARE vWO_COMPLETED_QTY DECIMAL(14,4);
	DECLARE vWO_SHIPPED_QTY DECIMAL(14,4);
    DECLARE vDEPARTMENT_ID VARCHAR(15);
    
    DECLARE vCALC_END_QTY              DEC(14,4) ;
	DECLARE vCOMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_COMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_DEVIATED_QTY             DEC(14,4) ;
	DECLARE vEST_LABOR_COST            DEC(15,2) ;
	DECLARE vEST_BURDEN_COST           DEC(15,2) ;
	DECLARE vSTATUS                    CHAR ;
	DECLARE vCLOSE_DATE                DATETIME ;
	DECLARE vOLDCompletedQty           DEC(14,4) ;
	DECLARE vQtyOver                   DEC(14,4) ;
	DECLARE vGOOD_QTY                  DEC(14,4) ;
	DECLARE vTotalLaborCost            DEC(15,2) ;
	DECLARE vTotalBurdenCost           DEC(15,2) ;
	DECLARE vLaborCost                 DEC(15,2) ;
	DECLARE vBurdenCost                DEC(15,2) ;
	DECLARE vHOURS_WORKED              DEC(7,2) ;
	DECLARE vHOURLY_COST               DEC(15,2) ;
	DECLARE vBAD_QTY                   DEC(14,4) ;
	DECLARE vUNIT_COST                 DEC(15,6) ;
	DECLARE vBURDEN_PERCENT            DEC(6,3) ;
	DECLARE vBURDEN_PER_HR             DEC(15,2) ;
	DECLARE vBURDEN_PER_UNIT           DEC(15,6) ;
	DECLARE vBUR_PER_OPERATION         DEC(15,2) ;
	DECLARE vACT_LABOR_COST            DEC(15,2) ;
	DECLARE vACT_BURDEN_COST           DEC(15,2) ;
	DECLARE vSetupHrs                  DEC(7,2) ;
	DECLARE vRunHrs                    DEC(7,2) ;
	DECLARE vTRANSACTION_DATE          DATETIME ;
	DECLARE vEMPLOYEE_ID				VARCHAR(15);

	DECLARE vRESOURCE_ID				VARCHAR(15);
	DECLARE vIN_TIME					DATETIME;
	DECLARE vOUT_TIME					DATETIME;
	DECLARE vLT_OPENJOB					VARCHAR(1);
	DECLARE vNCR_ID						VARCHAR(30);
	DECLARE vNCR_STATUS					VARCHAR(15);
	DECLARE vOP_COUNT				   INT;
	DECLARE vOP_CLOSE_COUNT            INT;
	DECLARE vOP_OPENJOB					int;


        SET vLT_OPENJOB='0';
      IF IFNULL(NEW.HOURS_WORKED,99999)=99999 then
			SET vLT_OPENJOB='1';
	  END IF;

      
      SELECT DEPARTMENT_ID,BASE_PAY_RATE FROM EMPLOYEE WHERE ID=OLD.EMPLOYEE_ID INTO vDEPARTMENT_ID,vHOURLY_COST;
	  SET vHOURS_WORKED=TIMESTAMPDIFF(SECOND,OLD.ACT_CLOCK_IN,OLD.ACT_CLOCK_OUT)/60;
      
        select CALC_END_QTY, STATUS , CLOSE_DATE , RESOURCE_ID,  IFNULL(NCR_ID,'')  from OPERATION where WOREF=OLD.WOREF
        INTO vCALC_END_QTY , vSTATUS , vCLOSE_DATE  , vRESOURCE_ID,  vNCR_ID ;
	SELECT COST_PER_HR FROM SHOP_RESOURCE WHERE ID=vRESOURCE_ID INTO vBURDEN_PER_HR;
    IF vNCR_ID<>'' THEN
       select STATUS FROM QC_NCR WHERE NCR_ID=vNCR_ID INTO vNCR_STATUS;
    END IF;
    
    SET vOLDCompletedQty=vCOMPLETED_QTY+OLD.GOOD_QTY;
    SET vLaborCost=vHOURS_WORKED * vHOURLY_COST;
    SET vBurdenCost=vHOURS_WORKED * vBURDEN_PER_HR;
    
    SET vACT_LABOR_COST=vLaborCost + 0.005;
    SET vACT_BURDEN_COST=vBurdenCost + 0.005;
    
    
      SELECT IFNULL(SUM(GOOD_QTY),0), IFNULL(SUM(BAD_QTY),0),
  IFNULL(SUm(ACT_LABOR_COST),0),
  IFNULL(SUM(ACT_BURDEN_COST),0),
  IFNULL(SUM(Case WHEN type='R' then HOURS_WORKED end),0),
  IFNULL(SUM(Case WHEN type='S' then HOURS_WORKED end) ,0)
  FROM LABOR_TICKET 
  WHERE WOREF=OLD.WOREF INTO vTOTAL_COMPLETED_QTY,  vTOTAL_DEVIATED_QTY,vTotalLaborCost,vTotalBurdenCost,vRunHrs,vSetupHrs;

  SELECT COUNT(*) FROM LABOR_TICKET WHERE WOREF=OLD.WOREF AND HOURS_WORKED IS NULL INTO vOP_OPENJOB;
  
  /*IF OPN STATUS was CLOSED, then will not change the OPN STATUS*/
  IF vSTATUS<>'C' THEN
	IF vLT_OPENJOB='0' THEN
		If vTOTAL_COMPLETED_QTY >= vCALC_END_QTY THEN
			  if vNCR_ID<>'' THEN
					 if vNCR_STATUS<>'COMPLETED' OR vNCR_STATUS<>'REJECTED' THEN
							SET vSTATUS = 'R';
							SET vCLOSE_DATE=NULL;
					 END IF;
			  END IF;
			  if vNCR_ID='' THEN
					SET vSTATUS = 'C' ;
					SET vCLOSE_DATE =  NEW.TRANSACTION_DATE ;
			  END IF;
        END IF;
    END IF;
  
    IF vOP_OPENJOB>0 THEN
		SET vSTATUS='R';
		SET vCLOSE_DATE=NULL;
    END IF;
    
	IF vOP_OPENJOB='0' THEN
		If vTOTAL_COMPLETED_QTY >= vCALC_END_QTY THEN
			  if vNCR_ID<>'' THEN
					 if vNCR_STATUS<>'COMPLETED' OR vNCR_STATUS<>'REJECTED' THEN
							SET vSTATUS = 'R';
							SET vCLOSE_DATE=NULL;
					 END IF;
			  END IF;
			  if vNCR_ID='' THEN
					SET vSTATUS = 'C' ;
					SET vCLOSE_DATE =  NEW.TRANSACTION_DATE ;
			  END IF;
        END IF;
    END IF;
    END IF;
    
	UPDATE OPERATION set 
        act_labor_cost = round( vTotalLaborCost, 2 ), 
        act_burden_cost = round( vTotalBurdenCost, 2 ), 
        completed_qty    = vTOTAL_COMPLETED_QTY, 
        deviated_qty     = vTOTAL_DEVIATED_QTY, 
        act_setup_hrs    = vSetupHrs, 
        act_run_hrs      = vRunHrs, 
        status           = vSTATUS, 
        close_date       = vCLOSE_DATE ,
        LT_OPENJOB		 = vLT_OPENJOB
      where WOREF=OLD.WOREF;
     
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER LABOR_TICKET_AD AFTER DELETE ON LABOR_TICKET
FOR EACH ROW
BEGIN
	DECLARE vLAST_SEQ_NO SMALLINT ;
	DECLARE vLAST2_SEQ_NO SMALLINT ;
	DECLARE vWO_TYPE VARCHAR(15);
	DECLARE vWO_COMPLETED_QTY DECIMAL(14,4);
	DECLARE vWO_SHIPPED_QTY DECIMAL(14,4);
    DECLARE vDEPARTMENT_ID VARCHAR(15);
    
    DECLARE vCALC_END_QTY              DEC(14,4) ;
	DECLARE vCOMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_COMPLETED_QTY             DEC(14,4) ;
	DECLARE vTOTAL_DEVIATED_QTY             DEC(14,4) ;
	DECLARE vEST_LABOR_COST            DEC(15,2) ;
	DECLARE vEST_BURDEN_COST           DEC(15,2) ;
	DECLARE vSTATUS                    CHAR ;
	DECLARE vCLOSE_DATE                DATETIME ;
	DECLARE vOLDCompletedQty           DEC(14,4) ;
	DECLARE vQtyOver                   DEC(14,4) ;
	DECLARE vGOOD_QTY                  DEC(14,4) ;
	DECLARE vTotalLaborCost            DEC(15,2) ;
	DECLARE vTotalBurdenCost           DEC(15,2) ;
	DECLARE vLaborCost                 DEC(15,2) ;
	DECLARE vBurdenCost                DEC(15,2) ;
	DECLARE vHOURS_WORKED              DEC(7,2) ;
	DECLARE vHOURLY_COST               DEC(15,2) ;
	DECLARE vBAD_QTY                   DEC(14,4) ;
	DECLARE vUNIT_COST                 DEC(15,6) ;
	DECLARE vBURDEN_PERCENT            DEC(6,3) ;
	DECLARE vBURDEN_PER_HR             DEC(15,2) ;
	DECLARE vBURDEN_PER_UNIT           DEC(15,6) ;
	DECLARE vBUR_PER_OPERATION         DEC(15,2) ;
	DECLARE vACT_LABOR_COST            DEC(15,2) ;
	DECLARE vACT_BURDEN_COST           DEC(15,2) ;
	DECLARE vSetupHrs                  DEC(7,2) ;
	DECLARE vRunHrs                    DEC(7,2) ;
	DECLARE vTRANSACTION_DATE          DATETIME ;
	DECLARE vEMPLOYEE_ID				VARCHAR(15);

	DECLARE vRESOURCE_ID				VARCHAR(15);
	DECLARE vIN_TIME					DATETIME;
	DECLARE vOUT_TIME					DATETIME;
	DECLARE vLT_OPENJOB					VARCHAR(1);
	DECLARE vNCR_ID						VARCHAR(30);
	DECLARE vNCR_STATUS					VARCHAR(15);
	DECLARE vOP_COUNT				   INT;
	DECLARE vOP_CLOSE_COUNT            INT;
	DECLARE vOP_OPENJOB					int;


      IF OLD.HOURS_WORKED>=0 then
			SET vLT_OPENJOB='0';
	  END IF;
        
      IF IFNULL(OLD.HOURS_WORKED,99999)=99999 then
			SET vLT_OPENJOB='1';
	  END IF;

      
      SELECT DEPARTMENT_ID,BASE_PAY_RATE FROM EMPLOYEE WHERE ID=OLD.EMPLOYEE_ID INTO vDEPARTMENT_ID,vHOURLY_COST;
	  SET vHOURS_WORKED=TIMESTAMPDIFF(SECOND,OLD.ACT_CLOCK_IN,OLD.ACT_CLOCK_OUT)/60;
      
        select CALC_END_QTY, STATUS , CLOSE_DATE , RESOURCE_ID,  IFNULL(NCR_ID,'')  from OPERATION where WOREF=OLD.WOREF
        INTO vCALC_END_QTY , vSTATUS , vCLOSE_DATE  , vRESOURCE_ID,  vNCR_ID ;
	SELECT COST_PER_HR FROM SHOP_RESOURCE WHERE ID=vRESOURCE_ID INTO vBURDEN_PER_HR;
    IF vNCR_ID<>'' THEN
       select STATUS FROM QC_NCR WHERE NCR_ID=vNCR_ID INTO vNCR_STATUS;
    END IF;
    
    SET vOLDCompletedQty=vCOMPLETED_QTY+OLD.GOOD_QTY;
    SET vLaborCost=vHOURS_WORKED * vHOURLY_COST;
    SET vBurdenCost=vHOURS_WORKED * vBURDEN_PER_HR;
    
    SET vACT_LABOR_COST=vLaborCost + 0.005;
    SET vACT_BURDEN_COST=vBurdenCost + 0.005;
    
   /*UPDATE LABOR_TICKET SET ACT_LABOR_COST=vACT_LABOR_COST,ACT_BURDEN_COST=vACT_BURDEN_COST,RESOURCE_ID=vRESOURCE_ID,DEPARTMENT_ID=vDEPARTMENT_ID WHERE TRANSACTION_ID=OLD.TRANSACTION_ID;
    */
      SELECT IFNULL(SUM(GOOD_QTY),0), IFNULL(SUM(BAD_QTY),0),
  IFNULL(SUm(ACT_LABOR_COST),0),
  IFNULL(SUM(ACT_BURDEN_COST),0),
  IFNULL(SUM(Case WHEN type='R' then HOURS_WORKED end),0),
  IFNULL(SUM(Case WHEN type='S' then HOURS_WORKED end) ,0)
  FROM LABOR_TICKET 
  WHERE WOREF=OLD.WOREF INTO vTOTAL_COMPLETED_QTY,  vTOTAL_DEVIATED_QTY,vTotalLaborCost,vTotalBurdenCost,vRunHrs,vSetupHrs;

  SELECT COUNT(*) FROM LABOR_TICKET WHERE WOREF=OLD.WOREF AND HOURS_WORKED IS NULL INTO vOP_OPENJOB;
  
  if vSTATUS='C' THEN
	IF vLT_OPENJOB='0' THEN
		If vTOTAL_COMPLETED_QTY >= vCALC_END_QTY THEN
			  if vNCR_ID<>'' THEN
					 if vNCR_STATUS<>'COMPLETED' OR vNCR_STATUS<>'REJECTED'  THEN
							SET vSTATUS = 'R';
							SET vCLOSE_DATE=NULL;
					 END IF;
			  END IF;
			  if vNCR_ID='' THEN
					SET vSTATUS = 'C' ;
					SET vCLOSE_DATE =  OLD.TRANSACTION_DATE ;
			  END IF;
        END IF;
		If vTOTAL_COMPLETED_QTY < vCALC_END_QTY THEN
			SET vSTATUS = 'R';
			SET vCLOSE_DATE=NULL;
        END IF;
    END IF;
 
    IF vOP_OPENJOB>0 THEN
		SET vSTATUS='R';
		SET vCLOSE_DATE=NULL;
    END IF;
  END IF;   
	UPDATE OPERATION set 
        act_labor_cost = round( vTotalLaborCost, 2 ), 
        act_burden_cost = round( vTotalBurdenCost, 2 ), 
        completed_qty    = vTOTAL_COMPLETED_QTY, 
        deviated_qty     = vTOTAL_DEVIATED_QTY, 
        act_setup_hrs    = vSetupHrs, 
        act_run_hrs      = vRunHrs, 
        status           = vSTATUS, 
        close_date       = vCLOSE_DATE ,
        LT_OPENJOB		 = vLT_OPENJOB
      where WOREF=OLD.WOREF;
     
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `LABOR_TICKET_MAX_TRANS`
--

DROP TABLE IF EXISTS `LABOR_TICKET_MAX_TRANS`;
/*!50001 DROP VIEW IF EXISTS `LABOR_TICKET_MAX_TRANS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `LABOR_TICKET_MAX_TRANS` (
  `WOREF` tinyint NOT NULL,
  `MAX_TRANS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `LICENSOR_PARAMS`
--

DROP TABLE IF EXISTS `LICENSOR_PARAMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LICENSOR_PARAMS` (
  `LICENSOR_ID` char(30) NOT NULL,
  `PARAM_TYPE` char(30) NOT NULL,
  `PARAM_KEY` varchar(255) NOT NULL,
  `PARAM_VALUE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`LICENSOR_ID`,`PARAM_TYPE`,`PARAM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LICENSOR_PARAMS`
--

LOCK TABLES `LICENSOR_PARAMS` WRITE;
/*!40000 ALTER TABLE `LICENSOR_PARAMS` DISABLE KEYS */;
/*!40000 ALTER TABLE `LICENSOR_PARAMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MC_DEVICE`
--

DROP TABLE IF EXISTS `MC_DEVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MC_DEVICE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `MAC_ID` varchar(50) NOT NULL,
  `MC_ID` varchar(15) DEFAULT NULL,
  `EMP_ID` varchar(15) DEFAULT NULL,
  `MAXQTY_PER_CYCLE` decimal(15,2) DEFAULT NULL,
  `IDLE_MINUTES` decimal(15,2) DEFAULT NULL,
  `IDLE_QTY` varchar(15) DEFAULT NULL,
  `TRIGGER_TYPE` varchar(15) DEFAULT NULL,
  `TRIGGER_VALUE` decimal(15,2) DEFAULT NULL,
  `AUTO_START` varchar(1) DEFAULT NULL,
  `SIMULATION_QTY` decimal(15,2) DEFAULT '0.00',
  `RESOURCE_ID` varchar(15) DEFAULT NULL,
  `TALLY` decimal(15,2) DEFAULT '0.00',
  `JOBID` varchar(50) DEFAULT NULL,
  `MODE` varchar(10) DEFAULT NULL,
  `SIMU` int(11) DEFAULT '0',
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `IP_ADDR` varchar(25) DEFAULT NULL,
  `BCAST_COUNT` int(11) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`MAC_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MC_DEVICE`
--

LOCK TABLES `MC_DEVICE` WRITE;
/*!40000 ALTER TABLE `MC_DEVICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MC_DEVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `MC_STAT`
--

DROP TABLE IF EXISTS `MC_STAT`;
/*!50001 DROP VIEW IF EXISTS `MC_STAT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `MC_STAT` (
  `MC_ID` tinyint NOT NULL,
  `MAC_ID` tinyint NOT NULL,
  `IP_ADDR` tinyint NOT NULL,
  `EMP_ID` tinyint NOT NULL,
  `TALLY` tinyint NOT NULL,
  `JOBID` tinyint NOT NULL,
  `MODE` tinyint NOT NULL,
  `TRANSACTION_ID` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `CALC_START_QTY` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `qbal` tinyint NOT NULL,
  `cbar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `MODULES`
--

DROP TABLE IF EXISTS `MODULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MODULES` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `MODULE_TYPE` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`,`MODULE_TYPE`),
  UNIQUE KEY `ROWID` (`ROWID`),
  UNIQUE KEY `ROWID_2` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODULES`
--

LOCK TABLES `MODULES` WRITE;
/*!40000 ALTER TABLE `MODULES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MODULES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MODULE_TYPE`
--

DROP TABLE IF EXISTS `MODULE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MODULE_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODULE_TYPE`
--

LOCK TABLES `MODULE_TYPE` WRITE;
/*!40000 ALTER TABLE `MODULE_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MODULE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `NCR_AGING`
--

DROP TABLE IF EXISTS `NCR_AGING`;
/*!50001 DROP VIEW IF EXISTS `NCR_AGING`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NCR_AGING` (
  `CREATE_DATE` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `CNT` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NCR_CAUSE`
--

DROP TABLE IF EXISTS `NCR_CAUSE`;
/*!50001 DROP VIEW IF EXISTS `NCR_CAUSE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NCR_CAUSE` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NEXT_NUMBER`
--

DROP TABLE IF EXISTS `NEXT_NUMBER`;
/*!50001 DROP VIEW IF EXISTS `NEXT_NUMBER`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NEXT_NUMBER` (
  `NEXT` tinyint NOT NULL,
  `TABLE_NAME` tinyint NOT NULL,
  `COLUMN_NAME` tinyint NOT NULL,
  `TYPE` tinyint NOT NULL,
  `ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `NNG`
--

DROP TABLE IF EXISTS `NNG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NNG` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PREFIX` varchar(8) DEFAULT NULL,
  `NEXT_NUMBER` decimal(15,0) DEFAULT NULL,
  `SUFFIX` varchar(8) DEFAULT NULL,
  `LEADING_ZEROS` varchar(1) DEFAULT NULL,
  `DECIMAL_PLACES` decimal(15,0) DEFAULT NULL,
  `TABLE_NAME` varchar(50) DEFAULT NULL,
  `COLUMN_NAME` varchar(50) DEFAULT NULL,
  `SUFFIX_UDF` varchar(5) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TYPE`,`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NNG`
--

LOCK TABLES `NNG` WRITE;
/*!40000 ALTER TABLE `NNG` DISABLE KEYS */;
INSERT INTO `NNG` VALUES (236,'*CAAS_AW','DQM','CAAS_AW','CAAS-',1,'-$Y2','Y',4,'CAAS_AW','FORM_NO',NULL,NULL,NULL,'2018-02-05 09:42:15',NULL,NULL),(234,'*CAAS_AW95','DQM','CAAS_AW','CAAS-',1,'-$Y2','Y',4,'CAAS_AW95','FORM_NO',NULL,NULL,NULL,'2018-02-01 13:57:02',NULL,NULL),(230,'*CAL','ADM','CALENDAR','CAL-',1,'-$Y2','Y',4,'CAL_SCHEDULE','CAL_ID',NULL,NULL,NULL,'2018-01-23 15:54:50',NULL,NULL),(235,'*CAL','CO','CALENDAR','CAL-',4,'-$Y2','Y',4,'CAL_SCHEDULE','CAL_ID',NULL,NULL,NULL,'2018-02-01 13:58:09',NULL,NULL),(100,'CF','DQM','Customer Feedback Next Number','CF-',2,'-$Y2','Y',4,'QC_CF','NCR_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(103,'CI','DQM','Continuous Improvement','CI',1,'-$Y2','Y',4,'QC_CI','ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(117,'COATMAN','DQM','Coating Manager','CT-',1,'-$Y2','Y',4,'QP_COATMAN','ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(102,'COC','DQM','COC','COC-',1,'-$Y2','Y',4,'QC_COC','COC_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(91,'CPAR','DQM','CPAR','CPAR-',2,'-$Y2','Y',4,'QC_CPAR','NCR_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(109,'CPROP','VWLTSA','Service Orders','CP-',3,'-$Y2','Y',4,'CPROP_HEAD','CP_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(231,'CRM_COMPANY','VWLTSA','CRM COMPANY','P-',1,NULL,'Y',4,'CRM_COMPANY','CO_ID',NULL,NULL,NULL,'2018-02-01 13:37:41',NULL,NULL),(232,'CRM_CONTACT','VWLTSA','CRM CONTACT','PC-',1,NULL,'Y',5,'CRM_CONTACT','CONTACT_ID',NULL,NULL,NULL,'2018-02-01 13:37:41',NULL,NULL),(237,'EVERSLIK','DQM','Everslik','ES-',1,'-$Y2','Y',4,'QP_EVERSLIK','ID',NULL,NULL,NULL,'2018-02-05 09:42:26',NULL,NULL),(8,'GAUGE','DQM','Gauge','GG-',1,'','Y',3,NULL,NULL,NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(221,'GAUGE-GT1','GAUGE',NULL,NULL,1,NULL,'Y',5,'','',NULL,NULL,NULL,'2017-07-21 13:32:49',NULL,NULL),(155,'GAUGE_RENTAL','DQM','Rental Manager','GR-',1,'-$Y2','Y',4,'GAUGE_RENTAL','RENTAL_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(121,'INVOICE','VWLTSA','SHIPMENT','INVSIN',1,'-$Y2','Y',4,'SHIPMENT','SHIPMENT_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(9,'NCR','DQM',NULL,'NCR-',2,'-$Y2','Y',4,'QC_NCR','NCR_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(211,'OSS_CONSOL','OSS','OSS Consolidation','OSC-',1,'-$Y2','Y',4,'OSS_CONSOL','CONSOL_ID',NULL,NULL,NULL,'2017-01-16 11:23:33',NULL,NULL),(210,'OSS_RENTAL','OSS','OSS Rental','OSR-',1,'-$Y2','Y',4,'OSS_RENTAL','RENTAL_ID',NULL,NULL,NULL,'2017-01-16 11:23:33',NULL,NULL),(150,'PHOSMAN','DQM','Phosphate Manager','PH-',1,'-$Y2','Y',4,'QP_PHOSMAN','ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(170,'PO','VWLTSA','PURCHASE REQ ID','PR-',1,'-$Y2','Y',5,'PURCHASE_ORDER','REQUEST_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(6,'QC_PLAN','DQM','QC Plan','QP-',1,'-$Y2','Y',5,'QP_PLAN','PLAN_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(7,'QC_TEST','DQM','QC TEST','QT-',1,'-$Y2','Y',5,'QT_TEST','TEST_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(120,'SHIPMENT','VWLTSA','SHIPMENT','DOSIN-',1,'-$Y2','Y',4,'SHIPMENT','SHIPMENT_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(112,'SO','VWLTSA','Sales Order Next Number','SOSIN',2,NULL,'Y',6,'SALES_ORDER','ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(92,'TPLAN-GAUGE','DQM','Gauge Test Plan','TPG-',1,'','Y',3,'QP_PLAN','PLAN_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(93,'TPLAN-PART','DQM','Part Test Plan','TPP-',2,'','Y',3,'QP_PLAN','PLAN_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(47,'TRAINING','DQM','QC Training','T',1,'-YYMMDD','Y',3,'QC_TRAINING','TRAINING_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(94,'TTEST-GAUGE','DQM','Gauge Test','GT-',1,'-$Y2','Y',5,'QT_TEST','TEST_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(95,'TTEST-PART','DQM','Part Test','PT-',2,'-$Y2','Y',5,'QT_TEST','TEST_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL),(99,'WORK_ORDER','DEFAULT','PRE MFG DEFAULT','J-',4,NULL,NULL,5,'WORK_ORDER','BASE_ID',NULL,NULL,NULL,'2016-11-23 11:33:00',NULL,NULL);
/*!40000 ALTER TABLE `NNG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OCCURRENCE`
--

DROP TABLE IF EXISTS `OCCURRENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OCCURRENCE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OCCURRENCE`
--

LOCK TABLES `OCCURRENCE` WRITE;
/*!40000 ALTER TABLE `OCCURRENCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OCCURRENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OMS_PART`
--

DROP TABLE IF EXISTS `OMS_PART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OMS_PART` (
  `SITE_ID` tinyint(4) NOT NULL,
  `ID` tinyint(4) NOT NULL,
  `DESCRIPTION` tinyint(4) NOT NULL,
  `PRODUCT_CODE` tinyint(4) NOT NULL,
  `UOM_ID` tinyint(4) NOT NULL,
  `TRACEABLE` tinyint(4) NOT NULL,
  `BAL_QTY` tinyint(4) NOT NULL,
  `MCOST` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OMS_PART`
--

LOCK TABLES `OMS_PART` WRITE;
/*!40000 ALTER TABLE `OMS_PART` DISABLE KEYS */;
/*!40000 ALTER TABLE `OMS_PART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPERATION`
--

DROP TABLE IF EXISTS `OPERATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPERATION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `WORKORDER_TYPE` varchar(1) NOT NULL DEFAULT 'W',
  `WORKORDER_BASE_ID` varchar(30) NOT NULL,
  `WORKORDER_LOT_ID` varchar(3) NOT NULL,
  `WORKORDER_SPLIT_ID` varchar(3) NOT NULL,
  `WORKORDER_SUB_ID` varchar(3) NOT NULL DEFAULT '0',
  `SEQUENCE_NO` smallint(6) NOT NULL,
  `RESOURCE_ID` varchar(15) NOT NULL,
  `SETUP_HRS` decimal(8,3) DEFAULT NULL,
  `RUN` decimal(15,8) DEFAULT NULL,
  `RUN_TYPE` varchar(15) NOT NULL,
  `RUN_HRS` decimal(7,2) DEFAULT NULL,
  `SCHED_START_DATE` datetime DEFAULT NULL,
  `SCHED_FINISH_DATE` datetime DEFAULT NULL,
  `CALC_START_QTY` decimal(14,4) DEFAULT NULL,
  `CALC_END_QTY` decimal(14,4) DEFAULT NULL,
  `COMPLETED_QTY` decimal(14,4) DEFAULT '0.0000',
  `DEVIATED_QTY` decimal(14,4) NOT NULL,
  `ACT_SETUP_HRS` decimal(7,2) NOT NULL,
  `ACT_RUN_HRS` decimal(7,2) NOT NULL,
  `STATUS` varchar(1) DEFAULT 'U',
  `SETUP_COMPLETED` varchar(1) NOT NULL,
  `RUN_QTY_PER_CYCLE` decimal(14,4) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `CLOSE_DATE` datetime DEFAULT NULL,
  `SERVICE_ID` varchar(15) DEFAULT NULL,
  `BUR_PER_HR_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PERCENT_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PER_UNIT_RUN` decimal(15,2) DEFAULT '0.00',
  `BUR_PER_OPERATION` decimal(15,2) DEFAULT '0.00',
  `QTY_PER` decimal(15,8) DEFAULT '1.00000000',
  `LONG_SPEC` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(50) DEFAULT NULL,
  `COST_PER_HR` decimal(15,2) DEFAULT '0.00',
  `ACT_RUN_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_SETUP_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_LABOR_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_BURDEN_COST` decimal(15,2) DEFAULT NULL,
  `JOB_PLAN_SEQ` int(11) DEFAULT NULL,
  `LT_OPENJOB` varchar(1) DEFAULT NULL,
  `JOB_PLAN_HRS` int(11) DEFAULT '0',
  `HTYPE` varchar(255) DEFAULT NULL,
  `OP_DATA` longtext,
  `RESOURCE_CLASS_ID` varchar(15) DEFAULT NULL,
  `SPEC` longtext,
  `MATERIAL_SPEC` longtext,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `COST_UM` varchar(15) DEFAULT NULL,
  `COST_QTY` decimal(15,2) DEFAULT NULL,
  `COST_MATL` decimal(15,2) DEFAULT NULL,
  `COST_SUBCON` decimal(15,2) DEFAULT NULL,
  `COST_TOTAL` decimal(15,2) DEFAULT NULL,
  `NCR_ID` varchar(30) DEFAULT NULL,
  `COST_TOOLING` decimal(15,2) DEFAULT '0.00',
  `COST_OTHERS` decimal(15,2) DEFAULT '0.00',
  `CLASS_DESCRIPTION` varchar(40) DEFAULT NULL,
  `CLASS_ID` varchar(30) DEFAULT NULL,
  `QC_PLAN_ID` varchar(15) DEFAULT NULL,
  `QTY_TYPE` varchar(15) DEFAULT NULL,
  `PREV_RESOURCE_ID` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `GAUGE_RENT_DIAMETER` decimal(15,4) DEFAULT NULL,
  `GAUGE_RENT_WEIGHT` varchar(30) DEFAULT NULL,
  `GAUGE_RENT_THREAD` varchar(30) DEFAULT NULL,
  `GAUGE_RENT_PINBOX` varchar(30) DEFAULT NULL,
  `LICENSOR_ID` varchar(30) DEFAULT NULL,
  `LICENSOR_JOB` varchar(30) DEFAULT NULL,
  `ACT_MATERIAL_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_SUBCON_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_RENTAL_COST` decimal(15,2) DEFAULT '0.00',
  `COST_MATL_DESCRIPTION` char(80) DEFAULT NULL,
  `COST_SUBCON_DESCRIPTION` char(80) DEFAULT NULL,
  `COST_TOOLING_DESCRIPTION` char(80) DEFAULT NULL,
  `COST_OTHERS_DESCRIPTION` char(80) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `MIN_MOVE_QTY` decimal(14,4) DEFAULT '0.0000',
  `MIN_MOVE_HRS` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`WORKORDER_TYPE`,`WORKORDER_BASE_ID`,`WORKORDER_LOT_ID`,`WORKORDER_SPLIT_ID`,`WORKORDER_SUB_ID`,`SEQUENCE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`),
  UNIQUE KEY `PK_OPERATION_1` (`WOREF`),
  KEY `PK_OPERATION_2` (`WORKORDER_BASE_ID`,`SCHED_START_DATE`),
  KEY `WOREF` (`WOREF`),
  KEY `STATUS` (`STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPERATION`
--

LOCK TABLES `OPERATION` WRITE;
/*!40000 ALTER TABLE `OPERATION` DISABLE KEYS */;
INSERT INTO `OPERATION` VALUES (1,'W','J-00002','1','0','0',10,'ASSEMBLY',0.000,0.00000000,'HRS/PC',0.00,NULL,NULL,1.0000,1.0000,0.0000,0.0000,0.00,0.00,'R','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,1.00000000,NULL,'2017-07-21 10:05:37','J-00002^0^10',0.00,0.00,0.00,0.00,0.00,NULL,'0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,0.00,0.00,NULL,NULL,NULL,'QTYPER',NULL,'CLS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,0.00,0.00,NULL,NULL,NULL,NULL,NULL,0.0000,0.0000),(2,'W','XXX','1','0','0',0,'ASSEMBLY',0.000,0.00000000,'HRS/PC',0.00,NULL,NULL,NULL,0.0000,0.0000,0.0000,0.00,0.00,'U','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,1.00000000,NULL,'2017-07-21 10:07:15','XXX^0^0',0.00,0.00,0.00,0.00,0.00,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,0.00,0.00,'TEST1',NULL,NULL,'QTYPER',NULL,'CLS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,0.00,0.00,NULL,NULL,NULL,NULL,NULL,0.0000,0.0000);
/*!40000 ALTER TABLE `OPERATION` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER OPERATION_BI BEFORE INSERT ON OPERATION
  FOR EACH ROW 
  BEGIN
    SET NEW.WOREF=CONCAT(NEW.WORKORDER_BASE_ID,'^',NEW.WORKORDER_SUB_ID,'^',NEW.SEQUENCE_NO);
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER OPERATION_AI AFTER INSERT ON OPERATION
FOR EACH ROW
BEGIN
	CALL PURE_RECALC_WO_SHIPPED_COMPLETED_QTY(NEW.WORKORDER_BASE_ID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER OPERATION_BU BEFORE UPDATE ON OPERATION 
FOR EACH ROW

BEGIN 
    IF NEW.COMPLETED_QTY>=NEW.CALC_END_QTY THEN
		SET NEW.STATUS='C';
	END IF;
    
    IF OLD.RESOURCE_ID <> NEW.RESOURCE_ID THEN
		SET NEW.PREV_RESOURCE_ID = CONCAT(IFNULL(NEW.PREV_RESOURCE_ID,'') ,';',OLD.RESOURCE_ID);
    END IF;
    
    IF NEW.STATUS='C' THEN
		DELETE FROM EMPWO WHERE WOREF=OLD.WOREF;
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER OPERATION_AD AFTER DELETE ON OPERATION
FOR EACH ROW
BEGIN
	CALL PURE_RECALC_WO_SHIPPED_COMPLETED_QTY(OLD.WORKORDER_BASE_ID);
	DELETE FROM EMPWO WHERE WOREF=OLD.WOREF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER OPERATION_AU AFTER UPDATE ON OPERATION 
FOR EACH ROW
BEGIN 
	
    DECLARE vMAX_OP INT;
    DECLARE vLast2MAX_OP INT;
    DECLARE vWO_TYPE VARCHAR(15);
	DECLARE vCNT_OP DECIMAL(14,0);
    DECLARE vCNT_OP_CLOSE DECIMAL(14,0);
    DECLARE vCNT_OP_RLS DECIMAL(14,0);
    
    DECLARE vEST_COST DECIMAL(14,4);
    
	DECLARE vLAST_SEQ_NO SMALLINT ;
	DECLARE vLAST2_SEQ_NO SMALLINT ;
    
	DECLARE vWO_COMPLETED_QTY DECIMAL(14,4);
	DECLARE vWO_SHIPPED_QTY DECIMAL(14,4);
	DECLARE vMCOST DECIMAL(14,4);
	DECLARE vLCOST DECIMAL(14,4);
	DECLARE vBCOST DECIMAL(14,4);
	DECLARE vSCOST DECIMAL(14,4);
	DECLARE vGCOST DECIMAL(14,4);

	DECLARE vCOST_MATL DECIMAL(15,2);
	DECLARE vCOST_SUBCON DECIMAL(15,2);
	DECLARE vCOST_TOOLING DECIMAL(15,2);
	DECLARE vCOST_OTHERS DECIMAL(15,2);
	DECLARE vCOST_TOTAL DECIMAL(15,2);

    -- JOB SCHED FLAG
    declare vJOBSCHED INT;
    SET vJOBSCHED=0;
    SET vCNT_OP=0;
    SET vCNT_OP_CLOSE=0;
    SET vCNT_OP_RLS=0;
    
   
   
			SELECT WO_TYPE FROM WORK_ORDER WHERE BASE_ID=NEW.WORKORDER_BASE_ID AND SUB_ID=0 INTO vWO_TYPE;
			
			SELECT MAX(SEQUENCE_NO) FROM OPERATION WHERE WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID and WORKORDER_SUB_ID=0 INTO vMAX_OP;
			SELECT MAX(SEQUENCE_NO) FROM OPERATION WHERE WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID and WORKORDER_SUB_ID=0 AND SEQUENCE_NO<>vMAX_OP INTO vLast2MAX_OP;    

			IF vMAX_OP=NEW.SEQUENCE_NO THEN
				IF NEW.CALC_END_QTY=NEW.COMPLETED_QTY THEN
					select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID INTO vCNT_OP;
					select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID and STATUS='C' INTO vCNT_OP_CLOSE;
					IF vCNT_OP=vCNT_OP_CLOSE THEN
						UPDATE WORK_ORDER SET STATUS='C',CLOSE_DATE=NOW() where BASE_ID=NEW.WORKORDER_BASE_ID AND STATUS<>'C' AND (CLOSE_DATE IS NULL OR CLOSE_DATE='');
					END IF;
				END IF;
			END IF;
			IF NEW.STATUS<>OLD.STATUS THEN
				BEGIN
					IF NEW.STATUS='C' OR NEW.STATUS='X' THEN
						DELETE FROM EMPWO WHERE WOREF=NEW.WOREF;
						select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID INTO vCNT_OP;
						select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID and STATUS='C' INTO vCNT_OP_CLOSE;
						IF vCNT_OP=vCNT_OP_CLOSE THEN
							UPDATE WORK_ORDER SET STATUS='C',CLOSE_DATE=NOW() where BASE_ID=NEW.WORKORDER_BASE_ID AND STATUS<>'C' AND (CLOSE_DATE IS NULL OR CLOSE_DATE='');
						END IF;
                    
					END IF;
					IF NEW.STATUS='R' THEN
						select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID INTO vCNT_OP;
						select COUNT(*) from OPERATION where WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID and STATUS='R' INTO vCNT_OP_RLS;
						IF vCNT_OP_RLS>0 THEN
							UPDATE WORK_ORDER SET STATUS=NEW.STATUS where BASE_ID=NEW.WORKORDER_BASE_ID;
							UPDATE WORK_ORDER SET DESIRED_RLS_DATE=NOW() where BASE_ID=NEW.WORKORDER_BASE_ID AND DESIRED_RLS_DATE IS NULL;
						END IF;           
					END IF;
					IF NEW.STATUS='C' THEN
						INSERT INTO EVENT_ONESHOT(EVENT_ID,EVENT_DATA) SELECT 'vwltsa^sa_jobman^opn-closed-premiumthread' ,CONCAT('{"OPN_SEQ_NO":"',SEQUENCE_NO,'","WOREF":"',WOREF,'","USER_7":"',IFNULL(replace(USER_7,'"',''''),''),'","USER_8":"',IFNULL(replace(USER_8,'"',''''),''),'","USER_9":"',IFNULL(replace(USER_9,'"',''''),''),'","CLOSE_DATE":"',CLOSE_DATE,'"}') AS JSON_DATA
						from OPERATION where status='C' and USER_7 IS NOT NULL AND WOREF=NEW.WOREF;
					END IF;   
				END;
			END IF;	
			
			IF OLD.COMPLETED_QTY <> NEW.COMPLETED_QTY and (NEW.SEQUENCE_NO=vLast2MAX_OP OR NEW.SEQUENCE_NO=vMAX_OP) THEN
				BEGIN
					IF vWO_TYPE='MAKE_STAGED' THEN
						BEGIN
							SELECT IFNULL(COMPLETED_QTY,0) FROM OPERATION WHERE WOREF=CONCAT(NEW.WORKORDER_BASE_ID,'^',0,'^',vLast2MAX_OP) INTO vWO_COMPLETED_QTY;
							SELECT IFNULL(COMPLETED_QTY,0) FROM OPERATION WHERE WOREF=CONCAT(NEW.WORKORDER_BASE_ID,'^',0,'^',vMAX_OP) INTO vWO_SHIPPED_QTY;
							UPDATE WORK_ORDER SET COMPLETED_QTY=vWO_COMPLETED_QTY,SHIPPED_QTY=vWO_SHIPPED_QTY WHERE BASE_ID=NEW.WORKORDER_BASE_ID AND SUB_ID=0;
						END;
					END IF;
					IF vWO_TYPE='MAKE_NOSTAGE' THEN
						BEGIN
							SELECT IFNULL(SUM(GOOD_QTY),0) FROM LABOR_TICKET  WHERE WOREF=CONCAT(NEW.WORKORDER_BASE_ID,'^',0,'^',vMAX_OP) INTO vWO_COMPLETED_QTY;
							UPDATE WORK_ORDER SET COMPLETED_QTY=vWO_COMPLETED_QTY, SHIPPED_QTY=vWO_COMPLETED_QTY WHERE BASE_ID=NEW.WORKORDER_BASE_ID AND SUB_ID=0;
						END;
					END IF;
				END;
			END IF;
			
			IF IFNULL(OLD.ACT_MATERIAL_COST,0) <> IFNULL(NEW.ACT_MATERIAL_COST ,0)
			OR IFNULL(OLD.ACT_LABOR_COST,0) <> IFNULL(NEW.ACT_LABOR_COST ,0)
			OR IFNULL(OLD.ACT_BURDEN_COST,0) <> IFNULL(NEW.ACT_BURDEN_COST ,0)
			OR IFNULL(OLD.ACT_SUBCON_COST,0) <> IFNULL(NEW.ACT_SUBCON_COST ,0)
			OR IFNULL(OLD.ACT_RENTAL_COST,0) <> IFNULL(NEW.ACT_RENTAL_COST ,0)
			OR IFNULL(OLD.COST_MATL,0) <> IFNULL(NEW.COST_MATL ,0)
			OR IFNULL(OLD.COST_SUBCON,0) <> IFNULL(NEW.COST_SUBCON ,0)
			OR IFNULL(OLD.COST_TOOLING,0) <> IFNULL(NEW.COST_TOOLING ,0)
			OR IFNULL(OLD.COST_OTHERS,0) <> IFNULL(NEW.COST_OTHERS,0)
			OR IFNULL(OLD.COST_TOTAL,0) <> IFNULL(NEW.COST_TOTAL ,0)
			THEN
				BEGIN
				
					SELECT IFNULL(SUM(ACT_MATERIAL_COST),0),
						IFNULL(SUM(ACT_LABOR_COST),0),
						IFNULL(SUM(ACT_BURDEN_COST),0),
						IFNULL(SUM(ACT_SUBCON_COST),0),
						IFNULL(SUM(ACT_RENTAL_COST),0),
						IFNULL(SUM(COST_MATL),0),
						IFNULL(SUM(COST_SUBCON),0),
						IFNULL(SUM(COST_TOOLING),0),
						IFNULL(SUM(COST_OTHERS),0),
						IFNULL(SUM(COST_TOTAL),0) FROM OPERATION WHERE WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID 
						INTO vMCOST,vLCOST,vBCOST,vSCOST,vGCOST,vCOST_MATL,vCOST_SUBCON,vCOST_TOOLING,vCOST_OTHERS,vCOST_TOTAL;
						
						UPDATE WORK_ORDER SET ACT_MATERIAL_COST=vMCOST,ACT_LABOR_COST=vLCOST,ACT_BURDEN_COST=vBCOST,ACT_SUBCON_COST=vSCOST,
						ACT_RENTAL_COST=vGCOST,COST_MATL=vCOST_MATL,COST_SUBCON=vCOST_SUBCON,COST_TOOLING=vCOST_TOOLING,COST_TOTAL=vCOST_TOTAL,COST_OTHERS=vCOST_OTHERS,
						ACT_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST,
						GRAND_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST+vCOST_MATL+vCOST_SUBCON+vCOST_TOOLING+vCOST_OTHERS ,LAST_MODIFIED_DATE=NOW()
						WHERE  BASE_ID=NEW.WORKORDER_BASE_ID AND SUB_ID=0;
					
						IF NEW.WORKORDER_SUB_ID<>0 THEN
						SELECT IFNULL(SUM(ACT_MATERIAL_COST),0),
						IFNULL(SUM(ACT_LABOR_COST),0),
						IFNULL(SUM(ACT_BURDEN_COST),0),
						IFNULL(SUM(ACT_SUBCON_COST),0),
						IFNULL(SUM(ACT_RENTAL_COST),0),
						IFNULL(SUM(COST_MATL),0),
						IFNULL(SUM(COST_SUBCON),0),
						IFNULL(SUM(COST_TOOLING),0),
						IFNULL(SUM(COST_OTHERS),0),
						IFNULL(SUM(COST_TOTAL),0) FROM OPERATION WHERE WORKORDER_BASE_ID=NEW.WORKORDER_BASE_ID AND WORKORDER_SUB_ID=NEW.WORKORDER_SUB_ID
						INTO vMCOST,vLCOST,vBCOST,vSCOST,vGCOST,vCOST_MATL,vCOST_SUBCON,vCOST_TOOLING,vCOST_OTHERS,vCOST_TOTAL;
						
						UPDATE WORK_ORDER SET ACT_MATERIAL_COST=vMCOST,ACT_LABOR_COST=vLCOST,ACT_BURDEN_COST=vBCOST,ACT_SUBCON_COST=vSCOST,
						ACT_RENTAL_COST=vGCOST,COST_MATL=vCOST_MATL,COST_SUBCON=vCOST_SUBCON,COST_TOOLING=vCOST_TOOLING,COST_TOTAL=vCOST_TOTAL,
						ACT_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST,
						GRAND_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST+vCOST_MATL+vCOST_SUBCON+vCOST_TOOLING+vCOST_OTHERS  ,LAST_MODIFIED_DATE=NOW()
						WHERE  BASE_ID=NEW.WORKORDER_BASE_ID AND SUB_ID=NEW.WORKORDER_SUB_ID;
						END IF;
				END;
			END IF;
            

    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `OPERATION_HRS`
--

DROP TABLE IF EXISTS `OPERATION_HRS`;
/*!50001 DROP VIEW IF EXISTS `OPERATION_HRS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OPERATION_HRS` (
  `WORKORDER_BASE_ID` tinyint NOT NULL,
  `WORKORDER_LOT_ID` tinyint NOT NULL,
  `WORKORDER_SPLIT_ID` tinyint NOT NULL,
  `WORKORDER_SUB_ID` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `ACT_HRS` tinyint NOT NULL,
  `TTL_BREAK_HRS` tinyint NOT NULL,
  `TTL_EST_HRS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OPERATION_LAST2SEQ`
--

DROP TABLE IF EXISTS `OPERATION_LAST2SEQ`;
/*!50001 DROP VIEW IF EXISTS `OPERATION_LAST2SEQ`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OPERATION_LAST2SEQ` (
  `ROWID` tinyint NOT NULL,
  `WORKORDER_TYPE` tinyint NOT NULL,
  `WORKORDER_BASE_ID` tinyint NOT NULL,
  `WORKORDER_LOT_ID` tinyint NOT NULL,
  `WORKORDER_SPLIT_ID` tinyint NOT NULL,
  `WORKORDER_SUB_ID` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `SETUP_HRS` tinyint NOT NULL,
  `RUN` tinyint NOT NULL,
  `RUN_TYPE` tinyint NOT NULL,
  `RUN_HRS` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `CALC_START_QTY` tinyint NOT NULL,
  `CALC_END_QTY` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `DEVIATED_QTY` tinyint NOT NULL,
  `ACT_SETUP_HRS` tinyint NOT NULL,
  `ACT_RUN_HRS` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `SETUP_COMPLETED` tinyint NOT NULL,
  `RUN_QTY_PER_CYCLE` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `SERVICE_ID` tinyint NOT NULL,
  `BUR_PER_HR_RUN` tinyint NOT NULL,
  `BUR_PERCENT_RUN` tinyint NOT NULL,
  `BUR_PER_UNIT_RUN` tinyint NOT NULL,
  `BUR_PER_OPERATION` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `COST_PER_HR` tinyint NOT NULL,
  `ACT_RUN_COST` tinyint NOT NULL,
  `ACT_SETUP_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `JOB_PLAN_SEQ` tinyint NOT NULL,
  `LT_OPENJOB` tinyint NOT NULL,
  `JOB_PLAN_HRS` tinyint NOT NULL,
  `HTYPE` tinyint NOT NULL,
  `OP_DATA` tinyint NOT NULL,
  `RESOURCE_CLASS_ID` tinyint NOT NULL,
  `SPEC` tinyint NOT NULL,
  `MATERIAL_SPEC` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `COST_UM` tinyint NOT NULL,
  `COST_QTY` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `NCR_ID` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `CLASS_DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QTY_TYPE` tinyint NOT NULL,
  `PREV_RESOURCE_ID` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `GAUGE_RENT_DIAMETER` tinyint NOT NULL,
  `GAUGE_RENT_WEIGHT` tinyint NOT NULL,
  `GAUGE_RENT_THREAD` tinyint NOT NULL,
  `GAUGE_RENT_PINBOX` tinyint NOT NULL,
  `LICENSOR_ID` tinyint NOT NULL,
  `LICENSOR_JOB` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL_DESCRIPTION` tinyint NOT NULL,
  `COST_SUBCON_DESCRIPTION` tinyint NOT NULL,
  `COST_TOOLING_DESCRIPTION` tinyint NOT NULL,
  `COST_OTHERS_DESCRIPTION` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OPERATION_MAXSEQ`
--

DROP TABLE IF EXISTS `OPERATION_MAXSEQ`;
/*!50001 DROP VIEW IF EXISTS `OPERATION_MAXSEQ`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OPERATION_MAXSEQ` (
  `ROWID` tinyint NOT NULL,
  `WORKORDER_TYPE` tinyint NOT NULL,
  `WORKORDER_BASE_ID` tinyint NOT NULL,
  `WORKORDER_LOT_ID` tinyint NOT NULL,
  `WORKORDER_SPLIT_ID` tinyint NOT NULL,
  `WORKORDER_SUB_ID` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `SETUP_HRS` tinyint NOT NULL,
  `RUN` tinyint NOT NULL,
  `RUN_TYPE` tinyint NOT NULL,
  `RUN_HRS` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `CALC_START_QTY` tinyint NOT NULL,
  `CALC_END_QTY` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `DEVIATED_QTY` tinyint NOT NULL,
  `ACT_SETUP_HRS` tinyint NOT NULL,
  `ACT_RUN_HRS` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `SETUP_COMPLETED` tinyint NOT NULL,
  `RUN_QTY_PER_CYCLE` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `SERVICE_ID` tinyint NOT NULL,
  `BUR_PER_HR_RUN` tinyint NOT NULL,
  `BUR_PERCENT_RUN` tinyint NOT NULL,
  `BUR_PER_UNIT_RUN` tinyint NOT NULL,
  `BUR_PER_OPERATION` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `COST_PER_HR` tinyint NOT NULL,
  `ACT_RUN_COST` tinyint NOT NULL,
  `ACT_SETUP_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `JOB_PLAN_SEQ` tinyint NOT NULL,
  `LT_OPENJOB` tinyint NOT NULL,
  `JOB_PLAN_HRS` tinyint NOT NULL,
  `HTYPE` tinyint NOT NULL,
  `OP_DATA` tinyint NOT NULL,
  `RESOURCE_CLASS_ID` tinyint NOT NULL,
  `SPEC` tinyint NOT NULL,
  `MATERIAL_SPEC` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `COST_UM` tinyint NOT NULL,
  `COST_QTY` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `NCR_ID` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `CLASS_DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QTY_TYPE` tinyint NOT NULL,
  `PREV_RESOURCE_ID` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `GAUGE_RENT_DIAMETER` tinyint NOT NULL,
  `GAUGE_RENT_WEIGHT` tinyint NOT NULL,
  `GAUGE_RENT_THREAD` tinyint NOT NULL,
  `GAUGE_RENT_PINBOX` tinyint NOT NULL,
  `LICENSOR_ID` tinyint NOT NULL,
  `LICENSOR_JOB` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL_DESCRIPTION` tinyint NOT NULL,
  `COST_SUBCON_DESCRIPTION` tinyint NOT NULL,
  `COST_TOOLING_DESCRIPTION` tinyint NOT NULL,
  `COST_OTHERS_DESCRIPTION` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OPERATION_PART`
--

DROP TABLE IF EXISTS `OPERATION_PART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPERATION_PART` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `WOREF` varchar(35) NOT NULL,
  `PART_ID` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REQUIRED_QTY` decimal(14,4) DEFAULT '0.0000',
  `ISSUED_QTY` decimal(14,4) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `LONG_SPEC` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`WOREF`,`PART_ID`),
  UNIQUE KEY `ROWID` (`ROWID`),
  KEY `PK_OPERATION_PART_1` (`WOREF`),
  KEY `PK_OPERATION_PART_2` (`WOREF`,`PART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPERATION_PART`
--

LOCK TABLES `OPERATION_PART` WRITE;
/*!40000 ALTER TABLE `OPERATION_PART` DISABLE KEYS */;
/*!40000 ALTER TABLE `OPERATION_PART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPERATION_SCHEDULE`
--

DROP TABLE IF EXISTS `OPERATION_SCHEDULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPERATION_SCHEDULE` (
  `WOREF` varchar(50) NOT NULL,
  `SCHED_START_DATE` datetime DEFAULT NULL,
  `SCHED_FINISH_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `OP_DATA` text,
  PRIMARY KEY (`WOREF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPERATION_SCHEDULE`
--

LOCK TABLES `OPERATION_SCHEDULE` WRITE;
/*!40000 ALTER TABLE `OPERATION_SCHEDULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OPERATION_SCHEDULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `OPN_INFO`
--

DROP TABLE IF EXISTS `OPN_INFO`;
/*!50001 DROP VIEW IF EXISTS `OPN_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OPN_INFO` (
  `IS_FIRST_OP` tinyint NOT NULL,
  `PREV_SEQUENCE_NO` tinyint NOT NULL,
  `PREV_STATUS` tinyint NOT NULL,
  `PREV_COMPLETED_QTY` tinyint NOT NULL,
  `PREV_BAD_QTY` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `RES_DESC` tinyint NOT NULL,
  `RES_TYPE` tinyint NOT NULL,
  `ROWID` tinyint NOT NULL,
  `WORKORDER_TYPE` tinyint NOT NULL,
  `WORKORDER_BASE_ID` tinyint NOT NULL,
  `WORKORDER_LOT_ID` tinyint NOT NULL,
  `WORKORDER_SPLIT_ID` tinyint NOT NULL,
  `WORKORDER_SUB_ID` tinyint NOT NULL,
  `SEQUENCE_NO` tinyint NOT NULL,
  `RESOURCE_ID` tinyint NOT NULL,
  `SETUP_HRS` tinyint NOT NULL,
  `RUN` tinyint NOT NULL,
  `RUN_TYPE` tinyint NOT NULL,
  `RUN_HRS` tinyint NOT NULL,
  `SCHED_START_DATE` tinyint NOT NULL,
  `SCHED_FINISH_DATE` tinyint NOT NULL,
  `CALC_START_QTY` tinyint NOT NULL,
  `CALC_END_QTY` tinyint NOT NULL,
  `COMPLETED_QTY` tinyint NOT NULL,
  `DEVIATED_QTY` tinyint NOT NULL,
  `ACT_SETUP_HRS` tinyint NOT NULL,
  `ACT_RUN_HRS` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `SETUP_COMPLETED` tinyint NOT NULL,
  `RUN_QTY_PER_CYCLE` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `CLOSE_DATE` tinyint NOT NULL,
  `SERVICE_ID` tinyint NOT NULL,
  `BUR_PER_HR_RUN` tinyint NOT NULL,
  `BUR_PERCENT_RUN` tinyint NOT NULL,
  `BUR_PER_UNIT_RUN` tinyint NOT NULL,
  `BUR_PER_OPERATION` tinyint NOT NULL,
  `QTY_PER` tinyint NOT NULL,
  `LONG_SPEC` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `COST_PER_HR` tinyint NOT NULL,
  `ACT_RUN_COST` tinyint NOT NULL,
  `ACT_SETUP_COST` tinyint NOT NULL,
  `ACT_LABOR_COST` tinyint NOT NULL,
  `ACT_BURDEN_COST` tinyint NOT NULL,
  `JOB_PLAN_SEQ` tinyint NOT NULL,
  `LT_OPENJOB` tinyint NOT NULL,
  `JOB_PLAN_HRS` tinyint NOT NULL,
  `HTYPE` tinyint NOT NULL,
  `OP_DATA` tinyint NOT NULL,
  `RESOURCE_CLASS_ID` tinyint NOT NULL,
  `SPEC` tinyint NOT NULL,
  `MATERIAL_SPEC` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `COST_UM` tinyint NOT NULL,
  `COST_QTY` tinyint NOT NULL,
  `COST_MATL` tinyint NOT NULL,
  `COST_SUBCON` tinyint NOT NULL,
  `COST_TOTAL` tinyint NOT NULL,
  `NCR_ID` tinyint NOT NULL,
  `COST_TOOLING` tinyint NOT NULL,
  `COST_OTHERS` tinyint NOT NULL,
  `CLASS_DESCRIPTION` tinyint NOT NULL,
  `CLASS_ID` tinyint NOT NULL,
  `QC_PLAN_ID` tinyint NOT NULL,
  `QTY_TYPE` tinyint NOT NULL,
  `PREV_RESOURCE_ID` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `GAUGE_RENT_DIAMETER` tinyint NOT NULL,
  `GAUGE_RENT_WEIGHT` tinyint NOT NULL,
  `GAUGE_RENT_THREAD` tinyint NOT NULL,
  `GAUGE_RENT_PINBOX` tinyint NOT NULL,
  `LICENSOR_ID` tinyint NOT NULL,
  `LICENSOR_JOB` tinyint NOT NULL,
  `ACT_MATERIAL_COST` tinyint NOT NULL,
  `ACT_SUBCON_COST` tinyint NOT NULL,
  `ACT_RENTAL_COST` tinyint NOT NULL,
  `COST_MATL_DESCRIPTION` tinyint NOT NULL,
  `COST_SUBCON_DESCRIPTION` tinyint NOT NULL,
  `COST_TOOLING_DESCRIPTION` tinyint NOT NULL,
  `COST_OTHERS_DESCRIPTION` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `OPN_PART`
--

DROP TABLE IF EXISTS `OPN_PART`;
/*!50001 DROP VIEW IF EXISTS `OPN_PART`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `OPN_PART` (
  `WOREF` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `WO_JOB_ID` tinyint NOT NULL,
  `SEQ_NO` tinyint NOT NULL,
  `REQUIRED_QTY` tinyint NOT NULL,
  `ISSUED_QTY` tinyint NOT NULL,
  `QTY_DUE` tinyint NOT NULL,
  `WANT_DATE` tinyint NOT NULL,
  `OPN_STATUS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OSS_CONSOL`
--

DROP TABLE IF EXISTS `OSS_CONSOL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_CONSOL` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CONSOL_ID` char(30) NOT NULL,
  `STATUS` char(30) NOT NULL,
  `CUSTOMER_ID` char(15) NOT NULL,
  `CUSTOMER_NAME` char(50) DEFAULT NULL,
  `CURRENCY_ID` char(3) NOT NULL,
  `INVOICE_ID` char(30) DEFAULT NULL,
  `START_DATE` char(10) NOT NULL,
  `END_DATE` char(10) NOT NULL,
  `NOTES` text,
  `JOB_MULTI_STD` decimal(14,2) DEFAULT '0.00',
  `JOB_MULTI_HOL` decimal(14,2) DEFAULT '0.00',
  `JOB_MULTI_WKE` decimal(14,2) DEFAULT '0.00',
  `JOB_HRS_TOTAL` decimal(14,2) DEFAULT '0.00',
  `JOB_QTY_TOTAL` decimal(14,2) DEFAULT '0.00',
  `RENT_COST` decimal(15,2) DEFAULT '0.00',
  `SERVICE_COST` decimal(15,2) DEFAULT '0.00',
  `JOB_COST` decimal(15,2) DEFAULT '0.00',
  `TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`CONSOL_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_CONSOL`
--

LOCK TABLES `OSS_CONSOL` WRITE;
/*!40000 ALTER TABLE `OSS_CONSOL` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_CONSOL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_CUSTOMER`
--

DROP TABLE IF EXISTS `OSS_CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_CUSTOMER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` char(15) NOT NULL,
  `CUSTOMER_NAME` char(50) DEFAULT NULL,
  `CURRENCY_ID` char(3) NOT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_CUSTOMER`
--

LOCK TABLES `OSS_CUSTOMER` WRITE;
/*!40000 ALTER TABLE `OSS_CUSTOMER` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_HOUR_CHARGES`
--

DROP TABLE IF EXISTS `OSS_HOUR_CHARGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_HOUR_CHARGES` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` char(15) NOT NULL,
  `WO_CLASS` char(15) NOT NULL,
  `RATE_HOUR` decimal(14,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`WO_CLASS`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_HOUR_CHARGES`
--

LOCK TABLES `OSS_HOUR_CHARGES` WRITE;
/*!40000 ALTER TABLE `OSS_HOUR_CHARGES` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_HOUR_CHARGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_LINKED_JOBS`
--

DROP TABLE IF EXISTS `OSS_LINKED_JOBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_LINKED_JOBS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(30) DEFAULT NULL,
  `CONSOL_ID` char(30) NOT NULL,
  `WOREF` char(35) NOT NULL,
  `CUSTOMER_ID` char(15) NOT NULL,
  `SALES_ORDER_REF` char(35) NOT NULL,
  `WO_CLASS` char(15) NOT NULL,
  `PART_ID` char(30) NOT NULL,
  `RATE_PIECE` decimal(14,2) DEFAULT '0.00',
  `RATE_HOUR` decimal(14,2) DEFAULT '0.00',
  `STD_QTY` decimal(14,2) DEFAULT '0.00',
  `STD_HRS` decimal(14,2) DEFAULT '0.00',
  `STD_COST` decimal(14,2) DEFAULT '0.00',
  `PCE_COST` decimal(14,2) DEFAULT '0.00',
  `WKE_HRS` decimal(14,2) DEFAULT '0.00',
  `WKE_COST` decimal(14,2) DEFAULT '0.00',
  `HOL_HRS` decimal(14,2) DEFAULT '0.00',
  `HOL_COST` decimal(14,2) DEFAULT '0.00',
  `TOT_HRS` decimal(14,2) DEFAULT '0.00',
  `TOT_COST` decimal(14,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CONSOL_ID`,`WOREF`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_LINKED_JOBS`
--

LOCK TABLES `OSS_LINKED_JOBS` WRITE;
/*!40000 ALTER TABLE `OSS_LINKED_JOBS` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_LINKED_JOBS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_LINKED_RENTAL`
--

DROP TABLE IF EXISTS `OSS_LINKED_RENTAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_LINKED_RENTAL` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CONSOL_ID` char(30) NOT NULL,
  `RENTAL_ID` char(15) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `TYPE` char(30) NOT NULL,
  `QTY` decimal(15,2) DEFAULT '0.00',
  `UNIT_COST` decimal(15,2) DEFAULT '0.00',
  `TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `DESCRIPTION` char(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`CONSOL_ID`,`RENTAL_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_LINKED_RENTAL`
--

LOCK TABLES `OSS_LINKED_RENTAL` WRITE;
/*!40000 ALTER TABLE `OSS_LINKED_RENTAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_LINKED_RENTAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_LINKED_TICKET`
--

DROP TABLE IF EXISTS `OSS_LINKED_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_LINKED_TICKET` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TX_ID` int(11) NOT NULL,
  `CONSOL_ID` char(30) NOT NULL,
  `SERVICE_TYPE` char(15) DEFAULT NULL,
  `SERVICE_CLASS` char(15) DEFAULT NULL,
  `TX_QTY` decimal(15,2) DEFAULT '0.00',
  `HOURS_WORKED` decimal(15,2) DEFAULT '0.00',
  `HOURS_CHARGE` decimal(15,2) DEFAULT '0.00',
  `MISC_CHARGE` decimal(15,2) DEFAULT '0.00',
  `TOTAL_CHARGE` decimal(15,2) DEFAULT '0.00',
  `SITE_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`TX_ID`,`CONSOL_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_LINKED_TICKET`
--

LOCK TABLES `OSS_LINKED_TICKET` WRITE;
/*!40000 ALTER TABLE `OSS_LINKED_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_LINKED_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_PRICE_LINE`
--

DROP TABLE IF EXISTS `OSS_PRICE_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_PRICE_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` char(15) NOT NULL,
  `SERVICE_TYPE` char(15) NOT NULL,
  `SERVICE_CLASS` char(15) NOT NULL,
  `RATE_PIECE` decimal(14,2) DEFAULT '0.00',
  `RATE_HOUR` decimal(14,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`SERVICE_TYPE`,`SERVICE_CLASS`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_PRICE_LINE`
--

LOCK TABLES `OSS_PRICE_LINE` WRITE;
/*!40000 ALTER TABLE `OSS_PRICE_LINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_PRICE_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_RENTAL`
--

DROP TABLE IF EXISTS `OSS_RENTAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_RENTAL` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RENTAL_ID` char(15) NOT NULL,
  `STATUS` char(30) NOT NULL,
  `CUSTOMER_ID` char(15) NOT NULL,
  `CUSTOMER_NAME` char(50) DEFAULT NULL,
  `CURRENCY_ID` char(3) NOT NULL,
  `INVOICE_ID` char(30) DEFAULT NULL,
  `START_DATE` char(10) NOT NULL,
  `END_DATE` char(10) NOT NULL,
  `CUSTOMER_REF` char(30) DEFAULT NULL,
  `TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`RENTAL_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_RENTAL`
--

LOCK TABLES `OSS_RENTAL` WRITE;
/*!40000 ALTER TABLE `OSS_RENTAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_RENTAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_RENTAL_LINE`
--

DROP TABLE IF EXISTS `OSS_RENTAL_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_RENTAL_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `RENTAL_ID` char(15) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `TYPE` char(30) NOT NULL,
  `QTY` decimal(15,2) DEFAULT '0.00',
  `UNIT_COST` decimal(15,2) DEFAULT '0.00',
  `TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `DESCRIPTION` char(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`RENTAL_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_RENTAL_LINE`
--

LOCK TABLES `OSS_RENTAL_LINE` WRITE;
/*!40000 ALTER TABLE `OSS_RENTAL_LINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_RENTAL_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_RENT_TYPE`
--

DROP TABLE IF EXISTS `OSS_RENT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_RENT_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(15) NOT NULL,
  `DESCRIPTION` char(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_RENT_TYPE`
--

LOCK TABLES `OSS_RENT_TYPE` WRITE;
/*!40000 ALTER TABLE `OSS_RENT_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_RENT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_SERVICE_CLASS`
--

DROP TABLE IF EXISTS `OSS_SERVICE_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_SERVICE_CLASS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(15) NOT NULL,
  `DESCRIPTION` char(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_SERVICE_CLASS`
--

LOCK TABLES `OSS_SERVICE_CLASS` WRITE;
/*!40000 ALTER TABLE `OSS_SERVICE_CLASS` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_SERVICE_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_SERVICE_TYPE`
--

DROP TABLE IF EXISTS `OSS_SERVICE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_SERVICE_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(15) NOT NULL,
  `DESCRIPTION` char(80) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_SERVICE_TYPE`
--

LOCK TABLES `OSS_SERVICE_TYPE` WRITE;
/*!40000 ALTER TABLE `OSS_SERVICE_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_SERVICE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_TICKET`
--

DROP TABLE IF EXISTS `OSS_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_TICKET` (
  `TX_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TX_DATE` datetime DEFAULT NULL,
  `STATUS` char(15) DEFAULT NULL,
  `SERVICE_TYPE` char(15) DEFAULT NULL,
  `SERVICE_CLASS` char(15) DEFAULT NULL,
  `CUSTOMER_ID` char(30) DEFAULT NULL,
  `TX_QTY` decimal(15,2) DEFAULT '0.00',
  `TX_USER_ID` char(15) DEFAULT NULL,
  `TX_STARTDATE` char(10) DEFAULT NULL,
  `TX_STARTTIME` char(10) DEFAULT NULL,
  `TX_ENDDATE` char(10) DEFAULT NULL,
  `TX_ENDTIME` char(10) DEFAULT NULL,
  `HOURS_WORKED` decimal(15,2) DEFAULT '0.00',
  `MULTIPLIER` decimal(7,2) DEFAULT '0.00',
  `HOURS_CHARGE` decimal(15,2) DEFAULT '0.00',
  `MISC_CHARGE` decimal(15,2) DEFAULT '0.00',
  `TOTAL_CHARGE` decimal(15,2) DEFAULT '0.00',
  `RATE_PIECE` decimal(14,2) DEFAULT '0.00',
  `RATE_HOUR` decimal(6,2) DEFAULT '0.00',
  `NOTES` text,
  `USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `TX_ID` (`TX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_TICKET`
--

LOCK TABLES `OSS_TICKET` WRITE;
/*!40000 ALTER TABLE `OSS_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSS_WO_CHARGES`
--

DROP TABLE IF EXISTS `OSS_WO_CHARGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSS_WO_CHARGES` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` char(15) NOT NULL,
  `WO_CLASS` char(15) NOT NULL,
  `PART_ID` char(30) NOT NULL,
  `RATE_PIECE` decimal(14,2) DEFAULT '0.00',
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`WO_CLASS`,`PART_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSS_WO_CHARGES`
--

LOCK TABLES `OSS_WO_CHARGES` WRITE;
/*!40000 ALTER TABLE `OSS_WO_CHARGES` DISABLE KEYS */;
/*!40000 ALTER TABLE `OSS_WO_CHARGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PART`
--

DROP TABLE IF EXISTS `PART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ALIAS_DESC` varchar(50) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `PART_CLASS_ID` varchar(15) DEFAULT NULL,
  `TRACEABLE` varchar(1) DEFAULT NULL,
  `LOT_SIZE` int(11) DEFAULT NULL,
  `TRACE_USER_1_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_2_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_3_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_4_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_5_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_6_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_7_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_8_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_9_LBL` varchar(40) DEFAULT NULL,
  `TRACE_USER_10_LBL` varchar(40) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `BAL_QTY` decimal(14,4) DEFAULT NULL,
  `PART_REV_NO` varchar(50) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT 'Y',
  `UNIT_MATERIAL_COST` decimal(15,4) DEFAULT '0.0000',
  `PRODUCT_CODE` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `UOM_ID` char(15) DEFAULT NULL,
  `DIM_TRACKED` varchar(1) DEFAULT 'N',
  `LENGTH` varchar(1) DEFAULT 'N',
  `WIDTH` varchar(1) DEFAULT 'N',
  `HEIGHT` varchar(1) DEFAULT 'N',
  `DIM_UOM` varchar(15) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART`
--

LOCK TABLES `PART` WRITE;
/*!40000 ALTER TABLE `PART` DISABLE KEYS */;
INSERT INTO `PART` VALUES (1,'PART001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MAKE_STAGED','N',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',0.0000,'FG',NULL,'2017-07-21 09:10:41',NULL,NULL,NULL,'EA','N','N','N','N','');
/*!40000 ALTER TABLE `PART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PART_BAL_DIM`
--

DROP TABLE IF EXISTS `PART_BAL_DIM`;
/*!50001 DROP VIEW IF EXISTS `PART_BAL_DIM`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_BAL_DIM` (
  `PART_ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `ALIAS_DESC` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `UOM_ID` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `TRACEABLE` tinyint NOT NULL,
  `LOT_SIZE` tinyint NOT NULL,
  `UNIT_MATERIAL_COST` tinyint NOT NULL,
  `TRACE_USER_1_LBL` tinyint NOT NULL,
  `TRACE_USER_2_LBL` tinyint NOT NULL,
  `TRACE_USER_3_LBL` tinyint NOT NULL,
  `TRACE_USER_4_LBL` tinyint NOT NULL,
  `TRACE_USER_5_LBL` tinyint NOT NULL,
  `TRACE_USER_6_LBL` tinyint NOT NULL,
  `TRACE_USER_7_LBL` tinyint NOT NULL,
  `TRACE_USER_8_LBL` tinyint NOT NULL,
  `TRACE_USER_9_LBL` tinyint NOT NULL,
  `TRACE_USER_10_LBL` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `DIM_TRACKED` tinyint NOT NULL,
  `LENGTH` tinyint NOT NULL,
  `WIDTH` tinyint NOT NULL,
  `HEIGHT` tinyint NOT NULL,
  `DIM_UOM` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PART_BAL_QTY`
--

DROP TABLE IF EXISTS `PART_BAL_QTY`;
/*!50001 DROP VIEW IF EXISTS `PART_BAL_QTY`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_BAL_QTY` (
  `ROWID` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `ALIAS_DESC` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `TRACEABLE` tinyint NOT NULL,
  `LOT_SIZE` tinyint NOT NULL,
  `TRACE_USER_1_LBL` tinyint NOT NULL,
  `TRACE_USER_2_LBL` tinyint NOT NULL,
  `TRACE_USER_3_LBL` tinyint NOT NULL,
  `TRACE_USER_4_LBL` tinyint NOT NULL,
  `TRACE_USER_5_LBL` tinyint NOT NULL,
  `TRACE_USER_6_LBL` tinyint NOT NULL,
  `TRACE_USER_7_LBL` tinyint NOT NULL,
  `TRACE_USER_8_LBL` tinyint NOT NULL,
  `TRACE_USER_9_LBL` tinyint NOT NULL,
  `TRACE_USER_10_LBL` tinyint NOT NULL,
  `UDF_LAYOUT_ID` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL,
  `PART_REV_NO` tinyint NOT NULL,
  `ACTIVE` tinyint NOT NULL,
  `UNIT_MATERIAL_COST` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL,
  `USER_ID` tinyint NOT NULL,
  `CREATE_DATE` tinyint NOT NULL,
  `LAST_MODIFIED_USER_ID` tinyint NOT NULL,
  `LAST_MODIFIED_DATE` tinyint NOT NULL,
  `SITE_ID` tinyint NOT NULL,
  `UOM_ID` tinyint NOT NULL,
  `DIM_TRACKED` tinyint NOT NULL,
  `LENGTH` tinyint NOT NULL,
  `WIDTH` tinyint NOT NULL,
  `HEIGHT` tinyint NOT NULL,
  `DIM_UOM` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PART_DIM_WOREF_ISSUE`
--

DROP TABLE IF EXISTS `PART_DIM_WOREF_ISSUE`;
/*!50001 DROP VIEW IF EXISTS `PART_DIM_WOREF_ISSUE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_DIM_WOREF_ISSUE` (
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `LENGTH` tinyint NOT NULL,
  `WIDTH` tinyint NOT NULL,
  `HEIGHT` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PART_LOCATION`
--

DROP TABLE IF EXISTS `PART_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART_LOCATION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `PART_ID` varchar(30) NOT NULL,
  `WAREHOUSE_ID` varchar(15) NOT NULL,
  `LOCATION_ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HOLD_REASON_ID` varchar(15) DEFAULT NULL,
  `QTY` decimal(14,4) DEFAULT '0.0000',
  `STATUS` varchar(1) NOT NULL,
  `LOCKED` varchar(1) DEFAULT 'N',
  `TRANSIT` varchar(1) DEFAULT 'N',
  `LAST_COUNT_DATE` datetime DEFAULT NULL,
  `PURGE_QTY` decimal(14,4) DEFAULT NULL,
  `COMMITTED_QTY` decimal(14,4) DEFAULT '0.0000',
  `DEF_BACKFLUSH_LOC` varchar(1) DEFAULT 'N',
  `AUTO_ISSUE_LOC` varchar(1) DEFAULT 'N',
  `DEF_INSPECT_LOC` varchar(1) DEFAULT 'N',
  `DC_CLASS_ID` varchar(1) DEFAULT NULL,
  `ORDER_POINT` decimal(14,4) DEFAULT NULL,
  `ORDER_UP_TO_QTY` decimal(14,4) DEFAULT NULL,
  `STATUS_EFF_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART_LOCATION`
--

LOCK TABLES `PART_LOCATION` WRITE;
/*!40000 ALTER TABLE `PART_LOCATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `PART_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PART_PLAN`
--

DROP TABLE IF EXISTS `PART_PLAN`;
/*!50001 DROP VIEW IF EXISTS `PART_PLAN`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_PLAN` (
  `Ord` tinyint NOT NULL,
  `PLAN_TYPE` tinyint NOT NULL,
  `DOC_TYPE` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `WANT_DATE` tinyint NOT NULL,
  `QTY` tinyint NOT NULL,
  `DD_REF` tinyint NOT NULL,
  `SS_REF` tinyint NOT NULL,
  `DESCRIPTION` tinyint NOT NULL,
  `UOM_ID` tinyint NOT NULL,
  `PRODUCT_CODE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PART_PRICE`
--

DROP TABLE IF EXISTS `PART_PRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART_PRICE` (
  `PART_ID` varchar(30) NOT NULL,
  `CURRENCY_ID` varchar(3) NOT NULL,
  `UNIT_PRICE` decimal(15,4) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PART_ID`,`CURRENCY_ID`),
  CONSTRAINT `PART_PRICE_ibfk_1` FOREIGN KEY (`PART_ID`) REFERENCES `PART` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART_PRICE`
--

LOCK TABLES `PART_PRICE` WRITE;
/*!40000 ALTER TABLE `PART_PRICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PART_PRICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PART_TRACE`
--

DROP TABLE IF EXISTS `PART_TRACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART_TRACE` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PART_ID` varchar(30) NOT NULL,
  `TRACE_ID` varchar(50) NOT NULL,
  `TRACE_DATE` datetime NOT NULL,
  `TRACE_USER_1` varchar(80) DEFAULT NULL,
  `TRACE_USER_2` varchar(80) DEFAULT NULL,
  `TRACE_USER_3` varchar(80) DEFAULT NULL,
  `TRACE_USER_4` varchar(80) DEFAULT NULL,
  `TRACE_USER_5` varchar(80) DEFAULT NULL,
  `TRACE_USER_6` varchar(80) DEFAULT NULL,
  `TRACE_USER_7` varchar(80) DEFAULT NULL,
  `TRACE_USER_8` varchar(80) DEFAULT NULL,
  `TRACE_USER_9` varchar(80) DEFAULT NULL,
  `TRACE_USER_10` varchar(80) DEFAULT NULL,
  `UNIT_MATERIAL_COST` decimal(15,4) DEFAULT NULL,
  `USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  UNIQUE KEY `ROW_ID` (`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART_TRACE`
--

LOCK TABLES `PART_TRACE` WRITE;
/*!40000 ALTER TABLE `PART_TRACE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PART_TRACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PART_TRACE_BAL`
--

DROP TABLE IF EXISTS `PART_TRACE_BAL`;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_BAL`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_TRACE_BAL` (
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `TRACE_DATE` tinyint NOT NULL,
  `TRACE_MATERIAL_COST` tinyint NOT NULL,
  `EXPIRY_DATE` tinyint NOT NULL,
  `TRACE_USER_1` tinyint NOT NULL,
  `TRACE_USER_2` tinyint NOT NULL,
  `TRACE_USER_3` tinyint NOT NULL,
  `TRACE_USER_4` tinyint NOT NULL,
  `TRACE_USER_5` tinyint NOT NULL,
  `TRACE_USER_6` tinyint NOT NULL,
  `TRACE_USER_7` tinyint NOT NULL,
  `TRACE_USER_8` tinyint NOT NULL,
  `TRACE_USER_9` tinyint NOT NULL,
  `TRACE_USER_10` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `LOT_SIZE` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PART_TRACE_SHIP_ISSUE`
--

DROP TABLE IF EXISTS `PART_TRACE_SHIP_ISSUE`;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_SHIP_ISSUE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_TRACE_SHIP_ISSUE` (
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PART_TRACE_WOREF_ISSUE`
--

DROP TABLE IF EXISTS `PART_TRACE_WOREF_ISSUE`;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_WOREF_ISSUE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_TRACE_WOREF_ISSUE` (
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PART_TRACE_WOREF_RECEIPT`
--

DROP TABLE IF EXISTS `PART_TRACE_WOREF_RECEIPT`;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_WOREF_RECEIPT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_TRACE_WOREF_RECEIPT` (
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `BAL_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PART_TRANS`
--

DROP TABLE IF EXISTS `PART_TRANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART_TRANS` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANSACTION_DATE` datetime NOT NULL,
  `PART_ID` varchar(30) NOT NULL,
  `TRACE_ID` varchar(50) DEFAULT NULL,
  `QTY` decimal(14,4) NOT NULL,
  `TRANS_TYPE` varchar(7) NOT NULL,
  `WOREF` varchar(50) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `DOCUMENT_ID` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `UNIT_MATERIAL_COST` decimal(15,4) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `TRANSACTION_ID` (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART_TRANS`
--

LOCK TABLES `PART_TRANS` WRITE;
/*!40000 ALTER TABLE `PART_TRANS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PART_TRANS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PART_TRANS_BI BEFORE INSERT  ON PART_TRANS
  FOR EACH ROW 
  BEGIN
	DECLARE pMCOST DECIMAL(14,4);
    DECLARE vTRANS_TYPE VARCHAR(3);
    DECLARE pCNT int;
    SET vTRANS_TYPE=SUBSTR(NEW.TRANS_TYPE,1,3) ;
    
    SET pCNT=0;
    SELECT count(*) FROM PART_TRACE WHERE TRACE_ID=NEW.TRACE_ID AND PART_ID=NEW.PART_ID INTO pCNT;
   
		IF IFNULL(NEW.TRACE_ID,'')<>'' THEN
			BEGIN
				IF pCNT<>0 THEN
					SELECT UNIT_MATERIAL_COST FROM PART_TRACE WHERE TRACE_ID=NEW.TRACE_ID AND PART_ID=NEW.PART_ID INTO pMCOST;
					SET NEW.UNIT_MATERIAL_COST=pMCOST;
                END IF;
			END;
        ELSE
			BEGIN
				SELECT UNIT_MATERIAL_COST FROM PART WHERE ID=NEW.PART_ID INTO pMCOST;
				SET NEW.UNIT_MATERIAL_COST=pMCOST;
			END;
        END IF;      
	
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PART_TRANS_AI AFTER INSERT  ON PART_TRANS
  FOR EACH ROW 
  BEGIN
  	DECLARE pMCOST DECIMAL(14,4);
    DECLARE pTTL_MCOST DECIMAL(14,4);
  
  	DECLARE vTRANS_TYPE VARCHAR(3);
    DECLARE vBAL_QTY DECIMAL(14,4);
    DECLARE vCNT INT;
    DECLARE vSEQ INT;
    
    SET pTTL_MCOST=0;
    SET vBAL_QTY=0;
    
    SELECT SUM(CASE WHEN TRANS_TYPE='JOB-OUT' THEN UNIT_MATERIAL_COST*QTY  WHEN TRANS_TYPE='JOB-IN' THEN UNIT_MATERIAL_COST*QTY*-1 END) 
    FROM PART_TRANS WHERE WOREF=NEW.WOREF INTO pTTL_MCOST;
    
    UPDATE OPERATION SET ACT_MATERIAL_COST=pTTL_MCOST WHERE WOREF=NEW.WOREF;
    
    SET vTRANS_TYPE=SUBSTR(NEW.TRANS_TYPE,1,3) ;
    
    IF vTRANS_TYPE='JOB' THEN
		SELECT COUNT(*) FROM OPERATION_PART WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID INTO vCNT;
        
        IF vCNT=0 THEN
			INSERT INTO OPERATION_PART (WOREF,PART_ID,ISSUED_QTY) VALUES(NEW.WOREF,NEW.PART_ID,NEW.QTY);
        END IF;
		 IF vCNT<>0 THEN
			 SELECT SUM(BAL_QTY) FROM PART_TRACE_WOREF_ISSUE WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID INTO vBAL_QTY;
			 UPDATE OPERATION_PART SET ISSUED_QTY=vBAL_QTY WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID;
        END IF;
    END IF;
	
    select SUM(CASE WHEN TRANS_TYPE='FG-IN' THEN QTY ELSE QTY*-1 END) from PART_TRANS WHERE TRANS_TYPE LIKE 'FG%' AND PART_ID=NEW.PART_ID AND WOREF=NEW.WOREF INTO vBAL_QTY;
	UPDATE WORK_ORDER SET RECEIVED_QTY=vBAL_QTY WHERE WOREF=NEW.WOREF;
    UPDATE WORK_ORDER SET LAST_MODIFIED_DATE=NOW() WHERE WOREF=NEW.WOREF;
    
    SELECT SUM(CASE WHEN SUBSTR(TRANS_TYPE,INSTR(TRANS_TYPE,'-')+1,3)='IN' THEN QTY ELSE QTY*-1 END) FROM PART_TRANS WHERE PART_ID=NEW.PART_ID INTO vBAL_QTY;
    UPDATE PART SET BAL_QTY=vBAL_QTY WHERE ID=NEW.PART_ID;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PART_TRANS_BU BEFORE UPDATE  ON PART_TRANS
  FOR EACH ROW 
  BEGIN
	DECLARE pMCOST DECIMAL(14,4);
    DECLARE vTRANS_TYPE VARCHAR(3);
    DECLARE pCNT int;
    
    SET vTRANS_TYPE=SUBSTR(NEW.TRANS_TYPE,1,3) ;
    
    SET pCNT=0;
    SELECT count(*) FROM PART_TRACE WHERE TRACE_ID=NEW.TRACE_ID AND PART_ID=NEW.PART_ID INTO pCNT;

		IF IFNULL(NEW.TRACE_ID,'') <>'' THEN
			BEGIN
				if pCNT<>0 THEN
					SELECT UNIT_MATERIAL_COST FROM PART_TRACE WHERE TRACE_ID=NEW.TRACE_ID AND PART_ID=NEW.PART_ID INTO pMCOST;
					SET NEW.UNIT_MATERIAL_COST=pMCOST;
                END IF;
			END;
        ELSE
			BEGIN
				SELECT UNIT_MATERIAL_COST FROM PART WHERE ID=NEW.PART_ID INTO pMCOST;
				SET NEW.UNIT_MATERIAL_COST=pMCOST;
			END;
        END IF;      

  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PART_TRANS_AU AFTER UPDATE  ON PART_TRANS
  FOR EACH ROW 
  BEGIN
	DECLARE pMCOST DECIMAL(14,4);
    DECLARE pTTL_MCOST DECIMAL(14,4);
 
    dECLARE vTRANS_TYPE VARCHAR(3);  
    DECLARE vBAL_QTY DECIMAL(14,4);

    DECLARE vCNT INT;
    DECLARE vSEQ INT;
    
    SET pTTL_MCOST=0;
    SET vBAL_QTY=0;
	SELECT SUM(CASE WHEN TRANS_TYPE='JOB-OUT' THEN UNIT_MATERIAL_COST*QTY WHEN TRANS_TYPE='JOB-IN' THEN UNIT_MATERIAL_COST*QTY *-1 END) 
    FROM PART_TRANS WHERE WOREF=NEW.WOREF INTO pTTL_MCOST;
    
    UPDATE OPERATION SET ACT_MATERIAL_COST=pTTL_MCOST WHERE WOREF=NEW.WOREF;


    SET vTRANS_TYPE=SUBSTR(NEW.TRANS_TYPE,1,3) ;

    IF vTRANS_TYPE='JOB' THEN
		SELECT COUNT(*) FROM OPERATION_PART WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID INTO vCNT;
        IF vCNT=0 THEN
			INSERT INTO OPERATION_PART (WOREF,PART_ID,ISSUED_QTY) VALUES(NEW.WOREF,NEW.PART_ID,NEW.QTY);
        END IF;
		IF vCNT<>0 THEN
			SELECT SUM(BAL_QTY) FROM PART_TRACE_WOREF_ISSUE WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID INTO vBAL_QTY;
			UPDATE OPERATION_PART SET ISSUED_QTY=vBAL_QTY WHERE WOREF=NEW.WOREF AND PART_ID=NEW.PART_ID;
        END IF;
    END IF;


		 select SUM(CASE WHEN TRANS_TYPE='FG-IN' THEN QTY ELSE QTY*-1 END) from PART_TRANS WHERE TRANS_TYPE LIKE 'FG%' AND PART_ID=NEW.PART_ID AND WOREF=NEW.WOREF INTO vBAL_QTY;
		UPDATE WORK_ORDER SET RECEIVED_QTY=vBAL_QTY  WHERE WOREF=NEW.WOREF;
    UPDATE WORK_ORDER SET LAST_MODIFIED_DATE=NOW() WHERE WOREF=NEW.WOREF;
     SELECT SUM(CASE WHEN SUBSTR(TRANS_TYPE,INSTR(TRANS_TYPE,'-')+1,3)='IN' THEN QTY ELSE QTY*-1 END) FROM PART_TRANS WHERE PART_ID=NEW.PART_ID INTO vBAL_QTY;
    UPDATE PART SET BAL_QTY=vBAL_QTY WHERE ID=NEW.PART_ID;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PART_TRANS_AD AFTER DELETE  ON PART_TRANS
  FOR EACH ROW 
  BEGIN
	DECLARE pMCOST DECIMAL(14,4);
    DECLARE pTTL_MCOST DECIMAL(14,4);
 
    dECLARE vTRANS_TYPE VARCHAR(3);  
    DECLARE vBAL_QTY DECIMAL(14,4);

    DECLARE vCNT INT;
    DECLARE vSEQ INT;
    
    SET pTTL_MCOST=0;
    SET vBAL_QTY=0;
    
    IF OLD.TRANS_TYPE='ADJ-IN' THEN
		DELETE FROM PART_TRACE WHERE TRACE_ID=OLD.TRACE_ID AND PART_ID=OLD.PART_ID;
	END IF;
    
	SELECT SUM(CASE WHEN TRANS_TYPE='JOB-OUT' THEN UNIT_MATERIAL_COST*QTY WHEN TRANS_TYPE='JOB-IN' THEN UNIT_MATERIAL_COST*QTY *-1 END) 
    FROM PART_TRANS WHERE WOREF=OLD.WOREF INTO pTTL_MCOST;
    
    UPDATE OPERATION SET ACT_MATERIAL_COST=pTTL_MCOST WHERE WOREF=OLD.WOREF;

			SELECT SUM(BAL_QTY) FROM PART_TRACE_WOREF_ISSUE WHERE WOREF=OLD.WOREF AND PART_ID=OLD.PART_ID INTO vBAL_QTY;
			UPDATE OPERATION_PART SET ISSUED_QTY=vBAL_QTY WHERE WOREF=OLD.WOREF AND PART_ID=OLD.PART_ID;
            

		 select SUM(CASE WHEN TRANS_TYPE='FG-IN' THEN QTY ELSE QTY*-1 END) from PART_TRANS WHERE TRANS_TYPE LIKE 'FG%' AND PART_ID=OLD.PART_ID AND WOREF=OLD.WOREF INTO vBAL_QTY;
		UPDATE WORK_ORDER SET RECEIVED_QTY=vBAL_QTY WHERE WOREF=OLD.WOREF;
    
     SELECT SUM(CASE WHEN SUBSTR(TRANS_TYPE,INSTR(TRANS_TYPE,'-')+1,3)='IN' THEN QTY ELSE QTY*-1 END) FROM PART_TRANS WHERE PART_ID=OLD.PART_ID INTO vBAL_QTY;
    UPDATE PART SET BAL_QTY=vBAL_QTY WHERE ID=OLD.PART_ID;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PART_TRANS_DIM`
--

DROP TABLE IF EXISTS `PART_TRANS_DIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PART_TRANS_DIM` (
  `TRANSACTION_ID` int(11) DEFAULT NULL,
  `LENGTH` decimal(15,4) DEFAULT '1.0000',
  `WIDTH` decimal(15,4) DEFAULT '1.0000',
  `HEIGHT` decimal(15,4) DEFAULT '1.0000',
  `PC_QTY` decimal(15,4) DEFAULT '0.0000',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PART_TRANS_DIM`
--

LOCK TABLES `PART_TRANS_DIM` WRITE;
/*!40000 ALTER TABLE `PART_TRANS_DIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `PART_TRANS_DIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PART_TRANS_RUNNING_BAL`
--

DROP TABLE IF EXISTS `PART_TRANS_RUNNING_BAL`;
/*!50001 DROP VIEW IF EXISTS `PART_TRANS_RUNNING_BAL`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PART_TRANS_RUNNING_BAL` (
  `TRACEABLE` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `DOCUMENT_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `TRANSACTION_DATE` tinyint NOT NULL,
  `TRANSACTION_ID` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `TRANS_TYPE` tinyint NOT NULL,
  `TRACE_USER_1` tinyint NOT NULL,
  `TRACE_USER_2` tinyint NOT NULL,
  `TRACE_USER_3` tinyint NOT NULL,
  `TRACE_USER_4` tinyint NOT NULL,
  `TRACE_USER_5` tinyint NOT NULL,
  `TRACE_USER_6` tinyint NOT NULL,
  `TRACE_USER_7` tinyint NOT NULL,
  `TRACE_USER_8` tinyint NOT NULL,
  `TRACE_USER_9` tinyint NOT NULL,
  `TRACE_USER_10` tinyint NOT NULL,
  `USER_1` tinyint NOT NULL,
  `USER_2` tinyint NOT NULL,
  `USER_3` tinyint NOT NULL,
  `USER_4` tinyint NOT NULL,
  `USER_5` tinyint NOT NULL,
  `USER_6` tinyint NOT NULL,
  `USER_7` tinyint NOT NULL,
  `USER_8` tinyint NOT NULL,
  `USER_9` tinyint NOT NULL,
  `USER_10` tinyint NOT NULL,
  `PART_CLASS_ID` tinyint NOT NULL,
  `TRANS_UNIT_MATERIAL_COST` tinyint NOT NULL,
  `TRACE_UNIT_MATERIAL_COST` tinyint NOT NULL,
  `QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PO_APPROVAL`
--

DROP TABLE IF EXISTS `PO_APPROVAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PO_APPROVAL` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(15) NOT NULL,
  `DESCRIPTION` char(50) DEFAULT NULL,
  `AMOUNT_LIMIT` decimal(15,2) DEFAULT '0.00',
  `APPV_USER_ID` char(15) DEFAULT NULL,
  `APPV_USER_EMAIL` char(50) DEFAULT NULL,
  `USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PO_APPROVAL`
--

LOCK TABLES `PO_APPROVAL` WRITE;
/*!40000 ALTER TABLE `PO_APPROVAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PO_APPROVAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_CODE`
--

DROP TABLE IF EXISTS `PRODUCT_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_CODE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(80) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_CODE`
--

LOCK TABLES `PRODUCT_CODE` WRITE;
/*!40000 ALTER TABLE `PRODUCT_CODE` DISABLE KEYS */;
INSERT INTO `PRODUCT_CODE` VALUES (1,'FG','Finished Goods',NULL,'2017-07-21 09:10:19',NULL,NULL,NULL);
/*!40000 ALTER TABLE `PRODUCT_CODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `PROD_MASTER_CUSTOMER_INFO`
--

DROP TABLE IF EXISTS `PROD_MASTER_CUSTOMER_INFO`;
/*!50001 DROP VIEW IF EXISTS `PROD_MASTER_CUSTOMER_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PROD_MASTER_CUSTOMER_INFO` (
  `prodMasterByCustAutoEmail` tinyint NOT NULL,
  `JSON_DATA` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PURCHASE_ORDER`
--

DROP TABLE IF EXISTS `PURCHASE_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASE_ORDER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUEST_ID` char(30) NOT NULL,
  `ORDER_ID` char(30) DEFAULT NULL,
  `REV_NO` int(11) DEFAULT NULL,
  `CONTRACT_TYPE` char(1) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `APPROVAL_STATUS` char(1) NOT NULL,
  `VENDOR_ID` char(15) NOT NULL,
  `REQUIRED_DATE` datetime DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL,
  `CURRENCY_ID` char(3) DEFAULT NULL,
  `EXCHANGE_RATE` decimal(15,4) DEFAULT NULL,
  `GST_ID` char(15) DEFAULT NULL,
  `GST_RATE` decimal(15,4) DEFAULT NULL,
  `DELIVER_ADDR_1` char(50) DEFAULT NULL,
  `DELIVER_ADDR_2` char(50) DEFAULT NULL,
  `DELIVER_ADDR_3` char(50) DEFAULT NULL,
  `ORDER_NOTES` text,
  `REV_NOTES` text,
  `REQUESTOR_ID` char(15) DEFAULT NULL,
  `REQUESTOR_EMAIL` char(80) DEFAULT NULL,
  `USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `TOTAL_ORDERED_AMOUNT` decimal(15,2) DEFAULT '0.00',
  `USER_1` char(80) DEFAULT NULL,
  `USER_2` char(80) DEFAULT NULL,
  `USER_3` char(80) DEFAULT NULL,
  `USER_4` char(80) DEFAULT NULL,
  `USER_5` char(80) DEFAULT NULL,
  `USER_6` char(80) DEFAULT NULL,
  `USER_7` char(80) DEFAULT NULL,
  `USER_8` char(80) DEFAULT NULL,
  `USER_9` char(80) DEFAULT NULL,
  `USER_10` char(80) DEFAULT NULL,
  `UDF_LAYOUT_ID` char(80) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`REQUEST_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE_ORDER`
--

LOCK TABLES `PURCHASE_ORDER` WRITE;
/*!40000 ALTER TABLE `PURCHASE_ORDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASE_ORDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_AI AFTER INSERT ON PURCHASE_ORDER
  FOR EACH ROW 
  BEGIN
    DELETE FROM PURC_ORDER_APPV WHERE REQUEST_ID=NEW.REQUEST_ID;
     INSERT INTO PURC_ORDER_APPV(LINE_NO,REQUEST_ID,LEVEL_ID,APPV_USER_ID,APPV_USER_EMAIL)
            select @ROW_NUMBER:=@ROW_NUMBER+1 AS ROW_NUMBER,NEW.REQUEST_ID,ID,APPV_USER_ID,APPV_USER_EMAIL FROM PO_APPROVAL,(SELECT @ROW_NUMBER:=0) AS T WHERE AMOUNT_LIMIT<NEW.TOTAL_ORDERED_AMOUNT ORDER BY AMOUNT_LIMIT ASC;

  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_AU AFTER UPDATE ON PURCHASE_ORDER
  FOR EACH ROW 
  BEGIN
	IF NEW.STATUS='Q' THEN
		IF NEW. APPROVAL_STATUS='P' THEN
			DELETE FROM PURC_ORDER_APPV WHERE REQUEST_ID=NEW.REQUEST_ID;
            INSERT INTO PURC_ORDER_APPV(LINE_NO,REQUEST_ID,LEVEL_ID,APPV_USER_ID,APPV_USER_EMAIL)
            select @ROW_NUMBER:=@ROW_NUMBER+1 AS ROW_NUMBER,NEW.REQUEST_ID,ID,APPV_USER_ID,APPV_USER_EMAIL FROM PO_APPROVAL,(SELECT @ROW_NUMBER:=0) AS T WHERE AMOUNT_LIMIT<NEW.TOTAL_ORDERED_AMOUNT ORDER BY AMOUNT_LIMIT ASC;

        END IF;
        
    END IF;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PURCHASE_ORDER_LINE`
--

DROP TABLE IF EXISTS `PURCHASE_ORDER_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASE_ORDER_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUEST_ID` char(30) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `ORDER_QTY` decimal(14,4) DEFAULT '0.0000',
  `RECEIVED_QTY` decimal(14,4) DEFAULT '0.0000',
  `UNIT_PRICE` decimal(15,4) DEFAULT '0.0000',
  `TOTAL_PRICE` decimal(15,4) DEFAULT '0.0000',
  `REQUIRED_DATE` datetime DEFAULT NULL,
  `PART_ID` char(30) DEFAULT NULL,
  `WOREF` char(50) DEFAULT NULL,
  `POREF` char(50) DEFAULT NULL,
  `USER_1` char(80) DEFAULT NULL,
  `USER_2` char(80) DEFAULT NULL,
  `USER_3` char(80) DEFAULT NULL,
  `USER_4` char(80) DEFAULT NULL,
  `USER_5` char(80) DEFAULT NULL,
  `USER_6` char(80) DEFAULT NULL,
  `USER_7` char(80) DEFAULT NULL,
  `USER_8` char(80) DEFAULT NULL,
  `USER_9` char(80) DEFAULT NULL,
  `USER_10` char(80) DEFAULT NULL,
  `UDF_LAYOUT_ID` char(80) DEFAULT NULL,
  `USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`REQUEST_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE_ORDER_LINE`
--

LOCK TABLES `PURCHASE_ORDER_LINE` WRITE;
/*!40000 ALTER TABLE `PURCHASE_ORDER_LINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASE_ORDER_LINE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_LINE_AI AFTER INSERT ON PURCHASE_ORDER_LINE
  FOR EACH ROW 
  BEGIN
	DECLARE pTTL DECIMAL(14,4);
    SELECT SUM(TOTAL_PRICE) FROM PURCHASE_ORDER_LINE WHERE REQUEST_ID=NEW.REQUEST_ID INTO pTTL;
    UPDATE PURCHASE_ORDER SET TOTAL_ORDERED_AMOUNT=pTTL WHERE REQUEST_ID=NEW.REQUEST_ID;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_LINE_AU AFTER UPDATE ON PURCHASE_ORDER_LINE
  FOR EACH ROW 
  BEGIN
	DECLARE pTTL DECIMAL(14,4);
    SELECT SUM(TOTAL_PRICE) FROM PURCHASE_ORDER_LINE WHERE REQUEST_ID=NEW.REQUEST_ID INTO pTTL;
    UPDATE PURCHASE_ORDER SET TOTAL_ORDERED_AMOUNT=pTTL WHERE REQUEST_ID=NEW.REQUEST_ID;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PURCHASE_ORDER_LIST`
--

DROP TABLE IF EXISTS `PURCHASE_ORDER_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASE_ORDER_LIST` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_ID` char(30) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `LINE_STATUS` char(1) DEFAULT 'R',
  `PART_ID` char(30) DEFAULT NULL,
  `QTY` decimal(15,2) DEFAULT '0.00',
  `EST_RECEIPT_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` char(15) DEFAULT NULL,
  `PO_TYPE` varchar(1) DEFAULT NULL,
  `WOREF` varchar(50) DEFAULT NULL,
  `AMOUNT` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`PO_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE_ORDER_LIST`
--

LOCK TABLES `PURCHASE_ORDER_LIST` WRITE;
/*!40000 ALTER TABLE `PURCHASE_ORDER_LIST` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASE_ORDER_LIST` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_LIST_BI BEFORE INSERT ON PURCHASE_ORDER_LIST
  FOR EACH ROW 
  BEGIN
    IF NEW.PO_TYPE='S' THEN
        UPDATE OPERATION SET COST_SUBCON=NEW.AMOUNT,COST_SUBCON_DESCRIPTION=CONCAT(NEW.PO_ID,'^',NEW.LINE_NO) WHERE WOREF=NEW.WOREF;
    END IF;

  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER PURCHASE_ORDER_LIST_BU BEFORE UPDATE ON PURCHASE_ORDER_LIST
  FOR EACH ROW 
  BEGIN
    IF NEW.PO_TYPE='S' THEN
        UPDATE OPERATION SET COST_SUBCON=NEW.AMOUNT,COST_SUBCON_DESCRIPTION=CONCAT(NEW.PO_ID,'^',NEW.LINE_NO) WHERE WOREF=NEW.WOREF;
    END IF;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PURC_ORDER_APPV`
--

DROP TABLE IF EXISTS `PURC_ORDER_APPV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURC_ORDER_APPV` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUEST_ID` char(15) NOT NULL,
  `LEVEL_ID` char(15) NOT NULL,
  `APPV_USER_ID` char(15) NOT NULL,
  `APPV_USER_EMAIL` char(50) DEFAULT NULL,
  `LINE_NO` int(11) NOT NULL,
  `APPV_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`REQUEST_ID`,`LEVEL_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURC_ORDER_APPV`
--

LOCK TABLES `PURC_ORDER_APPV` WRITE;
/*!40000 ALTER TABLE `PURC_ORDER_APPV` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURC_ORDER_APPV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURE_AUDIT`
--

DROP TABLE IF EXISTS `PURE_AUDIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURE_AUDIT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `SQL_TEXT` longtext,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURE_AUDIT`
--

LOCK TABLES `PURE_AUDIT` WRITE;
/*!40000 ALTER TABLE `PURE_AUDIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURE_AUDIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURE_MAILLOG`
--

DROP TABLE IF EXISTS `PURE_MAILLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURE_MAILLOG` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `MAIL_FROM` varchar(255) DEFAULT NULL,
  `MAIL_TO` varchar(255) DEFAULT NULL,
  `MAIL_CC` varchar(255) DEFAULT NULL,
  `MAIL_BCC` varchar(255) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `MSG` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURE_MAILLOG`
--

LOCK TABLES `PURE_MAILLOG` WRITE;
/*!40000 ALTER TABLE `PURE_MAILLOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURE_MAILLOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURE_STATS`
--

DROP TABLE IF EXISTS `PURE_STATS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURE_STATS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `STAT_TYPE` varchar(15) NOT NULL,
  `STAT_ID` varchar(30) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `VALUE` int(11) DEFAULT '0',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURE_STATS`
--

LOCK TABLES `PURE_STATS` WRITE;
/*!40000 ALTER TABLE `PURE_STATS` DISABLE KEYS */;
INSERT INTO `PURE_STATS` VALUES (1,'VWLTSA','job_closed','2015-03-09 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(2,'VWLTSA','job_closed','2015-03-10 00:00:00',20,'2017-03-17 09:16:56',NULL,NULL,NULL),(3,'VWLTSA','job_closed','2015-03-11 00:00:00',24,'2017-03-17 09:16:56',NULL,NULL,NULL),(4,'VWLTSA','job_closed','2015-03-12 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(5,'VWLTSA','job_closed','2015-03-13 00:00:00',20,'2017-03-17 09:16:56',NULL,NULL,NULL),(6,'VWLTSA','job_closed','2015-03-14 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(7,'VWLTSA','job_closed','2015-03-16 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(8,'VWLTSA','job_closed','2015-03-17 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(9,'VWLTSA','job_closed','2015-03-19 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(10,'VWLTSA','job_closed','2015-03-20 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(11,'VWLTSA','job_closed','2015-03-23 00:00:00',24,'2017-03-17 09:16:56',NULL,NULL,NULL),(12,'VWLTSA','job_closed','2015-03-24 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(13,'VWLTSA','job_closed','2015-03-25 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(14,'VWLTSA','job_closed','2015-03-26 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(15,'VWLTSA','job_closed','2015-03-27 00:00:00',20,'2017-03-17 09:16:56',NULL,NULL,NULL),(16,'VWLTSA','job_closed','2015-03-30 00:00:00',18,'2017-03-17 09:16:56',NULL,NULL,NULL),(17,'VWLTSA','job_closed','2015-03-31 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(18,'VWLTSA','job_closed','2015-04-01 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(19,'VWLTSA','job_closed','2015-04-08 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(20,'VWLTSA','job_closed','2015-04-14 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(21,'VWLTSA','job_closed','2015-04-15 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(22,'VWLTSA','job_closed','2015-04-22 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(23,'VWLTSA','job_closed','2015-04-23 00:00:00',36,'2017-03-17 09:16:56',NULL,NULL,NULL),(24,'VWLTSA','job_closed','2015-04-30 00:00:00',51,'2017-03-17 09:16:56',NULL,NULL,NULL),(25,'VWLTSA','job_closed','2015-05-06 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(26,'VWLTSA','job_closed','2015-05-08 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(27,'VWLTSA','job_closed','2015-05-12 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(28,'VWLTSA','job_closed','2015-05-14 00:00:00',54,'2017-03-17 09:16:56',NULL,NULL,NULL),(29,'VWLTSA','job_closed','2015-05-20 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(30,'VWLTSA','job_closed','2015-05-21 00:00:00',91,'2017-03-17 09:16:56',NULL,NULL,NULL),(31,'VWLTSA','job_closed','2015-05-22 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(32,'VWLTSA','job_closed','2015-05-25 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(33,'VWLTSA','job_closed','2015-05-26 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(34,'VWLTSA','job_closed','2015-06-02 00:00:00',36,'2017-03-17 09:16:56',NULL,NULL,NULL),(35,'VWLTSA','job_closed','2015-06-03 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(36,'VWLTSA','job_closed','2015-06-04 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(37,'VWLTSA','job_closed','2015-06-08 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(38,'VWLTSA','job_new','2015-01-23 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(39,'VWLTSA','job_new','2015-01-30 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(40,'VWLTSA','job_new','2015-02-02 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(41,'VWLTSA','job_new','2015-02-03 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(42,'VWLTSA','job_new','2015-02-04 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(43,'VWLTSA','job_new','2015-02-05 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(44,'VWLTSA','job_new','2015-02-06 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(45,'VWLTSA','job_new','2015-02-08 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(46,'VWLTSA','job_new','2015-02-09 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(47,'VWLTSA','job_new','2015-02-10 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(48,'VWLTSA','job_new','2015-02-11 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(49,'VWLTSA','job_new','2015-02-12 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(50,'VWLTSA','job_new','2015-02-13 00:00:00',23,'2017-03-17 09:16:56',NULL,NULL,NULL),(51,'VWLTSA','job_new','2015-02-15 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(52,'VWLTSA','job_new','2015-02-16 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(53,'VWLTSA','job_new','2015-02-17 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(54,'VWLTSA','job_new','2015-02-18 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(55,'VWLTSA','job_new','2015-02-21 00:00:00',19,'2017-03-17 09:16:56',NULL,NULL,NULL),(56,'VWLTSA','job_new','2015-02-23 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(57,'VWLTSA','job_new','2015-02-24 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(58,'VWLTSA','job_new','2015-02-25 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(59,'VWLTSA','job_new','2015-02-26 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(60,'VWLTSA','job_new','2015-02-27 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(61,'VWLTSA','job_new','2015-03-02 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(62,'VWLTSA','job_new','2015-03-03 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(63,'VWLTSA','job_new','2015-03-04 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(64,'VWLTSA','job_new','2015-03-05 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(65,'VWLTSA','job_new','2015-03-06 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(66,'VWLTSA','job_new','2015-03-07 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(67,'VWLTSA','job_new','2015-03-09 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(68,'VWLTSA','job_new','2015-03-10 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(69,'VWLTSA','job_new','2015-03-11 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(70,'VWLTSA','job_new','2015-03-12 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(71,'VWLTSA','job_new','2015-03-13 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(72,'VWLTSA','job_new','2015-03-16 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(73,'VWLTSA','job_new','2015-03-17 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(74,'VWLTSA','job_new','2015-03-18 00:00:00',33,'2017-03-17 09:16:56',NULL,NULL,NULL),(75,'VWLTSA','job_new','2015-03-19 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(76,'VWLTSA','job_new','2015-03-20 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(77,'VWLTSA','job_new','2015-03-23 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(78,'VWLTSA','job_new','2015-03-24 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(79,'VWLTSA','job_new','2015-03-25 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(80,'VWLTSA','job_new','2015-03-26 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(81,'VWLTSA','job_new','2015-03-27 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(82,'VWLTSA','job_new','2015-03-30 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(83,'VWLTSA','job_new','2015-03-31 00:00:00',37,'2017-03-17 09:16:56',NULL,NULL,NULL),(84,'VWLTSA','job_new','2015-04-01 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(85,'VWLTSA','job_new','2015-04-02 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(86,'VWLTSA','job_new','2015-04-03 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(87,'VWLTSA','job_new','2015-04-06 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(88,'VWLTSA','job_new','2015-04-07 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(89,'VWLTSA','job_new','2015-04-08 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(90,'VWLTSA','job_new','2015-04-09 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(91,'VWLTSA','job_new','2015-04-10 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(92,'VWLTSA','job_new','2015-04-13 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(93,'VWLTSA','job_new','2015-04-14 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(94,'VWLTSA','job_new','2015-04-15 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(95,'VWLTSA','job_new','2015-04-16 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(96,'VWLTSA','job_new','2015-04-17 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(97,'VWLTSA','job_new','2015-04-20 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(98,'VWLTSA','job_new','2015-04-21 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(99,'VWLTSA','job_new','2015-04-22 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(100,'VWLTSA','job_new','2015-04-23 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(101,'VWLTSA','job_new','2015-04-24 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(102,'VWLTSA','job_new','2015-04-27 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(103,'VWLTSA','job_new','2015-04-28 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(104,'VWLTSA','job_new','2015-04-29 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(105,'VWLTSA','job_new','2015-04-30 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(106,'VWLTSA','job_new','2015-05-05 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(107,'VWLTSA','job_new','2015-05-06 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(108,'VWLTSA','job_new','2015-05-07 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(109,'VWLTSA','job_new','2015-05-08 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(110,'VWLTSA','job_new','2015-05-09 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(111,'VWLTSA','job_new','2015-05-10 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(112,'VWLTSA','job_new','2015-05-11 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(113,'VWLTSA','job_new','2015-05-12 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(114,'VWLTSA','job_new','2015-05-14 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(115,'VWLTSA','job_new','2015-05-15 00:00:00',18,'2017-03-17 09:16:56',NULL,NULL,NULL),(116,'VWLTSA','job_new','2015-05-16 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(117,'VWLTSA','job_new','2015-05-18 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(118,'VWLTSA','job_new','2015-05-19 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(119,'VWLTSA','job_new','2015-05-20 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(120,'VWLTSA','job_new','2015-05-21 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(121,'VWLTSA','job_new','2015-05-22 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(122,'VWLTSA','job_new','2015-05-25 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(123,'VWLTSA','job_new','2015-05-26 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(124,'VWLTSA','job_new','2015-05-27 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(125,'VWLTSA','job_new','2015-05-28 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(126,'VWLTSA','job_new','2015-05-29 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(127,'VWLTSA','job_new','2015-06-02 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(128,'VWLTSA','job_new','2015-06-03 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(129,'VWLTSA','job_new','2015-06-04 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(130,'VWLTSA','job_new','2015-06-05 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(131,'VWLTSA','job_new','2015-06-08 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(132,'VWLTSA','job_new','2015-06-09 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(133,'VWLTSA','job_total','2014-12-18 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(134,'VWLTSA','job_total','2015-01-23 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(135,'VWLTSA','job_total','2015-01-30 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(136,'VWLTSA','job_total','2015-02-02 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(137,'VWLTSA','job_total','2015-02-03 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(138,'VWLTSA','job_total','2015-02-04 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(139,'VWLTSA','job_total','2015-02-05 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(140,'VWLTSA','job_total','2015-02-06 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(141,'VWLTSA','job_total','2015-02-08 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(142,'VWLTSA','job_total','2015-02-09 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(143,'VWLTSA','job_total','2015-02-10 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(144,'VWLTSA','job_total','2015-02-11 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(145,'VWLTSA','job_total','2015-02-12 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(146,'VWLTSA','job_total','2015-02-13 00:00:00',23,'2017-03-17 09:16:56',NULL,NULL,NULL),(147,'VWLTSA','job_total','2015-02-15 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(148,'VWLTSA','job_total','2015-02-16 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(149,'VWLTSA','job_total','2015-02-17 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(150,'VWLTSA','job_total','2015-02-18 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(151,'VWLTSA','job_total','2015-02-21 00:00:00',19,'2017-03-17 09:16:56',NULL,NULL,NULL),(152,'VWLTSA','job_total','2015-02-23 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(153,'VWLTSA','job_total','2015-02-24 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(154,'VWLTSA','job_total','2015-02-25 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(155,'VWLTSA','job_total','2015-02-26 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(156,'VWLTSA','job_total','2015-02-27 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(157,'VWLTSA','job_total','2015-03-02 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(158,'VWLTSA','job_total','2015-03-03 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(159,'VWLTSA','job_total','2015-03-04 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(160,'VWLTSA','job_total','2015-03-05 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(161,'VWLTSA','job_total','2015-03-06 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(162,'VWLTSA','job_total','2015-03-07 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(163,'VWLTSA','job_total','2015-03-09 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(164,'VWLTSA','job_total','2015-03-10 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(165,'VWLTSA','job_total','2015-03-11 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(166,'VWLTSA','job_total','2015-03-12 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(167,'VWLTSA','job_total','2015-03-13 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(168,'VWLTSA','job_total','2015-03-16 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(169,'VWLTSA','job_total','2015-03-17 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(170,'VWLTSA','job_total','2015-03-18 00:00:00',33,'2017-03-17 09:16:56',NULL,NULL,NULL),(171,'VWLTSA','job_total','2015-03-19 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(172,'VWLTSA','job_total','2015-03-20 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(173,'VWLTSA','job_total','2015-03-23 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(174,'VWLTSA','job_total','2015-03-24 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(175,'VWLTSA','job_total','2015-03-25 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(176,'VWLTSA','job_total','2015-03-26 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(177,'VWLTSA','job_total','2015-03-27 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(178,'VWLTSA','job_total','2015-03-30 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(179,'VWLTSA','job_total','2015-03-31 00:00:00',37,'2017-03-17 09:16:56',NULL,NULL,NULL),(180,'VWLTSA','job_total','2015-04-01 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(181,'VWLTSA','job_total','2015-04-02 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(182,'VWLTSA','job_total','2015-04-03 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(183,'VWLTSA','job_total','2015-04-06 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(184,'VWLTSA','job_total','2015-04-07 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(185,'VWLTSA','job_total','2015-04-08 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(186,'VWLTSA','job_total','2015-04-09 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(187,'VWLTSA','job_total','2015-04-10 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(188,'VWLTSA','job_total','2015-04-13 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(189,'VWLTSA','job_total','2015-04-14 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(190,'VWLTSA','job_total','2015-04-15 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(191,'VWLTSA','job_total','2015-04-16 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(192,'VWLTSA','job_total','2015-04-17 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(193,'VWLTSA','job_total','2015-04-20 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(194,'VWLTSA','job_total','2015-04-21 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(195,'VWLTSA','job_total','2015-04-22 00:00:00',8,'2017-03-17 09:16:56',NULL,NULL,NULL),(196,'VWLTSA','job_total','2015-04-23 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(197,'VWLTSA','job_total','2015-04-24 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(198,'VWLTSA','job_total','2015-04-27 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(199,'VWLTSA','job_total','2015-04-28 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(200,'VWLTSA','job_total','2015-04-29 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(201,'VWLTSA','job_total','2015-04-30 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(202,'VWLTSA','job_total','2015-05-05 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(203,'VWLTSA','job_total','2015-05-06 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(204,'VWLTSA','job_total','2015-05-07 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(205,'VWLTSA','job_total','2015-05-08 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(206,'VWLTSA','job_total','2015-05-09 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(207,'VWLTSA','job_total','2015-05-10 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(208,'VWLTSA','job_total','2015-05-11 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(209,'VWLTSA','job_total','2015-05-12 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(210,'VWLTSA','job_total','2015-05-14 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(211,'VWLTSA','job_total','2015-05-15 00:00:00',18,'2017-03-17 09:16:56',NULL,NULL,NULL),(212,'VWLTSA','job_total','2015-05-16 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(213,'VWLTSA','job_total','2015-05-18 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(214,'VWLTSA','job_total','2015-05-19 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(215,'VWLTSA','job_total','2015-05-20 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(216,'VWLTSA','job_total','2015-05-21 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(217,'VWLTSA','job_total','2015-05-22 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(218,'VWLTSA','job_total','2015-05-25 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(219,'VWLTSA','job_total','2015-05-26 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(220,'VWLTSA','job_total','2015-05-27 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(221,'VWLTSA','job_total','2015-05-28 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(222,'VWLTSA','job_total','2015-05-29 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(223,'VWLTSA','job_total','2015-06-02 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(224,'VWLTSA','job_total','2015-06-03 00:00:00',4,'2017-03-17 09:16:56',NULL,NULL,NULL),(225,'VWLTSA','job_total','2015-06-04 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(226,'VWLTSA','job_total','2015-06-05 00:00:00',3,'2017-03-17 09:16:56',NULL,NULL,NULL),(227,'VWLTSA','job_total','2015-06-08 00:00:00',6,'2017-03-17 09:16:56',NULL,NULL,NULL),(228,'VWLTSA','job_total','2015-06-09 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(229,'VWLTSA','opn_closed','2015-04-02 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(230,'VWLTSA','opn_closed','2015-05-11 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(231,'VWLTSA','opn_closed','2015-05-20 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(232,'VWLTSA','opn_closed','2015-05-21 00:00:00',1104,'2017-03-17 09:16:56',NULL,NULL,NULL),(233,'VWLTSA','opn_closed','2015-05-22 00:00:00',11,'2017-03-17 09:16:56',NULL,NULL,NULL),(234,'VWLTSA','opn_closed','2015-05-23 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(235,'VWLTSA','opn_closed','2015-05-25 00:00:00',327,'2017-03-17 09:16:56',NULL,NULL,NULL),(236,'VWLTSA','opn_closed','2015-05-26 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(237,'VWLTSA','opn_closed','2015-05-27 00:00:00',7,'2017-03-17 09:16:56',NULL,NULL,NULL),(238,'VWLTSA','opn_closed','2015-05-28 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(239,'VWLTSA','opn_closed','2015-05-29 00:00:00',9,'2017-03-17 09:16:56',NULL,NULL,NULL),(240,'VWLTSA','opn_closed','2015-06-02 00:00:00',433,'2017-03-17 09:16:56',NULL,NULL,NULL),(241,'VWLTSA','opn_closed','2015-06-03 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(242,'VWLTSA','opn_closed','2015-06-04 00:00:00',117,'2017-03-17 09:16:56',NULL,NULL,NULL),(243,'VWLTSA','opn_closed','2015-06-05 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(244,'VWLTSA','opn_closed','2015-06-06 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(245,'VWLTSA','opn_closed','2015-06-08 00:00:00',129,'2017-03-17 09:16:56',NULL,NULL,NULL),(246,'VWLTSA','opn_closed','2015-06-09 00:00:00',30,'2017-03-17 09:16:56',NULL,NULL,NULL),(247,'VWLTSA','opn_new','2015-01-20 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(248,'VWLTSA','opn_new','2015-01-23 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(249,'VWLTSA','opn_new','2015-01-26 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(250,'VWLTSA','opn_new','2015-01-29 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(251,'VWLTSA','opn_new','2015-01-30 00:00:00',18,'2017-03-17 09:16:56',NULL,NULL,NULL),(252,'VWLTSA','opn_new','2015-02-02 00:00:00',72,'2017-03-17 09:16:56',NULL,NULL,NULL),(253,'VWLTSA','opn_new','2015-02-03 00:00:00',42,'2017-03-17 09:16:56',NULL,NULL,NULL),(254,'VWLTSA','opn_new','2015-02-04 00:00:00',62,'2017-03-17 09:16:56',NULL,NULL,NULL),(255,'VWLTSA','opn_new','2015-02-05 00:00:00',128,'2017-03-17 09:16:56',NULL,NULL,NULL),(256,'VWLTSA','opn_new','2015-02-06 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(257,'VWLTSA','opn_new','2015-02-08 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(258,'VWLTSA','opn_new','2015-02-09 00:00:00',47,'2017-03-17 09:16:56',NULL,NULL,NULL),(259,'VWLTSA','opn_new','2015-02-10 00:00:00',74,'2017-03-17 09:16:56',NULL,NULL,NULL),(260,'VWLTSA','opn_new','2015-02-11 00:00:00',260,'2017-03-17 09:16:56',NULL,NULL,NULL),(261,'VWLTSA','opn_new','2015-02-12 00:00:00',167,'2017-03-17 09:16:56',NULL,NULL,NULL),(262,'VWLTSA','opn_new','2015-02-13 00:00:00',322,'2017-03-17 09:16:56',NULL,NULL,NULL),(263,'VWLTSA','opn_new','2015-02-14 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(264,'VWLTSA','opn_new','2015-02-15 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(265,'VWLTSA','opn_new','2015-02-16 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(266,'VWLTSA','opn_new','2015-02-17 00:00:00',100,'2017-03-17 09:16:56',NULL,NULL,NULL),(267,'VWLTSA','opn_new','2015-02-18 00:00:00',93,'2017-03-17 09:16:56',NULL,NULL,NULL),(268,'VWLTSA','opn_new','2015-02-19 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(269,'VWLTSA','opn_new','2015-02-21 00:00:00',212,'2017-03-17 09:16:56',NULL,NULL,NULL),(270,'VWLTSA','opn_new','2015-02-23 00:00:00',108,'2017-03-17 09:16:56',NULL,NULL,NULL),(271,'VWLTSA','opn_new','2015-02-24 00:00:00',183,'2017-03-17 09:16:56',NULL,NULL,NULL),(272,'VWLTSA','opn_new','2015-02-25 00:00:00',89,'2017-03-17 09:16:56',NULL,NULL,NULL),(273,'VWLTSA','opn_new','2015-02-26 00:00:00',91,'2017-03-17 09:16:56',NULL,NULL,NULL),(274,'VWLTSA','opn_new','2015-02-27 00:00:00',180,'2017-03-17 09:16:56',NULL,NULL,NULL),(275,'VWLTSA','opn_new','2015-03-02 00:00:00',36,'2017-03-17 09:16:56',NULL,NULL,NULL),(276,'VWLTSA','opn_new','2015-03-03 00:00:00',111,'2017-03-17 09:16:56',NULL,NULL,NULL),(277,'VWLTSA','opn_new','2015-03-04 00:00:00',80,'2017-03-17 09:16:56',NULL,NULL,NULL),(278,'VWLTSA','opn_new','2015-03-05 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(279,'VWLTSA','opn_new','2015-03-06 00:00:00',58,'2017-03-17 09:16:56',NULL,NULL,NULL),(280,'VWLTSA','opn_new','2015-03-07 00:00:00',46,'2017-03-17 09:16:56',NULL,NULL,NULL),(281,'VWLTSA','opn_new','2015-03-09 00:00:00',69,'2017-03-17 09:16:56',NULL,NULL,NULL),(282,'VWLTSA','opn_new','2015-03-10 00:00:00',120,'2017-03-17 09:16:56',NULL,NULL,NULL),(283,'VWLTSA','opn_new','2015-03-11 00:00:00',42,'2017-03-17 09:16:56',NULL,NULL,NULL),(284,'VWLTSA','opn_new','2015-03-12 00:00:00',59,'2017-03-17 09:16:56',NULL,NULL,NULL),(285,'VWLTSA','opn_new','2015-03-13 00:00:00',34,'2017-03-17 09:16:56',NULL,NULL,NULL),(286,'VWLTSA','opn_new','2015-03-16 00:00:00',42,'2017-03-17 09:16:56',NULL,NULL,NULL),(287,'VWLTSA','opn_new','2015-03-17 00:00:00',204,'2017-03-17 09:16:56',NULL,NULL,NULL),(288,'VWLTSA','opn_new','2015-03-18 00:00:00',413,'2017-03-17 09:16:56',NULL,NULL,NULL),(289,'VWLTSA','opn_new','2015-03-19 00:00:00',114,'2017-03-17 09:16:56',NULL,NULL,NULL),(290,'VWLTSA','opn_new','2015-03-20 00:00:00',176,'2017-03-17 09:16:56',NULL,NULL,NULL),(291,'VWLTSA','opn_new','2015-03-23 00:00:00',289,'2017-03-17 09:16:56',NULL,NULL,NULL),(292,'VWLTSA','opn_new','2015-03-24 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(293,'VWLTSA','opn_new','2015-03-25 00:00:00',50,'2017-03-17 09:16:56',NULL,NULL,NULL),(294,'VWLTSA','opn_new','2015-03-26 00:00:00',33,'2017-03-17 09:16:56',NULL,NULL,NULL),(295,'VWLTSA','opn_new','2015-03-27 00:00:00',30,'2017-03-17 09:16:56',NULL,NULL,NULL),(296,'VWLTSA','opn_new','2015-03-30 00:00:00',35,'2017-03-17 09:16:56',NULL,NULL,NULL),(297,'VWLTSA','opn_new','2015-03-31 00:00:00',517,'2017-03-17 09:16:56',NULL,NULL,NULL),(298,'VWLTSA','opn_new','2015-04-01 00:00:00',59,'2017-03-17 09:16:56',NULL,NULL,NULL),(299,'VWLTSA','opn_new','2015-04-02 00:00:00',68,'2017-03-17 09:16:56',NULL,NULL,NULL),(300,'VWLTSA','opn_new','2015-04-03 00:00:00',79,'2017-03-17 09:16:56',NULL,NULL,NULL),(301,'VWLTSA','opn_new','2015-04-06 00:00:00',46,'2017-03-17 09:16:56',NULL,NULL,NULL),(302,'VWLTSA','opn_new','2015-04-07 00:00:00',122,'2017-03-17 09:16:56',NULL,NULL,NULL),(303,'VWLTSA','opn_new','2015-04-08 00:00:00',93,'2017-03-17 09:16:56',NULL,NULL,NULL),(304,'VWLTSA','opn_new','2015-04-09 00:00:00',135,'2017-03-17 09:16:56',NULL,NULL,NULL),(305,'VWLTSA','opn_new','2015-04-10 00:00:00',125,'2017-03-17 09:16:56',NULL,NULL,NULL),(306,'VWLTSA','opn_new','2015-04-13 00:00:00',38,'2017-03-17 09:16:56',NULL,NULL,NULL),(307,'VWLTSA','opn_new','2015-04-14 00:00:00',82,'2017-03-17 09:16:56',NULL,NULL,NULL),(308,'VWLTSA','opn_new','2015-04-15 00:00:00',77,'2017-03-17 09:16:56',NULL,NULL,NULL),(309,'VWLTSA','opn_new','2015-04-16 00:00:00',128,'2017-03-17 09:16:56',NULL,NULL,NULL),(310,'VWLTSA','opn_new','2015-04-17 00:00:00',77,'2017-03-17 09:16:56',NULL,NULL,NULL),(311,'VWLTSA','opn_new','2015-04-20 00:00:00',156,'2017-03-17 09:16:56',NULL,NULL,NULL),(312,'VWLTSA','opn_new','2015-04-21 00:00:00',52,'2017-03-17 09:16:56',NULL,NULL,NULL),(313,'VWLTSA','opn_new','2015-04-22 00:00:00',89,'2017-03-17 09:16:56',NULL,NULL,NULL),(314,'VWLTSA','opn_new','2015-04-23 00:00:00',65,'2017-03-17 09:16:56',NULL,NULL,NULL),(315,'VWLTSA','opn_new','2015-04-24 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(316,'VWLTSA','opn_new','2015-04-27 00:00:00',52,'2017-03-17 09:16:56',NULL,NULL,NULL),(317,'VWLTSA','opn_new','2015-04-28 00:00:00',49,'2017-03-17 09:16:56',NULL,NULL,NULL),(318,'VWLTSA','opn_new','2015-04-29 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(319,'VWLTSA','opn_new','2015-04-30 00:00:00',73,'2017-03-17 09:16:56',NULL,NULL,NULL),(320,'VWLTSA','opn_new','2015-05-05 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(321,'VWLTSA','opn_new','2015-05-06 00:00:00',115,'2017-03-17 09:16:56',NULL,NULL,NULL),(322,'VWLTSA','opn_new','2015-05-07 00:00:00',209,'2017-03-17 09:16:56',NULL,NULL,NULL),(323,'VWLTSA','opn_new','2015-05-08 00:00:00',98,'2017-03-17 09:16:56',NULL,NULL,NULL),(324,'VWLTSA','opn_new','2015-05-10 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(325,'VWLTSA','opn_new','2015-05-11 00:00:00',242,'2017-03-17 09:16:56',NULL,NULL,NULL),(326,'VWLTSA','opn_new','2015-05-12 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(327,'VWLTSA','opn_new','2015-05-13 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(328,'VWLTSA','opn_new','2015-05-14 00:00:00',52,'2017-03-17 09:16:56',NULL,NULL,NULL),(329,'VWLTSA','opn_new','2015-05-15 00:00:00',222,'2017-03-17 09:16:56',NULL,NULL,NULL),(330,'VWLTSA','opn_new','2015-05-16 00:00:00',129,'2017-03-17 09:16:56',NULL,NULL,NULL),(331,'VWLTSA','opn_new','2015-05-18 00:00:00',199,'2017-03-17 09:16:56',NULL,NULL,NULL),(332,'VWLTSA','opn_new','2015-05-19 00:00:00',64,'2017-03-17 09:16:56',NULL,NULL,NULL),(333,'VWLTSA','opn_new','2015-05-20 00:00:00',47,'2017-03-17 09:16:56',NULL,NULL,NULL),(334,'VWLTSA','opn_new','2015-05-21 00:00:00',112,'2017-03-17 09:16:56',NULL,NULL,NULL),(335,'VWLTSA','opn_new','2015-05-22 00:00:00',125,'2017-03-17 09:16:56',NULL,NULL,NULL),(336,'VWLTSA','opn_new','2015-05-25 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(337,'VWLTSA','opn_new','2015-05-26 00:00:00',27,'2017-03-17 09:16:56',NULL,NULL,NULL),(338,'VWLTSA','opn_new','2015-05-27 00:00:00',125,'2017-03-17 09:16:56',NULL,NULL,NULL),(339,'VWLTSA','opn_new','2015-05-28 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(340,'VWLTSA','opn_new','2015-05-29 00:00:00',41,'2017-03-17 09:16:56',NULL,NULL,NULL),(341,'VWLTSA','opn_new','2015-06-02 00:00:00',182,'2017-03-17 09:16:56',NULL,NULL,NULL),(342,'VWLTSA','opn_new','2015-06-03 00:00:00',60,'2017-03-17 09:16:56',NULL,NULL,NULL),(343,'VWLTSA','opn_new','2015-06-04 00:00:00',63,'2017-03-17 09:16:56',NULL,NULL,NULL),(344,'VWLTSA','opn_new','2015-06-05 00:00:00',28,'2017-03-17 09:16:56',NULL,NULL,NULL),(345,'VWLTSA','opn_new','2015-06-08 00:00:00',71,'2017-03-17 09:16:56',NULL,NULL,NULL),(346,'VWLTSA','opn_new','2015-06-09 00:00:00',24,'2017-03-17 09:16:56',NULL,NULL,NULL),(347,'VWLTSA','opn_total','2015-06-09 00:00:00',1,'2017-03-17 09:16:56',NULL,NULL,NULL),(348,'VWLTSA','opn_total','2015-06-09 00:00:00',2,'2017-03-17 09:16:56',NULL,NULL,NULL),(349,'VWLTSA','opn_total','2015-06-09 00:00:00',5,'2017-03-17 09:16:56',NULL,NULL,NULL),(350,'VWLTSA','opn_total','2015-06-09 00:00:00',10,'2017-03-17 09:16:56',NULL,NULL,NULL),(351,'VWLTSA','opn_total','2015-06-09 00:00:00',12,'2017-03-17 09:16:56',NULL,NULL,NULL),(352,'VWLTSA','opn_total','2015-06-09 00:00:00',13,'2017-03-17 09:16:56',NULL,NULL,NULL),(353,'VWLTSA','opn_total','2015-06-09 00:00:00',14,'2017-03-17 09:16:56',NULL,NULL,NULL),(354,'VWLTSA','opn_total','2015-06-09 00:00:00',15,'2017-03-17 09:16:56',NULL,NULL,NULL),(355,'VWLTSA','opn_total','2015-06-09 00:00:00',16,'2017-03-17 09:16:56',NULL,NULL,NULL),(356,'VWLTSA','opn_total','2015-06-09 00:00:00',17,'2017-03-17 09:16:56',NULL,NULL,NULL),(357,'VWLTSA','opn_total','2015-06-09 00:00:00',18,'2017-03-17 09:16:56',NULL,NULL,NULL),(358,'VWLTSA','opn_total','2015-06-09 00:00:00',21,'2017-03-17 09:16:56',NULL,NULL,NULL),(359,'VWLTSA','opn_total','2015-06-09 00:00:00',22,'2017-03-17 09:16:56',NULL,NULL,NULL),(360,'VWLTSA','opn_total','2015-06-09 00:00:00',24,'2017-03-17 09:16:56',NULL,NULL,NULL),(361,'VWLTSA','opn_total','2015-06-09 00:00:00',27,'2017-03-17 09:16:56',NULL,NULL,NULL),(362,'VWLTSA','opn_total','2015-06-09 00:00:00',28,'2017-03-17 09:16:56',NULL,NULL,NULL),(363,'VWLTSA','opn_total','2015-06-09 00:00:00',30,'2017-03-17 09:16:56',NULL,NULL,NULL),(364,'VWLTSA','opn_total','2015-06-09 00:00:00',33,'2017-03-17 09:16:56',NULL,NULL,NULL),(365,'VWLTSA','opn_total','2015-06-09 00:00:00',34,'2017-03-17 09:16:56',NULL,NULL,NULL),(366,'VWLTSA','opn_total','2015-06-09 00:00:00',35,'2017-03-17 09:16:56',NULL,NULL,NULL),(367,'VWLTSA','opn_total','2015-06-09 00:00:00',36,'2017-03-17 09:16:56',NULL,NULL,NULL),(368,'VWLTSA','opn_total','2015-06-09 00:00:00',38,'2017-03-17 09:16:56',NULL,NULL,NULL),(369,'VWLTSA','opn_total','2015-06-09 00:00:00',41,'2017-03-17 09:16:56',NULL,NULL,NULL),(370,'VWLTSA','opn_total','2015-06-09 00:00:00',42,'2017-03-17 09:16:56',NULL,NULL,NULL),(371,'VWLTSA','opn_total','2015-06-09 00:00:00',46,'2017-03-17 09:16:56',NULL,NULL,NULL),(372,'VWLTSA','opn_total','2015-06-09 00:00:00',47,'2017-03-17 09:16:56',NULL,NULL,NULL),(373,'VWLTSA','opn_total','2015-06-09 00:00:00',49,'2017-03-17 09:16:56',NULL,NULL,NULL),(374,'VWLTSA','opn_total','2015-06-09 00:00:00',50,'2017-03-17 09:16:56',NULL,NULL,NULL),(375,'VWLTSA','opn_total','2015-06-09 00:00:00',52,'2017-03-17 09:16:56',NULL,NULL,NULL),(376,'VWLTSA','opn_total','2015-06-09 00:00:00',58,'2017-03-17 09:16:56',NULL,NULL,NULL),(377,'VWLTSA','opn_total','2015-06-09 00:00:00',59,'2017-03-17 09:16:56',NULL,NULL,NULL),(378,'VWLTSA','opn_total','2015-06-09 00:00:00',60,'2017-03-17 09:16:56',NULL,NULL,NULL),(379,'VWLTSA','opn_total','2015-06-09 00:00:00',62,'2017-03-17 09:16:56',NULL,NULL,NULL),(380,'VWLTSA','opn_total','2015-06-09 00:00:00',63,'2017-03-17 09:16:56',NULL,NULL,NULL),(381,'VWLTSA','opn_total','2015-06-09 00:00:00',64,'2017-03-17 09:16:56',NULL,NULL,NULL),(382,'VWLTSA','opn_total','2015-06-09 00:00:00',65,'2017-03-17 09:16:56',NULL,NULL,NULL),(383,'VWLTSA','opn_total','2015-06-09 00:00:00',68,'2017-03-17 09:16:56',NULL,NULL,NULL),(384,'VWLTSA','opn_total','2015-06-09 00:00:00',69,'2017-03-17 09:16:56',NULL,NULL,NULL),(385,'VWLTSA','opn_total','2015-06-09 00:00:00',71,'2017-03-17 09:16:56',NULL,NULL,NULL),(386,'VWLTSA','opn_total','2015-06-09 00:00:00',72,'2017-03-17 09:16:56',NULL,NULL,NULL),(387,'VWLTSA','opn_total','2015-06-09 00:00:00',73,'2017-03-17 09:16:56',NULL,NULL,NULL),(388,'VWLTSA','opn_total','2015-06-09 00:00:00',74,'2017-03-17 09:16:56',NULL,NULL,NULL),(389,'VWLTSA','opn_total','2015-06-09 00:00:00',77,'2017-03-17 09:16:56',NULL,NULL,NULL),(390,'VWLTSA','opn_total','2015-06-09 00:00:00',79,'2017-03-17 09:16:56',NULL,NULL,NULL),(391,'VWLTSA','opn_total','2015-06-09 00:00:00',80,'2017-03-17 09:16:56',NULL,NULL,NULL),(392,'VWLTSA','opn_total','2015-06-09 00:00:00',82,'2017-03-17 09:16:56',NULL,NULL,NULL),(393,'VWLTSA','opn_total','2015-06-09 00:00:00',89,'2017-03-17 09:16:56',NULL,NULL,NULL),(394,'VWLTSA','opn_total','2015-06-09 00:00:00',91,'2017-03-17 09:16:56',NULL,NULL,NULL),(395,'VWLTSA','opn_total','2015-06-09 00:00:00',93,'2017-03-17 09:16:56',NULL,NULL,NULL),(396,'VWLTSA','opn_total','2015-06-09 00:00:00',98,'2017-03-17 09:16:56',NULL,NULL,NULL),(397,'VWLTSA','opn_total','2015-06-09 00:00:00',100,'2017-03-17 09:16:56',NULL,NULL,NULL),(398,'VWLTSA','opn_total','2015-06-09 00:00:00',108,'2017-03-17 09:16:56',NULL,NULL,NULL),(399,'VWLTSA','opn_total','2015-06-09 00:00:00',111,'2017-03-17 09:16:56',NULL,NULL,NULL),(400,'VWLTSA','opn_total','2015-06-09 00:00:00',112,'2017-03-17 09:16:56',NULL,NULL,NULL),(401,'VWLTSA','opn_total','2015-06-09 00:00:00',114,'2017-03-17 09:16:56',NULL,NULL,NULL),(402,'VWLTSA','opn_total','2015-06-09 00:00:00',115,'2017-03-17 09:16:56',NULL,NULL,NULL),(403,'VWLTSA','opn_total','2015-06-09 00:00:00',120,'2017-03-17 09:16:56',NULL,NULL,NULL),(404,'VWLTSA','opn_total','2015-06-09 00:00:00',122,'2017-03-17 09:16:56',NULL,NULL,NULL),(405,'VWLTSA','opn_total','2015-06-09 00:00:00',125,'2017-03-17 09:16:56',NULL,NULL,NULL),(406,'VWLTSA','opn_total','2015-06-09 00:00:00',128,'2017-03-17 09:16:56',NULL,NULL,NULL),(407,'VWLTSA','opn_total','2015-06-09 00:00:00',129,'2017-03-17 09:16:56',NULL,NULL,NULL),(408,'VWLTSA','opn_total','2015-06-09 00:00:00',135,'2017-03-17 09:16:56',NULL,NULL,NULL),(409,'VWLTSA','opn_total','2015-06-09 00:00:00',156,'2017-03-17 09:16:56',NULL,NULL,NULL),(410,'VWLTSA','opn_total','2015-06-09 00:00:00',167,'2017-03-17 09:16:56',NULL,NULL,NULL),(411,'VWLTSA','opn_total','2015-06-09 00:00:00',176,'2017-03-17 09:16:56',NULL,NULL,NULL),(412,'VWLTSA','opn_total','2015-06-09 00:00:00',180,'2017-03-17 09:16:56',NULL,NULL,NULL),(413,'VWLTSA','opn_total','2015-06-09 00:00:00',182,'2017-03-17 09:16:56',NULL,NULL,NULL),(414,'VWLTSA','opn_total','2015-06-09 00:00:00',183,'2017-03-17 09:16:56',NULL,NULL,NULL),(415,'VWLTSA','opn_total','2015-06-09 00:00:00',199,'2017-03-17 09:16:56',NULL,NULL,NULL),(416,'VWLTSA','opn_total','2015-06-09 00:00:00',204,'2017-03-17 09:16:56',NULL,NULL,NULL),(417,'VWLTSA','opn_total','2015-06-09 00:00:00',209,'2017-03-17 09:16:56',NULL,NULL,NULL),(418,'VWLTSA','opn_total','2015-06-09 00:00:00',212,'2017-03-17 09:16:56',NULL,NULL,NULL),(419,'VWLTSA','opn_total','2015-06-09 00:00:00',222,'2017-03-17 09:16:56',NULL,NULL,NULL),(420,'VWLTSA','opn_total','2015-06-09 00:00:00',242,'2017-03-17 09:16:56',NULL,NULL,NULL),(421,'VWLTSA','opn_total','2015-06-09 00:00:00',260,'2017-03-17 09:16:56',NULL,NULL,NULL),(422,'VWLTSA','opn_total','2015-06-09 00:00:00',289,'2017-03-17 09:16:56',NULL,NULL,NULL),(423,'VWLTSA','opn_total','2015-06-09 00:00:00',322,'2017-03-17 09:16:56',NULL,NULL,NULL),(424,'VWLTSA','opn_total','2015-06-09 00:00:00',413,'2017-03-17 09:16:56',NULL,NULL,NULL),(425,'VWLTSA','opn_total','2015-06-09 00:00:00',517,'2017-03-17 09:16:56',NULL,NULL,NULL);
/*!40000 ALTER TABLE `PURE_STATS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURE_VWLT_LOGS`
--

DROP TABLE IF EXISTS `PURE_VWLT_LOGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURE_VWLT_LOGS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `EMP_ID` varchar(15) DEFAULT NULL,
  `SQLID` longtext,
  `BASE_ID` varchar(30) DEFAULT NULL,
  `LOT_ID` varchar(3) DEFAULT NULL,
  `SPLIT_ID` varchar(3) DEFAULT NULL,
  `SUB_ID` varchar(3) DEFAULT NULL,
  `SEQ_NO` int(11) DEFAULT NULL,
  `TX_TYPE` varchar(1) DEFAULT NULL,
  `GOOD_QTY` decimal(15,4) DEFAULT NULL,
  `BAD_QTY` decimal(15,4) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURE_VWLT_LOGS`
--

LOCK TABLES `PURE_VWLT_LOGS` WRITE;
/*!40000 ALTER TABLE `PURE_VWLT_LOGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURE_VWLT_LOGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QC_CF`
--

DROP TABLE IF EXISTS `QC_CF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_CF` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `NCR_ID` varchar(30) NOT NULL,
  `STATUS` varchar(15) DEFAULT 'PENDING',
  `REPORTED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_DATE` datetime DEFAULT NULL,
  `APPROVED_BY` varchar(30) DEFAULT NULL,
  `APPROVED_DATE` datetime DEFAULT NULL,
  `REMARKS` longtext,
  `RA_REMARKS` longtext,
  `CA_REMARKS` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `REJECT_REMARKS` longtext,
  `SEVERITY` varchar(15) DEFAULT NULL,
  `REPORTED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `VERIFIED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `APPROVED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `WOREF` varchar(50) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `CAUSE_ID` varchar(15) DEFAULT NULL,
  `RECURRENCE` varchar(15) DEFAULT NULL,
  `CAUSE_DESCRIPTION` varchar(255) DEFAULT NULL,
  `REVIEWED_BY` varchar(30) DEFAULT NULL,
  `REVIEWED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `REVIEWED_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_BY` varchar(30) DEFAULT NULL,
  `FOLLOWUP_BY_EMAIL` varchar(50) DEFAULT NULL,
  `FOLLOWUP_REQD_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_REMARKS` longtext,
  `DISPOSITION_REMARKS` longtext,
  `DISPOSITION_MATERIAL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DOC_NO` varchar(255) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(80) DEFAULT NULL,
  `WOREF_RES_SPEC` longtext,
  `WOREF_PART_ID` varchar(30) DEFAULT NULL,
  `WOREF_PART_DESCRIPTION` longtext,
  `WOREF_PART_REV_NO` varchar(8) DEFAULT NULL,
  `WOREF_DRAWING_ID` varchar(30) DEFAULT NULL,
  `WOREF_DRAWING_REV_NO` varchar(8) DEFAULT NULL,
  `ORDER_TYPE` varchar(15) DEFAULT NULL,
  `ORDER_NO` varchar(15) DEFAULT NULL,
  `ORDER_NAME` varchar(50) DEFAULT NULL,
  `ORDER_ID` varchar(15) DEFAULT NULL,
  `CP_NUMBER` varchar(80) DEFAULT NULL,
  `FILE_ATTACH` varchar(1) DEFAULT NULL,
  `WOREF_DESIRED_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_INSPECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_REJECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `EMPLOYEE_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPARTMENT_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPT_HEAD` varchar(15) DEFAULT NULL,
  `DISPOSITION_BY` varchar(30) DEFAULT NULL,
  `DISPOSITION_BY_EMAIL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DATE` datetime DEFAULT NULL,
  `SRCDOC` varchar(30) DEFAULT NULL,
  `VERIFIED_REMARKS` longtext,
  `CLOSED_OUT_BY` varchar(30) DEFAULT NULL,
  `CLOSED_OUT_BY_EMAIL` varchar(50) DEFAULT NULL,
  `CLOSED_OUT_DATE` datetime DEFAULT NULL,
  `CLOSED_OUT_REMARKS` longtext,
  `RISK_REMARKS` longtext,
  `CI_ADD_DATE` datetime DEFAULT NULL,
  `CI_DEL_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `WOREF_RES_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `DISPOSITION_LIABILITY_COST` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`NCR_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_CF`
--

LOCK TABLES `QC_CF` WRITE;
/*!40000 ALTER TABLE `QC_CF` DISABLE KEYS */;
INSERT INTO `QC_CF` VALUES (1,'CF-0001-17','ASSIGNED','Choo Leong Siong','Choo Leong Siong',NULL,'Choo Leong Siong',NULL,'rwr',NULL,NULL,'2017-07-21 00:00:00',NULL,'LOW','cls@dis.com.sg','cls@dis.com.sg','cls@dis.com.sg',NULL,'test',NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CLS',NULL,NULL,NULL,NULL,0.0000);
/*!40000 ALTER TABLE `QC_CF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QC_CI`
--

DROP TABLE IF EXISTS `QC_CI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_CI` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) NOT NULL,
  `TYPE` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `STATUS` varchar(15) DEFAULT NULL,
  `NOTES` longtext,
  `CAUSE_ID` varchar(15) DEFAULT NULL,
  `CAUSE_NOTES` longtext,
  `ACTION_USER` varchar(15) DEFAULT NULL,
  `ACTION_DATE` datetime DEFAULT NULL,
  `ACTION_NOTES` longtext,
  `COUT_DATE` datetime DEFAULT NULL,
  `SRC_TYPE` varchar(15) DEFAULT NULL,
  `SRC_ID` varchar(30) DEFAULT NULL,
  `SRC_STATUS` varchar(15) DEFAULT NULL,
  `SRC_CREATE_DATE` datetime DEFAULT NULL,
  `SRC_SEVERITY` varchar(15) DEFAULT NULL,
  `SRC_REPORTED_BY` varchar(30) DEFAULT NULL,
  `SRC_SUBJECT` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_CI`
--

LOCK TABLES `QC_CI` WRITE;
/*!40000 ALTER TABLE `QC_CI` DISABLE KEYS */;
/*!40000 ALTER TABLE `QC_CI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QC_COC`
--

DROP TABLE IF EXISTS `QC_COC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_COC` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `COC_ID` varchar(30) NOT NULL,
  `COC_REV` decimal(14,0) DEFAULT '1',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(50) DEFAULT NULL,
  `CUSTOMER_ID` varchar(15) DEFAULT NULL,
  `ADDR_1` varchar(50) DEFAULT NULL,
  `ADDR_2` varchar(50) DEFAULT NULL,
  `ADDR_3` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SALES_ORDER_ID` varchar(15) DEFAULT NULL,
  `SALES_ORDER_LINE_NO` varchar(15) DEFAULT NULL,
  `QTY` decimal(14,4) DEFAULT '0.0000',
  `UOM` varchar(15) DEFAULT NULL,
  `REMARK` varchar(80) DEFAULT NULL,
  `USER_1` varchar(100) DEFAULT NULL,
  `USER_2` varchar(100) DEFAULT NULL,
  `USER_3` varchar(100) DEFAULT NULL,
  `USER_4` varchar(100) DEFAULT NULL,
  `USER_5` varchar(100) DEFAULT NULL,
  `USER_6` varchar(100) DEFAULT NULL,
  `USER_7` varchar(100) DEFAULT NULL,
  `USER_8` varchar(100) DEFAULT NULL,
  `USER_9` varchar(100) DEFAULT NULL,
  `USER_10` varchar(100) DEFAULT NULL,
  `SPEC_1` varchar(100) DEFAULT NULL,
  `SPEC_2` varchar(100) DEFAULT NULL,
  `SPEC_3` varchar(100) DEFAULT NULL,
  `SPEC_4` varchar(100) DEFAULT NULL,
  `SPEC_5` varchar(100) DEFAULT NULL,
  `SPEC_6` varchar(100) DEFAULT NULL,
  `SPEC_7` varchar(100) DEFAULT NULL,
  `SPEC_8` varchar(100) DEFAULT NULL,
  `SPEC_9` varchar(100) DEFAULT NULL,
  `SPEC_10` varchar(100) DEFAULT NULL,
  `SPEC_REV_1` varchar(100) DEFAULT NULL,
  `SPEC_REV_2` varchar(100) DEFAULT NULL,
  `SPEC_REV_3` varchar(100) DEFAULT NULL,
  `SPEC_REV_4` varchar(100) DEFAULT NULL,
  `SPEC_REV_5` varchar(100) DEFAULT NULL,
  `SPEC_REV_6` varchar(100) DEFAULT NULL,
  `SPEC_REV_7` varchar(100) DEFAULT NULL,
  `SPEC_REV_8` varchar(100) DEFAULT NULL,
  `SPEC_REV_9` varchar(100) DEFAULT NULL,
  `SPEC_REV_10` varchar(100) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `ISSUED_BY` varchar(80) DEFAULT NULL,
  `REMARKS` text,
  `ISSUED_BY_POSITION` varchar(50) DEFAULT NULL,
  `ISSUED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `BOILER_IDS` longtext,
  `BOILER_SPECS` longtext,
  `PRINTED` datetime DEFAULT NULL,
  `CONTACT_PERSON` varchar(80) DEFAULT NULL,
  `CONTACT_PHONE` varchar(20) DEFAULT NULL,
  `CONTACT_FAX` varchar(20) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(80) DEFAULT NULL,
  `STATUS` varchar(15) DEFAULT NULL,
  `VOIDED_DATE` datetime DEFAULT NULL,
  `ISSUED_USER` varchar(15) DEFAULT NULL,
  `VOID_REASON` varchar(30) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`COC_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_COC`
--

LOCK TABLES `QC_COC` WRITE;
/*!40000 ALTER TABLE `QC_COC` DISABLE KEYS */;
/*!40000 ALTER TABLE `QC_COC` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_COC_BI BEFORE INSERT ON QC_COC
FOR EACH ROW
BEGIN
		IF NEW.STATUS='VOID' THEN
			SET NEW.VOIDED_DATE=NOW() ;
        END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_COC_AI AFTER INSERT ON QC_COC
FOR EACH ROW
BEGIN
	DECLARE vTTL_COCQTY DECIMAL(14,4);
    DECLARE vTTL_WOQTY DECIMAL(14,4);
    

		IF NEW.STATUS='VOID' THEN
			UPDATE QC_COC SET VOIDED_DATE=NOW() WHERE COC_ID=NEW.COC_ID;
        END IF;

    SELECT IFNULL(SUM(QTY),0) FROM QC_COC WHERE STATUS<>'VOID' and WOREF=NEW.WOREF INTO vTTL_COCQTY;
    SELECT IFNULL(SUM(DESIRED_QTY),0) FROM WORK_ORDER WHERE BASE_ID=NEW.WOREF AND SUB_ID=0 INTO vTTL_WOQTY;
    UPDATE WORK_ORDER SET COC_QTY=vTTL_COCQTY WHERE BASE_ID=NEW.WOREF AND SUB_ID=0;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_COC_BU BEFORE UPDATE ON QC_COC
FOR EACH ROW
BEGIN

    IF IFNULL(NEW.STATUS,'')<>IFNULL(OLD.STATUS,'') THEN
		IF NEW.STATUS='VOID' THEN
			SET NEW.VOIDED_DATE=NOW() ;
        END IF;
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_COC_AU AFTER UPDATE ON QC_COC
FOR EACH ROW
BEGIN
	DECLARE vTTL_COCQTY DECIMAL(14,4);
    DECLARE vTTL_WOQTY DECIMAL(14,4);
    SELECT IFNULL(SUM(QTY),0) FROM QC_COC WHERE STATUS<>'VOID' and WOREF=NEW.WOREF INTO vTTL_COCQTY;
    SELECT IFNULL(SUM(DESIRED_QTY),0) FROM WORK_ORDER WHERE BASE_ID=NEW.WOREF AND SUB_ID=0 INTO vTTL_WOQTY;
    UPDATE WORK_ORDER SET COC_QTY=vTTL_COCQTY WHERE BASE_ID=NEW.WOREF AND SUB_ID=0;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_COC_AD AFTER DELETE ON QC_COC
FOR EACH ROW
BEGIN
	DECLARE vTTL_COCQTY DECIMAL(14,4);
	SELECT IFNULL(SUM(QTY),0) FROM QC_COC WHERE STATUS<>'VOID' and WOREF=OLD.WOREF into vTTL_COCQTY;
    UPDATE WORK_ORDER SET COC_QTY=@TTL_COCQTY WHERE BASE_ID=OLD.WOREF AND SUB_ID=0 ;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QC_COC_BOILER_PLATE`
--

DROP TABLE IF EXISTS `QC_COC_BOILER_PLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_COC_BOILER_PLATE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `REV` decimal(14,4) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DEFAULT_VAL` varchar(1) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_COC_BOILER_PLATE`
--

LOCK TABLES `QC_COC_BOILER_PLATE` WRITE;
/*!40000 ALTER TABLE `QC_COC_BOILER_PLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QC_COC_BOILER_PLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QC_CPAR`
--

DROP TABLE IF EXISTS `QC_CPAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_CPAR` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `NCR_ID` varchar(30) NOT NULL,
  `STATUS` varchar(15) DEFAULT 'PENDING',
  `REPORTED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_DATE` datetime DEFAULT NULL,
  `APPROVED_BY` varchar(30) DEFAULT NULL,
  `APPROVED_DATE` datetime DEFAULT NULL,
  `REMARKS` longtext,
  `RA_REMARKS` longtext,
  `CA_REMARKS` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `REJECT_REMARKS` longtext,
  `SEVERITY` varchar(15) DEFAULT NULL,
  `REPORTED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `VERIFIED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `APPROVED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `WOREF` varchar(50) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `CAUSE_ID` varchar(15) DEFAULT NULL,
  `RECURRENCE` varchar(15) DEFAULT NULL,
  `CAUSE_DESCRIPTION` varchar(255) DEFAULT NULL,
  `REVIEWED_BY` varchar(30) DEFAULT NULL,
  `REVIEWED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `REVIEWED_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_BY` varchar(30) DEFAULT NULL,
  `FOLLOWUP_BY_EMAIL` varchar(50) DEFAULT NULL,
  `FOLLOWUP_REQD_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_REMARKS` longtext,
  `DISPOSITION_REMARKS` longtext,
  `DISPOSITION_MATERIAL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DOC_NO` varchar(255) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(80) DEFAULT NULL,
  `WOREF_RES_SPEC` longtext,
  `WOREF_PART_ID` varchar(30) DEFAULT NULL,
  `WOREF_PART_DESCRIPTION` longtext,
  `WOREF_PART_REV_NO` varchar(8) DEFAULT NULL,
  `WOREF_DRAWING_ID` varchar(30) DEFAULT NULL,
  `WOREF_DRAWING_REV_NO` varchar(8) DEFAULT NULL,
  `ORDER_TYPE` varchar(15) DEFAULT NULL,
  `ORDER_NO` varchar(15) DEFAULT NULL,
  `ORDER_NAME` varchar(50) DEFAULT NULL,
  `ORDER_ID` varchar(15) DEFAULT NULL,
  `CP_NUMBER` varchar(80) DEFAULT NULL,
  `FILE_ATTACH` varchar(1) DEFAULT NULL,
  `WOREF_DESIRED_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_INSPECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_REJECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `EMPLOYEE_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPARTMENT_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPT_HEAD` varchar(15) DEFAULT NULL,
  `DISPOSITION_BY` varchar(30) DEFAULT NULL,
  `DISPOSITION_BY_EMAIL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DATE` datetime DEFAULT NULL,
  `SRCDOC` varchar(30) DEFAULT NULL,
  `VERIFIED_REMARKS` longtext,
  `CLOSED_OUT_BY` varchar(30) DEFAULT NULL,
  `CLOSED_OUT_BY_EMAIL` varchar(50) DEFAULT NULL,
  `CLOSED_OUT_DATE` datetime DEFAULT NULL,
  `CLOSED_OUT_REMARKS` longtext,
  `RISK_REMARKS` longtext,
  `CI_ADD_DATE` datetime DEFAULT NULL,
  `CI_DEL_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `WOREF_RES_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `DISPOSITION_LIABILITY_COST` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`NCR_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_CPAR`
--

LOCK TABLES `QC_CPAR` WRITE;
/*!40000 ALTER TABLE `QC_CPAR` DISABLE KEYS */;
INSERT INTO `QC_CPAR` VALUES (1,'CPAR-0001-17','ASSIGNED','Choo Leong Siong','Choo Leong Siong',NULL,'Choo Leong Siong',NULL,'test',NULL,NULL,'2017-07-21 00:00:00',NULL,NULL,'cls@dis.com.sg','cls@dis.com.sg','cls@dis.com.sg',NULL,'test',NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,'CLS',NULL,NULL,NULL,NULL,0.0000);
/*!40000 ALTER TABLE `QC_CPAR` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_CPAR_BU BEFORE UPDATE ON QC_CPAR
FOR EACH ROW
BEGIN
	IF NEW.STATUS<>OLD.STATUS THEN
		IF NEW.STATUS='COMPLETED' THEN
			IF IFNULL(NEW.APPROVED_DATE,'')='' THEN
				SET NEW.APPROVED_DATE=NOW() ;
			END IF;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QC_NCR`
--

DROP TABLE IF EXISTS `QC_NCR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_NCR` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `NCR_ID` varchar(30) NOT NULL,
  `STATUS` varchar(15) DEFAULT 'PENDING',
  `REPORTED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_BY` varchar(30) DEFAULT NULL,
  `VERIFIED_DATE` datetime DEFAULT NULL,
  `APPROVED_BY` varchar(30) DEFAULT NULL,
  `APPROVED_DATE` datetime DEFAULT NULL,
  `REMARKS` longtext,
  `RA_REMARKS` longtext,
  `CA_REMARKS` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `REJECT_REMARKS` longtext,
  `SEVERITY` varchar(15) DEFAULT NULL,
  `REPORTED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `VERIFIED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `APPROVED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `WOREF` varchar(50) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `CAUSE_ID` varchar(15) DEFAULT NULL,
  `RECURRENCE` varchar(15) DEFAULT NULL,
  `CAUSE_DESCRIPTION` varchar(255) DEFAULT NULL,
  `REVIEWED_BY` varchar(30) DEFAULT NULL,
  `REVIEWED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `REVIEWED_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_BY` varchar(30) DEFAULT NULL,
  `FOLLOWUP_BY_EMAIL` varchar(50) DEFAULT NULL,
  `FOLLOWUP_REQD_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_DATE` datetime DEFAULT NULL,
  `FOLLOWUP_REMARKS` longtext,
  `DISPOSITION_REMARKS` longtext,
  `DISPOSITION_MATERIAL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DOC_NO` varchar(255) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(80) DEFAULT NULL,
  `WOREF_RES_SPEC` longtext,
  `WOREF_PART_ID` varchar(30) DEFAULT NULL,
  `WOREF_PART_DESCRIPTION` longtext,
  `WOREF_PART_REV_NO` varchar(8) DEFAULT NULL,
  `WOREF_DRAWING_ID` varchar(30) DEFAULT NULL,
  `WOREF_DRAWING_REV_NO` varchar(8) DEFAULT NULL,
  `ORDER_TYPE` varchar(15) DEFAULT NULL,
  `ORDER_NO` varchar(15) DEFAULT NULL,
  `ORDER_NAME` varchar(50) DEFAULT NULL,
  `ORDER_ID` varchar(15) DEFAULT NULL,
  `CP_NUMBER` varchar(80) DEFAULT NULL,
  `FILE_ATTACH` varchar(1) DEFAULT NULL,
  `WOREF_DESIRED_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_INSPECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `WOREF_REJECT_QTY` decimal(14,4) DEFAULT '0.0000',
  `EMPLOYEE_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPARTMENT_ID` varchar(15) DEFAULT NULL,
  `EMP_DEPT_HEAD` varchar(15) DEFAULT NULL,
  `DISPOSITION_BY` varchar(30) DEFAULT NULL,
  `DISPOSITION_BY_EMAIL` varchar(50) DEFAULT NULL,
  `DISPOSITION_DATE` datetime DEFAULT NULL,
  `SRCDOC` varchar(30) DEFAULT NULL,
  `ORIG_CREATE_DATE` datetime DEFAULT NULL,
  `VERIFIED_REMARKS` longtext,
  `CLOSED_OUT_BY` varchar(30) DEFAULT NULL,
  `CLOSED_OUT_BY_EMAIL` varchar(50) DEFAULT NULL,
  `CLOSED_OUT_DATE` datetime DEFAULT NULL,
  `CLOSED_OUT_REMARKS` longtext,
  `RISK_REMARKS` longtext,
  `CI_ADD_DATE` datetime DEFAULT NULL,
  `CI_DEL_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `WOREF_RES_ID` varchar(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `DISPOSITION_LIABILITY_COST` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`NCR_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_NCR`
--

LOCK TABLES `QC_NCR` WRITE;
/*!40000 ALTER TABLE `QC_NCR` DISABLE KEYS */;
INSERT INTO `QC_NCR` VALUES (1,'NCR-0001-17','ASSIGNED','Choo Leong Siong','Choo Leong Siong',NULL,'Choo Leong Siong',NULL,'yyy',NULL,NULL,'2017-07-21 00:00:00',NULL,'LOW','cls@dis.com.sg','cls@dis.com.sg','cls@dis.com.sg',NULL,'yyy',NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,0.0000,0.0000,NULL,NULL,NULL,'Choo Leong Siong','cls@dis.com.sg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CLS',NULL,NULL,NULL,NULL,0.0000);
/*!40000 ALTER TABLE `QC_NCR` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_NCR_AI AFTER INSERT ON QC_NCR
FOR EACH ROW
BEGIN
	IF IFNULL(NEW.WOREF,'')<>'' THEN
		UPDATE OPERATION SET NCR_ID=NEW.NCR_ID WHERE WOREF=NEW.WOREF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_NCR_BU BEFORE UPDATE ON QC_NCR
FOR EACH ROW
BEGIN
	IF NEW.STATUS<>OLD.STATUS THEN
		IF NEW.STATUS='COMPLETED' THEN
			IF IFNULL(NEW.APPROVED_DATE,'')='' THEN
				SET NEW.APPROVED_DATE=NOW() ;
			END IF;
        END IF;
    END IF;
   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_NCR_AU AFTER UPDATE ON QC_NCR
FOR EACH ROW
BEGIN
    IF IFNULL(NEW.WOREF,'')<>IFNULL(OLD.WOREF,'') THEN
		UPDATE OPERATION SET NCR_ID=NEW.NCR_ID WHERE WOREF=NEW.WOREF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_NCR_AD AFTER DELETE ON QC_NCR
FOR EACH ROW
BEGIN
    UPDATE OPERATION SET NCR_ID=NULL WHERE WOREF=OLD.WOREF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QC_TRAINING`
--

DROP TABLE IF EXISTS `QC_TRAINING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_TRAINING` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TRAINING_ID` varchar(15) NOT NULL,
  `TRAINING_DATE` datetime DEFAULT NULL,
  `INSTRUCTOR` varchar(15) DEFAULT NULL,
  `USERS_PASS` longtext,
  `USERS_FAIL` longtext,
  `MODULES` longtext,
  `NOTES` longtext,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `STATUS` varchar(15) DEFAULT NULL,
  `PLAN_DATE` datetime DEFAULT NULL,
  `COMPLETED_DATE` datetime DEFAULT NULL,
  `INSTRUCTOR_EMAIL` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TRAINING_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_TRAINING`
--

LOCK TABLES `QC_TRAINING` WRITE;
/*!40000 ALTER TABLE `QC_TRAINING` DISABLE KEYS */;
INSERT INTO `QC_TRAINING` VALUES (1,'T001-170721',NULL,'CLS','','','','','2017-07-21 13:43:20','PLANNED','2017-07-21 12:00:00',NULL,'cls@dis.com.sg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `QC_TRAINING` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QC_TRAINING_AI
AFTER INSERT ON QC_TRAINING
FOR EACH ROW

BEGIN 
DECLARE my_delimiter CHAR(1);
DECLARE split_MODULES varchar(8000);
DECLARE split_USERPASS varchar(8000);
DECLARE split_USERFAIL varchar(8000);

DECLARE done INT;
DECLARE occurance INT;
DECLARE occuranceP INT;
DECLARE occuranceF INT;
DECLARE i INT;
DECLARE p INT;
DECLARE f INT;
DECLARE split_id INT;
DECLARE ins_query VARCHAR(500);
DECLARE vMODULE VARCHAR(15);
DECLARE vUSER VARCHAR(15);
DECLARE splitter_cur CURSOR FOR
SELECT NEW.MODULES,NEW.USERS_PASS,NEW.USERS_FAIL ;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;


OPEN splitter_cur;
splitter_loop:LOOP
      FETCH splitter_cur INTO split_MODULES,split_USERPASS,split_USERFAIL;

SET occurance=length(split_MODULES)-length(replace(split_MODULES,',',''))+1;
SET occuranceP=length(split_USERPASS)-length(replace(split_USERPASS,',',''))+1;
SET occuranceF=length(split_USERFAIL)-length(replace(split_USERFAIL,',',''))+1;

SET my_delimiter=',';
  IF done=1 THEN
    LEAVE splitter_loop;
  END IF;
#  select occurance;
  IF occurance > 0 then
    #select occurance;
    set i=1;
    while i <= occurance do
        SET vMODULE=SUBSTRING_INDEX(SUBSTRING_INDEX(split_MODULES,',',i),',',-1);
		IF occuranceP > 0 then
			set p=1;
            while p <= occuranceP do
				SET vUSER=SUBSTRING_INDEX(SUBSTRING_INDEX(split_USERPASS,',',p),',',-1);
				
					insert into EMPLOYEE_CERTIFICATE(PLAN_DATE,COMPLETED_DATE,ATTENDED,RESULT,TRAINING_ID,EMPLOYEE_ID,MODULE_ID)
					VALUES(NEW.PLAN_DATE,NEW.COMPLETED_DATE,'No','',NEW.TRAINING_ID,vUSER,vMODULE);
        
                set p=p+1;
            end while;
        
        ELSE
					insert into EMPLOYEE_CERTIFICATE(PLAN_DATE,COMPLETED_DATE,ATTENDED,RESULT,TRAINING_ID,EMPLOYEE_ID,MODULE_ID)
					VALUES(NEW.PLAN_DATE,NEW.COMPLETED_DATE,'No','',NEW.TRAINING_ID,NEW.USERS_PASS,vMODULE);
        END IF;
		

        
      set i=i+1;
    end while;
  ELSE
        insert into EMPLOYEE_CERTIFICATE(PLAN_DATE,COMPLETED_DATE,ATTENDED,RESULT,TRAINING_ID,EMPLOYEE_ID,MODULE_ID)
        VALUES(NEW.PLAN_DATE,NEW.COMPLETED_DATE,'No','',NEW.TRAINING_ID,'',NEW.MODULES);
  END IF;
  set occurance=0;
END LOOP;

CLOSE splitter_cur;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QC_TRAINING_DETAIL`
--

DROP TABLE IF EXISTS `QC_TRAINING_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QC_TRAINING_DETAIL` (
  `TRAINING_ID` varchar(15) DEFAULT NULL,
  `EMP_ID` varchar(15) DEFAULT NULL,
  `MODULE_ID` varchar(80) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QC_TRAINING_DETAIL`
--

LOCK TABLES `QC_TRAINING_DETAIL` WRITE;
/*!40000 ALTER TABLE `QC_TRAINING_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `QC_TRAINING_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QP_COATMAN`
--

DROP TABLE IF EXISTS `QP_COATMAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QP_COATMAN` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BASE_ID` varchar(15) DEFAULT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `SALES_ORDER_ID` varchar(30) DEFAULT NULL,
  `SALES_ORDER_LINE_NO` smallint(6) DEFAULT NULL,
  `CUSTOMER_ID` varchar(15) DEFAULT NULL,
  `CUST_PO` varchar(15) DEFAULT NULL,
  `CUST_PART_ID` varchar(30) DEFAULT NULL,
  `CUST_PART_DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `STATUS` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `USER_NAME` varchar(15) DEFAULT NULL,
  `QTY` smallint(6) DEFAULT NULL,
  `TRACE_ID` varchar(255) DEFAULT NULL,
  `SERIAL_IDS` varchar(255) DEFAULT NULL,
  `COAT_COLOUR` varchar(80) DEFAULT NULL,
  `COAT_SPEC_ID` varchar(30) DEFAULT NULL,
  `QA_SPEC_ID` varchar(30) DEFAULT NULL,
  `PRE_NOTES` text,
  `ENV_START_BLAST` datetime DEFAULT NULL,
  `ENV_START_PRIMER` datetime DEFAULT NULL,
  `ENV_START_COAT` datetime DEFAULT NULL,
  `ENV_START_INSPECT` datetime DEFAULT NULL,
  `ENV_AIR_BLAST` varchar(30) DEFAULT NULL,
  `ENV_AIR_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_AIR_COATING` varchar(30) DEFAULT NULL,
  `ENV_AIR_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_SURF_BLAST` varchar(30) DEFAULT NULL,
  `ENV_SURF_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_SURF_COAT` varchar(30) DEFAULT NULL,
  `ENV_SURF_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_WET_BLAST` varchar(30) DEFAULT NULL,
  `ENV_WET_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_WET_COAT` varchar(30) DEFAULT NULL,
  `ENV_WET_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_DRY_BLAST` varchar(30) DEFAULT NULL,
  `ENV_DRY_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_DRY_COAT` varchar(30) DEFAULT NULL,
  `ENV_DRY_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_RH_BLAST` varchar(30) DEFAULT NULL,
  `ENV_RH_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_RH_COAT` varchar(30) DEFAULT NULL,
  `ENV_RH_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_DEW_BLAST` varchar(30) DEFAULT NULL,
  `ENV_DEW_PRIMER` varchar(30) DEFAULT NULL,
  `ENV_DEW_COAT` varchar(30) DEFAULT NULL,
  `ENV_DEW_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_NOTES` text,
  `SURF_AIR` varchar(30) DEFAULT NULL,
  `SURF_COAT` varchar(30) DEFAULT NULL,
  `SURF_SOLV_TYPE` varchar(30) DEFAULT NULL,
  `SURF_SOLV_KG` smallint(6) DEFAULT NULL,
  `SURF_BLAST_TYPE` varchar(30) DEFAULT NULL,
  `SURF_BAST_BATCH` varchar(30) DEFAULT NULL,
  `SURF_ANCH_COUPON` varchar(30) DEFAULT NULL,
  `SURF_ANCH_PART` varchar(30) DEFAULT NULL,
  `SURF_BASE_COUPON` varchar(30) DEFAULT NULL,
  `SURF_BASE_PART` varchar(30) DEFAULT NULL,
  `SURF_CLEAN_SPEC` varchar(30) DEFAULT NULL,
  `SURF_COMPLY` varchar(30) DEFAULT NULL,
  `APP_PHOS_MFG` varchar(30) DEFAULT NULL,
  `APP_PHOS_TYPE` varchar(30) DEFAULT NULL,
  `APP_PHOS_COLOUR` varchar(30) DEFAULT NULL,
  `APP_PHOS_BATCH` varchar(30) DEFAULT NULL,
  `APP_PRIMER_MFG` varchar(30) DEFAULT NULL,
  `APP_PRIMER_TYPE` varchar(30) DEFAULT NULL,
  `APP_PRIMER_BATCH` varchar(30) DEFAULT NULL,
  `APP_COAT_MFG` varchar(30) DEFAULT NULL,
  `APP_COAT_TYPE` varchar(30) DEFAULT NULL,
  `APP_COAT_BATCH` varchar(30) DEFAULT NULL,
  `APP_POT_PRIMER` datetime DEFAULT NULL,
  `APP_POT_COAT` datetime DEFAULT NULL,
  `INS_DRY_PRIMER` varchar(30) DEFAULT NULL,
  `INS_DRY_COAT` varchar(30) DEFAULT NULL,
  `INS_FINAL_THICK` varchar(30) DEFAULT NULL,
  `INS_FINAL_PART` varchar(30) DEFAULT NULL,
  `INS_FINAL_NOTES` longtext,
  `INS_DFT_COMPLY` varchar(30) DEFAULT NULL,
  `INS_DFT_QNID` varchar(30) DEFAULT NULL,
  `INS_WIPE_MEK` varchar(30) DEFAULT NULL,
  `INS_WIPE_TOLUNE` varchar(30) DEFAULT NULL,
  `INS_WIPE_OTHER` varchar(30) DEFAULT NULL,
  `INS_WIPE_COMPLY` varchar(30) DEFAULT NULL,
  `INS_WIPE_QNID` varchar(30) DEFAULT NULL,
  `VIS_PHOS_COMPLY` varchar(30) DEFAULT NULL,
  `VIS_PHOS_QNID` varchar(30) DEFAULT NULL,
  `VIS_PRIMER_COMPLY` varchar(30) DEFAULT NULL,
  `VIS_PRIMER_QNID` varchar(30) DEFAULT NULL,
  `VIS_COAT_COMPLY` varchar(30) DEFAULT NULL,
  `VIS_COAT_QNID` varchar(30) DEFAULT NULL,
  `ADH_METHOD` varchar(30) DEFAULT NULL,
  `ADH_DESC` text,
  `ADH_COMPLY` varchar(30) DEFAULT NULL,
  `ADH_QNID` varchar(30) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `APP_PHOS_EXPDATE` datetime DEFAULT NULL,
  `APP_PRIMER_EXPDATE` datetime DEFAULT NULL,
  `APP_COAT_EXPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QP_COATMAN`
--

LOCK TABLES `QP_COATMAN` WRITE;
/*!40000 ALTER TABLE `QP_COATMAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `QP_COATMAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QP_EVERSLIK`
--

DROP TABLE IF EXISTS `QP_EVERSLIK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QP_EVERSLIK` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `WOREF` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STATUS` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_NAME` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` smallint(6) DEFAULT NULL,
  `COAT_SYSTEM` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COAT_SPEC_ID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COAT_SPEC_REV` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SERIAL_IDS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_10` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_DT_END_BLAST` datetime DEFAULT NULL,
  `ENV_DT_START_PHOS` datetime DEFAULT NULL,
  `ENV_DT_START_PAINT` datetime DEFAULT NULL,
  `ENV_DT_END_PAINT` datetime DEFAULT NULL,
  `ENV_RH_END_BLAST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_RH_START_PHOS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_RH_START_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_RH_END_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_AIR_END_BLAST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_AIR_START_PHOS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_AIR_START_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_AIR_END_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_DEW_END_BLAST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_DEW_START_PHOS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_DEW_START_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_DEW_END_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_SURF_END_BLAST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_SURF_START_PHOS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_SURF_START_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_SURF_END_PAINT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_END_BLAST` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_START_PHOS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_START_PAINT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_END_PAINT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_SURF_END_BLAST` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_SURF_START_PHOS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_SURF_START_PAINT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENV_EQUIP_SURF_END_PAINT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRE_INSPECT_NOTES` text COLLATE utf8mb4_unicode_ci,
  `PRE_INSPECTOR` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BLAST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_COAT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_SOLV_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BLAST_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BLAST_METHOD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BLAST_ORIG_SURF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_ANCH_COUPON` decimal(14,4) DEFAULT '0.0000',
  `SURF_ANCH_PART` decimal(14,4) DEFAULT '0.0000',
  `SURF_ANCH_METHOD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BASE_COUPON` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_BASE_PART` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_CLEAN_SPEC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_CLEAN_COMPLY` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SURF_CLEAN_REQUIREMENT` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_MFG` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_COLOUR` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_BATCH` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_TEMP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_PROCESS_TIME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_PHOS_OPERATOR` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_MFG` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_BATCH` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_MIXING_DATE` datetime DEFAULT NULL,
  `APP_BASE_COAT_SOLVENT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_DILUTION_RATIO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_APPDATE` datetime DEFAULT NULL,
  `APP_BASE_COAT_POINT_TEMP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_BASE_COAT_TIME_IN` datetime DEFAULT NULL,
  `APP_BASE_COAT_TIME_REACHED` datetime DEFAULT NULL,
  `APP_BASE_COAT_TIME_OUT` datetime DEFAULT NULL,
  `APP_BASE_COAT_OPERATOR` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_MFG` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_TYPE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_BATCH` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_MIXING_DATE` datetime DEFAULT NULL,
  `APP_TOP_COAT_SOLVENT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_DILUTION_RATIO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_APPDATE` datetime DEFAULT NULL,
  `APP_TOP_COAT_POINT_TEMP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APP_TOP_COAT_TIME_IN` datetime DEFAULT NULL,
  `APP_TOP_COAT_TIME_REACHED` datetime DEFAULT NULL,
  `APP_TOP_COAT_TIME_OUT` datetime DEFAULT NULL,
  `APP_TOP_COAT_OPERATOR` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_PHOS_VISUAL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_PHOS_ADHESION_TEST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_PHOS_WEIGHT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_BASE_VISUAL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_BASE_CURE_TEST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_BASE_DRYFILM_THICKNESS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_BASE_ADHESION_TEST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_TOP_VISUAL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_TOP_CURE_TEST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_TOP_DRYFILM_THICKNESS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSPECT_FINAL_TOP_ADHESION_TEST` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QP_EVERSLIK`
--

LOCK TABLES `QP_EVERSLIK` WRITE;
/*!40000 ALTER TABLE `QP_EVERSLIK` DISABLE KEYS */;
/*!40000 ALTER TABLE `QP_EVERSLIK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QP_ITEM`
--

DROP TABLE IF EXISTS `QP_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QP_ITEM` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` varchar(15) NOT NULL,
  `SEQ_NO` smallint(6) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `DOC` varchar(80) DEFAULT NULL,
  `GREF` varchar(50) DEFAULT NULL,
  `UOM` varchar(5) DEFAULT NULL,
  `VNOM` decimal(14,5) DEFAULT '0.00000',
  `VLOW` decimal(14,5) DEFAULT '0.00000',
  `VUPP` decimal(14,5) DEFAULT '0.00000',
  `GAUGE` varchar(15) DEFAULT NULL,
  `SPEC` longtext,
  `QCREF` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LTYPE` varchar(15) DEFAULT NULL,
  `BOOL_TEXT` varchar(50) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `GAUGE_TYPE` varchar(15) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`,`SEQ_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QP_ITEM`
--

LOCK TABLES `QP_ITEM` WRITE;
/*!40000 ALTER TABLE `QP_ITEM` DISABLE KEYS */;
INSERT INTO `QP_ITEM` VALUES (1,'TPP-001',10,'NEW',NULL,NULL,'CM',0.00000,0.00000,0.00000,NULL,NULL,NULL,'2017-07-21 13:40:47','value',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `QP_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QP_PHOSMAN`
--

DROP TABLE IF EXISTS `QP_PHOSMAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QP_PHOSMAN` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BASE_ID` varchar(15) DEFAULT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `SALES_ORDER_ID` varchar(30) DEFAULT NULL,
  `SALES_ORDER_LINE_NO` smallint(6) DEFAULT NULL,
  `CUSTOMER_ID` varchar(15) DEFAULT NULL,
  `CUST_PO` varchar(15) DEFAULT NULL,
  `CUST_PART_ID` varchar(30) DEFAULT NULL,
  `CUST_PART_DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `STATUS` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `USER_NAME` varchar(15) DEFAULT NULL,
  `QTY` smallint(6) DEFAULT NULL,
  `TRACE_ID` varchar(255) DEFAULT NULL,
  `SERIAL_IDS` varchar(255) DEFAULT NULL,
  `COAT_COLOUR` varchar(15) DEFAULT NULL,
  `COAT_SPEC_ID` varchar(30) DEFAULT NULL,
  `QA_SPEC_ID` varchar(30) DEFAULT NULL,
  `PRE_NOTES` text,
  `ENV_START_PHOS` datetime DEFAULT NULL,
  `ENV_END_PHOS` datetime DEFAULT NULL,
  `ENV_START_INSPECT` datetime DEFAULT NULL,
  `ENV_AIR_START` varchar(30) DEFAULT NULL,
  `ENV_AIR_END` varchar(30) DEFAULT NULL,
  `ENV_AIR_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_SURF_START` varchar(30) DEFAULT NULL,
  `ENV_SURF_END` varchar(30) DEFAULT NULL,
  `ENV_SURF_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_WET_START` varchar(30) DEFAULT NULL,
  `ENV_WET_END` varchar(30) DEFAULT NULL,
  `ENV_WET_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_DRY_START` varchar(30) DEFAULT NULL,
  `ENV_DRY_END` varchar(30) DEFAULT NULL,
  `ENV_DRY_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_RH_START` varchar(30) DEFAULT NULL,
  `ENV_RH_END` varchar(30) DEFAULT NULL,
  `ENV_RH_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_DEW_START` varchar(30) DEFAULT NULL,
  `ENV_DEW_END` varchar(30) DEFAULT NULL,
  `ENV_DEW_INSPECT` varchar(30) DEFAULT NULL,
  `ENV_NOTES` text,
  `SURF_SOLV_TYPE` varchar(30) DEFAULT NULL,
  `SURF_RINSE_COMPLY` varchar(30) DEFAULT NULL,
  `SURF_OPT_TREAT` varchar(30) DEFAULT NULL,
  `SURF_BATCH` varchar(30) DEFAULT NULL,
  `APP_PHOS_MFG` varchar(30) DEFAULT NULL,
  `APP_PHOS_TYPE` varchar(30) DEFAULT NULL,
  `APP_PHOS_COLOUR` varchar(30) DEFAULT NULL,
  `APP_PHOS_BATCH` varchar(30) DEFAULT NULL,
  `APP_PHOS_DATE` datetime DEFAULT NULL,
  `APP_PHOS_WEIGHT` varchar(30) DEFAULT NULL,
  `APP_PHOS_MATL` varchar(30) DEFAULT NULL,
  `APP_PHOS_TANK` char(50) DEFAULT NULL,
  `APP_PHOS_TEMP` varchar(30) DEFAULT NULL,
  `APP_PHOS_DURN` varchar(30) DEFAULT NULL,
  `INS_STD_REQD` varchar(30) DEFAULT NULL,
  `INS_STD_FREQ` varchar(30) DEFAULT NULL,
  `INS_VIS_METHOD` varchar(30) DEFAULT NULL,
  `INS_VIS_MAG` varchar(30) DEFAULT NULL,
  `INS_VIS_COLOUR` varchar(30) DEFAULT NULL,
  `INS_VIS_GRAIN` varchar(30) DEFAULT NULL,
  `INS_VIS_PRESCENCE` varchar(30) DEFAULT NULL,
  `INS_VIS_COMPLY` varchar(30) DEFAULT NULL,
  `INS_VIS_QNID` varchar(30) DEFAULT NULL,
  `ADH_METHOD` varchar(30) DEFAULT NULL,
  `ADH_COMPLY` varchar(30) DEFAULT NULL,
  `ADH_QNID` varchar(30) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QP_PHOSMAN`
--

LOCK TABLES `QP_PHOSMAN` WRITE;
/*!40000 ALTER TABLE `QP_PHOSMAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `QP_PHOSMAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QP_PLAN`
--

DROP TABLE IF EXISTS `QP_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QP_PLAN` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `QT_CLASS` varchar(15) DEFAULT NULL,
  `PLAN_ID` varchar(15) NOT NULL,
  `PLAN_VER` varchar(15) DEFAULT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DRG_ID` varchar(30) DEFAULT NULL,
  `DRG_REV` varchar(8) DEFAULT NULL,
  `SAMPLE_TYPE` varchar(15) DEFAULT NULL,
  `SAMPLE_QTY` decimal(14,4) DEFAULT '0.0000',
  `REPORT_ID` varchar(30) DEFAULT NULL,
  `SPEC` longtext,
  `TYPE` varchar(10) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `GAUGE_TYPE` varchar(15) DEFAULT NULL,
  `CALIBRATION_WORK_INTRUCTION` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QP_PLAN`
--

LOCK TABLES `QP_PLAN` WRITE;
/*!40000 ALTER TABLE `QP_PLAN` DISABLE KEYS */;
INSERT INTO `QP_PLAN` VALUES (1,NULL,'TPP-001','1','PART001','2017-07-21 13:40:47',NULL,NULL,'fixed',1.0000,NULL,NULL,'PART',NULL,NULL,NULL,'CLS',NULL,NULL,NULL);
/*!40000 ALTER TABLE `QP_PLAN` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QP_PLAN_AI AFTER INSERT ON QP_PLAN
FOR EACH ROW
BEGIN
	INSERT INTO QP_ITEM(PLAN_ID,SEQ_NO,TITLE,LTYPE,VNOM,VLOW,VUPP,UOM) VALUES(NEW.PLAN_ID,10,'NEW','value',0,0,0,'CM');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QT_ITEM`
--

DROP TABLE IF EXISTS `QT_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QT_ITEM` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TEST_ID` varchar(15) NOT NULL,
  `PLAN_ID` varchar(15) NOT NULL,
  `SEQ_NO` smallint(6) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `DOC` varchar(80) DEFAULT NULL,
  `GREF` varchar(50) DEFAULT NULL,
  `UOM` varchar(5) DEFAULT NULL,
  `VNOM` decimal(14,5) DEFAULT '0.00000',
  `VLOW` decimal(14,5) DEFAULT '0.00000',
  `VUPP` decimal(14,5) DEFAULT '0.00000',
  `GAUGE` varchar(15) DEFAULT NULL,
  `SPEC` longtext,
  `QCREF` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LTYPE` varchar(15) DEFAULT NULL,
  `BOOL_TEXT` varchar(50) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `GAUGE_TYPE` varchar(15) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TEST_ID`,`PLAN_ID`,`SEQ_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QT_ITEM`
--

LOCK TABLES `QT_ITEM` WRITE;
/*!40000 ALTER TABLE `QT_ITEM` DISABLE KEYS */;
INSERT INTO `QT_ITEM` VALUES (1,'PT-00001-17','TPP-001',10,'NEW',NULL,NULL,'CM',0.00000,0.00000,0.00000,NULL,NULL,NULL,'2017-07-21 13:41:03','value',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `QT_ITEM` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QT_ITEM_AI AFTER INSERT ON QT_ITEM
FOR EACH ROW
BEGIN
	dECLARE vWO_SAMPLE_QTY DECIMAL(14,4);
	DECLARE vi SMALLINT;
    
	SELECT IFNULL(TEST_SAMPLE_QTY,0) FROM QT_TEST WHERE TEST_ID=NEW.TEST_ID INTO vWO_SAMPLE_QTY;
    SET vWO_SAMPLE_QTY=vWO_SAMPLE_QTY;
	SET vi=0;
    
     myloop: WHILE vWO_SAMPLE_QTY>0 DO
     INSERT INTO QT_TICKET(TEST_ID,PROC_SEQ,TICk_SEQ,STATUS) VALUES(NEW.TEST_ID,NEW.SEQ_NO,vi,'None');
			set vi=vi+1;
			SET vWO_SAMPLE_QTY=vWO_SAMPLE_QTY-1;
   END WHILE myloop;
   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QT_TEST`
--

DROP TABLE IF EXISTS `QT_TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QT_TEST` (
  `TEST_ID` varchar(15) NOT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `TYPE` varchar(15) NOT NULL,
  `PLAN_ID` varchar(15) NOT NULL,
  `PLAN_VER` varchar(5) NOT NULL,
  `WOREF` varchar(35) DEFAULT NULL,
  `GAUGE_ID` varchar(50) DEFAULT NULL,
  `PART_ID` varchar(45) DEFAULT NULL,
  `DRG_ID` varchar(35) DEFAULT NULL,
  `DRG_REV` varchar(5) DEFAULT NULL,
  `TEST_QTY` int(11) DEFAULT '0',
  `SAMPLE_TYPE` varchar(15) NOT NULL,
  `SAMPLE_QTY` int(11) DEFAULT '0',
  `TEST_SAMPLE_QTY` decimal(14,4) DEFAULT '0.0000',
  `STATUS` varchar(15) DEFAULT 'OPEN',
  `RESULT` varchar(15) DEFAULT NULL,
  `GAUGE_TYPE` varchar(15) DEFAULT NULL,
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `CALIBRATED_BY` varchar(30) DEFAULT NULL,
  `CALIBRATED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `REVIEWED_BY` varchar(30) DEFAULT NULL,
  `REVIEWED_BY_EMAIL` varchar(50) DEFAULT NULL,
  `CLOSED_DATE` datetime DEFAULT NULL,
  `REMARKS` longtext,
  `TEMPERATURE` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `CALIBRATION_STANDARDS` longtext,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TEST_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QT_TEST`
--

LOCK TABLES `QT_TEST` WRITE;
/*!40000 ALTER TABLE `QT_TEST` DISABLE KEYS */;
INSERT INTO `QT_TEST` VALUES ('PT-00001-17','2017-07-21 00:00:00','PART','TPP-001','1','J-00002',NULL,NULL,NULL,NULL,1,'fixed',0,1.0000,'OPEN',NULL,NULL,1,'Leong Siong Choo','cls@dis.com.sg','Leong Siong Choo','cls@dis.com.sg',NULL,NULL,NULL,'CLS','WLH','2017-07-21 16:43:57',NULL,NULL);
/*!40000 ALTER TABLE `QT_TEST` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER QT_TEST_AI AFTER INSERT ON QT_TEST
FOR EACH ROW
BEGIN
    INSERT INTO QT_ITEM(TEST_ID,PLAN_ID,SEQ_NO,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,LTYPE,BOOL_TEXT,GAUGE_TYPE,GAUGE_ID) SELECT NEW.TEST_ID,PLAN_ID,SEQ_NO,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,LTYPE,BOOL_TEXT,GAUGE_TYPE,GAUGE_ID FROM QP_ITEM WHERE PLAN_ID=NEW.PLAN_ID;
    UPDATE WORK_ORDER SET QC_PLAN_ID=NEW.PLAN_ID WHERE BASE_ID=NEW.WOREF AND SUB_ID=0 ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `QT_TICKET`
--

DROP TABLE IF EXISTS `QT_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QT_TICKET` (
  `TEST_ID` varchar(15) NOT NULL,
  `PROC_SEQ` int(11) NOT NULL,
  `TICK_SEQ` int(11) NOT NULL,
  `VALUE` decimal(14,5) DEFAULT NULL,
  `STATUS` varchar(5) NOT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `GAUGE_ID` char(30) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` char(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QT_TICKET`
--

LOCK TABLES `QT_TICKET` WRITE;
/*!40000 ALTER TABLE `QT_TICKET` DISABLE KEYS */;
INSERT INTO `QT_TICKET` VALUES ('PT-00001-17',10,0,NULL,'None',NULL,1,NULL,NULL,NULL,NULL,'2017-07-21 13:41:03',NULL);
/*!40000 ALTER TABLE `QT_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIREMENT`
--

DROP TABLE IF EXISTS `REQUIREMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIREMENT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `WORKORDER_TYPE` varchar(1) NOT NULL,
  `WORKORDER_BASE_ID` varchar(30) NOT NULL,
  `WORKORDER_LOT_ID` varchar(3) NOT NULL,
  `WORKORDER_SPLIT_ID` varchar(3) NOT NULL,
  `WORKORDER_SUB_ID` varchar(3) NOT NULL,
  `OPERATION_SEQ_NO` smallint(6) NOT NULL,
  `PIECE_NO` smallint(6) NOT NULL,
  `SUBORD_WO_SUB_ID` varchar(3) DEFAULT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `REFERENCE` varchar(10) DEFAULT NULL,
  `STATUS` varchar(1) NOT NULL,
  `QTY_PER` decimal(15,8) NOT NULL,
  `QTY_PER_TYPE` varchar(1) NOT NULL,
  `FIXED_QTY` decimal(14,4) DEFAULT '0.0000',
  `SCRAP_PERCENT` decimal(5,2) DEFAULT '0.00',
  `DIMENSIONS` varchar(80) DEFAULT NULL,
  `DIM_EXPRESSION` varchar(128) DEFAULT NULL,
  `USAGE_UM` varchar(15) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `DISCONTINUE_DATE` datetime DEFAULT NULL,
  `CALC_QTY` decimal(14,4) DEFAULT NULL,
  `ISSUED_QTY` decimal(14,4) DEFAULT '0.0000',
  `REQUIRED_DATE` datetime DEFAULT NULL,
  `CLOSE_DATE` datetime DEFAULT NULL,
  `UNIT_MATERIAL_COST` decimal(15,6) DEFAULT '0.000000',
  `UNIT_LABOR_COST` decimal(15,6) DEFAULT '0.000000',
  `UNIT_BURDEN_COST` decimal(15,6) DEFAULT '0.000000',
  `UNIT_SERVICE_COST` decimal(15,6) DEFAULT '0.000000',
  `BURDEN_PERCENT` decimal(5,2) DEFAULT '0.00',
  `BURDEN_PER_UNIT` decimal(15,6) DEFAULT '0.000000',
  `FIXED_COST` decimal(15,2) DEFAULT NULL,
  `DRAWING_ID` varchar(30) DEFAULT NULL,
  `DRAWING_REV_NO` varchar(8) DEFAULT NULL,
  `VENDOR_ID` varchar(15) DEFAULT NULL,
  `VENDOR_PART_ID` varchar(30) DEFAULT NULL,
  `EST_MATERIAL_COST` decimal(15,2) DEFAULT '0.00',
  `EST_LABOR_COST` decimal(15,2) DEFAULT '0.00',
  `EST_BURDEN_COST` decimal(15,2) DEFAULT '0.00',
  `EST_SERVICE_COST` decimal(15,2) DEFAULT '0.00',
  `REM_MATERIAL_COST` decimal(15,2) DEFAULT '0.00',
  `REM_LABOR_COST` decimal(15,2) DEFAULT '0.00',
  `REM_BURDEN_COST` decimal(15,2) DEFAULT '0.00',
  `REM_SERVICE_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_MATERIAL_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_LABOR_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_BURDEN_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_SERVICE_COST` decimal(15,2) DEFAULT '0.00',
  `MFG_NAME` varchar(30) DEFAULT NULL,
  `MFG_PART_ID` varchar(30) DEFAULT NULL,
  `PROTECT_COST` varchar(1) DEFAULT '',
  `LENGTH` decimal(14,4) DEFAULT NULL,
  `WIDTH` decimal(14,4) DEFAULT NULL,
  `HEIGHT` decimal(14,4) DEFAULT NULL,
  `DRAWING_FILE` varchar(100) DEFAULT NULL,
  `WAREHOUSE_ID` varchar(15) DEFAULT NULL,
  `ALLOCATED_QTY` decimal(14,4) DEFAULT '0.0000',
  `FULFILLED_QTY` decimal(14,4) DEFAULT '0.0000',
  `PLANNING_LEADTIME` smallint(6) DEFAULT NULL,
  `REQUIRED_FOR_SETUP` varchar(1) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `CALC_FIXED_SCRAP` decimal(14,4) DEFAULT NULL,
  `WBS_CODE` varchar(30) DEFAULT NULL,
  `WBS_DESCRIPTION` varchar(80) DEFAULT NULL,
  `WBS_CLIN` varchar(15) DEFAULT NULL,
  `WBS_CUSTOMER_WBS` varchar(30) DEFAULT NULL,
  `WBS_CDRL` varchar(30) DEFAULT NULL,
  `WBS_TDC` varchar(30) DEFAULT NULL,
  `INHERIT_WAREHOUSE` varchar(1) DEFAULT NULL,
  `LOCATION_ID` varchar(15) DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `DISPATCHED` varchar(1) DEFAULT NULL,
  `ORIG_STAGE_REVISION_ID` varchar(24) DEFAULT NULL,
  `STATUS_EFF_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIREMENT`
--

LOCK TABLES `REQUIREMENT` WRITE;
/*!40000 ALTER TABLE `REQUIREMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIREMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_CLASS`
--

DROP TABLE IF EXISTS `RESOURCE_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_CLASS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CLASS_TYPE` varchar(15) NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`,`CLASS_TYPE`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_CLASS`
--

LOCK TABLES `RESOURCE_CLASS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_CLASS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RES_GROUP`
--

DROP TABLE IF EXISTS `RES_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RES_GROUP` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_RESOURCE_ID` varchar(15) NOT NULL,
  `MEMBER_RESOURCE_ID` varchar(15) NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`GROUP_RESOURCE_ID`,`MEMBER_RESOURCE_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RES_GROUP`
--

LOCK TABLES `RES_GROUP` WRITE;
/*!40000 ALTER TABLE `RES_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `RES_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RISK_LEVEL_DEFINITION`
--

DROP TABLE IF EXISTS `RISK_LEVEL_DEFINITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RISK_LEVEL_DEFINITION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ACCEPTABILITY` varchar(255) DEFAULT NULL,
  `DEFINITION` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RISK_LEVEL_DEFINITION`
--

LOCK TABLES `RISK_LEVEL_DEFINITION` WRITE;
/*!40000 ALTER TABLE `RISK_LEVEL_DEFINITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RISK_LEVEL_DEFINITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RISK_LEVEL_DETERMINATION`
--

DROP TABLE IF EXISTS `RISK_LEVEL_DETERMINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RISK_LEVEL_DETERMINATION` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `OCCURRENCE_ID` varchar(15) NOT NULL,
  `SEVERITY_ID` varchar(15) NOT NULL,
  `LEVEL_ID` varchar(15) NOT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`OCCURRENCE_ID`,`SEVERITY_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RISK_LEVEL_DETERMINATION`
--

LOCK TABLES `RISK_LEVEL_DETERMINATION` WRITE;
/*!40000 ALTER TABLE `RISK_LEVEL_DETERMINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RISK_LEVEL_DETERMINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALES_ORDER`
--

DROP TABLE IF EXISTS `SALES_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALES_ORDER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `REV_NO` int(11) NOT NULL,
  `CUST_PO` varchar(50) DEFAULT NULL,
  `CUST_PO_LINE_NO` int(11) DEFAULT NULL,
  `STATUS` varchar(15) NOT NULL,
  `NOTES` text,
  `REV_NOTES` text,
  `DATE` datetime NOT NULL,
  `CUST_ID` varchar(15) NOT NULL,
  `CUST_NAME` varchar(50) DEFAULT NULL,
  `ADDR_1` varchar(50) DEFAULT NULL,
  `ADDR_2` varchar(50) DEFAULT NULL,
  `ADDR_3` varchar(50) DEFAULT NULL,
  `CONTACT_PERSON` varchar(80) DEFAULT NULL,
  `CONTACT_PHONE` varchar(80) DEFAULT NULL,
  `CONTACT_fax` varchar(80) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(80) DEFAULT NULL,
  `COC_ADDR_1` varchar(50) DEFAULT NULL,
  `COC_ADDR_2` varchar(50) DEFAULT NULL,
  `COC_ADDR_3` varchar(50) DEFAULT NULL,
  `BILL_TO_CONTACT` varchar(80) DEFAULT NULL,
  `BILL_TO_PHONE` varchar(80) DEFAULT NULL,
  `BILL_TO_FAX` varchar(80) DEFAULT NULL,
  `BILL_TO_EMAIL` varchar(80) DEFAULT NULL,
  `COC_EMAIL` varchar(80) DEFAULT NULL,
  `BILL_TO_PERSON` varchar(80) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `CURRENCY_ID` varchar(3) DEFAULT NULL,
  `GST_ID` varchar(15) DEFAULT NULL,
  `GST_RATE` decimal(15,4) DEFAULT '0.0000',
  `OTD_CODE` char(15) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `CLOSED_DATE` datetime DEFAULT NULL,
  `CURRENCY_RATE` decimal(15,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ROWID` (`ROWID`),
  KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES_ORDER`
--

LOCK TABLES `SALES_ORDER` WRITE;
/*!40000 ALTER TABLE `SALES_ORDER` DISABLE KEYS */;
INSERT INTO `SALES_ORDER` VALUES (1,'SOSIN000001',0,NULL,NULL,'R',NULL,NULL,'2017-07-21 00:00:00','APPLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CLS',NULL,'2017-07-21 10:11:55',NULL,'EUR','GST0',0.0000,NULL,NULL,NULL,1.000000);
/*!40000 ALTER TABLE `SALES_ORDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SALES_ORDER_AU AFTER UPDATE ON SALES_ORDER
  FOR EACH ROW 
  BEGIN
	 -- IF NEW.CUST_ID<>OLD.CUST_ID THEN
	 -- 	UPDATE WORK_ORDER SET CUSTOMER_ID=NEW.CUST_ID WHERE SALES_ORDER_ID=NEW.ID;
     -- END IF;   
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SALES_ORDER_LINE`
--

DROP TABLE IF EXISTS `SALES_ORDER_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALES_ORDER_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SALES_ORDER_ID` varchar(15) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `PART_ID` varchar(30) DEFAULT NULL,
  `PART_DESCRIPTION` varchar(255) DEFAULT NULL,
  `CUST_PART_ID` varchar(30) DEFAULT NULL,
  `CUST_PART_DESCRIPTION` varchar(255) DEFAULT NULL,
  `QTY` decimal(14,4) DEFAULT NULL,
  `WOREF` varchar(255) DEFAULT NULL,
  `CP_REF` varchar(30) DEFAULT NULL,
  `CUST_PO_LINE_NO` int(11) DEFAULT NULL,
  `WANT_DATE` date DEFAULT NULL,
  `QTY_SHIP` decimal(14,4) DEFAULT '0.0000',
  `SOREF` varchar(35) DEFAULT NULL,
  `UNIT_PRICE` decimal(15,4) DEFAULT '0.0000',
  `TOTAL_PRICE` decimal(15,4) DEFAULT '0.0000',
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `OTD_CODE` char(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `LINE_STATUS` char(1) DEFAULT NULL,
  `UNIT_ESTIMATOR_COST` decimal(15,4) DEFAULT '0.0000',
  `LINE_CLOSED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SALES_ORDER_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES_ORDER_LINE`
--

LOCK TABLES `SALES_ORDER_LINE` WRITE;
/*!40000 ALTER TABLE `SALES_ORDER_LINE` DISABLE KEYS */;
INSERT INTO `SALES_ORDER_LINE` VALUES (1,'SOSIN000001',10,'PART001',NULL,NULL,NULL,1.0000,'J-00002^0',NULL,NULL,'2017-07-21',0.0000,'SOSIN000001^10',0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 10:12:12',NULL,NULL,NULL,NULL,10.0000,NULL);
/*!40000 ALTER TABLE `SALES_ORDER_LINE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SALES_ORDER_LINE_BI BEFORE INSERT ON SALES_ORDER_LINE
  FOR EACH ROW 
  BEGIN
    SET NEW.SOREF=CONCAT(NEW.SALES_ORDER_ID,'^',NEW.LINE_NO);
    -- SET NEW.UNIT_PRICE=NEW.TOTAL_PRICE/NEW.QTY;
    IF NEW.WANT_DATE='0000-00-00' THEN
		SET NEW.WANT_DATE=NULL;
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SALES_ORDER_LINE_BU BEFORE UPDATE ON SALES_ORDER_LINE
  FOR EACH ROW 
  BEGIN
   -- SET NEW.UNIT_PRICE=NEW.TOTAL_PRICE/NEW.QTY;

    
    DECLARE bDone INT DEFAULT FALSE;
    DECLARE vWOREF VARCHAR(30);
    DECLARE nWO VARCHAR(31);
    DECLARE nWO1 VARCHAR(8000);

   DECLARE C2 CURSOR FOR SELECT WOREF FROM WORK_ORDER WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID AND SALES_ORDER_LINE_NO=NEW.LINE_NO;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET bDone = TRUE; 
   
   set nWO1="";
   OPEN C2;
   myloop:LOOP
	FETCH C2 INTO vWOREF;
	IF bDone THEN
		LEAVE myloop;
	END IF;
	
	SET nWO =CONCAT(vWOREF,',');
    set nWO1 = concat(nWO1,nWO);
   END LOOP;
   CLOSE C2;
   
   if LENGTH(nWO1)>1 THEN
	SET NEW.WOREF=SUBSTRING(nWO1,1 ,LENGTH(nWO1)-1);
   END IF;
 
   IF NEW.WANT_DATE='0000-00-00' THEN
		SET NEW.WANT_DATE=NULL;
    END IF;
   
	IF NEW.LINE_STATUS='C' THEN
		IF IFNULL(NEW.LINE_CLOSED_DATE,'999')='999' then
			set NEW.LINE_CLOSED_DATE=NOW();
        END IF;
    END IF;
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SALES_ORDER_LINE_AU AFTER UPDATE ON SALES_ORDER_LINE
  FOR EACH ROW 
  BEGIN
    DECLARE SOL_COUNT INT;
    DECLARE SOL_CLOSED_COUNT INT;
    DECLARE SO_STATUS VARCHAR(1);
    SELECT COUNT(*) FROM SALES_ORDER_LINE WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID INTO SOL_COUNT;
    SELECT COUNT(*) FROM SALES_ORDER_LINE WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID AND LINE_STATUS='C' INTO SOL_CLOSED_COUNT;
    
    SELECT STATUS FROM SALES_ORDER WHERE ID=NEW.SALES_ORDER_ID INTO SO_STATUS;
    
    IF SOL_COUNT=SOL_CLOSED_COUNT THEN
		IF SO_STATUS<>'C' THEN
			UPDATE SALES_ORDER SET STATUS='C', CLOSED_DATE=NOW() WHERE ID=NEW.SALES_ORDER_ID;
            UPDATE SALES_ORDER SET CLOSED_DATE=NOW() WHERE ID=NEW.SALES_ORDER_ID and CLOSED_DATE IS NULL;
        END IF;
    END IF;
    IF IFNULL(NEW.CP_REF,'9999')<>'9999' THEN
		UPDATE CPROP_ITEMS SET SALES_ORDER_ID = CONCAT(NEW.SALES_ORDER_ID,'^',CAST(NEW.LINE_NO AS CHAR)),LAST_MODIFIED_DATE=NOW() WHERE CP_REF=NEW.CP_REF;
    END IF;
    

  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SEVERITY`
--

DROP TABLE IF EXISTS `SEVERITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEVERITY` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEVERITY`
--

LOCK TABLES `SEVERITY` WRITE;
/*!40000 ALTER TABLE `SEVERITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SEVERITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIFT`
--

DROP TABLE IF EXISTS `SHIFT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIFT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SHIFT_BEG_BEF_WIN` smallint(6) DEFAULT NULL,
  `SHIFT_BEG_AFT_WIN` smallint(6) DEFAULT NULL,
  `SHIFT_END_BEF_WIN` smallint(6) DEFAULT NULL,
  `SHIFT_END_AFT_WIN` smallint(6) DEFAULT NULL,
  `BTWN_JOB_LAG_TIME` smallint(6) DEFAULT NULL,
  `BREAKS_WINDOW` smallint(6) DEFAULT NULL,
  `INDIRECT_ID` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`),
  UNIQUE KEY `ROWID_2` (`ROWID`),
  UNIQUE KEY `ROWID_3` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIFT`
--

LOCK TABLES `SHIFT` WRITE;
/*!40000 ALTER TABLE `SHIFT` DISABLE KEYS */;
INSERT INTO `SHIFT` VALUES (14,'DAY','Day Shift',45,0,0,45,5,0,'IND',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL),(17,'DEFAULT','Default Shift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-26 09:47:48',NULL,NULL,NULL),(15,'FULL','Full Day Shift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-23 11:33:09',NULL,NULL,NULL),(16,'NIGHT','Night Shift',45,0,0,45,5,0,'IND',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL),(18,'OFF','Off Day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-26 09:47:48',NULL,NULL,NULL);
/*!40000 ALTER TABLE `SHIFT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SHIFT_AI AFTER INSERT ON SHIFT
FOR EACH ROW
BEGIN
	DELETE FROM SHIFT_DAY WHERE SHIFT_ID=NEW.ID;
    INSERT INTO SHIFT_DAY(SHIFT_ID,SHIFT_CODE) VALUES(NEW.ID,'7');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SHIFT_DAY`
--

DROP TABLE IF EXISTS `SHIFT_DAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIFT_DAY` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIFT_ID` varchar(15) NOT NULL,
  `SHIFT_CODE` smallint(6) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SHIFT_START` datetime DEFAULT NULL,
  `SHIFT_END` datetime DEFAULT NULL,
  `MEAL_START` datetime DEFAULT NULL,
  `MEAL_END` datetime DEFAULT NULL,
  `BREAK1_START` datetime DEFAULT NULL,
  `BREAK1_END` datetime DEFAULT NULL,
  `BREAK2_START` datetime DEFAULT NULL,
  `BREAK2_END` datetime DEFAULT NULL,
  `BREAK3_START` datetime DEFAULT NULL,
  `BREAK3_END` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `RESOURCE_ID` varchar(15) NOT NULL DEFAULT 'ALL',
  PRIMARY KEY (`SHIFT_ID`,`SHIFT_CODE`,`RESOURCE_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIFT_DAY`
--

LOCK TABLES `SHIFT_DAY` WRITE;
/*!40000 ALTER TABLE `SHIFT_DAY` DISABLE KEYS */;
INSERT INTO `SHIFT_DAY` VALUES (6,'DAY',7,NULL,'2016-01-01 07:30:00','2016-01-01 16:45:00','2016-01-01 11:30:00','2016-01-01 12:00:00','2016-01-01 09:00:00','2016-01-01 09:10:00','2016-01-01 14:30:00','2016-01-01 14:40:00','2016-01-01 16:15:00','2016-01-01 16:45:00',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL,'ALL'),(25,'DEFAULT',7,NULL,'2017-01-01 09:00:00','2017-01-01 18:00:00','2017-01-01 13:00:00','2017-01-01 14:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-26 09:47:48',NULL,NULL,NULL,'ALL'),(9,'FULL',7,NULL,'1900-01-01 07:30:00','1900-01-01 17:00:00','1900-01-01 11:30:00','1900-01-01 12:30:00','1900-01-01 10:00:00','1900-01-01 10:15:00','1900-01-01 15:00:00','1900-01-01 15:15:00','1900-01-01 12:00:00','1900-01-01 12:00:00',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL,'ALL'),(23,'NIGHT',7,NULL,'2016-01-01 19:30:00','2016-01-01 04:00:00','2016-01-01 00:00:00','2016-01-01 00:30:00','2016-01-01 04:00:00','2016-01-01 04:20:00','2016-01-01 07:00:00','2016-01-01 07:30:00','2016-01-01 00:00:00','2016-01-01 00:00:00',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL,'ALL'),(27,'OFF',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-26 09:47:48',NULL,NULL,NULL,'ALL'),(11,'TEST',7,NULL,'1900-01-01 07:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00',NULL,'2016-11-23 11:33:09',NULL,NULL,NULL,'ALL');
/*!40000 ALTER TABLE `SHIFT_DAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIFT_TYPE`
--

DROP TABLE IF EXISTS `SHIFT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIFT_TYPE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_ID` varchar(15) DEFAULT NULL,
  `RATE` decimal(15,3) DEFAULT NULL,
  `MULTIPLIER` decimal(15,3) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIFT_TYPE`
--

LOCK TABLES `SHIFT_TYPE` WRITE;
/*!40000 ALTER TABLE `SHIFT_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SHIFT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPMENT`
--

DROP TABLE IF EXISTS `SHIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIPMENT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIPMENT_ID` varchar(30) NOT NULL,
  `SHIPMENT_DATE` date NOT NULL,
  `INVOICE_ID` varchar(15) DEFAULT NULL,
  `INVOICE_DATE` datetime DEFAULT NULL,
  `SO_ID` varchar(15) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `SHIPMENT_SPEC` text,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `GST_ID` varchar(15) DEFAULT NULL,
  `GST_RATE` decimal(15,4) DEFAULT '0.0000',
  `INVOICE_NOTES` text,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `SUBT_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `GST_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `TOTAL_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `CUR_SUBT_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `CUR_GST_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `CUR_TOTAL_AMOUNT` decimal(15,4) DEFAULT '0.0000',
  `X_RATE` decimal(15,4) DEFAULT '0.0000',
  `MODE` varchar(1) DEFAULT 'S',
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SHIPMENT_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPMENT`
--

LOCK TABLES `SHIPMENT` WRITE;
/*!40000 ALTER TABLE `SHIPMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SHIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPMENT_LINE`
--

DROP TABLE IF EXISTS `SHIPMENT_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIPMENT_LINE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIPMENT_ID` varchar(30) NOT NULL,
  `LINE_NO` int(11) NOT NULL,
  `SO_ID` varchar(15) DEFAULT NULL,
  `SO_LINENO` int(11) DEFAULT NULL,
  `SHPREF` varchar(20) DEFAULT NULL,
  `QTY` decimal(15,4) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `LINE_SPEC` text,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SHIPMENT_ID`,`LINE_NO`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPMENT_LINE`
--

LOCK TABLES `SHIPMENT_LINE` WRITE;
/*!40000 ALTER TABLE `SHIPMENT_LINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SHIPMENT_LINE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SHIPMENT_LINE_BI BEFORE INSERT ON SHIPMENT_LINE
  FOR EACH ROW 
  BEGIN
      DECLARE vSO_ID VARCHAR(15);
    SELECT SO_ID FROM SHIPMENT WHERE SHIPMENT_ID=NEW.SHIPMENT_ID into vSO_ID;
    SET NEW.SO_ID=vSO_ID;
    SET NEW.SHPREF=CONCAT(NEW.SHIPMENT_ID,'^',NEW.LINE_NO);
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SHIPMENT_LINE_AI AFTER INSERT ON SHIPMENT_LINE
  FOR EACH ROW 
  BEGIN
  	DECLARE vBALQTY DECIMAL(14,4);
    DECLARE vSO_ID VARCHAR(15);
    SELECT SO_ID FROM SHIPMENT WHERE SHIPMENT_ID=NEW.SHIPMENT_ID into vSO_ID;
    SELECT IFNULL(SUM(SL.QTY),0) FROM SHIPMENT_LINE SL,SHIPMENT S WHERE S.SHIPMENT_ID=SL.SHIPMENT_ID AND S.SO_ID=vSO_ID AND SL.SO_LINENO=NEW.SO_LINENO INTO vBALQTY;

    UPDATE SALES_ORDER_LINE SET QTY_SHIP=vBALQTY WHERE SALES_ORDER_ID=vSO_ID AND LINE_NO=NEW.SO_LINENO;
	UPDATE SALES_ORDER_LINE SET LINE_STATUS='C' WHERE SALES_ORDER_ID=vSO_ID AND LINE_NO=NEW.SO_LINENO AND QTY=QTY_SHIP;
    UPDATE SALES_ORDER_LINE SET LINE_CLOSED_DATE=NOW() WHERE SALES_ORDER_ID=vSO_ID AND LINE_NO=NEW.SO_LINENO AND QTY=QTY_SHIP AND LINE_CLOSED_DATE IS NULL;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER SHIPMENT_LINE_AD AFTER DELETE ON SHIPMENT_LINE
  FOR EACH ROW 
  BEGIN
	DECLARE vSO_ID VARCHAR(15);
    SELECT SO_ID FROM SHIPMENT WHERE SHIPMENT_ID=OLD.SHIPMENT_ID into vSO_ID;
    
    UPDATE SALES_ORDER_LINE SET QTY_SHIP=QTY_SHIP-OLD.QTY WHERE SALES_ORDER_ID=vSO_ID AND LINE_NO=OLD.SO_LINENO;
    UPDATE SALES_ORDER_LINE SET LINE_STATUS=NULL WHERE SALES_ORDER_ID=vSO_ID AND LINE_NO=OLD.SO_LINENO AND QTY<>QTY_SHIP;
    delete from PART_TRANS WHERE DOCUMENT_ID=OLD.SHPREF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SHOP_RESOURCE`
--

DROP TABLE IF EXISTS `SHOP_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOP_RESOURCE` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(1) NOT NULL,
  `HRS_PER_DAY` int(11) DEFAULT '0',
  `COST_PER_HR` decimal(15,2) DEFAULT '0.00',
  `UNIT` decimal(15,2) DEFAULT '0.00',
  `MON_HRS` decimal(15,2) DEFAULT '0.00',
  `TUE_HRS` decimal(15,2) DEFAULT '0.00',
  `WED_HRS` decimal(15,2) DEFAULT '0.00',
  `THU_HRS` decimal(15,2) DEFAULT '0.00',
  `FRI_HRS` decimal(15,2) DEFAULT '0.00',
  `SAT_HRS` decimal(15,2) DEFAULT '0.00',
  `SUN_HRS` decimal(15,2) DEFAULT '0.00',
  `CLASS_ID` varchar(15) DEFAULT NULL,
  `SPEC` longtext,
  `OVERLOAD_PERCENT` decimal(6,3) DEFAULT '0.000',
  `TOLERANCE_CLASS` varchar(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `MON_SHIFT_ID` varchar(15) DEFAULT 'DEFAULT',
  `TUE_SHIFT_ID` varchar(15) DEFAULT 'DEFAULT',
  `WED_SHIFT_ID` varchar(15) DEFAULT 'DEFAULT',
  `THU_SHIFT_ID` varchar(15) DEFAULT 'DEFAULT',
  `FRI_SHIFT_ID` varchar(15) DEFAULT 'DEFAULT',
  `SAT_SHIFT_ID` varchar(15) DEFAULT 'OFF',
  `SUN_SHIFT_ID` varchar(15) DEFAULT 'OFF',
  `ALT_RESOURCES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOP_RESOURCE`
--

LOCK TABLES `SHOP_RESOURCE` WRITE;
/*!40000 ALTER TABLE `SHOP_RESOURCE` DISABLE KEYS */;
INSERT INTO `SHOP_RESOURCE` VALUES (1,'ASSEMBLY','Assembly','W',0,0.00,1.00,8.00,8.00,8.00,8.00,8.00,8.00,8.00,NULL,NULL,0.000,NULL,NULL,'2017-07-21 09:48:04',NULL,NULL,NULL,'Y','DEFAULT','DEFAULT','DEFAULT','DEFAULT','DEFAULT','OFF','OFF',NULL);
/*!40000 ALTER TABLE `SHOP_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `SOL_SHIPPED_TRACE_QTY`
--

DROP TABLE IF EXISTS `SOL_SHIPPED_TRACE_QTY`;
/*!50001 DROP VIEW IF EXISTS `SOL_SHIPPED_TRACE_QTY`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `SOL_SHIPPED_TRACE_QTY` (
  `SO_ID` tinyint NOT NULL,
  `SO_LINENO` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `TRACE_ID` tinyint NOT NULL,
  `SHIPPED_QTY` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `SOREF`
--

DROP TABLE IF EXISTS `SOREF`;
/*!50001 DROP VIEW IF EXISTS `SOREF`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `SOREF` (
  `SOREF_VALUE` tinyint NOT NULL,
  `SOREF_TEXT` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `LINE_NO` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `QTY` tinyint NOT NULL,
  `WANT_DATE` tinyint NOT NULL,
  `CUST_ID` tinyint NOT NULL,
  `CUST_PART_ID` tinyint NOT NULL,
  `UNIT_ESTIMATOR_COST` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `UDF`
--

DROP TABLE IF EXISTS `UDF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UDF` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `TBNAME` varchar(80) DEFAULT NULL,
  `COLVALUE` varchar(80) DEFAULT NULL,
  `COLLABEL` varchar(80) DEFAULT NULL,
  `COLTYPE` varchar(40) DEFAULT NULL,
  `FORMID` varchar(40) DEFAULT NULL,
  `TABID` varchar(40) DEFAULT NULL,
  `JADENAME` varchar(40) DEFAULT NULL,
  `SQLID` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UDF`
--

LOCK TABLES `UDF` WRITE;
/*!40000 ALTER TABLE `UDF` DISABLE KEYS */;
/*!40000 ALTER TABLE `UDF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UDF_LAYOUT`
--

DROP TABLE IF EXISTS `UDF_LAYOUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UDF_LAYOUT` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `UDF_1` varchar(40) DEFAULT NULL,
  `UDF_2` varchar(40) DEFAULT NULL,
  `UDF_3` varchar(40) DEFAULT NULL,
  `UDF_4` varchar(40) DEFAULT NULL,
  `UDF_5` varchar(40) DEFAULT NULL,
  `UDF_6` varchar(40) DEFAULT NULL,
  `UDF_7` varchar(40) DEFAULT NULL,
  `UDF_8` varchar(40) DEFAULT NULL,
  `UDF_9` varchar(40) DEFAULT NULL,
  `UDF_10` varchar(40) DEFAULT NULL,
  `DATA_TYPE_1` varchar(15) DEFAULT NULL,
  `DATA_OPTIONS_1` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UDF_LAYOUT`
--

LOCK TABLES `UDF_LAYOUT` WRITE;
/*!40000 ALTER TABLE `UDF_LAYOUT` DISABLE KEYS */;
INSERT INTO `UDF_LAYOUT` VALUES (1,'JOB','T1','T2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 10:06:04',NULL,NULL,NULL),(2,'OPN','OPN1','OPN2','OPN3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-21 10:06:22',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UDF_LAYOUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNITS`
--

DROP TABLE IF EXISTS `UNITS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNITS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNITS`
--

LOCK TABLES `UNITS` WRITE;
/*!40000 ALTER TABLE `UNITS` DISABLE KEYS */;
INSERT INTO `UNITS` VALUES (15,'EA','each',NULL,'2016-11-23 11:33:10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UNITS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UPDATES`
--

DROP TABLE IF EXISTS `UPDATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UPDATES` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UPDATES`
--

LOCK TABLES `UPDATES` WRITE;
/*!40000 ALTER TABLE `UPDATES` DISABLE KEYS */;
INSERT INTO `UPDATES` VALUES (2,'150904',NULL,NULL,NULL,NULL,NULL),(3,'150904A',NULL,NULL,NULL,NULL,NULL),(4,'150908',NULL,NULL,NULL,NULL,NULL),(5,'150911',NULL,NULL,NULL,NULL,NULL),(6,'150917',NULL,NULL,NULL,NULL,NULL),(7,'150918',NULL,NULL,NULL,NULL,NULL),(8,'150925',NULL,NULL,NULL,NULL,NULL),(9,'151008',NULL,NULL,NULL,NULL,NULL),(10,'151026',NULL,NULL,NULL,NULL,NULL),(11,'151102',NULL,NULL,NULL,NULL,NULL),(12,'151229A',NULL,NULL,NULL,NULL,NULL),(13,'160106',NULL,NULL,NULL,NULL,NULL),(14,'160218',NULL,NULL,NULL,NULL,NULL),(15,'160413',NULL,NULL,NULL,NULL,NULL),(16,'160416',NULL,NULL,NULL,NULL,NULL),(17,'160503',NULL,NULL,NULL,NULL,NULL),(21,'160524',NULL,NULL,NULL,NULL,NULL),(22,'160526',NULL,NULL,NULL,NULL,NULL),(23,'160527',NULL,NULL,NULL,NULL,NULL),(24,'160531',NULL,NULL,NULL,NULL,NULL),(18,'160602',NULL,NULL,NULL,NULL,NULL),(25,'160607',NULL,NULL,NULL,NULL,NULL),(26,'160609',NULL,NULL,NULL,NULL,NULL),(27,'160609A',NULL,NULL,NULL,NULL,NULL),(28,'160610',NULL,NULL,NULL,NULL,NULL),(29,'160622',NULL,NULL,NULL,NULL,NULL),(30,'160622A',NULL,NULL,NULL,NULL,NULL),(31,'160622B',NULL,NULL,NULL,NULL,NULL),(32,'160624',NULL,NULL,NULL,NULL,NULL),(33,'160624A',NULL,NULL,NULL,NULL,NULL),(19,'160629',NULL,NULL,NULL,NULL,NULL),(34,'160629A',NULL,NULL,NULL,NULL,NULL),(20,'160630',NULL,NULL,NULL,NULL,NULL),(35,'160721',NULL,NULL,NULL,NULL,NULL),(36,'160723',NULL,NULL,NULL,NULL,NULL),(37,'160805',NULL,NULL,NULL,NULL,NULL),(38,'160822',NULL,NULL,NULL,NULL,NULL),(39,'160824',NULL,NULL,NULL,NULL,NULL),(40,'160825',NULL,NULL,NULL,NULL,NULL),(41,'160830',NULL,NULL,NULL,NULL,NULL),(43,'160830B',NULL,NULL,NULL,NULL,NULL),(44,'160902',NULL,NULL,NULL,NULL,NULL),(45,'160906',NULL,NULL,NULL,NULL,NULL),(46,'160906A',NULL,NULL,NULL,NULL,NULL),(47,'160913',NULL,NULL,NULL,NULL,NULL),(48,'160916',NULL,NULL,NULL,NULL,NULL),(49,'160917',NULL,NULL,NULL,NULL,NULL),(50,'160919',NULL,NULL,NULL,NULL,NULL),(51,'160919A',NULL,NULL,NULL,NULL,NULL),(52,'160919Z','2016-09-19 00:00:00',NULL,NULL,NULL,NULL),(53,'160921','2016-09-21 00:00:00',NULL,NULL,NULL,NULL),(54,'160921A','2016-09-21 00:00:00',NULL,NULL,NULL,NULL),(55,'160922','2016-09-22 00:00:00',NULL,NULL,NULL,NULL),(56,'160923','2016-09-23 00:00:00',NULL,NULL,NULL,NULL),(57,'160927','2016-09-28 00:00:00',NULL,NULL,NULL,NULL),(58,'160930','2016-09-30 00:00:00',NULL,NULL,NULL,NULL),(66,'160930a','2016-09-30 00:00:00',NULL,NULL,NULL,NULL),(61,'160930B','2016-09-30 17:17:08',NULL,NULL,NULL,NULL),(67,'160930C','2016-09-30 00:00:00',NULL,NULL,NULL,NULL),(68,'161003','2016-10-03 00:00:00',NULL,NULL,NULL,NULL),(69,'161010','2016-10-10 00:00:00',NULL,NULL,NULL,NULL),(70,'161011','2016-10-11 00:00:00',NULL,NULL,NULL,NULL),(71,'161017','2016-10-17 00:00:00',NULL,NULL,NULL,NULL),(73,'161025','2016-10-26 00:00:00',NULL,NULL,NULL,NULL),(72,'161026','2016-10-26 00:00:00',NULL,NULL,NULL,NULL),(74,'161026A','2016-10-26 00:00:00',NULL,NULL,NULL,NULL),(75,'161027','2016-10-27 00:00:00',NULL,NULL,NULL,NULL),(76,'161027A','2016-10-27 00:00:00',NULL,NULL,NULL,NULL),(77,'161028','2016-10-28 00:00:00',NULL,NULL,NULL,NULL),(78,'161028A','2016-10-28 00:00:00',NULL,NULL,NULL,NULL),(79,'161101','2016-11-01 00:00:00',NULL,NULL,NULL,NULL),(80,'161102','2016-11-02 00:00:00',NULL,NULL,NULL,NULL),(81,'161103','2016-11-03 00:00:00',NULL,NULL,NULL,NULL),(82,'161104','2016-11-04 00:00:00',NULL,NULL,NULL,NULL),(84,'161107','2016-11-07 00:00:00',NULL,NULL,NULL,NULL),(85,'161108','2016-11-08 00:00:00',NULL,NULL,NULL,NULL),(86,'161110','2016-11-10 00:00:00',NULL,NULL,NULL,NULL),(87,'161121','2016-11-21 00:00:00',NULL,NULL,NULL,NULL),(88,'161123','2016-11-23 00:00:00',NULL,NULL,NULL,NULL),(89,'161123A','2016-11-23 11:33:11',NULL,NULL,NULL,NULL),(90,'161207','2016-12-07 00:00:00',NULL,NULL,NULL,NULL),(91,'161208','2016-12-09 00:00:00',NULL,NULL,NULL,NULL),(92,'161208A','2016-12-09 00:00:00',NULL,NULL,NULL,NULL),(93,'161213','2016-12-13 00:00:00',NULL,NULL,NULL,NULL),(94,'161228','2016-12-28 00:00:00',NULL,NULL,NULL,NULL),(42,'168030A',NULL,NULL,NULL,NULL,NULL),(95,'170106','2017-01-06 00:00:00',NULL,NULL,NULL,NULL),(97,'170119','2017-01-19 00:00:00',NULL,NULL,NULL,NULL),(99,'170126','2017-01-26 00:00:00',NULL,NULL,NULL,NULL),(100,'170310','2017-03-10 00:00:00',NULL,NULL,NULL,NULL),(101,'170316','2017-03-16 00:00:00',NULL,NULL,NULL,NULL),(102,'170317','2017-03-17 00:00:00',NULL,NULL,NULL,NULL),(103,'170320','2017-03-20 00:00:00',NULL,NULL,NULL,NULL),(104,'170321','2017-03-21 00:00:00',NULL,NULL,NULL,NULL),(106,'170425','2017-04-25 00:00:00',NULL,NULL,NULL,NULL),(107,'170516','2017-05-18 00:00:00',NULL,NULL,NULL,NULL),(108,'170517','2017-05-18 00:00:00',NULL,NULL,NULL,NULL),(109,'170518','2017-05-18 00:00:00',NULL,NULL,NULL,NULL),(110,'170518a','2017-05-18 00:00:00',NULL,NULL,NULL,NULL),(111,'170519','2017-05-19 00:00:00',NULL,NULL,NULL,NULL),(112,'170523','2017-05-23 00:00:00',NULL,NULL,NULL,NULL),(113,'170524','2017-05-24 00:00:00',NULL,NULL,NULL,NULL),(114,'170524A','2017-05-24 00:00:00',NULL,NULL,NULL,NULL),(115,'170531','2017-05-31 00:00:00',NULL,NULL,NULL,NULL),(116,'170605','2017-06-05 00:00:00',NULL,NULL,NULL,NULL),(117,'170606','2017-06-06 00:00:00',NULL,NULL,NULL,NULL),(118,'170608','2017-06-08 00:00:00',NULL,NULL,NULL,NULL),(119,'170609','2017-06-09 00:00:00',NULL,NULL,NULL,NULL),(120,'170612','2017-06-12 00:00:00',NULL,NULL,NULL,NULL),(123,'170810','2018-02-01 13:23:39',NULL,NULL,NULL,NULL),(124,'170818A','2018-02-01 13:24:49',NULL,NULL,NULL,NULL),(125,'170818B','2018-02-01 13:25:26',NULL,NULL,NULL,NULL),(126,'170824','2018-02-01 13:25:53',NULL,NULL,NULL,NULL),(131,'170905','2018-02-01 13:30:20',NULL,NULL,NULL,NULL),(130,'170906','2018-02-01 13:29:51',NULL,NULL,NULL,NULL),(127,'171002','2018-02-01 13:26:16',NULL,NULL,NULL,NULL),(129,'171004','2018-02-01 13:27:48',NULL,NULL,NULL,NULL),(132,'171012','2018-02-01 13:30:42',NULL,NULL,NULL,NULL),(134,'171013','2018-02-01 13:31:33',NULL,NULL,NULL,NULL),(133,'171026','2018-02-01 13:31:07',NULL,NULL,NULL,NULL),(135,'171102','2018-02-01 13:32:14',NULL,NULL,NULL,NULL),(136,'171103','2018-02-01 13:33:13',NULL,NULL,NULL,NULL),(137,'171106','2018-02-01 13:34:03',NULL,NULL,NULL,NULL),(138,'171107','2018-02-01 13:34:25',NULL,NULL,NULL,NULL),(139,'171113','2018-02-01 13:35:26',NULL,NULL,NULL,NULL),(140,'171113A','2018-02-01 13:35:54',NULL,NULL,NULL,NULL),(141,'171113B','2018-02-01 13:36:38',NULL,NULL,NULL,NULL),(150,'171117','2018-02-01 13:51:10',NULL,NULL,NULL,NULL),(143,'171124','2018-02-01 13:38:48',NULL,NULL,NULL,NULL),(144,'171129','2018-02-01 13:39:25',NULL,NULL,NULL,NULL),(145,'171201','2018-02-01 13:39:56',NULL,NULL,NULL,NULL),(146,'171201A','2018-02-01 13:41:21',NULL,NULL,NULL,NULL),(148,'171201B','2018-02-01 13:50:14',NULL,NULL,NULL,NULL),(147,'171218','2018-02-01 13:49:35',NULL,NULL,NULL,NULL),(149,'171220','2018-02-01 13:50:47',NULL,NULL,NULL,NULL),(151,'171226','2018-02-01 13:51:54',NULL,NULL,NULL,NULL),(152,'171228','2018-02-01 13:52:18',NULL,NULL,NULL,NULL),(128,'179013','2018-02-01 13:27:22',NULL,NULL,NULL,NULL),(153,'180103','2018-02-01 13:52:45',NULL,NULL,NULL,NULL),(154,'180104','2018-02-01 13:53:04',NULL,NULL,NULL,NULL),(158,'180108.EVERSLIK','2018-02-01 13:55:05',NULL,NULL,NULL,NULL),(121,'180111','2018-01-11 00:00:00',NULL,NULL,NULL,NULL),(161,'180129','2018-02-01 13:57:32',NULL,NULL,NULL,NULL),(122,'180201','2018-02-01 13:21:17',NULL,NULL,NULL,NULL),(160,'CAAS_AW95_INIT','2018-02-01 13:57:03',NULL,NULL,NULL,NULL),(162,'CALENDAR_INIT','2018-02-01 13:58:20',NULL,NULL,NULL,NULL),(142,'CRM_INIT','2018-02-01 13:38:12',NULL,NULL,NULL,NULL),(105,'NS_INIT','2017-03-23 00:00:00',NULL,NULL,NULL,NULL),(96,'OSS_INIT','2017-01-16 00:00:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `UPDATES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `ADDR_1` varchar(50) DEFAULT NULL,
  `ADDR_2` varchar(50) DEFAULT NULL,
  `ADDR_3` varchar(50) DEFAULT NULL,
  `CONTACT_PERSON` varchar(80) DEFAULT NULL,
  `CONTACT_PHONE` varchar(80) DEFAULT NULL,
  `CONTACT_fax` varchar(80) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(80) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `CURRENCY_ID` char(3) DEFAULT NULL,
  `GST_ID` char(15) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES (1,'GREENAPPLE','GREENAPPLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SGD','GST7',NULL,'2017-07-21 09:09:12',NULL,NULL,NULL);
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WORK_ORDER`
--

DROP TABLE IF EXISTS `WORK_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WORK_ORDER` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `WO_CLASS` varchar(15) DEFAULT 'DEFAULT',
  `TYPE` varchar(1) NOT NULL DEFAULT 'W',
  `BASE_ID` varchar(30) NOT NULL,
  `LOT_ID` varchar(3) NOT NULL DEFAULT '1',
  `SPLIT_ID` varchar(3) NOT NULL DEFAULT '0',
  `SUB_ID` varchar(3) NOT NULL DEFAULT '0',
  `PART_ID` varchar(30) DEFAULT NULL,
  `DESIRED_QTY` decimal(14,4) DEFAULT '1.0000',
  `RECEIVED_QTY` decimal(14,4) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `DESIRED_RLS_DATE` datetime DEFAULT NULL,
  `DESIRED_WANT_DATE` datetime DEFAULT NULL,
  `CLOSE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'U',
  `ENGINEERED_BY` varchar(40) DEFAULT NULL,
  `ENGINEERED_DATE` datetime DEFAULT NULL,
  `DRAWING_ID` varchar(30) DEFAULT NULL,
  `DRAWING_REV_NO` varchar(8) DEFAULT NULL,
  `PRODUCT_CODE` varchar(15) DEFAULT NULL,
  `COMMODITY_CODE` varchar(15) DEFAULT NULL,
  `SCHED_START_DATE` datetime DEFAULT NULL,
  `SCHED_FINISH_DATE` datetime DEFAULT NULL,
  `PRINTED_DATE` datetime DEFAULT NULL,
  `DRAWING_FILE` varchar(100) DEFAULT NULL,
  `WAREHOUSE_ID` varchar(15) DEFAULT NULL,
  `USER_1` varchar(80) DEFAULT NULL,
  `USER_2` varchar(80) DEFAULT NULL,
  `USER_3` varchar(80) DEFAULT NULL,
  `USER_4` varchar(80) DEFAULT NULL,
  `USER_5` varchar(80) DEFAULT NULL,
  `USER_6` varchar(80) DEFAULT NULL,
  `USER_7` varchar(80) DEFAULT NULL,
  `USER_8` varchar(80) DEFAULT NULL,
  `USER_9` varchar(80) DEFAULT NULL,
  `USER_10` varchar(80) DEFAULT NULL,
  `LONG_SPEC` longtext,
  `PART_ALIAS` varchar(50) DEFAULT NULL,
  `WOREF` varchar(35) DEFAULT NULL,
  `CUSTOMER_ID` varchar(15) DEFAULT NULL,
  `QTY_PER` decimal(15,8) DEFAULT '1.00000000',
  `EST_COST` decimal(15,4) DEFAULT '0.0000',
  `SALES_ORDER_ID` varchar(15) DEFAULT NULL,
  `SALES_ORDER_LINE_NO` varchar(15) DEFAULT NULL,
  `UDF_LAYOUT_ID` varchar(15) DEFAULT NULL,
  `PART_REV_NO` varchar(30) DEFAULT NULL,
  `QC_PLAN_ID` varchar(15) DEFAULT NULL,
  `QC_TEST_ID` varchar(15) DEFAULT NULL,
  `COC_QTY` decimal(14,4) DEFAULT '0.0000',
  `PRIORITY` int(11) DEFAULT '100',
  `LEAD_TIME` int(11) DEFAULT '0',
  `CUSTOMER_PO` varchar(50) DEFAULT NULL,
  `CUSTOMER_PO_LINE_NO` varchar(15) DEFAULT NULL,
  `CUSTOMER_PART_ID` varchar(50) DEFAULT NULL,
  `TYPE_CLASS` varchar(50) DEFAULT 'WORK_ORDER',
  `FLAGS` varchar(15) DEFAULT NULL,
  `SHIPPED_QTY` decimal(14,4) DEFAULT NULL,
  `WO_TYPE` varchar(15) DEFAULT NULL,
  `COMPLETED_QTY` decimal(14,4) DEFAULT NULL,
  `SALES_ORDER_NOTES` char(255) DEFAULT NULL,
  `SALES_ORDER_REF` varchar(35) DEFAULT NULL,
  `SALES_ORDER_REV_NO` int(11) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `ACT_MATERIAL_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_LABOR_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_BURDEN_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_SUBCON_COST` decimal(15,2) DEFAULT '0.00',
  `ACT_RENTAL_COST` decimal(15,2) DEFAULT '0.00',
  `COST_MATL` decimal(15,2) DEFAULT '0.00',
  `COST_SUBCON` decimal(15,2) DEFAULT '0.00',
  `COST_TOOLING` decimal(15,2) DEFAULT '0.00',
  `COST_OTHERS` decimal(15,2) DEFAULT '0.00',
  `COST_TOTAL` decimal(15,2) DEFAULT '0.00',
  `ACT_TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `GRAND_TOTAL_COST` decimal(15,2) DEFAULT '0.00',
  `SITE_ID` varchar(15) DEFAULT NULL,
  `ESTIMATOR_COST` decimal(15,4) DEFAULT '0.0000',
  PRIMARY KEY (`TYPE`,`BASE_ID`,`LOT_ID`,`SPLIT_ID`,`SUB_ID`),
  UNIQUE KEY `ROWID` (`ROWID`),
  KEY `PK_WORK_ORDER_1` (`BASE_ID`,`SUB_ID`),
  KEY `PK_WORK_ORDER_2` (`BASE_ID`),
  KEY `PK_WORK_ORDER_3` (`BASE_ID`,`SCHED_START_DATE`,`SCHED_FINISH_DATE`),
  KEY `PK_WORK_ORDER_4` (`SUB_ID`,`WO_CLASS`,`STATUS`),
  KEY `SALES_ORDER_ID` (`SALES_ORDER_ID`),
  KEY `BASE_ID` (`BASE_ID`),
  KEY `SALES_ORDER_ID_2` (`SALES_ORDER_ID`),
  KEY `BASE_ID_2` (`BASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORK_ORDER`
--

LOCK TABLES `WORK_ORDER` WRITE;
/*!40000 ALTER TABLE `WORK_ORDER` DISABLE KEYS */;
INSERT INTO `WORK_ORDER` VALUES (1,'DEFAULT','W','J-00002','1','0','0','PART001',1.0000,NULL,'2017-07-21 09:42:10','2017-07-21 00:00:00','2017-07-19 00:00:00',NULL,'R',NULL,NULL,NULL,NULL,'FG',NULL,'2017-11-01 00:00:00','2017-11-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'J-00002^0','APPLE',1.00000000,0.0000,'SOSIN000001','10','JOB',NULL,'TPP-001',NULL,0.0000,100,0,NULL,NULL,NULL,'WORK_ORDER',NULL,0.0000,'FG',0.0000,NULL,'SOSIN000001^10',0,'CLS','CLS','2017-07-21 12:14:02',0.0000,0.0000,0.0000,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,10.0000);
/*!40000 ALTER TABLE `WORK_ORDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER WORKORDER_BI BEFORE INSERT ON WORK_ORDER
FOR EACH ROW
BEGIN
   DECLARE vDESIRED_QTY DECIMAL(14,4);
   DECLARE vEST_COST DECIMAL(14,4);
   DECLARE vWO_CLASS VARCHAR(15);
   DECLARE vWO_TYPE VARCHAR(15);
   DECLARE vWOREF VARCHAR(50);
   DECLARE vSTATUS VARCHAR(1);
   DECLARE vWANT_DATE DATETIME;
   DECLARE vRLS_DATE DATETIME;
   DECLARE vPRIORITY INT;
   DECLARE vLEAD_TIME INT;
   DECLARE vSUB_ID_1 VARCHAR(3);
   DECLARE vQTY_PER_1 DECIMAL(15,8);
   DECLARE vSHIPPED_QTY DECIMAL(14,4);
   DECLARE done INT DEFAULT FALSE;
    
   SELECT IfNULL(WO_CLASS,'DEFAULT'),LEAD_TIME,PRIORITY,DATE_FORMAT(DESIRED_WANT_DATE,'%Y-%m-%d %H:%i:%S'),DATE_FORMAT(DESIRED_RLS_DATE,'%Y-%m-%d %H:%i:%S'),STATUS,SHIPPED_QTY,WO_TYPE,DESIRED_QTY
    FROM WORK_ORDER WHERE BASE_ID=NEW.BASE_ID AND SUB_ID=0
    INTO vWO_CLASS,vLEAD_TIME,vPRIORITY,vWANT_DATE,vRLS_DATE,vSTATUS,vSHIPPED_QTY,vWO_TYPE,vDESIRED_QTY;
    /*
    SET NEW.SALES_ORDER_ID=LEFT(NEW.SALES_ORDER_REF,INSTR(NEW.SALES_ORDER_REF,'^')-1);
    SET NEW.SALES_ORDER_LINE_NO=RIGHT(NEW.SALES_ORDER_REF,LENGTH(NEW.SALES_ORDER_REF)-INSTR(NEW.SALES_ORDER_REF,'^')) ;
    */
   SET NEW.WOREF=CONCAT(NEW.BASE_ID,'^',NEW.SUB_ID);
    IF NEW.SUB_ID<>'0' THEN
		BEGIN
		   SET NEW.WOREF=CONCAT(NEW.BASE_ID,'^',NEW.SUB_ID),
				NEW.STATUS=vSTATUS,
				NEW.WO_CLASS=vWO_CLASS,
				NEW.LEAD_TIME=vLEAD_TIME,
				NEW.PRIORITY=vPRIORITY,
				NEW.DESIRED_RLS_DATE=vRLS_DATE,
				NEW.DESIRED_WANT_DATE=vWANT_DATE,
                NEW.WO_TYPE=vWO_TYPE,
                NEW.DESIRED_QTY=vDESIRED_QTY;
		END;
    END IF;
	IF NEW.DESIRED_WANT_DATE='0000-00-00' THEN
		SET NEW.DESIRED_WANT_DATE=NULL;   
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER WORKORDER_BU BEFORE UPDATE ON WORK_ORDER
FOR EACH ROW
BEGIN
   DECLARE vCUSTOMER_NAME VARCHAR(50);
   DECLARE vQTY_STATUS VARCHAR(50);
   DECLARE vWO_STATUS_CNT INT;
   DECLARE vJSON VARCHAR(8000);
   
   DECLARE vCUSTOMER_ID VARCHAR(15);
   
    SELECT CUST_ID FROM SALES_ORDER WHERE ID=NEW.SALES_ORDER_ID INTO vCUSTOMER_ID;
    SET NEW.CUSTOMER_ID=vCUSTOMER_ID;
   SELECT IFNULL(NAME,'-') FROM CUSTOMER WHERE ID=NEW.CUSTOMER_ID INTO vCUSTOMER_NAME;
   /*
       SET NEW.SALES_ORDER_ID=LEFT(NEW.SALES_ORDER_REF,INSTR(NEW.SALES_ORDER_REF,'^')-1);
    SET NEW.SALES_ORDER_LINE_NO=RIGHT(NEW.SALES_ORDER_REF,LENGTH(NEW.SALES_ORDER_REF)-INSTR(NEW.SALES_ORDER_REF,'^')) ;
    */
    IF NEW.SUB_ID='0' THEN
		BEGIN			
		    IF(NEW.COMPLETED_QTY > 0 AND NEW.COMPLETED_QTY <> OLD.COMPLETED_QTY) THEN
               SET vQTY_STATUS='Partial Qty:';
               IF (NEW.DESIRED_QTY=NEW.COMPLETED_QTY) THEN
					SET vQTY_STATUS='Total Qty:';
                END IF;
                
                SET vJSON= CONCAT('{"ID":"',NEW.BASE_ID,'","NEW_QTY":"',NEW.COMPLETED_QTY,'","CHANGE_QTY":"',NEW.COMPLETED_QTY - IFNULL(OLD.COMPLETED_QTY,0),'","CUSTOMER_ID":"',IFNULL(NEW.CUSTOMER_ID,''),'","CUSTOMER_NAME":"',IFNULL(vCUSTOMER_NAME,''),'","SO_ID":"',IFNULL(NEW.SALES_ORDER_ID,'-'),'","QTY_STATUS":"',vQTY_STATUS,'"}');
                INSERT INTO EVENT_ONESHOT(EVENT_ID,EVENT_DATA) VALUES('vwltsa^sa_ticket^cocopn',vJSON);

            END IF;

            IF (NEW.DESIRED_QTY-IFNULL(NEW.SHIPPED_QTY,0)=0) THEN
				SET NEW.STATUS='C';

                -- SET NEW.CLOSE_DATE=NOW();
			END IF;
            
            IF (NEW.GRAND_TOTAL_COST<>OLD.GRAND_TOTAL_COST) THEN
				SET NEW.LAST_MODIFIED_DATE=NOW();
            END IF;
           /* IF (NEW.DESIRED_QTY-IFNULL(NEW.SHIPPED_QTY,0)<>0) THEN
				SET NEW.STATUS='R';
                SET NEW.CLOSE_DATE=NULL;
			END IF;		
            */
        END;
    END IF;    
    IF NEW.STATUS='C' AND NEW.STATUS<>OLD.STATUS THEN
		-- SET NEW.CLOSE_DATE=NOW();
		IF IFNULL(NEW.CLOSE_DATE,'999')='999' THEN
			set NEW.CLOSE_DATE=NOW();
		END IF;
                
        SELECT COUNT(*) FROM WORK_ORDER WHERE STATUS IN('R','U') AND SALES_ORDER_ID=NEW.SALES_ORDER_ID AND SALES_ORDER_LINE_NO=NEW.SALES_ORDER_LINE_NO AND BASE_ID<>NEW.BASE_ID AND SUB_ID=0 INTO vWO_STATUS_CNT;
        IF vWO_STATUS_CNT=0 THEN
			UPDATE SALES_ORDER_LINE SET LINE_STATUS='C' WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID AND LINE_NO=NEW.SALES_ORDER_LINE_NO;
		END IF;
		IF vWO_STATUS_CNT>0 THEN
			UPDATE SALES_ORDER_LINE SET LINE_STATUS=NULL WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID AND LINE_NO=NEW.SALES_ORDER_LINE_NO;
		END IF;
    END IF;
	 IF NEW.STATUS='R' AND NEW.STATUS<>OLD.STATUS THEN
       UPDATE SALES_ORDER_LINE SET LINE_STATUS=NULL WHERE SALES_ORDER_ID=NEW.SALES_ORDER_ID AND LINE_NO=NEW.SALES_ORDER_LINE_NO;
     END IF;
	IF NEW.DESIRED_WANT_DATE='0000-00-00' THEN
		SET NEW.DESIRED_WANT_DATE=NULL;   
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER WORKORDER_AU AFTER UPDATE ON WORK_ORDER
  FOR EACH ROW 
  BEGIN  
    -- CALL PURE_RECALC_OP_STATUS_RUNHRS_CALCQTY_SUBLEG_ZERO(NEW.BASE_ID,NEW.STATUS,NEW.DESIRED_QTY);
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER WORKORDER_AD AFTER DELETE ON WORK_ORDER
  FOR EACH ROW 
  BEGIN
    UPDATE SALES_ORDER_LINE SET WOREF=NULL WHERE SALES_ORDER_ID=OLD.SALES_ORDER_ID AND LINE_NO=OLD.SALES_ORDER_LINE_NO;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `WO_CLASS`
--

DROP TABLE IF EXISTS `WO_CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WO_CLASS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PREFIX` varchar(4) DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT '1',
  `SUFFIX` varchar(4) DEFAULT NULL,
  `LEADING_ZEROS` varchar(1) DEFAULT NULL,
  `DECIMAL_PLACES` smallint(6) DEFAULT NULL,
  `USER_ID` varchar(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WO_CLASS`
--

LOCK TABLES `WO_CLASS` WRITE;
/*!40000 ALTER TABLE `WO_CLASS` DISABLE KEYS */;
INSERT INTO `WO_CLASS` VALUES (6,'DEFAULT','Production','J-',1,'','Y',5,NULL,'2016-11-23 11:33:10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `WO_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WO_QT_TEST`
--

DROP TABLE IF EXISTS `WO_QT_TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WO_QT_TEST` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `BASE_ID` varchar(30) NOT NULL,
  `QC_TEST_ID` varchar(15) NOT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BASE_ID`,`QC_TEST_ID`),
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WO_QT_TEST`
--

LOCK TABLES `WO_QT_TEST` WRITE;
/*!40000 ALTER TABLE `WO_QT_TEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `WO_QT_TEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XEVENTS`
--

DROP TABLE IF EXISTS `XEVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEVENTS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(50) DEFAULT NULL,
  `MODE` varchar(20) DEFAULT NULL,
  `URL` longtext,
  `TIME` time DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `_SQLID` varchar(50) DEFAULT NULL,
  `_FUNC` varchar(10) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT '1',
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XEVENTS`
--

LOCK TABLES `XEVENTS` WRITE;
/*!40000 ALTER TABLE `XEVENTS` DISABLE KEYS */;
INSERT INTO `XEVENTS` VALUES (1,'vwltsa^invtrans_add','realtime','https://rest.na2.netsuite.com/app/site/hosting/restlet.nl?script=customscript_integrator_oms&deploy=customdeploy_ep_purem_wo_update',NULL,'2017-12-26 09:29:44','vwltsa^ns_wo_costs','get',1);
/*!40000 ALTER TABLE `XEVENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XHISTORY`
--

DROP TABLE IF EXISTS `XHISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XHISTORY` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `DATA_DEFINITION` varchar(50) DEFAULT NULL,
  `DOCUMENT_ID` varchar(100) DEFAULT NULL,
  `SITE_ID` varchar(15) DEFAULT NULL,
  `ACT_MATERIAL_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_LABOR_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_BURDEN_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_SUBCON_COST` decimal(15,4) DEFAULT '0.0000',
  `ACT_RENTAL_COST` decimal(15,4) DEFAULT '0.0000',
  `COST_TOOLING` decimal(15,4) DEFAULT '0.0000',
  `COST_SUBCON` decimal(15,4) DEFAULT '0.0000',
  `COST_MATL` decimal(15,4) DEFAULT '0.0000',
  `COST_OTHERS` decimal(15,4) DEFAULT '0.0000',
  `COST_REWORK` decimal(15,4) DEFAULT '0.0000',
  `GRAND_TOTAL_COST` decimal(15,4) DEFAULT '0.0000',
  `COMPLETED_QTY` decimal(14,4) DEFAULT '0.0000',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XHISTORY`
--

LOCK TABLES `XHISTORY` WRITE;
/*!40000 ALTER TABLE `XHISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `XHISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XTRANS`
--

DROP TABLE IF EXISTS `XTRANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XTRANS` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANS_ID` varchar(20) DEFAULT NULL,
  `SITE_ID` varchar(20) DEFAULT NULL,
  `CREATE_STAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `SQL_ID` varchar(100) DEFAULT NULL,
  `SENT_STAMP` decimal(15,0) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `TRIES` int(11) DEFAULT NULL,
  `JSON_DATA` longtext,
  `USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_USER_ID` varchar(15) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `DOCUMENT_ID` varchar(200) DEFAULT NULL,
  `URL_ID` int(11) DEFAULT '0',
  `ERROR_MSG` longtext,
  `REPLY_STAMP` decimal(15,0) DEFAULT NULL,
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XTRANS`
--

LOCK TABLES `XTRANS` WRITE;
/*!40000 ALTER TABLE `XTRANS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XTRANS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE OR REPLACE*/ /*!50017 */ /*!50003 TRIGGER XTRANS_BI BEFORE INSERT ON XTRANS
  FOR EACH ROW 
  BEGIN
	SET NEW.SITE_ID=DATABASE();
    
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `XXX_CPAR_WO`
--

DROP TABLE IF EXISTS `XXX_CPAR_WO`;
/*!50001 DROP VIEW IF EXISTS `XXX_CPAR_WO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `XXX_CPAR_WO` (
  `TYPE` tinyint NOT NULL,
  `YEARNO` tinyint NOT NULL,
  `MTHNO` tinyint NOT NULL,
  `MTH` tinyint NOT NULL,
  `CNT` tinyint NOT NULL,
  `WO_CNT` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `XXX_JOBSCHED_1`
--

DROP TABLE IF EXISTS `XXX_JOBSCHED_1`;
/*!50001 DROP VIEW IF EXISTS `XXX_JOBSCHED_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `XXX_JOBSCHED_1` (
  `rowid` tinyint NOT NULL,
  `WOREF` tinyint NOT NULL,
  `BASE_ID` tinyint NOT NULL,
  `SUB_ID` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `PART_ID` tinyint NOT NULL,
  `CUSTOMER_ID` tinyint NOT NULL,
  `SALES_ORDER_ID` tinyint NOT NULL,
  `SALES_ORDER_LINE_NO` tinyint NOT NULL,
  `DESIRED_WANT_DATE` tinyint NOT NULL,
  `MIN_SEQ` tinyint NOT NULL,
  `MAX_SEQ` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `XXX_WO_HRS_SUMMMARY`
--

DROP TABLE IF EXISTS `XXX_WO_HRS_SUMMMARY`;
/*!50001 DROP VIEW IF EXISTS `XXX_WO_HRS_SUMMMARY`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `XXX_WO_HRS_SUMMMARY` (
  `WORKORDER_BASE_ID` tinyint NOT NULL,
  `BAL_HRS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'PUREMASTER'
--
/*!50003 DROP FUNCTION IF EXISTS `CHARINDEX` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  FUNCTION `CHARINDEX`(S1 TEXT, S2 TEXT) RETURNS int(11)
    DETERMINISTIC
RETURN INSTR(S2,S1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GETDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  FUNCTION `GETDATE`() RETURNS datetime
    DETERMINISTIC
RETURN NOW() ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ISODATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  FUNCTION `ISODATE`(date DATE) RETURNS date
    DETERMINISTIC
RETURN DATE_FORMAT(date,'%Y%m%d') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ISOTIME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  FUNCTION `ISOTIME`(date DATETIME) RETURNS char(5) CHARSET latin1
    DETERMINISTIC
RETURN DATE_FORMAT(date,'%H:%i') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `LEN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  FUNCTION `LEN`(T1 TEXT) RETURNS int(11)
    DETERMINISTIC
RETURN LENGTH(T1) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_ADD_GRL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_ADD_GRL`(
 IN pRENTAL_ID VARCHAR(30), 
 IN pOPERATION_WOREF VARCHAR(30))
BEGIN
	DECLARE SOREF VARCHAR(30);
    DECLARE WO_RLS DATETIME;
    DECLARE WO_WANT DATETIME;
    DECLARE CUST_ID VARCHAR(15);
    DECLARE RESOURCE_ID VARCHAR(15);
    DECLARE MAX_RL_LN INT;
    DECLARE pCNT INT;
    
    SELECT COUNT(*) AS CNT FROM GAUGE_RENTAL_LINE WHERE OPERATION_REF=pOPERATION_WOREF INTO pCNT;
    
    IF pCNT=0 THEN
		SELECT IFNULL(MAX(IFNULL(LINE_NO,0)),0)+1 FROM GAUGE_RENTAL_LINE WHERE RENTAL_ID=pRENTAL_ID INTO MAX_RL_LN;
    
		SELECT SALES_ORDER_REF,WO.DESIRED_RLS_DATE,WO.DESIRED_WANT_DATE,WO.CUSTOMER_ID,OP.RESOURCE_ID 
		FROM WORK_ORDER WO, OPERATION OP 
		WHERE WO.BASE_ID=OP.WORKORDER_BASE_ID AND WO.SUB_ID=OP.WORKORDER_SUB_ID AND OP.WOREF=pOPERATION_WOREF
		INTO SOREF,WO_RLS,WO_WANT,CUST_ID,RESOURCE_ID;

		INSERT INTO GAUGE_RENTAL_LINE(RENTAL_ID,LINE_NO,SALES_ORDER_REF,OPERATION_REF,WO_RELEASE,WO_WANT,CUSTOMER_ID,RESOURCE_ID)
		VALUES(pRENTAL_ID,MAX_RL_LN,SOREF,pOPERATION_WOREF,WO_RLS,WO_WANT,CUST_ID,RESOURCE_ID);

		UPDATE GAUGE_RENTAL_LINE GRL
		 INNER JOIN GAUGE_RENTAL GR ON GR.RENTAL_ID = GRL.RENTAL_ID 
		 INNER JOIN OPERATION OPN ON GRL.OPERATION_REF = OPN.WOREF
		 INNER JOIN WORK_ORDER WO ON OPN.WORKORDER_BASE_ID = WO.BASE_ID AND WO.SUB_ID = 0 
		 SET GRL.WO_QTY = OPN.CALC_END_QTY, GRL.COC_QTY = WO.COC_QTY, GRL.WO_COMPLETED_QTY = OPN.COMPLETED_QTY, CALC_QTY = CASE WHEN (GR.ROYALTY_TYPE <> 'ENDS-RATE') Then 1 WHEN (ZERO_QTY = 'YES') Then 0 WHEN (FIXED_QTY > 0) Then FIXED_QTY ELSE COALESCE(WO_COMPLETED_QTY,0) END
		 WHERE GRL.RENTAL_ID = pRENTAL_ID;


		UPDATE GAUGE_RENTAL GR SET ROYALTY_QTY = (SELECT COALESCE(SUM(CALC_QTY),0) FROM GAUGE_RENTAL_LINE GRL WHERE GRL.RENTAL_ID = pRENTAL_ID), GR.ROYALTY_COST = (RENTAL_ROYALTY * GR.ROYALTY_QTY) WHERE GR.RENTAL_ID = pRENTAL_ID;
		  
		UPDATE GAUGE_RENTAL_LINE GRL INNER JOIN GAUGE_RENTAL GR ON GR.RENTAL_ID = GRL.RENTAL_ID SET OPERATION_COST = (GR.ENDS_RATE_SYSCUR * GRL.CALC_QTY) + ((GR.RENTAL_SYSCUR/GR.ROYALTY_QTY) * GRL.CALC_QTY) WHERE GRL.RENTAL_ID = pRENTAL_ID;

		UPDATE OPERATION OPN INNER JOIN GAUGE_RENTAL_LINE GRL ON GRL.OPERATION_REF = OPN.WOREF SET OPN.LICENSOR_JOB = GRL.LICENSOR_JOB, OPN.COST_TOOLING = GRL.OPERATION_COST WHERE GRL.RENTAL_ID = pRENTAL_ID;
	
	ELSE
		SELECT 'true' as error,concat('OPN ,',pOPERATION_WOREF,' , was added on another GR#.Please check') as msg;
    END IF;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_CLONEJOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_CLONEJOB`(
 IN SOURCE_BASE VARCHAR(30), 
 IN WO_CLASS VARCHAR(30)
 )
BEGIN
 DECLARE RESULT VARCHAR(30);
 DECLARE TBNAME VARCHAR(30);
 DECLARE COLNAME VARCHAR(30);
 DECLARE vRcd INT;
 DECLARE nRcd INT;
 
 SET vRcd=1;
 
 SELECT COUNT(*)  FROM NNG where TYPE='WORK_ORDER' AND ID = WO_CLASS INTO nRcd;
 
 IF nRcd>0 THEN
 WHILE (vRcd >0 ) DO
		SELECT concat(IFNULL(PREFIX,''),right(concat('000000000',cast(next_number as char(10))),IFNULL(DECIMAL_PLACES,5)),
        case 
		 when SUFFIX='$Y2' then cast(YEAR(NOW())%100 AS char(2)) 
         when SUFFIX='-$Y2' then concat('-',cast(YEAR(NOW())%100 AS char(2)) )
		 when SUFFIX='$Y4' then cast(YEAR(NOW()) AS char(4))
         when SUFFIX='-$Y4' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$Y' then cast(YEAR(NOW()) AS char(4)) 
         when SUFFIX='-$Y' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$M' then cast(MONTH(NOW()) AS char(2)) 
         when SUFFIX='-$M' then concat('-',cast(MONTH(NOW()) AS char(2)) )
		 when SUFFIX='$M3' then LEFT(MONTHNAME(NOW()),3) 
         when SUFFIX='-$M3' then concat('-',LEFT(MONTHNAME(NOW()),3) ) 
		 when SUFFIX='YYMMDD' then DATE_FORMAT(NOW(),'%y%m%d')
         when SUFFIX='YYYYMMDD' then DATE_FORMAT(NOW(),'%Y%m%d')
		 when SUFFIX='-YYMMDD' then concat('-', DATE_FORMAT(NOW(),'%y%m%d')) 
         when SUFFIX='-YYYYMMDD' then concat('-', DATE_FORMAT(NOW(),'%Y%m%d'))   ELSE '' end ) ,
		 TABLE_NAME ,COLUMN_NAME INTO RESULT,TBNAME,COLNAME
		 FROM NNG where TYPE='WORK_ORDER' AND ID = WO_CLASS;
    
   			 SET @iRcd :=0;
			 SET @sqlCommand=CONCAT('SELECT COUNT(*) into @iRcd FROM ',TBNAME,' WHERE ',COLNAME,'=''',RESULT,'''');
			 PREPARE stmt1 FROM @sqlCommand;
			 EXECUTE stmt1;
			 DEALLOCATE PREPARE stmt1;
			 
			 SET vRcd = @iRcd;      
         UPDATE NNG set next_number=next_number+1 where TYPE='WORK_ORDER' AND ID=WO_CLASS;
END WHILE;

insert into WORK_ORDER(type,BASE_ID,LOT_ID,SPLIT_ID,SUB_ID,PART_ID,DESIRED_QTY,RECEIVED_QTY,CREATE_DATE,DESIRED_RLS_DATE,DESIRED_WANT_DATE,CLOSE_DATE,STATUS,ENGINEERED_BY,ENGINEERED_DATE, DRAWING_ID,DRAWING_REV_NO,SCHED_START_DATE,SCHED_FINISH_DATE,WO_CLASS,EST_COST,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,LONG_SPEC,WOREF,CUSTOMER_ID,QTY_PER,UDF_LAYOUT_ID,SALES_ORDER_ID,SALES_ORDER_LINE_NO,PART_ALIAS,PART_REV_NO,QC_PLAN_ID,QC_TEST_ID,COC_QTY,PRIORITY,LEAD_TIME,CUSTOMER_PO,CUSTOMER_PO_LINE_NO) 
select type,RESULT,LOT_ID,SPLIT_ID,SUB_ID,PART_ID,DESIRED_QTY,0,NOW(),NULL,NOW(),NULL,'U','',NOW(), DRAWING_ID,DRAWING_REV_NO,NOW(),NOW(),WO_CLASS,0,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,LONG_SPEC,concat(RESULT,'^',SUB_ID),CUSTOMER_ID,QTY_PER,UDF_LAYOUT_ID,SALES_ORDER_ID,SALES_ORDER_LINE_NO,PART_ALIAS,PART_REV_NO,QC_PLAN_ID,QC_TEST_ID,COC_QTY,PRIORITY,LEAD_TIME,CUSTOMER_PO,CUSTOMER_PO_LINE_NO from WORK_ORDER where TYPE = 'W' and BASE_ID=SOURCE_BASE and LOT_ID=1;
insert into OPERATION (workorder_type,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,SEQUENCE_NO,RESOURCE_ID,SETUP_HRS,run,RUN_TYPE,RUN_HRS,SCHED_START_DATE,SCHED_FINISH_DATE,CALC_START_QTY,CALC_END_QTY,COMPLETED_QTY,DEVIATED_QTY,ACT_SETUP_HRS,ACT_RUN_HRS,STATUS,SETUP_COMPLETED,UDF_LAYOUT_ID,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,COST_UM,COST_QTY,COST_MATL,COST_SUBCON,COST_TOTAL,SPEC,MATERIAL_SPEC,WOREF,COST_PER_HR,COST_TOOLING,COST_OTHERS,RESOURCE_CLASS_ID,QTY_TYPE,CLASS_DESCRIPTION,CLASS_ID,QC_PLAN_ID,PREV_RESOURCE_ID) 
select 'W',RESULT,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,SEQUENCE_NO,RESOURCE_ID,SETUP_HRS,run,RUN_TYPE,RUN_HRS,NOW(),NOW(),CALC_START_QTY,CALC_END_QTY,0,0,0,0,'U','N',UDF_LAYOUT_ID,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,COST_UM,COST_QTY,COST_MATL,COST_SUBCON,COST_TOTAL,SPEC,MATERIAL_SPEC,concat(RESULT,'^',WORKORDER_SUB_ID,'^',CAST(SEQUENCE_NO as CHAR(3))),COST_PER_HR,COST_TOOLING,COST_OTHERS,RESOURCE_CLASS_ID,QTY_TYPE,CLASS_DESCRIPTION,CLASS_ID,QC_PLAN_ID,PREV_RESOURCE_ID from OPERATION 
where WORKORDER_TYPE='W'and WORKORDER_BASE_ID=SOURCE_BASE  and WORKORDER_LOT_ID=1 
ORDER BY WORKORDER_SUB_ID ASC,SEQUENCE_NO ASC;
 
    SELECT RESULT as NEXT;
    
END IF;
IF nRcd<=0 THEN
			SELECT 'true' as error,'Unable to create new record.Please refresh the page and try again' as message;
END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_CLONEPLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_CLONEPLAN`(
 IN SOURCE_PLAN_ID VARCHAR(15), 
 IN pPART_ID VARCHAR(30),
 IN pGAUGE_TYPE VARCHAR(15)
 )
BEGIN
 DECLARE vPLAN_TYPE VARCHAR(10);
 DECLARE vRESULT VARCHAR(30);
 DECLARE vTBNAME VARCHAR(30);
 DECLARE vCOLNAME VARCHAR(30);
        
        SELECT TYPE INTO vPLAN_TYPE FROM QP_PLAN WHERE PLAN_ID=SOURCE_PLAN_ID;
        
		SELECT concat(IFNULL(PREFIX,''),right(concat('000000000',cast(next_number as char(10))),IFNULL(DECIMAL_PLACES,5)),
        case 
		 when SUFFIX='$Y2' then cast(YEAR(NOW())%100 AS char(2)) 
         when SUFFIX='-$Y2' then concat('-',cast(YEAR(NOW())%100 AS char(2)) )
		 when SUFFIX='$Y4' then cast(YEAR(NOW()) AS char(4))
         when SUFFIX='-$Y4' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$Y' then cast(YEAR(NOW()) AS char(4)) 
         when SUFFIX='-$Y' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$M' then cast(MONTH(NOW()) AS char(2)) 
         when SUFFIX='-$M' then concat('-',cast(MONTH(NOW()) AS char(2)) )
		 when SUFFIX='$M3' then LEFT(MONTHNAME(NOW()),3) 
         when SUFFIX='-$M3' then concat('-',LEFT(MONTHNAME(NOW()),3) ) 
		 when SUFFIX='YYMMDD' then DATE_FORMAT(NOW(),'%y%m%d')
         when SUFFIX='YYYYMMDD' then DATE_FORMAT(NOW(),'%Y%m%d')
		 when SUFFIX='-YYMMDD' then concat('-', DATE_FORMAT(NOW(),'%y%m%d')) 
         when SUFFIX='-YYYYMMDD' then concat('-', DATE_FORMAT(NOW(),'%Y%m%d'))   ELSE '' end ) ,
		 TABLE_NAME ,COLUMN_NAME INTO vRESULT,vTBNAME,vCOLNAME
		 FROM NNG where TYPE=concat('TPLAN-',vPLAN_TYPE) AND ID = 'DQM';
    
         UPDATE NNG set next_number=next_number+1 where TYPE=concat('TPLAN-',vPLAN_TYPE) AND ID = 'DQM';
IF vPLAN_TYPE='PART' THEN
	insert into QP_PLAN(PLAN_ID,PLAN_VER,PART_ID,CREATE_DATE,DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE) select vRESULT,PLAN_VER,pPART_ID,NOW(),DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE FROM QP_PLAN WHERE PLAN_ID=SOURCE_PLAN_ID;
END IF;

IF vPLAN_TYPE='GAUGE' THEN
	insert into QP_PLAN(PLAN_ID,PLAN_VER,CREATE_DATE,DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE,GAUGE_TYPE) select vRESULT,PLAN_VER,NOW(),DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE,pGAUGE_TYPE FROM QP_PLAN WHERE PLAN_ID=SOURCE_PLAN_ID;
END IF;

delete from QP_ITEM where PLAN_ID=vRESULT;
insert into QP_ITEM (PLAN_ID,SEQ_NO,GAUGE_TYPE,GAUGE_ID,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,CREATE_DATE,LTYPE,BOOL_TEXT,
USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10) 
select vRESULT,SEQ_NO,GAUGE_TYPE,GAUGE_ID,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,NOW(),LTYPE,BOOL_TEXT,
USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10 FROM QP_ITEM WHERE PLAN_ID=SOURCE_PLAN_ID order by SEQ_NO asc;

 
    SELECT vPLAN_TYPE as PLAN_TYPE,vRESULT as NEXT;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_COPYJOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_COPYJOB`(  IN vSOURCE_DB CHAR(50),   IN vTARGET_DB CHAR(50),  IN vJOB_ID CHAR(30))
BEGIN  SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.OPERATION_PART WHERE WOREF LIKE ''',CONCAT(vJOB_ID,'%'),''';'); PREPARE tStmt FROM @st; EXECUTE tStmt;   SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.OPERATION WHERE WORKORDER_BASE_ID=''',vJOB_ID,''';'); PREPARE tStmt FROM @st; EXECUTE tStmt;  SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.WORK_ORDER WHERE BASE_ID=''',vJOB_ID,''';'); PREPARE tStmt FROM @st; EXECUTE tStmt;   SET @st=CONCAT('INSERT INTO ',vTARGET_DB,'.WORK_ORDER( WO_CLASS,TYPE,BASE_ID,LOT_ID,SPLIT_ID,SUB_ID, PART_ID,DESIRED_QTY,RECEIVED_QTY, CREATE_DATE,DESIRED_RLS_DATE,DESIRED_WANT_DATE,CLOSE_DATE,STATUS, ENGINEERED_BY,ENGINEERED_DATE, DRAWING_ID,DRAWING_REV_NO, PRODUCT_CODE,COMMODITY_CODE, SCHED_START_DATE,SCHED_FINISH_DATE, PRINTED_DATE,DRAWING_FILE,WAREHOUSE_ID, USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,LONG_SPEC, PART_ALIAS,WOREF,CUSTOMER_ID,QTY_PER,EST_COST, SALES_ORDER_ID,SALES_ORDER_LINE_NO, UDF_LAYOUT_ID,PART_REV_NO,QC_PLAN_ID,QC_TEST_ID,COC_QTY,PRIORITY, LEAD_TIME,CUSTOMER_PO,CUSTOMER_PO_LINE_NO, CUSTOMER_PART_ID,TYPE_CLASS,FLAGS,SHIPPED_QTY,WO_TYPE,COMPLETED_QTY,SALES_ORDER_NOTES, SALES_ORDER_REF,SALES_ORDER_REV_NO,USER_ID,LAST_MODIFIED_USER_ID,LAST_MODIFIED_DATE, ACT_MATERIAL_COST,ACT_LABOR_COST,ACT_BURDEN_COST,ACT_SUBCON_COST,ACT_RENTAL_COST, COST_MATL,COST_SUBCON,COST_TOOLING,COST_OTHERS,COST_TOTAL, ACT_TOTAL_COST,GRAND_TOTAL_COST,SITE_ID,ESTIMATOR_COST)  SELECT WO_CLASS,TYPE,BASE_ID,LOT_ID,SPLIT_ID,SUB_ID, PART_ID,DESIRED_QTY,RECEIVED_QTY, CREATE_DATE,DESIRED_RLS_DATE,DESIRED_WANT_DATE,CLOSE_DATE,STATUS, ENGINEERED_BY,ENGINEERED_DATE, DRAWING_ID,DRAWING_REV_NO, PRODUCT_CODE,COMMODITY_CODE, SCHED_START_DATE,SCHED_FINISH_DATE, PRINTED_DATE,DRAWING_FILE,WAREHOUSE_ID, USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,LONG_SPEC, PART_ALIAS,WOREF,CUSTOMER_ID,QTY_PER,EST_COST, SALES_ORDER_ID,SALES_ORDER_LINE_NO, UDF_LAYOUT_ID,PART_REV_NO,QC_PLAN_ID,QC_TEST_ID,COC_QTY,PRIORITY, LEAD_TIME,CUSTOMER_PO,CUSTOMER_PO_LINE_NO, CUSTOMER_PART_ID,TYPE_CLASS,FLAGS,SHIPPED_QTY,WO_TYPE,COMPLETED_QTY,SALES_ORDER_NOTES, SALES_ORDER_REF,SALES_ORDER_REV_NO,USER_ID,LAST_MODIFIED_USER_ID,LAST_MODIFIED_DATE, ACT_MATERIAL_COST,ACT_LABOR_COST,ACT_BURDEN_COST,ACT_SUBCON_COST,ACT_RENTAL_COST, COST_MATL,COST_SUBCON,COST_TOOLING,COST_OTHERS,COST_TOTAL, ACT_TOTAL_COST,GRAND_TOTAL_COST,SITE_ID,ESTIMATOR_COST  FROM ',vSOURCE_DB,'.WORK_ORDER WHERE BASE_ID =''',vJOB_ID,''';');   PREPARE tStmt FROM @st; EXECUTE tStmt;   SET @st=CONCAT('INSERT INTO ',vTARGET_DB,'.OPERATION(WORKORDER_TYPE,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,SEQUENCE_NO, RESOURCE_ID,SETUP_HRS,RUN,RUN_TYPE,RUN_HRS,SCHED_START_DATE,SCHED_FINISH_DATE, CALC_START_QTY,CALC_END_QTY,COMPLETED_QTY,DEVIATED_QTY, ACT_SETUP_HRS,ACT_RUN_HRS,STATUS,SETUP_COMPLETED,RUN_QTY_PER_CYCLE, USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10, CLOSE_DATE,SERVICE_ID, BUR_PER_HR_RUN,BUR_PERCENT_RUN,BUR_PER_UNIT_RUN,BUR_PER_OPERATION, QTY_PER,LONG_SPEC,CREATE_DATE,WOREF,COST_PER_HR, ACT_RUN_COST,ACT_SETUP_COST,ACT_LABOR_COST,ACT_BURDEN_COST, JOB_PLAN_SEQ,LT_OPENJOB,JOB_PLAN_HRS, HTYPE,OP_DATA,RESOURCE_CLASS_ID,SPEC,MATERIAL_SPEC,UDF_LAYOUT_ID, COST_UM,COST_QTY,COST_MATL,COST_SUBCON,COST_TOTAL, NCR_ID,COST_TOOLING,COST_OTHERS, CLASS_DESCRIPTION,CLASS_ID, QC_PLAN_ID,QTY_TYPE, PREV_RESOURCE_ID,USER_ID,LAST_MODIFIED_USER_ID,LAST_MODIFIED_DATE, GAUGE_RENT_DIAMETER,GAUGE_RENT_WEIGHT,GAUGE_RENT_THREAD,GAUGE_RENT_PINBOX, LICENSOR_ID,LICENSOR_JOB, ACT_MATERIAL_COST,ACT_SUBCON_COST,ACT_RENTAL_COST, COST_MATL_DESCRIPTION,COST_SUBCON_DESCRIPTION,COST_TOOLING_DESCRIPTION,COST_OTHERS_DESCRIPTION,SITE_ID) SELECT WORKORDER_TYPE,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,SEQUENCE_NO, RESOURCE_ID,SETUP_HRS,RUN,RUN_TYPE,RUN_HRS,SCHED_START_DATE,SCHED_FINISH_DATE, CALC_START_QTY,CALC_END_QTY,COMPLETED_QTY,DEVIATED_QTY, ACT_SETUP_HRS,ACT_RUN_HRS,STATUS,SETUP_COMPLETED,RUN_QTY_PER_CYCLE, USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10, CLOSE_DATE,SERVICE_ID, BUR_PER_HR_RUN,BUR_PERCENT_RUN,BUR_PER_UNIT_RUN,BUR_PER_OPERATION, QTY_PER,LONG_SPEC,CREATE_DATE,WOREF,COST_PER_HR, ACT_RUN_COST,ACT_SETUP_COST,ACT_LABOR_COST,ACT_BURDEN_COST, JOB_PLAN_SEQ,LT_OPENJOB,JOB_PLAN_HRS, HTYPE,OP_DATA,RESOURCE_CLASS_ID,SPEC,MATERIAL_SPEC,UDF_LAYOUT_ID, COST_UM,COST_QTY,COST_MATL,COST_SUBCON,COST_TOTAL, NCR_ID,COST_TOOLING,COST_OTHERS, CLASS_DESCRIPTION,CLASS_ID, QC_PLAN_ID,QTY_TYPE, PREV_RESOURCE_ID,USER_ID,LAST_MODIFIED_USER_ID,LAST_MODIFIED_DATE, GAUGE_RENT_DIAMETER,GAUGE_RENT_WEIGHT,GAUGE_RENT_THREAD,GAUGE_RENT_PINBOX, LICENSOR_ID,LICENSOR_JOB, ACT_MATERIAL_COST,ACT_SUBCON_COST,ACT_RENTAL_COST, COST_MATL_DESCRIPTION,COST_SUBCON_DESCRIPTION,COST_TOOLING_DESCRIPTION,COST_OTHERS_DESCRIPTION,SITE_ID  FROM ',vSOURCE_DB,'.OPERATION WHERE WORKORDER_BASE_ID  =''',vJOB_ID,''';');   PREPARE tStmt FROM @st; EXECUTE tStmt;  SET @st=CONCAT('INSERT INTO ',vTARGET_DB,'.OPERATION_PART(WOREF,PART_ID,REQUIRED_QTY) SELECT WOREF,PART_ID,REQUIRED_QTY FROM  ',vSOURCE_DB,'.OPERATION_PART WHERE WOREF LIKE ''',CONCAT(vJOB_ID,'%'),''';'); PREPARE tStmt FROM @st; EXECUTE tStmt;  SET @st=CONCAT('INSERT INTO ',vTARGET_DB,'.PART(ID,DESCRIPTION,ALIAS_DESC,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,PART_CLASS_ID,TRACEABLE,LOT_SIZE, TRACE_USER_1_LBL,TRACE_USER_2_LBL,TRACE_USER_3_LBL,TRACE_USER_4_LBL,TRACE_USER_5_LBL, TRACE_USER_6_LBL,TRACE_USER_7_LBL,TRACE_USER_8_LBL,TRACE_USER_9_LBL,TRACE_USER_10_LBL, UDF_LAYOUT_ID,ACTIVE,UNIT_MATERIAL_COST,PRODUCT_CODE,UOM_ID) SELECT ID,DESCRIPTION,ALIAS_DESC,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,PART_CLASS_ID,TRACEABLE,LOT_SIZE, TRACE_USER_1_LBL,TRACE_USER_2_LBL,TRACE_USER_3_LBL,TRACE_USER_4_LBL,TRACE_USER_5_LBL, TRACE_USER_6_LBL,TRACE_USER_7_LBL,TRACE_USER_8_LBL,TRACE_USER_9_LBL,TRACE_USER_10_LBL, UDF_LAYOUT_ID,ACTIVE,UNIT_MATERIAL_COST,PRODUCT_CODE,UOM_ID  FROM ',vSOURCE_DB,'.PART WHERE ID IN( SELECT PART_ID FROM  ',vSOURCE_DB,'.OPERATION_PART WHERE WOREF LIKE ''',CONCAT(vJOB_ID,'%'),''' AND PART_ID NOT IN (SELECT ID FROM ',vTARGET_DB,'.PART))');   PREPARE tStmt FROM @st; EXECUTE tStmt;   SET @st=CONCAT('INSERT INTO ',vTARGET_DB,'.PART(ID,DESCRIPTION,ALIAS_DESC,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,PART_CLASS_ID,TRACEABLE,LOT_SIZE, TRACE_USER_1_LBL,TRACE_USER_2_LBL,TRACE_USER_3_LBL,TRACE_USER_4_LBL,TRACE_USER_5_LBL, TRACE_USER_6_LBL,TRACE_USER_7_LBL,TRACE_USER_8_LBL,TRACE_USER_9_LBL,TRACE_USER_10_LBL, UDF_LAYOUT_ID,ACTIVE,UNIT_MATERIAL_COST,PRODUCT_CODE,UOM_ID) SELECT ID,DESCRIPTION,ALIAS_DESC,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10,PART_CLASS_ID,TRACEABLE,LOT_SIZE, TRACE_USER_1_LBL,TRACE_USER_2_LBL,TRACE_USER_3_LBL,TRACE_USER_4_LBL,TRACE_USER_5_LBL, TRACE_USER_6_LBL,TRACE_USER_7_LBL,TRACE_USER_8_LBL,TRACE_USER_9_LBL,TRACE_USER_10_LBL, UDF_LAYOUT_ID,ACTIVE,UNIT_MATERIAL_COST,PRODUCT_CODE,UOM_ID  FROM ',vSOURCE_DB,'.PART WHERE ID IN( SELECT PART_ID FROM  ',vSOURCE_DB,'.WORK_ORDER WHERE BASE_ID LIKE ''',CONCAT(vJOB_ID,'%'),''' AND PART_ID NOT IN (SELECT ID FROM ',vTARGET_DB,'.PART))');   PREPARE tStmt FROM @st; EXECUTE tStmt;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_COPY_QPPLAN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_COPY_QPPLAN`(
 IN vSOURCE_DB VARCHAR(50), 
 IN vTARGET_DB VARCHAR(50),
 IN vPLAN_ID VARCHAR(30))
BEGIN

SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.QP_PLAN WHERE PLAN_ID=''',vPLAN_ID,''';');

PREPARE tStmt FROM @st;
EXECUTE tStmt;


SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.QP_ITEM WHERE PLAN_ID=''',vPLAN_ID,''';');

PREPARE tStmt FROM @st;
EXECUTE tStmt;


SET @st=CONCAT('insert into ',vTARGET_DB,'.QP_PLAN(PLAN_ID,PLAN_VER,PART_ID,CREATE_DATE,DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE,GAUGE_ID,GAUGE_TYPE) 
select PLAN_ID,PLAN_VER,PART_ID,NOW(),DRG_ID,DRG_REV,SAMPLE_TYPE,SAMPLE_QTY,SPEC,TYPE,GAUGE_ID,GAUGE_TYPE FROM ',vSOURCE_DB,'.QP_PLAN WHERE PLAN_ID=''',vPLAN_ID,''';');


PREPARE tStmt FROM @st;
EXECUTE tStmt;

SET @st=CONCAT('DELETE FROM ',vTARGET_DB,'.QP_ITEM WHERE PLAN_ID=''',vPLAN_ID,''';');

PREPARE tStmt FROM @st;
EXECUTE tStmt;

SET @st=CONCAT('insert into ',vTARGET_DB,'.QP_ITEM (PLAN_ID,SEQ_NO,GAUGE_TYPE,GAUGE_ID,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,CREATE_DATE,LTYPE,BOOL_TEXT,USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10)  
select PLAN_ID,SEQ_NO,GAUGE_TYPE,GAUGE_ID,TITLE,DOC,GREF,UOM,VNOM,VLOW,VUPP,GAUGE,SPEC,QCREF,NOW(),LTYPE,BOOL_TEXT,
USER_1,USER_2,USER_3,USER_4,USER_5,USER_6,USER_7,USER_8,USER_9,USER_10 FROM ',vSOURCE_DB,'.QP_ITEM WHERE PLAN_ID=''',vPLAN_ID,''' order by SEQ_NO asc;');


PREPARE tStmt FROM @st;
EXECUTE tStmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_GAUGERENAME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_GAUGERENAME`(
 IN NEW_GAUGE VARCHAR(50), 
 IN OLD_GAUGE VARCHAR(50),
 IN UID VARCHAR(30))
BEGIN
	UPDATE GAUGE SET OLD_ID=CONCAT(IFNULL(OLD_ID,''),';',OLD_GAUGE,'/',CAST(GETDATE() as CHAR(25)),'/',UID,CHAR(13)) WHERE ID=OLD_GAUGE;
	UPDATE GAUGE set ID=NEW_GAUGE WHERE ID=OLD_GAUGE;
	UPDATE GAUGE_TRANS set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
    UPDATE GAUGE_RENTAL set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
	UPDATE QP_PLAN set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
	UPDATE QP_ITEM set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
	UPDATE QT_TEST set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
	UPDATE QT_ITEM set GAUGE_ID=NEW_GAUGE where GAUGE_ID=OLD_GAUGE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_GRL_MOVE_JOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_GRL_MOVE_JOB`(
 IN pOPERATION_WOREF VARCHAR(30),
  IN pOLD_RENTAL_ID VARCHAR(30), 
   IN pNEW_RENTAL_ID VARCHAR(30)
 )
BEGIN

    DECLARE MAX_RL_LN INT;
    DECLARE ROW_ID INT;
    
    SELECT IFNULL(MAX(LINE_NO),0)+1 FROM GAUGE_RENTAL_LINE WHERE RENTAL_ID=pNEW_RENTAL_ID INTO MAX_RL_LN;
    
    SELECT ROWID FROM GAUGE_RENTAL_LINE WHERE RENTAL_ID=pOLD_RENTAL_ID AND OPERATION_REF=pOPERATION_WOREF INTO ROW_ID;
    
    UPDATE GAUGE_RENTAL_LINE SET RENTAL_ID=pNEW_RENTAL_ID,LINE_NO=MAX_RL_LN WHERE ROWID=ROW_ID;

	SELECT 'false' as error,concat('OPN ,',pOPERATION_WOREF,' , was moved from ',pOLD_RENTAL_ID,' to ',pNEW_RENTAL_ID,';') as msg;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_NCR_CF_FOLLOWUP_TO_CPAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_NCR_CF_FOLLOWUP_TO_CPAR`(
 IN SOURCE_TYPE VARCHAR(5), 
 IN SOURCE_ID VARCHAR(15)
 )
BEGIN
 DECLARE vRECURRENCE VARCHAR(15);
 DECLARE vSEVERITY VARCHAR(15);
 DECLARE vSUBJECT VARCHAR(255);
 DECLARE vREPORTED_BY VARCHAR(30);
 DECLARE vREPORTED_BY_EMAIL VARCHAR(30);
 
IF SOURCE_TYPE='NCR' THEN
	SELECT IFNULL(RECURRENCE,''),SEVERITY,SUBJECT,REPORTED_BY,REPORTED_BY_EMAIL 
    INTO vRECURRENCE,vSEVERITY,vSUBJECT,vREPORTED_BY,vREPORTED_BY_EMAIL
    FROM QC_NCR WHERE NCR_ID=SOURCE_ID;
END IF;
IF @SOURCE_TYPE='CF' THEN
	SELECT IFNULL(RECURRENCE,''),SEVERITY,SUBJECT,REPORTED_BY,REPORTED_BY_EMAIL 
    INTO vRECURRENCE,vSEVERITY,vSUBJECT,vREPORTED_BY,vREPORTED_BY_EMAIL
    FROM QC_CF WHERE NCR_ID=SOURCE_ID;
END IF;

 SET @SQL=concat('INSERT INTO QC_CPAR (NCR_ID,STATUS,RECURRENCE,SEVERITY,SUBJECT,REPORTED_BY,REPORTED_BY_EMAIL,VERIFIED_BY,VERIFIED_BY_EMAIL,SRCDOC,ORDER_ID,ORDER_TYPE,CREATE_DATE,REMARKS) 
   VALUES(''????'',''PENDING'',''',vRECURRENCE,''',''',vSEVERITY,''','''+vSUBJECT+''','''+vREPORTED_BY+''',''',vREPORTED_BY_EMAIL,''',NULL,NULL,''srcncr'',''',SOURCE_ID,''',''',SOURCE_TYPE,''',NOW(),''This CPAR was auto created from NCR/CF FOLLOWUP'')');

 CALL PURE_NNG('CPAR','DQM',@SQL);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_NNG` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_NNG`(
 IN TYPE_ID VARCHAR(30),
 IN MODULE_ID VARCHAR(30), 
 IN SQLID VARCHAR(8000)
 )
BEGIN
 DECLARE RESULT VARCHAR(30);
 DECLARE TBNAME VARCHAR(30);
 DECLARE COLNAME VARCHAR(30);
 DECLARE SQL1 VARCHAR(8000);
 DECLARE vRcd INT;
 
  DECLARE nRcd INT;
  
SET vRcd=1;

		SELECT COUNT(*) FROM NNG WHERE TYPE=TYPE_ID AND ID = MODULE_ID INTO nRcd;
         
IF nRcd>0 THEN         
WHILE (vRcd > 0 ) DO

         
		SELECT concat(IFNULL(PREFIX,''),right(concat('000000000',cast(next_number as char(10))),IFNULL(DECIMAL_PLACES,5)),
        case 
		 when SUFFIX='$Y2' then cast(YEAR(NOW())%100 AS char(2)) 
         when SUFFIX='-$Y2' then concat('-',cast(YEAR(NOW())%100 AS char(2)) )
		 when SUFFIX='$Y4' then cast(YEAR(NOW()) AS char(4))
         when SUFFIX='-$Y4' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$Y' then cast(YEAR(NOW()) AS char(4)) 
         when SUFFIX='-$Y' then concat('-',cast(YEAR(NOW()) AS char(4)) )
		 when SUFFIX='$M' then cast(MONTH(NOW()) AS char(2)) 
         when SUFFIX='-$M' then concat('-',cast(MONTH(NOW()) AS char(2)) )
		 when SUFFIX='$M3' then LEFT(MONTHNAME(NOW()),3) 
         when SUFFIX='-$M3' then concat('-',LEFT(MONTHNAME(NOW()),3) ) 
		 when SUFFIX='YYMMDD' then DATE_FORMAT(NOW(),'%y%m%d')
         when SUFFIX='YYYYMMDD' then DATE_FORMAT(NOW(),'%Y%m%d')
		 when SUFFIX='-YYMMDD' then concat('-', DATE_FORMAT(NOW(),'%y%m%d')) 
         when SUFFIX='-YYYYMMDD' then concat('-', DATE_FORMAT(NOW(),'%Y%m%d'))   ELSE '' end ) ,
		 TABLE_NAME ,COLUMN_NAME 
         INTO RESULT,TBNAME,COLNAME
		 FROM NNG 
         WHERE TYPE=TYPE_ID AND ID = MODULE_ID;
		
			 SET @iRcd :=0;
			 SET @sqlCommand=CONCAT('SELECT COUNT(*) into @iRcd FROM ',TBNAME,' WHERE ',COLNAME,'=''',RESULT,'''');
			 PREPARE stmt1 FROM @sqlCommand;
			 EXECUTE stmt1;
			 DEALLOCATE PREPARE stmt1;
			 
			 SET vRcd = @iRcd;
			 UPDATE NNG set next_number=next_number+1 where TYPE=TYPE_ID AND ID=MODULE_ID;

         
END WHILE;

		IF SQLID<>'' THEN
				BEGIN
					SET @SQL2=REPLACE(SQLID,'????',RESULT);
					PREPARE stmt FROM @SQL2;
					EXECUTE stmt;
					DEALLOCATE PREPARE stmt;
				END;
			END IF;
			SELECT RESULT as next,COLNAME as keyid,TBNAME as tbname,RESULT as _next;
END IF;


IF nRcd<=0 THEN
			SELECT 'true' as error,'Unable to create new record.Please refresh the page and try again' as message;
END IF;

        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_RECALC_OP_RUNHRS_CALCQTY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_RECALC_OP_RUNHRS_CALCQTY`(
 IN BASE VARCHAR(30),
 IN QTY1 DECIMAL(14,4),
  IN QTY2 DECIMAL(14,4)
 )
BEGIN
DECLARE vQTY DECIMAL(14,4);
DECLARE vJOBQTY DECIMAL(14,4);
DECLARE vSUB_ID VARCHAR(3);
DECLARE vSTATUS VARCHAR(1);

DECLARE done INT DEFAULT FALSE;
              DECLARE C2 CURSOR FOR 
				SELECT SUB_ID,
					CASE WHEN SUB_ID='0' THEN QTY1 ELSE DESIRED_QTY*QTY2 END AS QTY ,
                    STATUS 
					FROM WORK_ORDER WHERE BASE_ID=BASE  ORDER BY SUB_ID ASC;
               DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 
               OPEN C2;
               myloop:LOOP
				FETCH C2 INTO vSUB_ID,vQTY,vSTATUS;
                IF done THEN
					LEAVE myloop;
				END IF;
				
				UPDATE OPERATION SET 
                    CALC_END_QTY=(
						case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END
                    ),
					CALC_START_QTY=(
						case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END
                    ),
 					RUN_HRS=(case RUN 
						WHEN 0 then 0 else 
							case RUN_TYPE 
								when 'HRS/PC' then CALC_END_QTY*RUN 
								when 'PCS/HR' then CALC_END_QTY/RUN 
								when 'MIN/PC' then CALC_END_QTY*(RUN/60) 
								when 'PCS/MIN' then CALC_END_QTY*(1/(RUN*60)) 
								when 'HRS/JOB' then RUN end end )
                             ,
					STATUS=vSTATUS
                    
				   WHERE WORKORDER_BASE_ID=BASE AND STATUS <> 'C' AND WORKORDER_SUB_ID=vSUB_ID;
               END LOOP;
               CLOSE C2;
               
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_RECALC_OP_STATUS_RUNHRS_CALCQTY_SUBLEG_NONZERO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_RECALC_OP_STATUS_RUNHRS_CALCQTY_SUBLEG_NONZERO`(
 IN vBASE_ID VARCHAR(30),
  IN vJOB_QTY_PER DECIMAL(14,4)
 )
BEGIN
DECLARE vQTY DECIMAL(14,4);
DECLARE vSUB_ID VARCHAR(3);
DECLARE vSTATUS VARCHAR(3);

DECLARE done INT DEFAULT FALSE;

			
              DECLARE C2 CURSOR FOR 
				SELECT SUB_ID,CASE WHEN SUB_ID='0' THEN DESIRED_QTY ELSE DESIRED_QTY*vJOB_QTY_PER END AS QTY,STATUS FROM WORK_ORDER WHERE BASE_ID=vBASE_ID ORDER BY SUB_ID ASC;

              DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 
               OPEN C2;
               myloop:LOOP
				FETCH C2 INTO vSUB_ID,vQTY,vSTATUS;

            
                IF done THEN
					LEAVE myloop;
				END IF;
                
                IF vSTATUS<>'C' THEN
				UPDATE OPERATION SET 
                    CALC_END_QTY=(case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END),
					CALC_START_QTY=(case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END),
 					RUN_HRS=(case RUN 
						WHEN 0 then 0 else 
							case RUN_TYPE 
								when 'HRS/PC' then CALC_END_QTY*RUN 
								when 'PCS/HR' then CALC_END_QTY/RUN 
								when 'MIN/PC' then CALC_END_QTY*(RUN/60) 
								when 'PCS/MIN' then CALC_END_QTY*(1/(RUN*60)) 
								when 'HRS/JOB' then RUN end end )
                    ,STATUS=vSTATUS
				   WHERE WORKORDER_BASE_ID=vBASE_ID AND CALC_END_QTY>=COMPLETED_QTY AND WORKORDER_SUB_ID=vSUB_ID;

				END IF;
                IF vSTATUS='C' THEN
					UPDATE OPERATION SET STATUS=vSTATUS,CLOSE_DATE=NOW() WHERE WORKORDER_BASE_ID=vBASE_ID AND CALC_END_QTY=COMPLETED_QTY AND WORKORDER_SUB_ID=vSUB_ID AND STATUS<>'C';
				END IF;
                
               END LOOP;
               CLOSE C2;
               SELECT 'false' as error,'Update successful' as msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_RECALC_OP_STATUS_RUNHRS_CALCQTY_SUBLEG_ZERO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_RECALC_OP_STATUS_RUNHRS_CALCQTY_SUBLEG_ZERO`(
 IN vBASE_ID VARCHAR(30),
 IN vSTATUS VARCHAR(1),
 IN vJOB_QTY DECIMAL(14,4)
 )
BEGIN
DECLARE vQTY DECIMAL(14,4);
DECLARE vSUB_ID VARCHAR(3);


DECLARE done INT DEFAULT FALSE;
              DECLARE C2 CURSOR FOR 
				SELECT SUB_ID,CASE WHEN SUB_ID='0' THEN vJOB_QTY ELSE vJOB_QTY*QTY_PER END AS QTY FROM WORK_ORDER WHERE BASE_ID=vBASE_ID ORDER BY SUB_ID ASC;

              DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 
               OPEN C2;
               myloop:LOOP
				FETCH C2 INTO vSUB_ID,vQTY;

            
                IF done THEN
					LEAVE myloop;
				END IF;

                IF vSTATUS<>'C' THEN
				UPDATE OPERATION SET 
                    CALC_END_QTY=(case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END),
					CALC_START_QTY=(case QTY_TYPE when 'FIXED' THEN QTY_PER ELSE  QTY_PER*vQTY END),
 					RUN_HRS=(case RUN 
						WHEN 0 then 0 else 
							case RUN_TYPE 
								when 'HRS/PC' then CALC_END_QTY*RUN 
								when 'PCS/HR' then CALC_END_QTY/RUN 
								when 'MIN/PC' then CALC_END_QTY*(RUN/60) 
								when 'PCS/MIN' then CALC_END_QTY*(1/(RUN*60)) 
								when 'HRS/JOB' then RUN end end )
                    ,STATUS=vSTATUS
				   WHERE WORKORDER_BASE_ID=vBASE_ID AND CALC_END_QTY>=COMPLETED_QTY AND WORKORDER_SUB_ID=vSUB_ID;
                   
				END IF;
                IF vSTATUS='C' THEN
					UPDATE OPERATION SET STATUS=vSTATUS,CLOSE_DATE=NOW() WHERE WORKORDER_BASE_ID=vBASE_ID AND CALC_END_QTY=COMPLETED_QTY AND WORKORDER_SUB_ID=vSUB_ID AND STATUS<>'C';
				END IF;
                
               END LOOP;
               CLOSE C2;
               SELECT 'false' as error,'Update successful' as msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_RECALC_WO_SHIPPED_COMPLETED_QTY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_RECALC_WO_SHIPPED_COMPLETED_QTY`(
 IN BASE VARCHAR(30)
 )
BEGIN
 
DECLARE vLAST_SEQ_NO SMALLINT ;
DECLARE vLAST2_SEQ_NO SMALLINT ;
DECLARE vWO_TYPE VARCHAR(15);
DECLARE vWO_COMPLETED_QTY DECIMAL(14,4);
DECLARE vWO_SHIPPED_QTY DECIMAL(14,4);
DECLARE vMCOST DECIMAL(14,4);
DECLARE vLCOST DECIMAL(14,4);
DECLARE vBCOST DECIMAL(14,4);
DECLARE vSCOST DECIMAL(14,4);
DECLARE vGCOST DECIMAL(14,4);

DECLARE vCOST_MATL DECIMAL(15,2);
DECLARE vCOST_SUBCON DECIMAL(15,2);
DECLARE vCOST_TOOLING DECIMAL(15,2);
DECLARE vCOST_OTHERS DECIMAL(15,2);
DECLARE vCOST_TOTAL DECIMAL(15,2);

  SELECT WO_TYPE FROM WORK_ORDER WHERE BASE_ID=BASE AND SUB_ID=0 INTO vWO_TYPE;
  SELECT MAX(SEQUENCE_NO) FROM OPERATION where WORKORDER_BASE_ID=BASE AND WORKORDER_SUB_ID=0 INTO vLAST_SEQ_NO;
  SELECT MAX(SEQUENCE_NO) FROM OPERATION where WORKORDER_BASE_ID=BASE AND WORKORDER_SUB_ID=0 AND SEQUENCE_NO<>vLAST_SEQ_NO INTO vLAST2_SEQ_NO;
  
  IF vWO_TYPE='MAKE_STAGED' THEN
  BEGIN
	SELECT IFNULL(SUM(GOOD_QTY),0) FROM LABOR_TICKET WHERE WOREF=CONCAT(BASE,'^',0,'^',vLAST2_SEQ_NO) INTO vWO_COMPLETED_QTY;
	UPDATE WORK_ORDER SET COMPLETED_QTY=vWO_COMPLETED_QTY WHERE BASE_ID=BASE AND SUB_ID=0;
    
	SELECT IFNULL(SUM(GOOD_QTY),0) FROM LABOR_TICKET WHERE WOREF=CONCAT(BASE,'^',0,'^',vLAST_SEQ_NO)  INTO vWO_SHIPPED_QTY;
	UPDATE WORK_ORDER SET SHIPPED_QTY=vWO_SHIPPED_QTY WHERE BASE_ID=BASE AND SUB_ID=0;
    
  END;
  END IF;
  
  IF vWO_TYPE='MAKE_NOSTAGE' THEN
  BEGIN
	SELECT IFNULL(SUM(GOOD_QTY),0) FROM LABOR_TICKET  WHERE WOREF=CONCAT(BASE,'^',0,'^',vLAST_SEQ_NO) INTO vWO_COMPLETED_QTY;
	UPDATE WORK_ORDER SET COMPLETED_QTY=vWO_COMPLETED_QTY WHERE BASE_ID=BASE AND SUB_ID=0;
	
	SELECT IFNULL(SUM(GOOD_QTY),0) FROM LABOR_TICKET WHERE WOREF=CONCAT(BASE,'^',0,'^',vLAST_SEQ_NO) INTO  vWO_SHIPPED_QTY;
	UPDATE WORK_ORDER SET SHIPPED_QTY=vWO_SHIPPED_QTY WHERE BASE_ID=BASE_ID AND SUB_ID=0;
  END;
  END IF;
  
  SELECT SUM(ACT_MATERIAL_COST),SUM(ACT_LABOR_COST),SUM(ACT_BURDEN_COST),SUM(ACT_SUBCON_COST),SUM(ACT_RENTAL_COST),
  SUM(COST_MATL),SUM(COST_SUBCON),SUM(COST_TOOLING),SUM(COST_OTHERS),SUM(COST_TOTAL) FROM OPERATION WHERE WORKORDER_BASE_ID=BASE INTO vMCOST,vLCOST,vBCOST,vSCOST,vGCOST,vCOST_MATL,vCOST_SUBCON,vCOST_TOOLING,vCOST_OTHERS,vCOST_TOTAL;
  UPDATE WORK_ORDER SET ACT_MATERIAL_COST=vMCOST,ACT_LABOR_COST=vLCOST,ACT_BURDEN_COST=vBCOST,ACT_SUBCON_COST=vSCOST,ACT_RENTAL_COST=vGCOST,COST_MATL=vCOST_MATL,COST_SUBCON=vCOST_SUBCON,COST_TOOLING=vCOST_TOOLING,COST_TOTAL=vCOST_TOTAL,ACT_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST,GRAND_TOTAL_COST=vMCOST+vLCOST+vBCOST+vSCOST+vGCOST+vCOST_MATL+vCOST_SUBCON+vCOST_TOOLING+vCOST_OTHERS WHERE  BASE_ID=BASE AND SUB_ID=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_ROUND_TIME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_ROUND_TIME`(
 IN EMP_ID VARCHAR(15), 
 IN CLOCK_TYPE VARCHAR(30),
 IN CLOCK_TIME DATETIME)
BEGIN
	
    DECLARE vSHIFT_ID VARCHAR(15);
    DECLARE vMINUTES_BEF INT;
    DECLARE vMINUTES_AFT  INT;
    DECLARE vDIFF INT;
    DECLARE vSHIFT_TIME DATETIME;
	DECLARE vROUND_TIME DATETIME;
    
    DECLARE vSHIFT_TIME1 DATE;
    DECLARE vSHIFT_TIME2 TIME;
    DECLARE vSHIFT_TIME3 DATETIME;
    
    DECLARE vBEF DATETIME;
    DECLARE vAFT DATETIME;

    
    SELECT SHIFT_ID FROM EMPLOYEE WHERE ID=EMP_ID INTO vSHIFT_ID;
    
    CASE LOWER(CLOCK_TYPE)
		WHEN 'c' THEN SELECT SHIFT_BEG_BEF_WIN,SHIFT_BEG_AFT_WIN FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
        WHEN 'o' THEN SELECT SHIFT_END_BEF_WIN,SHIFT_END_AFT_WIN FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
        WHEN 'BTWN_JOB' THEN SELECT BTWN_JOB_LAG_WIN,BTWN_JOB_LAG_WIN FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
        WHEN 'b' THEN SELECT BREAKS_WINDOW,BREAKS_WINDOW FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
    END CASE;    
    
    CASE CLOCK_TYPE
        WHEN 'c' THEN SELECT SHIFT_START FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID AND SHIFT_CODE=7 INTO vSHIFT_TIME;
        WHEN 'o' THEN SELECT SHIFT_END FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID AND SHIFT_CODE=7 INTO vSHIFT_TIME;
        WHEN 'b' THEN SELECT SHIFT_START FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID AND SHIFT_CODE=7 INTO vSHIFT_TIME;
    END CASE;    
    
    SELECT DATE_FORMAT(CLOCK_TIME,'%Y-%m-%d') into vSHIFT_TIME1 ;
    SELECT DATE_FORMAT(vSHIFT_TIME,'%H:%i:%s') into vSHIFT_TIME2 ;
    SELECT CONCAT(vSHIFT_TIME1, ' ',vSHIFT_TIME2) INTO vSHIFT_TIME3;
    

    SELECT DATE_ADD(vSHIFT_TIME3,INTERVAL -vMINUTES_BEF MINUTE) INTO vBEF;
    SELECT DATE_ADD(vSHIFT_TIME3,INTERVAL + vMINUTES_AFT MINUTE) INTO vAFT;
 
    IF CLOCK_TIME BETWEEN vBEF AND vAFT THEN SELECT vSHIFT_TIME3;
    ELSE SELECT CLOCK_TIME;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_TEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_TEST`(
IN vSOURCE_DB VARCHAR(15),
IN vTARGET_DB VARCHAR(15),
IN vPART_ID VARCHAR(100)
)
BEGIN

SET @st=CONCAT('SHOW DATABASES LIKE ''',vTARGET_DB,'%'' into @db');

PREPARE tStmt FROM @st;
EXECUTE tStmt;
SELECT @db;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_VWLT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_VWLT`(
 IN EMP_ID VARCHAR(15),
 IN TRANS_TYPE VARCHAR(15),
 IN WORK_ID VARCHAR(15),
 IN LOT_ID VARCHAR(3),
 IN SPLIT_ID VARCHAR(3),
 IN SUB_ID VARCHAR(3),
 IN SEQ_NO INT,
 IN GOOD_QTY DECIMAL(14,4),
 IN BAD_QTY DECIMAL(14,4),
 IN INDIRECT_ID VARCHAR(15),
 IN CLIENT_IP VARCHAR(30),
 IN VE_VERSION VARCHAR(15),
 IN VWLT_EDITION VARCHAR(15),
 IN SITE_ID VARCHAR(15),
 IN RUNSS_EN VARCHAR(5),
 IN TH_HRS INT,
 IN TH_FIX VARCHAR(1),
 IN SETUP_COMPLETED VARCHAR(1),
 IN DEVIATION_ID VARCHAR(15),
 IN SQL1 VARCHAR(8000)
 )
BEGIN
  DECLARE NEXT_PENDING_ID INT;
  DECLARE NEXT_LT_TX_ID INT;
  DECLARE OP_RUN_HRS DECIMAL(7,2);
  DECLARE OP_QTY	DECIMAL(14,4);
  DECLARE LT_HRS	DECIMAL(7,2);
  DECLARE NEW_TX_DATE	DATETIME;
  DECLARE vBREAK_CLOCKIN DATETIME;
  DECLARE CLOCK_IN DATETIME;
  DECLARE HRS DOUBLE;
  DECLARE vDEPARTMENT_ID VARCHAR(15);
  DECLARE vRESOURCE_ID VARCHAR(15);
  DECLARE LT_TX_ID INT;
  DECLARE msg VARCHAR(8000);
  
  DECLARE vSHIFT_ID VARCHAR(15);
  DECLARE vMINUTES_BEF INT;
  DECLARE vMINUTES_AFT  INT;
  DECLARE vSHIFT_TIME DATETIME;
  DECLARE vROUND_TIME DATETIME;

    DECLARE vSHIFT_TIME1 DATE;
    DECLARE vSHIFT_TIME2 TIME;
    DECLARE vSHIFT_TIME3 DATETIME;
    
    DECLARE vBEF DATETIME;
    DECLARE vAFT DATETIME;
    
    DECLARE rs INT;
    
    DECLARE vJOB_LAG INT;
    DECLARE vLAST_STOPJOB_TIME DATETIME;
    
  SELECT DEPARTMENT_ID,SHIFT_ID FROM EMPLOYEE WHERE ID=EMP_ID INTO vDEPARTMENT_ID,vSHIFT_ID;
  
   
  IF LEN(WORK_ID)>0 THEN
	  BEGIN
	  SELECT RESOURCE_ID,RUN_HRS,CALC_END_QTY 
		FROM OPERATION 
		WHERE WORKORDER_BASE_ID=WORK_ID 
        AND WORKORDER_LOT_ID=LOT_ID 
        AND WORKORDER_SPLIT_ID=SPLIT_ID 
        AND WORKORDER_SUB_ID=SUB_ID 
        AND SEQUENCE_NO=SEQ_NO
		INTO vRESOURCE_ID,OP_RUN_HRS,OP_QTY; 
	  END;
  END IF;
  SELECT EXISTS(SELECT TRANSACTION_ID FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL) INTO rs;
  IF rs=1 THEN

  	  BEGIN
      
      
      
		  SELECT TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,GETDATE())/3600.00 FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL LIMIT 1 INTO HRS;
		  IF HRS>TH_HRS THEN
			IF TH_FIX='Y' THEN
				   UPDATE LABOR_TICKET SET HOURS_WORKED=0,ACT_CLOCK_OUT=ACT_CLOCK_IN, DESCRIPTION='vwlt fix th' WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
				   set msg=concat(EMP_ID,', Exceeds Threshold,',HRS,'Please clock in again');
				   signal sqlstate '45000' set message_text = msg;
			ELSE 
			   set msg=concat(EMP_ID,', Exceeds Threshold,',HRS,'Please fix it from Job Ticket ');
			   signal sqlstate '45000' set message_text = msg;
			END IF;
		  ELSE
			BEGIN
				 IF TRANS_TYPE='C' THEN
					 set msg=concat(EMP_ID,', You already clocked in');
					 signal sqlstate '45000' set message_text = msg;
				END IF;
			     IF TRANS_TYPE='O' THEN
						IF EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND (WORKORDER_BASE_ID IS NOT NULL or TYPE='B')) THEN
							set msg=concat(EMP_ID,',You must stop job or stop break before clock out');
							signal sqlstate '45000' set message_text = msg;
						ELSE 
							SELECT SHIFT_END_BEF_WIN,SHIFT_END_AFT_WIN FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
							SELECT CONCAT(CURDATE(),' ',SHIFT_END) FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID AND SHIFT_CODE=7 INTO vSHIFT_TIME;
							SELECT DATE_ADD(vSHIFT_TIME,INTERVAL -vMINUTES_BEF MINUTE) INTO vBEF;
							SELECT DATE_ADD(vSHIFT_TIME,INTERVAL + vMINUTES_AFT MINUTE) INTO vAFT;
                            
                            IF NOW() BETWEEN vBEF AND vAFT THEN 
								UPDATE LABOR_TICKET SET HOURS_WORKED=TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,vSHIFT_TIME)/3600.00,USER_ID='BTS BARCODE',CLOCK_OUT=vSHIFT_TIME,ACT_CLOCK_OUT=vSHIFT_TIME WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
                            else
								UPDATE LABOR_TICKET SET HOURS_WORKED=TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,NOW())/3600.00,USER_ID='BTS BARCODE',CLOCK_OUT=NOW(),ACT_CLOCK_OUT=NOW() WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
                            END IF;
						END IF;
				 END IF;
				 IF TRANS_TYPE='R' OR TRANS_TYPE='S' OR TRANS_TYPE='U' OR TRANS_TYPE='T' THEN
				 BEGIN
					 IF LEN(WORK_ID)>0 THEN
						 BEGIN
							SELECT EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND WORKORDER_BASE_ID=WORK_ID AND WORKORDER_LOT_ID=LOT_ID AND WORKORDER_SPLIT_ID=SPLIT_ID AND WORKORDER_SUB_ID=SUB_ID AND OPERATION_SEQ_NO=SEQ_NO) into rs;
							IF rs=1  THEN
								set msg='Job already started';
								signal sqlstate '45000' set message_text = msg;
							ELSE
								BEGIN
										IF TRANS_TYPE='U' THEN 
											SET TRANS_TYPE='R';
										END IF;
										IF TRANS_TYPE='T' THEN
											SET TRANS_TYPE='S';
										END IF;
                                        
                                        SELECT BTWN_JOB_LAG_TIME FROM SHIFT WHERE ID=vSHIFT_ID INTO vJOB_LAG;
                                        SELECT ACT_CLOCK_OUT FROM LABOR_TICKET WHERE HOURS_WORKED IS NOT NULL AND EMPLOYEE_ID=EMP_ID AND WORKORDER_BASE_ID IS NOT NULL AND TRANSACTION_DATE=CURDATE() ORDER BY TRANSACTION_ID DESC LIMIT 1 INTO vLAST_STOPJOB_TIME;
								        SELECT DATE_ADD(vLAST_STOPJOB_TIME,INTERVAL + vJOB_LAG MINUTE) INTO vAFT;   
                                
										IF NOW() <= vAFT THEN
											 UPDATE LABOR_TICKET SET CLOCK_OUT=vLAST_STOPJOB_TIME,ACT_CLOCK_OUT=vLAST_STOPJOB_TIME,HOURS_WORKED=0,USER_ID='BTS BARCODE' WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND TYPE='I';
											 INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,DEPARTMENT_ID,CREATE_DATE,ACT_CLOCK_IN,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,OPERATION_SEQ_NO,RESOURCE_ID,INDIRECT_ID,UNADJ_CLOCK_IN,SHIFT_DATE,SITE_ID,DESCRIPTION)
									         VALUES(TRANS_TYPE,'N',EMP_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,NULL,0,0,CURDATE(),'BTS BARCODE',vDEPARTMENT_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,WORK_ID,LOT_ID,SPLIT_ID,SUB_ID,SEQ_NO,vRESOURCE_ID,INDIRECT_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,CLIENT_IP,'JOB_LAG');

										ELSE
											 UPDATE LABOR_TICKET SET CLOCK_OUT=NOW(),ACT_CLOCK_OUT=NOW(),HOURS_WORKED=TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,NOW())/3600.00,USER_ID='BTS BARCODE' WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND TYPE='I';
									         INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,DEPARTMENT_ID,CREATE_DATE,ACT_CLOCK_IN,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,OPERATION_SEQ_NO,RESOURCE_ID,INDIRECT_ID,UNADJ_CLOCK_IN,SHIFT_DATE,SITE_ID)
									         VALUES(TRANS_TYPE,'N',EMP_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',vDEPARTMENT_ID,NOW(),NOW(),WORK_ID,LOT_ID,SPLIT_ID,SUB_ID,SEQ_NO,vRESOURCE_ID,INDIRECT_ID,NOW(),NOW(),CLIENT_IP);

                                        END IF;
                                
									  
								END; 
							END IF;
					 END;
					 ELSE
						set msg='SETUP/RUN JOB FAILED. Job cannot be blank';
						signal sqlstate '45000' set message_text = msg;
					 END IF;
				 END;
				 END IF;
                 
				 IF TRANS_TYPE='J' THEN
				 BEGIN
					if LEN(WORK_ID)>0 THEN
					BEGIN
						IF (RUNSS_EN='Y') THEN
							BEGIN
								SET LT_HRS=(OP_RUN_HRS/OP_QTY)*GOOD_QTY;
								SET NEW_TX_DATE=DATE_SUB(NOW(),INTERVAL LT_HRS HOUR);
									IF EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND TYPE='I') THEN
									BEGIN	
										UPDATE LABOR_TICKET SET TYPE='R',SETUP_COMPLETED='N',HOURS_WORKED=LT_HRS,GOOD_QTY=GOOD_QTY,BAD_QTY=BAD_QTY,CLOCK_IN=NEW_TX_DATE,CLOCK_OUT=NOW(),ACT_CLOCK_IN=NEW_TX_DATE,TRANSACTION_DATE=NOW(),USER_ID='BTS BARCODE',DEPARTMENT_ID=DEPARTMENT_ID,RESOURCE_ID=RESOURCE_ID,WORKORDER_BASE_ID=WORK_ID,WORKORDER_LOT_ID=LOT_ID,WORKORDER_SPLIT_ID=SPLIT_ID,WORKORDER_SUB_ID=SUB_ID,OPERATION_SEQ_NO=SEQ_NO,INDIRECT_ID=INDIRECT_ID,DEVIATION_ID=DEVIATION_ID WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND TYPE='I';
										IF NOT EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL ) THEN
											INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID)
											VALUES('I','N',EMP_ID,DEPARTMENT_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
										END IF;
									END;
									ELSE 
										BEGIN
											INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,DEPARTMENT_ID,CREATE_DATE,ACT_CLOCK_IN,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,OPERATION_SEQ_NO,RESOURCE_ID,INDIRECT_ID,UNADJ_CLOCK_IN,SHIFT_DATE,SITE_ID)
											VALUES('R','N',EMP_ID,NEW_TX_DATE,NOW(),LT_HRS,GOOD_QTY,0,CURDATE(),'BTS BARCODE',DEPARTMENT_ID,NOW(),NOW(),WORK_ID,LOT_ID,SPLIT_ID,SUB_ID,SEQ_NO,RESOURCE_ID,INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
											IF NOT EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL ) THEN
												INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID)
												VALUES('I','N',EMP_ID,DEPARTMENT_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
											END IF;
										END;
									END IF;
							END;
						ELSE 
							BEGIN
								IF EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND WORKORDER_BASE_ID=WORK_ID AND WORKORDER_LOT_ID=LOT_ID AND WORKORDER_SPLIT_ID=SPLIT_ID AND WORKORDER_SUB_ID=SUB_ID AND OPERATION_SEQ_NO=SEQ_NO) THEN
								BEGIN
									   SELECT TRANSACTION_ID FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND WORKORDER_BASE_ID=WORK_ID AND WORKORDER_LOT_ID=LOT_ID AND WORKORDER_SPLIT_ID=SPLIT_ID AND WORKORDER_SUB_ID=SUB_ID AND OPERATION_SEQ_NO=SEQ_NO INTO LT_TX_ID;
									   UPDATE LABOR_TICKET 
										SET CLOCK_OUT=NOW(),ACT_CLOCK_OUT=NOW(),HOURS_WORKED=TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,NOW())/3600.00,USER_ID='BTS BARCODE',GOOD_QTY=GOOD_QTY,BAD_QTY=BAD_QTY,DEVIATION_ID=DEVIATION_ID
										WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND WORKORDER_BASE_ID=WORK_ID AND WORKORDER_LOT_ID=LOT_ID AND WORKORDER_SPLIT_ID=SPLIT_ID AND WORKORDER_SUB_ID=SUB_ID AND OPERATION_SEQ_NO=SEQ_NO;
									    
                                        IF LEN(SQL1)>0 THEN
                                        BEGIN
                                         
                           
                                           SET @MYSQL1 =REPLACE(SQL1,'????',LT_TX_ID);
                                           SELECT @MYSQL1;
											PREPARE stmt FROM @MYSQL1;
											EXECUTE stmt;
											DEALLOCATE PREPARE stmt;
                

										END;
                                        END IF;
                                        
									   IF NOT EXISTS(SELECT * FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL ) then
									   BEGIN
										  INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID)
										  VALUES('I','N',EMP_ID,DEPARTMENT_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
									   select concat('STOP JOB COMPLETED,',WORK_ID,',',LOT_ID,',',SPLIT_ID,',',SUB_ID,','+cast(SEQ_NO as CHAR(3)));
									   END;
									   END IF;

								END;
								END IF;
							END;
						END IF;
                            
					 END;
					END IF;
				END;
                END IF;
				 IF TRANS_TYPE='B' THEN
                 BEGIN

                 
					 SELECT IFNULL(BREAK_CLOCKIN,'99999') FROM LABOR_TICKET WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL LIMIT 1 INTO vBREAK_CLOCKIN;

                         IF vBREAK_CLOCKIN='99999' THEN
							UPDATE LABOR_TICKET SET BREAK_CLOCKIN=NOW() WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
						 ELSE 
							BEGIN
								UPDATE LABOR_TICKET SET HOURS_BREAK=IFNULL(HOURS_BREAK,0)+TIMESTAMPDIFF(SECOND,BREAK_CLOCKIN,NOW())/3600.00,USER_ID='BTS BARCODE' WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
                                UPDATE LABOR_TICKET SET BREAK_CLOCKIN=NULL WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL;
							END;
						 END IF;
				END;
				END IF;
				 IF TRANS_TYPE='D' THEN
						
                        
                        UPDATE LABOR_TICKET SET CLOCK_OUT=NOW(),ACT_CLOCK_OUT=NOW(),HOURS_WORKED=TIMESTAMPDIFF(SECOND,ACT_CLOCK_IN,NOW())/3600.00,USER_ID='BTS BARCODE'	WHERE EMPLOYEE_ID=EMP_ID AND HOURS_WORKED IS NULL AND TYPE='I' ;
                        INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID)
											VALUES('I','N',EMP_ID,DEPARTMENT_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
									    
                                        
				END IF;
		
			END;
		  END IF;

      END;
      
  ELSE
	  BEGIN
			 IF TRANS_TYPE='C' THEN
				SELECT SHIFT_BEG_BEF_WIN,SHIFT_BEG_AFT_WIN FROM SHIFT WHERE ID=vSHIFT_ID INTO vMINUTES_BEF,vMINUTES_AFT;
				SELECT CONCAT(CURDATE(),' ',SHIFT_START) FROM SHIFT_DAY WHERE SHIFT_ID=vSHIFT_ID AND SHIFT_CODE=7 INTO vSHIFT_TIME;
				SELECT DATE_ADD(vSHIFT_TIME,INTERVAL -vMINUTES_BEF MINUTE) INTO vBEF;
				SELECT DATE_ADD(vSHIFT_TIME,INTERVAL + vMINUTES_AFT MINUTE) INTO vAFT;
				
				IF NOW() BETWEEN vBEF AND vAFT THEN 
					INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID) 
						VALUES('I','N',EMP_ID,vDEPARTMENT_ID,vSHIFT_TIME,vSHIFT_TIME,NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),vSHIFT_TIME,CLIENT_IP);                     
 				ELSE 
					INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,DEPARTMENT_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,INDIRECT_ID,CREATE_DATE,ACT_CLOCK_IN,SITE_ID) 
						VALUES('I','N',EMP_ID,vDEPARTMENT_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',INDIRECT_ID,NOW(),NOW(),CLIENT_IP);               
				END IF;
    
					
			 END IF;

			 IF TRANS_TYPE='O' THEN
				set msg=concat(EMP_ID,',You must clocked in first');
				signal sqlstate '45000' set message_text = msg;
			END IF;
			
			 IF TRANS_TYPE='R' OR TRANS_TYPE='S'OR TRANS_TYPE='U' OR TRANS_TYPE='T' THEN
				 BEGIN
					 IF LEN(WORK_ID)>0 THEN
						 BEGIN
								IF TRANS_TYPE='U' THEN 
									SET TRANS_TYPE='R';
								END IF;
								IF TRANS_TYPE='T' THEN
									SET TRANS_TYPE='S';
								END IF;
                                
                                SELECT BTWN_JOB_LAG_TIME FROM SHIFT WHERE ID=vSHIFT_ID INTO vJOB_LAG;
                                SELECT ACT_CLOCK_OUT FROM LABOR_TICKET WHERE HOURS_WORKED IS NOT NULL AND EMPLOYEE_ID=EMP_ID AND WORKORDER_BASE_ID IS NOT NULL AND TRANSACTION_DATE=CURDATE() ORDER BY TRANSACTION_ID DESC LIMIT 1 INTO vLAST_STOPJOB_TIME;
								SELECT DATE_ADD(vLAST_STOPJOB_TIME,INTERVAL + vJOB_LAG MINUTE) INTO vAFT;   
                                
                                IF NOW() <= vAFT THEN
									INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,DEPARTMENT_ID,CREATE_DATE,ACT_CLOCK_IN,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,OPERATION_SEQ_NO,RESOURCE_ID,INDIRECT_ID,UNADJ_CLOCK_IN,SHIFT_DATE,SITE_ID,DESCRIPTION)
									VALUES(TRANS_TYPE,SETUP_COMPLETED,EMP_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,NULL,0,0,CURDATE(),'BTS BARCODE',vDEPARTMENT_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,WORK_ID,LOT_ID,SPLIT_ID,SUB_ID,SEQ_NO,vRESOURCE_ID,INDIRECT_ID,vLAST_STOPJOB_TIME,vLAST_STOPJOB_TIME,CLIENT_IP,'JOB_LAG');

                                ELSE
									INSERT INTO LABOR_TICKET(TYPE,SETUP_COMPLETED,EMPLOYEE_ID,CLOCK_IN,CLOCK_OUT,HOURS_WORKED,GOOD_QTY,BAD_QTY,TRANSACTION_DATE,USER_ID,DEPARTMENT_ID,CREATE_DATE,ACT_CLOCK_IN,WORKORDER_BASE_ID,WORKORDER_LOT_ID,WORKORDER_SPLIT_ID,WORKORDER_SUB_ID,OPERATION_SEQ_NO,RESOURCE_ID,INDIRECT_ID,UNADJ_CLOCK_IN,SHIFT_DATE,SITE_ID)
									VALUES(TRANS_TYPE,SETUP_COMPLETED,EMP_ID,NOW(),NOW(),NULL,0,0,CURDATE(),'BTS BARCODE',vDEPARTMENT_ID,NOW(),NOW(),WORK_ID,LOT_ID,SPLIT_ID,SUB_ID,SEQ_NO,vRESOURCE_ID,INDIRECT_ID,NOW(),NOW(),CLIENT_IP);
                                END IF;
                                
						END;
					 ELSE 
						set msg='SETUP/RUN JOB FAILED. Job missing';
						signal sqlstate '45000' set message_text = msg;
					 END IF;
				 END;
			 END IF;
			 IF TRANS_TYPE='J' then
				set msg=concat(EMP_ID,',You must start a job first');
				signal sqlstate '45000' set message_text = msg;
			 END IF;

			 IF TRANS_TYPE='B' THEN
			set msg=concat(EMP_ID,',You must clocked in first');
			signal sqlstate '45000' set message_text = msg;
		 END IF;


	  END ;

  END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PURE_VWLT_TO_NCR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `PURE_VWLT_TO_NCR`(
 IN EMP_ID VARCHAR(15),
 IN WORK_ID VARCHAR(15),
 IN LOT_ID VARCHAR(3),
 IN SPLIT_ID VARCHAR(3),
 IN SUB_ID VARCHAR(3),
 IN SEQ_NO INT,
 IN GOOD_QTY DECIMAL(14,4),
 IN BAD_QTY DECIMAL(14,4),
 IN REPORTED_BY VARCHAR(30),
 IN REPORTED_BY_EMAIL VARCHAR(50)
 )
BEGIN
  DECLARE vWOREF_RES_SPEC VARCHAR(8000);
  DECLARE vWOREF_PART_ID VARCHAR(30);
  DECLARE vWOREF_PART_DESCRIPTION VARCHAR(8000);
  DECLARE vWOREF_PART_REV_NO VARCHAR(8);
  DECLARE vWOREF_DRAWING_ID VARCHAR(30);
  DECLARE vWOREF_DRAWING_REV_NO VARCHAR(8);
  DECLARE vWOREF_DESIRED_QTY VARCHAR(14);
  DECLARE vEMP_DEPARTMENT_ID VARCHAR(15);
  DECLARE vEMP_DEPT_HEAD VARCHAR(15);
  DECLARE vWOREF VARCHAR(50);
  DECLARE vBAD VARCHAR(14);
  DECLARE vSQL1 VARCHAR(8000);
 
 SELECT IFNULL(d1.SPEC,'') ,
 IFNULL(d2.PART_ID,'') ,
 REPLACE(IFNULL(d2.LONG_SPEC,''),'''','') ,
 IFNULL(d2.PART_REV_NO,'') ,
 IFNULL(d2.DRAWING_ID,'') ,
 IFNULL(d2.DRAWING_REV_NO,'') ,CAST(d2.DESIRED_QTY AS CHAR(14))  
 FROM OPERATION d1 LEFT JOIN WORK_ORDER d2 
 on d1.WORKORDER_BASE_ID=d2.BASE_ID 
 AND d1.WORKORDER_LOT_ID=d2.LOT_ID 
 AND d1.WORKORDER_SPLIT_ID=d2.SPLIT_ID 
 AND d1.WORKORDER_SUB_ID=d2.SUB_ID 
 where d1.WORKORDER_BASE_ID=WORK_ID 
 and d1.WORKORDER_LOT_ID=LOT_ID 
 AND d1.WORKORDER_SPLIT_ID=SPLIT_ID 
 and d1.WORKORDER_SUB_ID=SUB_ID and d1.SEQUENCE_NO=SEQ_NO
 INTO vWOREF_RES_SPEC,vWOREF_PART_ID ,vWOREF_PART_DESCRIPTION,vWOREF_PART_REV_NO ,
 vWOREF_DRAWING_ID ,vWOREF_DRAWING_REV_NO ,vWOREF_DESIRED_QTY ;
 
 SELECT DEPARTMENT_ID from EMPLOYEE WHERE ID=EMP_ID INTO vEMP_DEPARTMENT_ID;
 SELECT HEAD_ID from DEPARTMENT WHERE ID=vEMP_DEPARTMENT_ID INTO vEMP_DEPT_HEAD;
 
 SET vWOREF=CONCAT(WORK_ID,'^',SUB_ID,'^',CAST(SEQ_NO AS CHAR(3)));
 SET vBAD=CAST(BAD_QTY as CHAR(14));
 

    SET @SQL1=CONCAT('INSERT INTO QC_NCR (NCR_ID,STATUS,SEVERITY,SUBJECT,REPORTED_BY,REPORTED_BY_EMAIL,VERIFIED_BY,VERIFIED_BY_EMAIL,SRCDOC,WOREF,WOREF_PART_ID,WOREF_PART_DESCRIPTION,WOREF_PART_REV_NO,WOREF_DRAWING_ID,WOREF_DRAWING_REV_NO,WOREF_RES_SPEC,WOREF_DESIRED_QTY,WOREF_INSPECT_QTY,WOREF_REJECT_QTY,EMPLOYEE_ID,EMP_DEPARTMENT_ID,EMP_DEPT_HEAD,ORDER_TYPE,CREATE_DATE,REMARKS) 
   VALUES(''????'',''PENDING'',''LOW'',''VWLT'',''',REPORTED_BY,''',''',REPORTED_BY_EMAIL,''',NULL,NULL,''JOBORDER'',''',vWOREF,''',''',vWOREF_PART_ID,''',''',vWOREF_PART_DESCRIPTION,''',''',vWOREF_PART_REV_NO,''',''',vWOREF_DRAWING_ID,''',''',vWOREF_DRAWING_REV_NO,''',''',vWOREF_RES_SPEC,''',',vWOREF_DESIRED_QTY,',',vBAD,',',vBAD,',''',EMP_ID,''',''',vEMP_DEPARTMENT_ID,''',''',vEMP_DEPT_HEAD,''',''wo'',NOW(),''This NCR was auto created from VWLT'')');

Call PURE_NNG('NCR','DQM',@SQL1);
         
         
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RECALC_JOB_EST_COST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `RECALC_JOB_EST_COST`(
IN vBASE_ID VARCHAR(30)
)
BEGIN
	DECLARE vEST_COST DECIMAL(14,4);
    DECLARE vSUB_ID VARCHAR(3);
    DECLARE vQTY DECIMAL(14,4);
    DECLARE done INT DEFAULT FALSE;
 
              DECLARE C2 CURSOR FOR 
				SELECT SUB_ID,
					CASE WHEN SUB_ID='0' THEN DESIRED_QTY ELSE DESIRED_QTY*QTY_PER END AS QTY 
					FROM WORK_ORDER WHERE BASE_ID=vBASE_ID  ORDER BY SUB_ID ASC;
               DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 
               OPEN C2;
               myloop:LOOP
				FETCH C2 INTO vSUB_ID,vQTY;
                IF done THEN
					LEAVE myloop;
				END IF;
				
               
    IF vSUB_ID='0' THEN
                SELECT SUM((case RUN 
						WHEN 0 then 0 else 
							case RUN_TYPE 
								when 'HRS/PC' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*RUN 
								when 'PCS/HR' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )/RUN 
								when 'MIN/PC' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*(RUN/60) 
								when 'PCS/MIN' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE D2.QTY_PER* (case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*(1/(RUN*60)) 
								when 'HRS/JOB' then RUN end end )*COST_PER_HR) FROM OPERATION D1, WORK_ORDER D2 
                                WHERE D1.WORKORDER_BASE_ID=D2.BASE_ID AND D1.WORKORDER_SUB_ID=D2.SUB_ID AND WORKORDER_BASE_ID=vBASE_ID 
                                
				INTO vEST_COST;
           
           UPDATE WORK_ORDER SET EST_COST=vEST_COST WHERE BASE_ID=vBASE_ID AND SUB_ID=0;
	END IF;
     IF vSUB_ID<>'0' THEN
                SELECT SUM((case RUN 
						WHEN 0 then 0 else 
							case RUN_TYPE 
								when 'HRS/PC' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*RUN 
								when 'PCS/HR' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )/RUN 
								when 'MIN/PC' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE  D2.QTY_PER*(case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*(RUN/60) 
								when 'PCS/MIN' then (case QTY_TYPE when 'FIXED' THEN D1.QTY_PER ELSE D2.QTY_PER* (case WORKORDER_SUB_ID WHEN '0' THEN D2.DESIRED_QTY ELSE D2.DESIRED_QTY*D1.QTY_PER END) END )*(1/(RUN*60)) 
								when 'HRS/JOB' then RUN end end )*COST_PER_HR) FROM OPERATION D1, WORK_ORDER D2 
                                WHERE D1.WORKORDER_BASE_ID=D2.BASE_ID AND D1.WORKORDER_SUB_ID=D2.SUB_ID AND WORKORDER_BASE_ID=vBASE_ID AND WORKORDER_SUB_ID=vSUB_ID
                                
				INTO vEST_COST;
           
           UPDATE WORK_ORDER SET EST_COST=vEST_COST WHERE BASE_ID=vBASE_ID AND SUB_ID=vSUB_ID;
	END IF;   
    
               END LOOP;
               CLOSE C2;
               
               SELECT 'false' as error,'Update successful' as msg;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RECALC_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `RECALC_STATUS`(
 IN BASE VARCHAR(30),
 IN NEW_STATUS VARCHAR(1)
 )
BEGIN
	IF NEW_STATUS<>'C' THEN
		UPDATE OPERATION SET STATUS=NEW_STATUS WHERE WORKORDER_BASE_ID=BASE AND STATUS <> 'C' AND SEQUENCE_NO<>0;
    END IF;
    IF NEW_STATUS='C' THEN
		UPDATE OPERATION SET STATUS=NEW_STATUS,CLOSE_DATE=NOW() WHERE WORKORDER_BASE_ID=BASE AND SEQUENCE_NO<>0;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `CAUSE_VIEW_1`
--

/*!50001 DROP TABLE IF EXISTS `CAUSE_VIEW_1`*/;
/*!50001 DROP VIEW IF EXISTS `CAUSE_VIEW_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CAUSE_VIEW_1` AS select `CAUSE`.`ROWID` AS `ROWID`,`CAUSE`.`ID` AS `ID`,`CAUSE`.`DESCRIPTION` AS `DESCRIPTION`,`CAUSE`.`CLASS_ID` AS `CLASS_ID`,`CAUSE`.`TYPE` AS `TYPE`,`CAUSE`.`USER_ID` AS `USER_ID`,`CAUSE`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`CAUSE`.`CREATE_DATE` AS `CREATE_DATE`,`CAUSE`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`CAUSE`.`SITE_ID` AS `SITE_ID`,concat(`CAUSE`.`ID`,' - ',`CAUSE`.`DESCRIPTION`,convert(repeat(' ',(94 - length(`CAUSE`.`DESCRIPTION`))) using latin1)) AS `ID_AND_DESC` from `CAUSE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CF_AGING`
--

/*!50001 DROP TABLE IF EXISTS `CF_AGING`*/;
/*!50001 DROP VIEW IF EXISTS `CF_AGING`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CF_AGING` AS select `QC_CF`.`CREATE_DATE` AS `CREATE_DATE`,(case when (`QC_CF`.`STATUS` = 'COMPLETED') then 'Total Closed' when (`QC_CF`.`STATUS` = 'REJECTED') then 'Total Rejected' else (case when ((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) < 30) then '30 days' when (((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) <= 60) and ((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) >= 30)) then '30-60 days' when (((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) <= 90) and ((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) >= 60)) then '60-90 days' when ((to_days(curdate()) - to_days(`QC_CF`.`CREATE_DATE`)) > 90) then '90 days' end) end) AS `category`,1 AS `CNT` from `QC_CF` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CF_CAUSE`
--

/*!50001 DROP TABLE IF EXISTS `CF_CAUSE`*/;
/*!50001 DROP VIEW IF EXISTS `CF_CAUSE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CF_CAUSE` AS select `CAUSE`.`ROWID` AS `ROWID`,`CAUSE`.`ID` AS `ID`,`CAUSE`.`DESCRIPTION` AS `DESCRIPTION`,`CAUSE`.`CLASS_ID` AS `CLASS_ID`,`CAUSE`.`TYPE` AS `TYPE`,`CAUSE`.`USER_ID` AS `USER_ID`,`CAUSE`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`CAUSE`.`CREATE_DATE` AS `CREATE_DATE`,`CAUSE`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`CAUSE`.`SITE_ID` AS `SITE_ID` from `CAUSE` where (`CAUSE`.`TYPE` = 'CF') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CI_AGING`
--

/*!50001 DROP TABLE IF EXISTS `CI_AGING`*/;
/*!50001 DROP VIEW IF EXISTS `CI_AGING`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CI_AGING` AS select `QC_CI`.`CREATE_DATE` AS `CREATE_DATE`,(case when (`QC_CI`.`STATUS` = 'COMPLETED') then 'Total Closed' when (`QC_CI`.`STATUS` = 'REJECTED') then 'Total Rejected' else (case when ((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) < 30) then '30 days' when (((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) <= 60) and ((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) >= 30)) then '30-60 days' when (((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) <= 90) and ((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) >= 60)) then '60-90 days' when ((to_days(curdate()) - to_days(`QC_CI`.`CREATE_DATE`)) > 90) then '90 days' end) end) AS `category`,1 AS `CNT` from `QC_CI` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `COMPANY_TASK_ALERT`
--

/*!50001 DROP TABLE IF EXISTS `COMPANY_TASK_ALERT`*/;
/*!50001 DROP VIEW IF EXISTS `COMPANY_TASK_ALERT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `COMPANY_TASK_ALERT` AS select distinct 'co^calendar^TaskList' AS `TASKLIST`,concat('{"USER_NAME":"',`D3`.`SUBSCRIBER_NAME`,'","SUBS_ID":"',`D3`.`SUBSCRIBER_ID`,'","_repvars":{"SUBS_ID":"',`D3`.`SUBSCRIBER_ID`,'"},"_recipients":["',`D3`.`SUBSCRIBER_EMAIL`,'"]}') AS `JSON_DATA` from ((`CAL_SCHEDULE` `D1` left join `CAL_CLASS` `D2` on((`D1`.`CAL_CLASS_ID` = `D2`.`CAL_CLASS_ID`))) left join `CAL_CLASS_SUBSCRIBER` `D3` on((`D2`.`CAL_CLASS_ID` = `D3`.`CAL_CLASS_ID`))) where ((`D2`.`DURATION` <> 0) and ((to_days(`D1`.`START_DATE`) - to_days(now())) between 0 and `D2`.`DURATION`) and (`D3`.`ROWID` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CPAR_AGING`
--

/*!50001 DROP TABLE IF EXISTS `CPAR_AGING`*/;
/*!50001 DROP VIEW IF EXISTS `CPAR_AGING`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CPAR_AGING` AS select `QC_CPAR`.`CREATE_DATE` AS `CREATE_DATE`,(case when (`QC_CPAR`.`STATUS` = 'COMPLETED') then 'Total Closed' when (`QC_CPAR`.`STATUS` = 'REJECTED') then 'Total Rejected' else (case when ((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) < 30) then '30 days' when (((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) <= 60) and ((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) >= 30)) then '30-60 days' when (((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) <= 90) and ((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) >= 60)) then '60-90 days' when ((to_days(curdate()) - to_days(`QC_CPAR`.`CREATE_DATE`)) > 90) then '90 days' end) end) AS `category`,1 AS `CNT` from `QC_CPAR` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CPAR_CAUSE`
--

/*!50001 DROP TABLE IF EXISTS `CPAR_CAUSE`*/;
/*!50001 DROP VIEW IF EXISTS `CPAR_CAUSE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CPAR_CAUSE` AS select `CAUSE`.`ROWID` AS `ROWID`,`CAUSE`.`ID` AS `ID`,`CAUSE`.`DESCRIPTION` AS `DESCRIPTION`,`CAUSE`.`CLASS_ID` AS `CLASS_ID`,`CAUSE`.`TYPE` AS `TYPE`,`CAUSE`.`USER_ID` AS `USER_ID`,`CAUSE`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`CAUSE`.`CREATE_DATE` AS `CREATE_DATE`,`CAUSE`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`CAUSE`.`SITE_ID` AS `SITE_ID` from `CAUSE` where (`CAUSE`.`TYPE` = 'CPAR') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CPROP_IDS`
--

/*!50001 DROP TABLE IF EXISTS `CPROP_IDS`*/;
/*!50001 DROP VIEW IF EXISTS `CPROP_IDS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CPROP_IDS` AS select `D1`.`CP_ID` AS `CP_ID`,`D1`.`CUST_ID` AS `CUST_ID`,`D2`.`LINE_NO` AS `LINE_NO`,concat(`D2`.`CP_ID`,'^',`D2`.`LINE_NO`) AS `CP_ID_LN_VALUE`,concat(`D2`.`CP_ID`,'.',`D2`.`LINE_NO`) AS `CP_ID_LN_TEXT`,`D2`.`PART_ID` AS `PART_ID`,`D2`.`QTY_RECV` AS `QTY_RECV`,`D1`.`CP_DATE` AS `CP_DATE`,(case when isnull(`D2`.`DATE_RETURN`) then 'IN-HOUSE' else 'RETURNED' end) AS `STATUS` from (`CPROP_HEAD` `D1` left join `CPROP_ITEMS` `D2` on((`D1`.`CP_ID` = `D2`.`CP_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CP_PROGRESS`
--

/*!50001 DROP TABLE IF EXISTS `CP_PROGRESS`*/;
/*!50001 DROP VIEW IF EXISTS `CP_PROGRESS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `CP_PROGRESS` AS select `D1`.`CP_ID` AS `CP_ID`,`D1`.`CUST_ID` AS `CUST_ID`,`D1`.`CP_DATE` AS `CP_DATE`,`D2`.`LINE_NO` AS `LINE_NO`,`D2`.`BASE_ID` AS `BASE_ID`,`D2`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`D4`.`REV_NO` AS `REV_NO`,`D4`.`DATE` AS `SO_CREATE_DATE`,`D5`.`CREATE_DATE` AS `WO_CREATE_DATE`,`D5`.`DESIRED_WANT_DATE` AS `WO_WANT_DATE`,(case when (`D2`.`DATE_RETURN` = '') then 'IN-HOUSE' when (ifnull(`D2`.`DATE_RETURN`,'999') = '999') then 'IN-HOUSE' else 'RETURNED' end) AS `CP_STATUS`,`D5`.`STATUS` AS `WO_STATUS`,`D4`.`STATUS` AS `SO_STATUS` from (((`CPROP_HEAD` `D1` left join `CPROP_ITEMS` `D2` on((`D1`.`CP_ID` = `D2`.`CP_ID`))) left join `WORK_ORDER` `D5` on((`D5`.`BASE_ID` = `D2`.`BASE_ID`))) left join `SALES_ORDER` `D4` on((`D4`.`ID` = `D5`.`SALES_ORDER_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIS_EMP_STATUS_VIEW_1`
--

/*!50001 DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_1`*/;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `DIS_EMP_STATUS_VIEW_1` AS select `d1`.`JOB_ID` AS `JOB_ID`,`d1`.`WO_BASE_ID` AS `WO_BASE_ID`,`d1`.`WO_LOT_ID` AS `WO_LOT_ID`,`d1`.`WO_SPLIT_ID` AS `WO_SPLIT_ID`,`d1`.`WO_SUB_ID` AS `WO_SUB_ID`,max(`d2`.`SEQUENCE_NO`) AS `MAX_SEQ_NO`,(case when (count(`d2`.`ROWID`) = 0) then 'Y' when (count(`d2`.`ROWID`) > 0) then 'N' end) AS `IS_FIRST_OP` from (`DIS_EMP_STATUS` `d1` left join `OPERATION` `d2` on(((`d1`.`WO_BASE_ID` = `d2`.`WORKORDER_BASE_ID`) and (`d1`.`WO_LOT_ID` = `d2`.`WORKORDER_LOT_ID`) and (`d1`.`WO_SPLIT_ID` = `d2`.`WORKORDER_SPLIT_ID`) and (`d1`.`WO_SUB_ID` = `d2`.`WORKORDER_SUB_ID`) and isnull(`d2`.`SERVICE_ID`) and (`d1`.`WO_SEQ_NO` > `d2`.`SEQUENCE_NO`)))) where (`d1`.`JOB_ID` is not null) group by `d1`.`JOB_ID`,`d1`.`WO_BASE_ID`,`d1`.`WO_LOT_ID`,`d1`.`WO_SPLIT_ID`,`d1`.`WO_SUB_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIS_EMP_STATUS_VIEW_2`
--

/*!50001 DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_2`*/;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `DIS_EMP_STATUS_VIEW_2` AS select `d1`.`JOB_ID` AS `JOB_ID`,`d3`.`AUTO_ISSUE_LOC` AS `AUTO_ISSUE_LOC`,`d3`.`QTY` AS `QTY` from ((`DIS_EMP_STATUS` `d1` join `REQUIREMENT` `d2`) join `PART_LOCATION` `d3`) where ((`d1`.`WO_BASE_ID` = `d2`.`WORKORDER_BASE_ID`) and (`d1`.`WO_LOT_ID` = `d2`.`WORKORDER_LOT_ID`) and (`d1`.`WO_SPLIT_ID` = `d2`.`WORKORDER_SPLIT_ID`) and (`d1`.`WO_SUB_ID` = `d2`.`WORKORDER_SUB_ID`) and (`d1`.`WO_SEQ_NO` = `d2`.`OPERATION_SEQ_NO`) and (`d2`.`PART_ID` = `d3`.`PART_ID`) and (`d3`.`AUTO_ISSUE_LOC` = 'Y')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DIS_EMP_STATUS_VIEW_3`
--

/*!50001 DROP TABLE IF EXISTS `DIS_EMP_STATUS_VIEW_3`*/;
/*!50001 DROP VIEW IF EXISTS `DIS_EMP_STATUS_VIEW_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `DIS_EMP_STATUS_VIEW_3` AS select distinct `d1`.`JOB_ID` AS `JOB_ID`,`d2`.`PRODUCT_CODE` AS `PRODUCT_CODE` from (`DIS_EMP_STATUS` `d1` join `WORK_ORDER` `d2`) where ((`d1`.`WO_BASE_ID` = `d2`.`BASE_ID`) and (`d1`.`WO_LOT_ID` = `d2`.`LOT_ID`) and (`d1`.`WO_SPLIT_ID` = `d2`.`SPLIT_ID`) and (`d1`.`WO_SUB_ID` = `d2`.`SUB_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DUPLICATE_SALES_ORDERS`
--

/*!50001 DROP TABLE IF EXISTS `DUPLICATE_SALES_ORDERS`*/;
/*!50001 DROP VIEW IF EXISTS `DUPLICATE_SALES_ORDERS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `DUPLICATE_SALES_ORDERS` AS select `WORK_ORDER`.`ROWID` AS `ROWID`,`WORK_ORDER`.`WO_CLASS` AS `WO_CLASS`,`WORK_ORDER`.`TYPE` AS `TYPE`,`WORK_ORDER`.`BASE_ID` AS `BASE_ID`,`WORK_ORDER`.`LOT_ID` AS `LOT_ID`,`WORK_ORDER`.`SPLIT_ID` AS `SPLIT_ID`,`WORK_ORDER`.`SUB_ID` AS `SUB_ID`,`WORK_ORDER`.`PART_ID` AS `PART_ID`,`WORK_ORDER`.`DESIRED_QTY` AS `DESIRED_QTY`,`WORK_ORDER`.`RECEIVED_QTY` AS `RECEIVED_QTY`,`WORK_ORDER`.`CREATE_DATE` AS `CREATE_DATE`,`WORK_ORDER`.`DESIRED_RLS_DATE` AS `DESIRED_RLS_DATE`,`WORK_ORDER`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,`WORK_ORDER`.`CLOSE_DATE` AS `CLOSE_DATE`,`WORK_ORDER`.`STATUS` AS `STATUS`,`WORK_ORDER`.`ENGINEERED_BY` AS `ENGINEERED_BY`,`WORK_ORDER`.`ENGINEERED_DATE` AS `ENGINEERED_DATE`,`WORK_ORDER`.`DRAWING_ID` AS `DRAWING_ID`,`WORK_ORDER`.`DRAWING_REV_NO` AS `DRAWING_REV_NO`,`WORK_ORDER`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`WORK_ORDER`.`COMMODITY_CODE` AS `COMMODITY_CODE`,`WORK_ORDER`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`WORK_ORDER`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`WORK_ORDER`.`PRINTED_DATE` AS `PRINTED_DATE`,`WORK_ORDER`.`DRAWING_FILE` AS `DRAWING_FILE`,`WORK_ORDER`.`WAREHOUSE_ID` AS `WAREHOUSE_ID`,`WORK_ORDER`.`USER_1` AS `USER_1`,`WORK_ORDER`.`USER_2` AS `USER_2`,`WORK_ORDER`.`USER_3` AS `USER_3`,`WORK_ORDER`.`USER_4` AS `USER_4`,`WORK_ORDER`.`USER_5` AS `USER_5`,`WORK_ORDER`.`USER_6` AS `USER_6`,`WORK_ORDER`.`USER_7` AS `USER_7`,`WORK_ORDER`.`USER_8` AS `USER_8`,`WORK_ORDER`.`USER_9` AS `USER_9`,`WORK_ORDER`.`USER_10` AS `USER_10`,`WORK_ORDER`.`LONG_SPEC` AS `LONG_SPEC`,`WORK_ORDER`.`PART_ALIAS` AS `PART_ALIAS`,`WORK_ORDER`.`WOREF` AS `WOREF`,`WORK_ORDER`.`CUSTOMER_ID` AS `CUSTOMER_ID`,`WORK_ORDER`.`QTY_PER` AS `QTY_PER`,`WORK_ORDER`.`EST_COST` AS `EST_COST`,`WORK_ORDER`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`WORK_ORDER`.`SALES_ORDER_LINE_NO` AS `SALES_ORDER_LINE_NO`,`WORK_ORDER`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`WORK_ORDER`.`PART_REV_NO` AS `PART_REV_NO`,`WORK_ORDER`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`WORK_ORDER`.`QC_TEST_ID` AS `QC_TEST_ID`,`WORK_ORDER`.`COC_QTY` AS `COC_QTY`,`WORK_ORDER`.`PRIORITY` AS `PRIORITY`,`WORK_ORDER`.`LEAD_TIME` AS `LEAD_TIME`,`WORK_ORDER`.`CUSTOMER_PO` AS `CUSTOMER_PO`,`WORK_ORDER`.`CUSTOMER_PO_LINE_NO` AS `CUSTOMER_PO_LINE_NO`,`WORK_ORDER`.`CUSTOMER_PART_ID` AS `CUSTOMER_PART_ID`,`WORK_ORDER`.`TYPE_CLASS` AS `TYPE_CLASS`,`WORK_ORDER`.`FLAGS` AS `FLAGS`,`WORK_ORDER`.`SHIPPED_QTY` AS `SHIPPED_QTY`,`WORK_ORDER`.`WO_TYPE` AS `WO_TYPE`,`WORK_ORDER`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`WORK_ORDER`.`SALES_ORDER_NOTES` AS `SALES_ORDER_NOTES`,`WORK_ORDER`.`SALES_ORDER_REF` AS `SALES_ORDER_REF`,`WORK_ORDER`.`SALES_ORDER_REV_NO` AS `SALES_ORDER_REV_NO`,`WORK_ORDER`.`USER_ID` AS `USER_ID`,`WORK_ORDER`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`WORK_ORDER`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`WORK_ORDER`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`WORK_ORDER`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`WORK_ORDER`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`WORK_ORDER`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`WORK_ORDER`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`WORK_ORDER`.`COST_MATL` AS `COST_MATL`,`WORK_ORDER`.`COST_SUBCON` AS `COST_SUBCON`,`WORK_ORDER`.`COST_TOOLING` AS `COST_TOOLING`,`WORK_ORDER`.`COST_OTHERS` AS `COST_OTHERS`,`WORK_ORDER`.`COST_TOTAL` AS `COST_TOTAL`,`WORK_ORDER`.`ACT_TOTAL_COST` AS `ACT_TOTAL_COST`,`WORK_ORDER`.`GRAND_TOTAL_COST` AS `GRAND_TOTAL_COST`,`WORK_ORDER`.`SITE_ID` AS `SITE_ID`,`WORK_ORDER`.`ESTIMATOR_COST` AS `ESTIMATOR_COST` from `WORK_ORDER` where concat(`WORK_ORDER`.`SALES_ORDER_ID`,'/',`WORK_ORDER`.`SALES_ORDER_LINE_NO`) in (select concat(`WORK_ORDER`.`SALES_ORDER_ID`,'/',`WORK_ORDER`.`SALES_ORDER_LINE_NO`) from `WORK_ORDER` where (`WORK_ORDER`.`SALES_ORDER_ID` is not null) group by `WORK_ORDER`.`SALES_ORDER_ID`,`WORK_ORDER`.`SALES_ORDER_LINE_NO` having (count(0) > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EMP_DAILY_LABOR_CLOCK`
--

/*!50001 DROP TABLE IF EXISTS `EMP_DAILY_LABOR_CLOCK`*/;
/*!50001 DROP VIEW IF EXISTS `EMP_DAILY_LABOR_CLOCK`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `EMP_DAILY_LABOR_CLOCK` AS select `LABOR_TICKET`.`EMPLOYEE_ID` AS `EMPLOYEE_ID`,`LABOR_TICKET`.`TRANSACTION_DATE` AS `TRANSACTION_DATE`,min(`LABOR_TICKET`.`CLOCK_IN`) AS `START_TIME`,max(`LABOR_TICKET`.`CLOCK_OUT`) AS `END_TIME`,sum(if((`LABOR_TICKET`.`TYPE` = 'I'),if(isnull(`LABOR_TICKET`.`HOURS_WORKED`),0,`LABOR_TICKET`.`HOURS_WORKED`),0)) AS `INDIRECT_HRS`,sum(if(isnull(`LABOR_TICKET`.`HOURS_BREAK`),0,`LABOR_TICKET`.`HOURS_BREAK`)) AS `BREAK_HRS` from `LABOR_TICKET` group by `LABOR_TICKET`.`EMPLOYEE_ID`,`LABOR_TICKET`.`TRANSACTION_DATE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EMP_OPENJOBS`
--

/*!50001 DROP TABLE IF EXISTS `EMP_OPENJOBS`*/;
/*!50001 DROP VIEW IF EXISTS `EMP_OPENJOBS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `EMP_OPENJOBS` AS select distinct `d1`.`JOB_TYPE` AS `JOB_TYPE`,`d1`.`JOB_ID` AS `woref`,(`d2`.`CALC_END_QTY` - `d2`.`COMPLETED_QTY`) AS `QTY_REQ`,date_format(`d2`.`SCHED_FINISH_DATE`,'%Y%m%d') AS `SCHED_FINISH_DATE`,`d2`.`RESOURCE_ID` AS `RESOURCE_ID`,`d2`.`SETUP_COMPLETED` AS `setup_completed`,`d2`.`STATUS` AS `STATUS`,`d4`.`IS_FIRST_OP` AS `IS_FIRST_OP`,`d10`.`COMPLETED_QTY` AS `PREV_OP_COMPLETED_QTY`,`d10`.`DEVIATED_QTY` AS `PREV_OP_BAD_QTY`,`d10`.`STATUS` AS `PREV_OP_STATUS`,`d10`.`QTY_TYPE` AS `PREV_OP_QTY_TYPE`,`d6`.`AUTO_ISSUE_LOC` AS `AUTO_ISSUE_LOC`,coalesce(`d6`.`QTY`,0) AS `QTY`,`d8`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`d2`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`d2`.`DEVIATED_QTY` AS `DEVIATED_QTY`,`d1`.`EMPLOYEE_ID` AS `EMPLOYEE_ID` from (((((`DIS_EMP_STATUS` `d1` left join `OPERATION` `d2` on((`d1`.`JOB_ID` = concat(`d2`.`WORKORDER_BASE_ID`,'$',`d2`.`WORKORDER_LOT_ID`,'$',`d2`.`WORKORDER_SPLIT_ID`,'$',`d2`.`WORKORDER_SUB_ID`,'$',`d2`.`SEQUENCE_NO`)))) join (`DIS_EMP_STATUS` `d3` left join `DIS_EMP_STATUS_VIEW_1` `d4` on((`d3`.`JOB_ID` = `d4`.`JOB_ID`)))) join (`DIS_EMP_STATUS` `d5` left join `DIS_EMP_STATUS_VIEW_2` `d6` on((`d5`.`JOB_ID` = `d6`.`JOB_ID`)))) join (`DIS_EMP_STATUS` `d7` left join `DIS_EMP_STATUS_VIEW_3` `d8` on((`d7`.`JOB_ID` = `d8`.`JOB_ID`)))) join (`DIS_EMP_STATUS_VIEW_1` `d9` left join `OPERATION` `d10` on(((`d9`.`WO_BASE_ID` = `d10`.`WORKORDER_BASE_ID`) and (`d9`.`WO_LOT_ID` = `d10`.`WORKORDER_LOT_ID`) and (`d9`.`WO_SPLIT_ID` = `d10`.`WORKORDER_SPLIT_ID`) and (`d9`.`WO_SUB_ID` = `d10`.`WORKORDER_SUB_ID`) and (`d9`.`MAX_SEQ_NO` = `d10`.`SEQUENCE_NO`))))) where ((`d1`.`TRANS_TYPE` in ('S','U','T','R')) and (`d1`.`ROWID` = `d3`.`ROWID`) and (`d1`.`ROWID` = `d5`.`ROWID`) and (`d1`.`ROWID` = `d7`.`ROWID`) and (`d1`.`JOB_ID` = `d9`.`JOB_ID`)) order by 1,2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GAUGE_DUE`
--

/*!50001 DROP TABLE IF EXISTS `GAUGE_DUE`*/;
/*!50001 DROP VIEW IF EXISTS `GAUGE_DUE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `GAUGE_DUE` AS select `GAUGE`.`ROWID` AS `ROWID`,`GAUGE`.`ID` AS `ID`,`GAUGE`.`GAUGE_TYPE` AS `GAUGE_TYPE`,`GAUGE`.`QPH_ID` AS `QPH_ID`,`GAUGE`.`CYCLE_TIME` AS `CYCLE_TIME`,`GAUGE`.`CYCLE_TYPE` AS `CYCLE_TYPE`,`GAUGE`.`DEPARTMENT_ID` AS `DEPARTMENT_ID`,`GAUGE`.`MANUFACTURER` AS `MANUFACTURER`,`GAUGE`.`MODEL` AS `MODEL`,`GAUGE`.`PURCHASE_DATE` AS `PURCHASE_DATE`,`GAUGE`.`DUE_DATE` AS `DUE_DATE`,`GAUGE`.`NOTES` AS `NOTES`,`GAUGE`.`GAUGE_CLASS` AS `GAUGE_CLASS`,`GAUGE`.`OP_RANGE` AS `OP_RANGE`,`GAUGE`.`SERIAL_NO` AS `SERIAL_NO`,`GAUGE`.`STATUS` AS `STATUS`,`GAUGE`.`CALIBRATE_1` AS `CALIBRATE_1`,`GAUGE`.`CALIBRATE_2` AS `CALIBRATE_2`,`GAUGE`.`LAST_CAL` AS `LAST_CAL`,`GAUGE`.`CYCLE_COUNT` AS `CYCLE_COUNT`,`GAUGE`.`LOCATION` AS `LOCATION`,`GAUGE`.`INV_STAT` AS `INV_STAT`,`GAUGE`.`ACTIVE` AS `ACTIVE`,`GAUGE`.`CALDAYS_1` AS `CALDAYS_1`,`GAUGE`.`CALDAYS_2` AS `CALDAYS_2`,`GAUGE`.`ACQUIRED_DATE` AS `ACQUIRED_DATE`,`GAUGE`.`DOC_REF` AS `DOC_REF`,`GAUGE`.`CAL_BY` AS `CAL_BY`,`GAUGE`.`TOLERANCE` AS `TOLERANCE`,`GAUGE`.`DESCRIPTION` AS `DESCRIPTION`,`GAUGE`.`DUE_DATE_ALERT_DAYS` AS `DUE_DATE_ALERT_DAYS`,`GAUGE`.`RESET_REASON` AS `RESET_REASON`,`GAUGE`.`PLAN_ID` AS `PLAN_ID`,`GAUGE`.`NUMBERING` AS `NUMBERING`,`GAUGE`.`OWNER_TYPE` AS `OWNER_TYPE`,`GAUGE`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`GAUGE`.`USER_1` AS `USER_1`,`GAUGE`.`USER_2` AS `USER_2`,`GAUGE`.`USER_3` AS `USER_3`,`GAUGE`.`USER_4` AS `USER_4`,`GAUGE`.`USER_5` AS `USER_5`,`GAUGE`.`USER_6` AS `USER_6`,`GAUGE`.`USER_7` AS `USER_7`,`GAUGE`.`USER_8` AS `USER_8`,`GAUGE`.`USER_9` AS `USER_9`,`GAUGE`.`USER_10` AS `USER_10`,`GAUGE`.`CAL_TYPE` AS `CAL_TYPE`,`GAUGE`.`OLD_ID` AS `OLD_ID`,`GAUGE`.`RETURN_DATE` AS `RETURN_DATE`,`GAUGE`.`GAUGE_ROYALTY_TYPE` AS `GAUGE_ROYALTY_TYPE`,`GAUGE`.`GAUGE_RENT_DIAMETER` AS `GAUGE_RENT_DIAMETER`,`GAUGE`.`GAUGE_RENT_WEIGHT` AS `GAUGE_RENT_WEIGHT`,`GAUGE`.`GAUGE_RENT_THREAD` AS `GAUGE_RENT_THREAD`,`GAUGE`.`GAUGE_RENT_PINBOX` AS `GAUGE_RENT_PINBOX`,`GAUGE`.`RENTAL_DAILY` AS `RENTAL_DAILY`,`GAUGE`.`RENTAL_ROYALTY` AS `RENTAL_ROYALTY`,`GAUGE`.`RENTAL_CURRENCY` AS `RENTAL_CURRENCY`,`GAUGE`.`RENTAL_GAUGE_TYPE` AS `RENTAL_GAUGE_TYPE`,`GAUGE`.`RENTAL_LICENSOR_ID` AS `RENTAL_LICENSOR_ID`,`GAUGE`.`RENTAL_LT_PERIOD` AS `RENTAL_LT_PERIOD`,`GAUGE`.`RENTAL_LT_START` AS `RENTAL_LT_START`,`GAUGE`.`RENTAL_LT_END` AS `RENTAL_LT_END`,`GAUGE`.`RENTAL_JSON_DATA` AS `RENTAL_JSON_DATA`,`GAUGE`.`ROYALTY_CURRENCY` AS `ROYALTY_CURRENCY`,`GAUGE`.`USER_ID` AS `USER_ID`,`GAUGE`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`GAUGE`.`CREATE_DATE` AS `CREATE_DATE`,`GAUGE`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`GAUGE`.`SITE_ID` AS `SITE_ID` from `GAUGE` where ((to_days((`GAUGE`.`DUE_DATE` + interval (`GAUGE`.`DUE_DATE_ALERT_DAYS` * -(1)) day)) - to_days(`GETDATE`())) <= 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GAUGE_REQUIREMENT_TYPE_1`
--

/*!50001 DROP TABLE IF EXISTS `GAUGE_REQUIREMENT_TYPE_1`*/;
/*!50001 DROP VIEW IF EXISTS `GAUGE_REQUIREMENT_TYPE_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `GAUGE_REQUIREMENT_TYPE_1` AS select 'vwltsa^sa_jobman^gaugeRequirementAutoEmailType1' AS `TITLE`,'{"_repvars":{"TXTYPE":"1"}}' AS `VALUE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `GAUGE_REQUIREMENT_TYPE_2`
--

/*!50001 DROP TABLE IF EXISTS `GAUGE_REQUIREMENT_TYPE_2`*/;
/*!50001 DROP VIEW IF EXISTS `GAUGE_REQUIREMENT_TYPE_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `GAUGE_REQUIREMENT_TYPE_2` AS select 'vwltsa^sa_jobman^gaugeRequirementAutoEmailType2' AS `TITLE`,'{"_repvars":{"TXTYPE":"2"}}' AS `VALUE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `JOB_OPN`
--

/*!50001 DROP TABLE IF EXISTS `JOB_OPN`*/;
/*!50001 DROP VIEW IF EXISTS `JOB_OPN`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `JOB_OPN` AS select `D2`.`RESOURCE_ID` AS `RESOURCE_ID`,`D2`.`WOREF` AS `OPN_WOREF`,`D2`.`STATUS` AS `OP_STATUS`,`D2`.`CLOSE_DATE` AS `OP_CLOSE_DATE`,`D2`.`CALC_END_QTY` AS `OP_QTY`,`D2`.`COMPLETED_QTY` AS `OP_COMPLETED_QTY`,(`D2`.`CALC_END_QTY` - `D2`.`COMPLETED_QTY`) AS `OP_BAL_QTY`,ifnull(`D2`.`LT_OPENJOB`,0) AS `LT_OPENJOB`,`D2`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`D4`.`TYPE` AS `RESOURCE_TYPE`,`D4`.`DESCRIPTION` AS `RESOURCE_DESC`,`D3`.`COC_ID` AS `COC_ID`,`D3`.`QTY` AS `COC_QUANTITY`,`D3`.`CREATE_DATE` AS `COC_DATE`,`D3`.`STATUS` AS `COC_STATUS`,(to_days(`D3`.`CREATE_DATE`) - to_days((`D1`.`DESIRED_WANT_DATE` + interval 1 day))) AS `LATE`,(case when ((to_days(`D3`.`CREATE_DATE`) - to_days((`D1`.`DESIRED_WANT_DATE` + interval 1 day))) <= 0) then 1 else 0 end) AS `OTD`,(case when ((to_days(`D3`.`CREATE_DATE`) - to_days((`D1`.`DESIRED_WANT_DATE` + interval 1 day))) <= 0) then 0 else (to_days(`D3`.`CREATE_DATE`) - to_days((`D1`.`DESIRED_WANT_DATE` + interval 1 day))) end) AS `LATE_DAYS`,(to_days((`D1`.`DESIRED_WANT_DATE` + interval 1 day)) - to_days(`D1`.`SCHED_FINISH_DATE`)) AS `SHIP_LATE`,`D2`.`COST_QTY` AS `COST_QTY`,`D2`.`COST_MATL` AS `OPN_COST_MATL`,`D2`.`COST_SUBCON` AS `OPN_COST_SUBCON`,`D2`.`COST_TOOLING` AS `OPN_COST_TOOLING`,`D2`.`COST_OTHERS` AS `OPN_COST_OTHERS`,`D2`.`COST_TOTAL` AS `OPN_COST_TOTAL`,`D2`.`ACT_LABOR_COST` AS `OPN_ACT_LABOR_COST`,`D2`.`ACT_BURDEN_COST` AS `OPN_ACT_BURDEN_COST`,`D1`.`ROWID` AS `ROWID`,`D1`.`WO_CLASS` AS `WO_CLASS`,`D1`.`TYPE` AS `TYPE`,`D1`.`BASE_ID` AS `BASE_ID`,`D1`.`LOT_ID` AS `LOT_ID`,`D1`.`SPLIT_ID` AS `SPLIT_ID`,`D1`.`SUB_ID` AS `SUB_ID`,`D1`.`PART_ID` AS `PART_ID`,`D1`.`DESIRED_QTY` AS `DESIRED_QTY`,`D1`.`RECEIVED_QTY` AS `RECEIVED_QTY`,`D1`.`CREATE_DATE` AS `CREATE_DATE`,`D1`.`DESIRED_RLS_DATE` AS `DESIRED_RLS_DATE`,`D1`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,`D1`.`CLOSE_DATE` AS `CLOSE_DATE`,`D1`.`STATUS` AS `STATUS`,`D1`.`ENGINEERED_BY` AS `ENGINEERED_BY`,`D1`.`ENGINEERED_DATE` AS `ENGINEERED_DATE`,`D1`.`DRAWING_ID` AS `DRAWING_ID`,`D1`.`DRAWING_REV_NO` AS `DRAWING_REV_NO`,`D1`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`D1`.`COMMODITY_CODE` AS `COMMODITY_CODE`,`D1`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`D1`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`D1`.`PRINTED_DATE` AS `PRINTED_DATE`,`D1`.`DRAWING_FILE` AS `DRAWING_FILE`,`D1`.`WAREHOUSE_ID` AS `WAREHOUSE_ID`,`D1`.`USER_1` AS `USER_1`,`D1`.`USER_2` AS `USER_2`,`D1`.`USER_3` AS `USER_3`,`D1`.`USER_4` AS `USER_4`,`D1`.`USER_5` AS `USER_5`,`D1`.`USER_6` AS `USER_6`,`D1`.`USER_7` AS `USER_7`,`D1`.`USER_8` AS `USER_8`,`D1`.`USER_9` AS `USER_9`,`D1`.`USER_10` AS `USER_10`,`D1`.`LONG_SPEC` AS `LONG_SPEC`,`D1`.`PART_ALIAS` AS `PART_ALIAS`,`D1`.`WOREF` AS `WOREF`,`D1`.`CUSTOMER_ID` AS `CUSTOMER_ID`,`D1`.`QTY_PER` AS `QTY_PER`,`D1`.`EST_COST` AS `EST_COST`,`D1`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`D1`.`SALES_ORDER_LINE_NO` AS `SALES_ORDER_LINE_NO`,`D1`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`D1`.`PART_REV_NO` AS `PART_REV_NO`,`D1`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`D1`.`QC_TEST_ID` AS `QC_TEST_ID`,`D1`.`COC_QTY` AS `COC_QTY`,`D1`.`PRIORITY` AS `PRIORITY`,`D1`.`LEAD_TIME` AS `LEAD_TIME`,`D1`.`CUSTOMER_PO` AS `CUSTOMER_PO`,`D1`.`CUSTOMER_PO_LINE_NO` AS `CUSTOMER_PO_LINE_NO`,`D1`.`CUSTOMER_PART_ID` AS `CUSTOMER_PART_ID`,`D1`.`TYPE_CLASS` AS `TYPE_CLASS`,`D1`.`FLAGS` AS `FLAGS`,`D1`.`SHIPPED_QTY` AS `SHIPPED_QTY`,`D1`.`WO_TYPE` AS `WO_TYPE`,`D1`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`D1`.`SALES_ORDER_NOTES` AS `SALES_ORDER_NOTES`,`D1`.`SALES_ORDER_REF` AS `SALES_ORDER_REF`,`D1`.`SALES_ORDER_REV_NO` AS `SALES_ORDER_REV_NO`,`D1`.`USER_ID` AS `USER_ID`,`D1`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`D1`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`D1`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`D1`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`D1`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`D1`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`D1`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`D1`.`COST_MATL` AS `COST_MATL`,`D1`.`COST_SUBCON` AS `COST_SUBCON`,`D1`.`COST_TOOLING` AS `COST_TOOLING`,`D1`.`COST_OTHERS` AS `COST_OTHERS`,`D1`.`COST_TOTAL` AS `COST_TOTAL`,`D1`.`ACT_TOTAL_COST` AS `ACT_TOTAL_COST`,`D1`.`GRAND_TOTAL_COST` AS `GRAND_TOTAL_COST`,`D1`.`SITE_ID` AS `SITE_ID`,`D1`.`ESTIMATOR_COST` AS `ESTIMATOR_COST`,`D5`.`OTD_CODE` AS `OTD_CODE` from ((((`WORK_ORDER` `D1` left join `OPERATION` `D2` on(((`D1`.`BASE_ID` = `D2`.`WORKORDER_BASE_ID`) and (`D1`.`LOT_ID` = `D2`.`WORKORDER_LOT_ID`) and (`D1`.`SPLIT_ID` = `D2`.`WORKORDER_SPLIT_ID`) and (`D1`.`SUB_ID` = `D2`.`WORKORDER_SUB_ID`)))) left join `QC_COC` `D3` on((`D1`.`BASE_ID` = `D3`.`WOREF`))) left join `SHOP_RESOURCE` `D4` on((`D2`.`RESOURCE_ID` = `D4`.`ID`))) left join `SALES_ORDER_LINE` `D5` on((`D1`.`SALES_ORDER_REF` = `D5`.`SOREF`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `JOB_OPN_MIN_RLS_OPN`
--

/*!50001 DROP TABLE IF EXISTS `JOB_OPN_MIN_RLS_OPN`*/;
/*!50001 DROP VIEW IF EXISTS `JOB_OPN_MIN_RLS_OPN`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `JOB_OPN_MIN_RLS_OPN` AS select `JOB_OPN`.`RESOURCE_ID` AS `RESOURCE_ID`,`JOB_OPN`.`OPN_WOREF` AS `OPN_WOREF`,`JOB_OPN`.`OP_STATUS` AS `OP_STATUS`,`JOB_OPN`.`OP_CLOSE_DATE` AS `OP_CLOSE_DATE`,`JOB_OPN`.`OP_QTY` AS `OP_QTY`,`JOB_OPN`.`OP_COMPLETED_QTY` AS `OP_COMPLETED_QTY`,`JOB_OPN`.`OP_BAL_QTY` AS `OP_BAL_QTY`,`JOB_OPN`.`LT_OPENJOB` AS `LT_OPENJOB`,`JOB_OPN`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`JOB_OPN`.`RESOURCE_TYPE` AS `RESOURCE_TYPE`,`JOB_OPN`.`RESOURCE_DESC` AS `RESOURCE_DESC`,`JOB_OPN`.`COC_ID` AS `COC_ID`,`JOB_OPN`.`COC_QUANTITY` AS `COC_QUANTITY`,`JOB_OPN`.`COC_DATE` AS `COC_DATE`,`JOB_OPN`.`COC_STATUS` AS `COC_STATUS`,`JOB_OPN`.`LATE` AS `LATE`,`JOB_OPN`.`OTD` AS `OTD`,`JOB_OPN`.`LATE_DAYS` AS `LATE_DAYS`,`JOB_OPN`.`SHIP_LATE` AS `SHIP_LATE`,`JOB_OPN`.`COST_QTY` AS `COST_QTY`,`JOB_OPN`.`OPN_COST_MATL` AS `OPN_COST_MATL`,`JOB_OPN`.`OPN_COST_SUBCON` AS `OPN_COST_SUBCON`,`JOB_OPN`.`OPN_COST_TOOLING` AS `OPN_COST_TOOLING`,`JOB_OPN`.`OPN_COST_OTHERS` AS `OPN_COST_OTHERS`,`JOB_OPN`.`OPN_COST_TOTAL` AS `OPN_COST_TOTAL`,`JOB_OPN`.`OPN_ACT_LABOR_COST` AS `OPN_ACT_LABOR_COST`,`JOB_OPN`.`OPN_ACT_BURDEN_COST` AS `OPN_ACT_BURDEN_COST`,`JOB_OPN`.`ROWID` AS `ROWID`,`JOB_OPN`.`WO_CLASS` AS `WO_CLASS`,`JOB_OPN`.`TYPE` AS `TYPE`,`JOB_OPN`.`BASE_ID` AS `BASE_ID`,`JOB_OPN`.`LOT_ID` AS `LOT_ID`,`JOB_OPN`.`SPLIT_ID` AS `SPLIT_ID`,`JOB_OPN`.`SUB_ID` AS `SUB_ID`,`JOB_OPN`.`PART_ID` AS `PART_ID`,`JOB_OPN`.`DESIRED_QTY` AS `DESIRED_QTY`,`JOB_OPN`.`RECEIVED_QTY` AS `RECEIVED_QTY`,`JOB_OPN`.`CREATE_DATE` AS `CREATE_DATE`,`JOB_OPN`.`DESIRED_RLS_DATE` AS `DESIRED_RLS_DATE`,`JOB_OPN`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,`JOB_OPN`.`CLOSE_DATE` AS `CLOSE_DATE`,`JOB_OPN`.`STATUS` AS `STATUS`,`JOB_OPN`.`ENGINEERED_BY` AS `ENGINEERED_BY`,`JOB_OPN`.`ENGINEERED_DATE` AS `ENGINEERED_DATE`,`JOB_OPN`.`DRAWING_ID` AS `DRAWING_ID`,`JOB_OPN`.`DRAWING_REV_NO` AS `DRAWING_REV_NO`,`JOB_OPN`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`JOB_OPN`.`COMMODITY_CODE` AS `COMMODITY_CODE`,`JOB_OPN`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`JOB_OPN`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`JOB_OPN`.`PRINTED_DATE` AS `PRINTED_DATE`,`JOB_OPN`.`DRAWING_FILE` AS `DRAWING_FILE`,`JOB_OPN`.`WAREHOUSE_ID` AS `WAREHOUSE_ID`,`JOB_OPN`.`USER_1` AS `USER_1`,`JOB_OPN`.`USER_2` AS `USER_2`,`JOB_OPN`.`USER_3` AS `USER_3`,`JOB_OPN`.`USER_4` AS `USER_4`,`JOB_OPN`.`USER_5` AS `USER_5`,`JOB_OPN`.`USER_6` AS `USER_6`,`JOB_OPN`.`USER_7` AS `USER_7`,`JOB_OPN`.`USER_8` AS `USER_8`,`JOB_OPN`.`USER_9` AS `USER_9`,`JOB_OPN`.`USER_10` AS `USER_10`,`JOB_OPN`.`LONG_SPEC` AS `LONG_SPEC`,`JOB_OPN`.`PART_ALIAS` AS `PART_ALIAS`,`JOB_OPN`.`WOREF` AS `WOREF`,`JOB_OPN`.`CUSTOMER_ID` AS `CUSTOMER_ID`,`JOB_OPN`.`QTY_PER` AS `QTY_PER`,`JOB_OPN`.`EST_COST` AS `EST_COST`,`JOB_OPN`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`JOB_OPN`.`SALES_ORDER_LINE_NO` AS `SALES_ORDER_LINE_NO`,`JOB_OPN`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`JOB_OPN`.`PART_REV_NO` AS `PART_REV_NO`,`JOB_OPN`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`JOB_OPN`.`QC_TEST_ID` AS `QC_TEST_ID`,`JOB_OPN`.`COC_QTY` AS `COC_QTY`,`JOB_OPN`.`PRIORITY` AS `PRIORITY`,`JOB_OPN`.`LEAD_TIME` AS `LEAD_TIME`,`JOB_OPN`.`CUSTOMER_PO` AS `CUSTOMER_PO`,`JOB_OPN`.`CUSTOMER_PO_LINE_NO` AS `CUSTOMER_PO_LINE_NO`,`JOB_OPN`.`CUSTOMER_PART_ID` AS `CUSTOMER_PART_ID`,`JOB_OPN`.`TYPE_CLASS` AS `TYPE_CLASS`,`JOB_OPN`.`FLAGS` AS `FLAGS`,`JOB_OPN`.`SHIPPED_QTY` AS `SHIPPED_QTY`,`JOB_OPN`.`WO_TYPE` AS `WO_TYPE`,`JOB_OPN`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`JOB_OPN`.`SALES_ORDER_NOTES` AS `SALES_ORDER_NOTES`,`JOB_OPN`.`SALES_ORDER_REF` AS `SALES_ORDER_REF`,`JOB_OPN`.`SALES_ORDER_REV_NO` AS `SALES_ORDER_REV_NO`,`JOB_OPN`.`USER_ID` AS `USER_ID`,`JOB_OPN`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`JOB_OPN`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`JOB_OPN`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`JOB_OPN`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`JOB_OPN`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`JOB_OPN`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`JOB_OPN`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`JOB_OPN`.`COST_MATL` AS `COST_MATL`,`JOB_OPN`.`COST_SUBCON` AS `COST_SUBCON`,`JOB_OPN`.`COST_TOOLING` AS `COST_TOOLING`,`JOB_OPN`.`COST_OTHERS` AS `COST_OTHERS`,`JOB_OPN`.`COST_TOTAL` AS `COST_TOTAL`,`JOB_OPN`.`ACT_TOTAL_COST` AS `ACT_TOTAL_COST`,`JOB_OPN`.`GRAND_TOTAL_COST` AS `GRAND_TOTAL_COST`,`JOB_OPN`.`SITE_ID` AS `SITE_ID`,`JOB_OPN`.`ESTIMATOR_COST` AS `ESTIMATOR_COST`,`JOB_OPN`.`OTD_CODE` AS `OTD_CODE` from `JOB_OPN` where (concat(`JOB_OPN`.`BASE_ID`,'/',`JOB_OPN`.`SEQUENCE_NO`) in (select concat(`JOB_OPN`.`BASE_ID`,'/',min(`JOB_OPN`.`SEQUENCE_NO`)) from `JOB_OPN` where ((`JOB_OPN`.`STATUS` = 'R') and (`JOB_OPN`.`WO_CLASS` <> 'DEFAULT') and (`JOB_OPN`.`OP_STATUS` = 'R')) group by `JOB_OPN`.`BASE_ID`) and (ifnull(`JOB_OPN`.`COC_STATUS`,'') <> 'VOID')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `JOB_PLAN_VIEW1`
--

/*!50001 DROP TABLE IF EXISTS `JOB_PLAN_VIEW1`*/;
/*!50001 DROP VIEW IF EXISTS `JOB_PLAN_VIEW1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `JOB_PLAN_VIEW1` AS select `OPERATION`.`RESOURCE_ID` AS `RESOURCE_ID`,`OPERATION`.`WOREF` AS `WOREF` from `OPERATION` where (not(((`OPERATION`.`RESOURCE_ID` + '#') + `OPERATION`.`WOREF`) in (select ((`JOB_PLAN`.`RESOURCE_ID` + '#') + `JOB_PLAN`.`WOREF`) from `JOB_PLAN`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `JOB_TRAVELLER`
--

/*!50001 DROP TABLE IF EXISTS `JOB_TRAVELLER`*/;
/*!50001 DROP VIEW IF EXISTS `JOB_TRAVELLER`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `JOB_TRAVELLER` AS select `WO`.`BASE_ID` AS `BASE_ID`,`WO`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`WO`.`SALES_ORDER_LINE_NO` AS `SALES_ORDER_LINE_NO`,ifnull(`SO`.`CUST_ID`,`WO`.`CUSTOMER_ID`) AS `CUSTOMER_ID`,ifnull(`SO`.`CUST_PO`,`WO`.`CUSTOMER_PO`) AS `CUSTOMER_PO`,ifnull(`SOL`.`CUST_PO_LINE_NO`,`WO`.`CUSTOMER_PO_LINE_NO`) AS `CUSTOMER_PO_LINE_NO`,`SO`.`REV_NO` AS `SO_REV_NO`,`SOL`.`CUST_PART_ID` AS `CUST_PART_ID`,ifnull(`SOL`.`PART_ID`,`WO`.`PART_ID`) AS `PART_ID`,`WO`.`DESIRED_QTY` AS `DESIRED_QTY`,cast(`WO`.`DESIRED_WANT_DATE` as char(10) charset utf8) AS `DESIRED_WANT_DATE`,`WO`.`DRAWING_ID` AS `DRAWING_ID`,`WO`.`DRAWING_REV_NO` AS `DRAWING_REV_NO`,`OP`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`OP`.`RESOURCE_ID` AS `RESOURCE_ID`,`SR`.`DESCRIPTION` AS `DESCRIPTION`,`OP`.`CALC_END_QTY` AS `CALC_END_QTY`,`OP`.`CALC_START_QTY` AS `CALC_START_QTY`,`OP`.`SETUP_HRS` AS `SETUP_HRS`,`OP`.`RUN_HRS` AS `RUN_HRS`,`WO`.`LONG_SPEC` AS `WO_LONG_SPEC`,`WO`.`USER_1` AS `WO_USER_1`,`WO`.`USER_2` AS `WO_USER_2`,`WO`.`USER_3` AS `WO_USER_3`,`WO`.`USER_4` AS `WO_USER_4`,`WO`.`USER_5` AS `WO_USER_5`,`WO`.`USER_6` AS `WO_USER_6`,`WO`.`USER_7` AS `WO_USER_7`,`WO`.`USER_8` AS `WO_USER_8`,`WO`.`USER_9` AS `WO_USER_9`,`OP`.`USER_1` AS `OP_USER_1`,`OP`.`USER_2` AS `OP_USER_2`,`OP`.`USER_3` AS `OP_USER_3`,`OP`.`USER_4` AS `OP_USER_4`,`OP`.`USER_5` AS `OP_USER_5`,`OP`.`SPEC` AS `OP_SPEC`,`OP`.`MATERIAL_SPEC` AS `MATERIAL_SPEC`,`WO`.`SUB_ID` AS `SUB_ID`,`PT`.`DESCRIPTION` AS `PART_DESCRIPTION`,`WO`.`ENGINEERED_BY` AS `ENGINEERED_BY`,`WO`.`ENGINEERED_DATE` AS `ENGINEERED_DATE`,(case when (`CHARINDEX`(';',`WO`.`USER_2`) > 0) then substr(`WO`.`USER_2`,1,(`CHARINDEX`(';',`WO`.`USER_2`) - 1)) end) AS `QPLAN_NO`,(case when (`CHARINDEX`('|',`WO`.`USER_2`) > 0) then substr(`WO`.`USER_2`,(`CHARINDEX`(';',`WO`.`USER_2`) + 1),((`CHARINDEX`('|',`WO`.`USER_2`) - `CHARINDEX`(';',`WO`.`USER_2`)) - 1)) end) AS `PP_NO`,(case when (`CHARINDEX`('|',`WO`.`USER_2`) > 0) then substr(`WO`.`USER_2`,(`CHARINDEX`('|',`WO`.`USER_2`) + 1),`LEN`(`WO`.`USER_2`)) end) AS `APPROVAL`,`OP`.`WOREF` AS `OPN_WOREF`,`SO`.`CUST_NAME` AS `CUST_NAME` from (((((`WORK_ORDER` `WO` left join `PART` `PT` on((`WO`.`PART_ID` = `PT`.`ID`))) left join `OPERATION` `OP` on(((`OP`.`WORKORDER_BASE_ID` = `WO`.`BASE_ID`) and (`WO`.`LOT_ID` = `OP`.`WORKORDER_LOT_ID`) and (`WO`.`SPLIT_ID` = `OP`.`WORKORDER_SPLIT_ID`) and (`WO`.`SUB_ID` = `OP`.`WORKORDER_SUB_ID`)))) left join `SHOP_RESOURCE` `SR` on((`SR`.`ID` = `OP`.`RESOURCE_ID`))) left join `SALES_ORDER` `SO` on((`WO`.`SALES_ORDER_ID` = `SO`.`ID`))) left join `SALES_ORDER_LINE` `SOL` on(((`WO`.`SALES_ORDER_ID` = `SOL`.`SALES_ORDER_ID`) and (`WO`.`SALES_ORDER_LINE_NO` = `SOL`.`LINE_NO`)))) order by `WO`.`BASE_ID`,`WO`.`LOT_ID`,`WO`.`SPLIT_ID`,`WO`.`SUB_ID`,`OP`.`SEQUENCE_NO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LABOR_TICKET_MAX_TRANS`
--

/*!50001 DROP TABLE IF EXISTS `LABOR_TICKET_MAX_TRANS`*/;
/*!50001 DROP VIEW IF EXISTS `LABOR_TICKET_MAX_TRANS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `LABOR_TICKET_MAX_TRANS` AS select `LABOR_TICKET`.`WOREF` AS `WOREF`,max(`LABOR_TICKET`.`TRANSACTION_DATE`) AS `MAX_TRANS` from `LABOR_TICKET` where (((`LABOR_TICKET`.`TYPE` <> 'I') and (`LABOR_TICKET`.`WOREF` is not null)) or (`LABOR_TICKET`.`WOREF` <> '')) group by `LABOR_TICKET`.`WOREF` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MC_STAT`
--

/*!50001 DROP TABLE IF EXISTS `MC_STAT`*/;
/*!50001 DROP VIEW IF EXISTS `MC_STAT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `MC_STAT` AS select `D1`.`MC_ID` AS `MC_ID`,`D1`.`MAC_ID` AS `MAC_ID`,`D1`.`IP_ADDR` AS `IP_ADDR`,`D1`.`EMP_ID` AS `EMP_ID`,`D1`.`TALLY` AS `TALLY`,`D1`.`JOBID` AS `JOBID`,(case when (coalesce(`D1`.`JOBID`,'') = '') then 'noj' when (coalesce(`D1`.`JOBID`,'') <> '') then (case when (`D1`.`MODE` = 'stop') then 'idl' when (timestampdiff(MINUTE,`D1`.`LAST_MODIFIED_DATE`,`GETDATE`()) > 5) then 'off' else `D1`.`MODE` end) end) AS `MODE`,`D2`.`TRANSACTION_ID` AS `TRANSACTION_ID`,`D3`.`RESOURCE_ID` AS `RESOURCE_ID`,`D3`.`CALC_START_QTY` AS `CALC_START_QTY`,`D3`.`COMPLETED_QTY` AS `COMPLETED_QTY`,(ifnull(`D3`.`CALC_START_QTY`,0) - ifnull(`D3`.`COMPLETED_QTY`,0)) AS `qbal`,ifnull(round(((ifnull(`D3`.`COMPLETED_QTY`,0) / `D3`.`CALC_START_QTY`) * 100),0),0) AS `cbar` from ((`MC_DEVICE` `D1` join `LABOR_TICKET` `D2`) join `OPERATION` `D3`) where ((`D1`.`EMP_ID` = `D2`.`EMPLOYEE_ID`) and isnull(`D2`.`HOURS_WORKED`) and (`D2`.`WOREF` = `D3`.`WOREF`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `NCR_AGING`
--

/*!50001 DROP TABLE IF EXISTS `NCR_AGING`*/;
/*!50001 DROP VIEW IF EXISTS `NCR_AGING`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `NCR_AGING` AS select `QC_NCR`.`CREATE_DATE` AS `CREATE_DATE`,(case when (`QC_NCR`.`STATUS` = 'COMPLETED') then 'Total Closed' when (`QC_NCR`.`STATUS` = 'REJECTED') then 'Total Rejected' else (case when ((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) < 30) then '30 days' when (((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) <= 60) and ((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) >= 30)) then '30-60 days' when (((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) <= 90) and ((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) >= 60)) then '60-90 days' when ((to_days(curdate()) - to_days(`QC_NCR`.`CREATE_DATE`)) > 90) then '90 days' end) end) AS `category`,1 AS `CNT` from `QC_NCR` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `NCR_CAUSE`
--

/*!50001 DROP TABLE IF EXISTS `NCR_CAUSE`*/;
/*!50001 DROP VIEW IF EXISTS `NCR_CAUSE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `NCR_CAUSE` AS select `CAUSE`.`ROWID` AS `ROWID`,`CAUSE`.`ID` AS `ID`,`CAUSE`.`DESCRIPTION` AS `DESCRIPTION`,`CAUSE`.`CLASS_ID` AS `CLASS_ID`,`CAUSE`.`TYPE` AS `TYPE`,`CAUSE`.`USER_ID` AS `USER_ID`,`CAUSE`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`CAUSE`.`CREATE_DATE` AS `CREATE_DATE`,`CAUSE`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`CAUSE`.`SITE_ID` AS `SITE_ID` from `CAUSE` where (`CAUSE`.`TYPE` = 'NCR') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `NEXT_NUMBER`
--

/*!50001 DROP TABLE IF EXISTS `NEXT_NUMBER`*/;
/*!50001 DROP VIEW IF EXISTS `NEXT_NUMBER`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `NEXT_NUMBER` AS select concat(convert(ifnull(`NNG`.`PREFIX`,'') using utf8),right(concat('000000000',cast(`NNG`.`NEXT_NUMBER` as char(10) charset utf8)),ifnull(`NNG`.`DECIMAL_PLACES`,5)),(case when (`NNG`.`SUFFIX` = '$Y2') then cast((year(now()) % 100) as char(2) charset utf8) when (`NNG`.`SUFFIX` = '-$Y2') then concat('-',cast((year(now()) % 100) as char(2) charset utf8)) when (`NNG`.`SUFFIX` = '$Y4') then cast(year(now()) as char(4) charset utf8) when (`NNG`.`SUFFIX` = '-$Y4') then concat('-',cast(year(now()) as char(4) charset utf8)) when (`NNG`.`SUFFIX` = '$Y') then cast(year(now()) as char(4) charset utf8) when (`NNG`.`SUFFIX` = '-$Y') then concat('-',cast(year(now()) as char(4) charset utf8)) when (`NNG`.`SUFFIX` = '$M') then cast(month(now()) as char(2) charset utf8) when (`NNG`.`SUFFIX` = '-$M') then concat('-',cast(month(now()) as char(2) charset utf8)) when (`NNG`.`SUFFIX` = '$M3') then left(monthname(now()),3) when (`NNG`.`SUFFIX` = '-$M3') then concat('-',left(monthname(now()),3)) when (`NNG`.`SUFFIX` = 'YYMMDD') then date_format(now(),'%y%m%d') when (`NNG`.`SUFFIX` = 'YYYYMMDD') then date_format(now(),'%Y%m%d') when (`NNG`.`SUFFIX` = '-YYMMDD') then concat('-',date_format(now(),'%y%m%d')) when (`NNG`.`SUFFIX` = '-YYYYMMDD') then concat('-',date_format(now(),'%Y%m%d')) else '' end)) AS `NEXT`,`NNG`.`TABLE_NAME` AS `TABLE_NAME`,`NNG`.`COLUMN_NAME` AS `COLUMN_NAME`,`NNG`.`TYPE` AS `TYPE`,`NNG`.`ID` AS `ID` from `NNG` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OPERATION_HRS`
--

/*!50001 DROP TABLE IF EXISTS `OPERATION_HRS`*/;
/*!50001 DROP VIEW IF EXISTS `OPERATION_HRS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `OPERATION_HRS` AS select `OP`.`WORKORDER_BASE_ID` AS `WORKORDER_BASE_ID`,`OP`.`WORKORDER_LOT_ID` AS `WORKORDER_LOT_ID`,`OP`.`WORKORDER_SPLIT_ID` AS `WORKORDER_SPLIT_ID`,`OP`.`WORKORDER_SUB_ID` AS `WORKORDER_SUB_ID`,`OP`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`OP`.`RESOURCE_ID` AS `RESOURCE_ID`,`OP`.`STATUS` AS `STATUS`,ifnull(sum(`LT`.`HOURS_WORKED`),0) AS `ACT_HRS`,ifnull(sum(`LT`.`HOURS_BREAK`),0) AS `TTL_BREAK_HRS`,(`OP`.`SETUP_HRS` + `OP`.`RUN_HRS`) AS `TTL_EST_HRS` from (`OPERATION` `OP` join `LABOR_TICKET` `LT`) where ((`OP`.`WORKORDER_BASE_ID` = `LT`.`WORKORDER_BASE_ID`) and (`OP`.`WORKORDER_LOT_ID` = `LT`.`WORKORDER_LOT_ID`) and (`OP`.`WORKORDER_SPLIT_ID` = `LT`.`WORKORDER_SPLIT_ID`) and (`OP`.`WORKORDER_SUB_ID` = `LT`.`WORKORDER_SUB_ID`) and (`OP`.`SEQUENCE_NO` = `LT`.`OPERATION_SEQ_NO`)) group by `OP`.`WORKORDER_BASE_ID`,`OP`.`WORKORDER_LOT_ID`,`OP`.`WORKORDER_SPLIT_ID`,`OP`.`WORKORDER_SUB_ID`,`OP`.`SEQUENCE_NO`,`OP`.`RESOURCE_ID`,`OP`.`STATUS` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OPERATION_LAST2SEQ`
--

/*!50001 DROP TABLE IF EXISTS `OPERATION_LAST2SEQ`*/;
/*!50001 DROP VIEW IF EXISTS `OPERATION_LAST2SEQ`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `OPERATION_LAST2SEQ` AS select `OPERATION`.`ROWID` AS `ROWID`,`OPERATION`.`WORKORDER_TYPE` AS `WORKORDER_TYPE`,`OPERATION`.`WORKORDER_BASE_ID` AS `WORKORDER_BASE_ID`,`OPERATION`.`WORKORDER_LOT_ID` AS `WORKORDER_LOT_ID`,`OPERATION`.`WORKORDER_SPLIT_ID` AS `WORKORDER_SPLIT_ID`,`OPERATION`.`WORKORDER_SUB_ID` AS `WORKORDER_SUB_ID`,`OPERATION`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`OPERATION`.`RESOURCE_ID` AS `RESOURCE_ID`,`OPERATION`.`SETUP_HRS` AS `SETUP_HRS`,`OPERATION`.`RUN` AS `RUN`,`OPERATION`.`RUN_TYPE` AS `RUN_TYPE`,`OPERATION`.`RUN_HRS` AS `RUN_HRS`,`OPERATION`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`OPERATION`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`OPERATION`.`CALC_START_QTY` AS `CALC_START_QTY`,`OPERATION`.`CALC_END_QTY` AS `CALC_END_QTY`,`OPERATION`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`OPERATION`.`DEVIATED_QTY` AS `DEVIATED_QTY`,`OPERATION`.`ACT_SETUP_HRS` AS `ACT_SETUP_HRS`,`OPERATION`.`ACT_RUN_HRS` AS `ACT_RUN_HRS`,`OPERATION`.`STATUS` AS `STATUS`,`OPERATION`.`SETUP_COMPLETED` AS `SETUP_COMPLETED`,`OPERATION`.`RUN_QTY_PER_CYCLE` AS `RUN_QTY_PER_CYCLE`,`OPERATION`.`USER_1` AS `USER_1`,`OPERATION`.`USER_2` AS `USER_2`,`OPERATION`.`USER_3` AS `USER_3`,`OPERATION`.`USER_4` AS `USER_4`,`OPERATION`.`USER_5` AS `USER_5`,`OPERATION`.`USER_6` AS `USER_6`,`OPERATION`.`USER_7` AS `USER_7`,`OPERATION`.`USER_8` AS `USER_8`,`OPERATION`.`USER_9` AS `USER_9`,`OPERATION`.`USER_10` AS `USER_10`,`OPERATION`.`CLOSE_DATE` AS `CLOSE_DATE`,`OPERATION`.`SERVICE_ID` AS `SERVICE_ID`,`OPERATION`.`BUR_PER_HR_RUN` AS `BUR_PER_HR_RUN`,`OPERATION`.`BUR_PERCENT_RUN` AS `BUR_PERCENT_RUN`,`OPERATION`.`BUR_PER_UNIT_RUN` AS `BUR_PER_UNIT_RUN`,`OPERATION`.`BUR_PER_OPERATION` AS `BUR_PER_OPERATION`,`OPERATION`.`QTY_PER` AS `QTY_PER`,`OPERATION`.`LONG_SPEC` AS `LONG_SPEC`,`OPERATION`.`CREATE_DATE` AS `CREATE_DATE`,`OPERATION`.`WOREF` AS `WOREF`,`OPERATION`.`COST_PER_HR` AS `COST_PER_HR`,`OPERATION`.`ACT_RUN_COST` AS `ACT_RUN_COST`,`OPERATION`.`ACT_SETUP_COST` AS `ACT_SETUP_COST`,`OPERATION`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`OPERATION`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`OPERATION`.`JOB_PLAN_SEQ` AS `JOB_PLAN_SEQ`,`OPERATION`.`LT_OPENJOB` AS `LT_OPENJOB`,`OPERATION`.`JOB_PLAN_HRS` AS `JOB_PLAN_HRS`,`OPERATION`.`HTYPE` AS `HTYPE`,`OPERATION`.`OP_DATA` AS `OP_DATA`,`OPERATION`.`RESOURCE_CLASS_ID` AS `RESOURCE_CLASS_ID`,`OPERATION`.`SPEC` AS `SPEC`,`OPERATION`.`MATERIAL_SPEC` AS `MATERIAL_SPEC`,`OPERATION`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`OPERATION`.`COST_UM` AS `COST_UM`,`OPERATION`.`COST_QTY` AS `COST_QTY`,`OPERATION`.`COST_MATL` AS `COST_MATL`,`OPERATION`.`COST_SUBCON` AS `COST_SUBCON`,`OPERATION`.`COST_TOTAL` AS `COST_TOTAL`,`OPERATION`.`NCR_ID` AS `NCR_ID`,`OPERATION`.`COST_TOOLING` AS `COST_TOOLING`,`OPERATION`.`COST_OTHERS` AS `COST_OTHERS`,`OPERATION`.`CLASS_DESCRIPTION` AS `CLASS_DESCRIPTION`,`OPERATION`.`CLASS_ID` AS `CLASS_ID`,`OPERATION`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`OPERATION`.`QTY_TYPE` AS `QTY_TYPE`,`OPERATION`.`PREV_RESOURCE_ID` AS `PREV_RESOURCE_ID`,`OPERATION`.`USER_ID` AS `USER_ID`,`OPERATION`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`OPERATION`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`OPERATION`.`GAUGE_RENT_DIAMETER` AS `GAUGE_RENT_DIAMETER`,`OPERATION`.`GAUGE_RENT_WEIGHT` AS `GAUGE_RENT_WEIGHT`,`OPERATION`.`GAUGE_RENT_THREAD` AS `GAUGE_RENT_THREAD`,`OPERATION`.`GAUGE_RENT_PINBOX` AS `GAUGE_RENT_PINBOX`,`OPERATION`.`LICENSOR_ID` AS `LICENSOR_ID`,`OPERATION`.`LICENSOR_JOB` AS `LICENSOR_JOB`,`OPERATION`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`OPERATION`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`OPERATION`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`OPERATION`.`COST_MATL_DESCRIPTION` AS `COST_MATL_DESCRIPTION`,`OPERATION`.`COST_SUBCON_DESCRIPTION` AS `COST_SUBCON_DESCRIPTION`,`OPERATION`.`COST_TOOLING_DESCRIPTION` AS `COST_TOOLING_DESCRIPTION`,`OPERATION`.`COST_OTHERS_DESCRIPTION` AS `COST_OTHERS_DESCRIPTION`,`OPERATION`.`SITE_ID` AS `SITE_ID` from `OPERATION` where ((`OPERATION`.`COMPLETED_QTY` <> 0) and concat(`OPERATION`.`WORKORDER_BASE_ID`,'/',`OPERATION`.`WORKORDER_SUB_ID`,'/',`OPERATION`.`SEQUENCE_NO`) in (select concat(`D1`.`WORKORDER_BASE_ID`,'/',`D1`.`WORKORDER_SUB_ID`,'/',max(`D1`.`SEQUENCE_NO`)) from (`OPERATION` `D1` join `OPERATION_MAXSEQ` `D2`) where ((`D1`.`WORKORDER_BASE_ID` = `D2`.`WORKORDER_BASE_ID`) and (`D1`.`WORKORDER_SUB_ID` = `D2`.`WORKORDER_SUB_ID`) and (`D1`.`SEQUENCE_NO` < `D2`.`SEQUENCE_NO`)) group by `D1`.`WORKORDER_BASE_ID`,`D1`.`WORKORDER_SUB_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OPERATION_MAXSEQ`
--

/*!50001 DROP TABLE IF EXISTS `OPERATION_MAXSEQ`*/;
/*!50001 DROP VIEW IF EXISTS `OPERATION_MAXSEQ`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `OPERATION_MAXSEQ` AS select `OPERATION`.`ROWID` AS `ROWID`,`OPERATION`.`WORKORDER_TYPE` AS `WORKORDER_TYPE`,`OPERATION`.`WORKORDER_BASE_ID` AS `WORKORDER_BASE_ID`,`OPERATION`.`WORKORDER_LOT_ID` AS `WORKORDER_LOT_ID`,`OPERATION`.`WORKORDER_SPLIT_ID` AS `WORKORDER_SPLIT_ID`,`OPERATION`.`WORKORDER_SUB_ID` AS `WORKORDER_SUB_ID`,`OPERATION`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`OPERATION`.`RESOURCE_ID` AS `RESOURCE_ID`,`OPERATION`.`SETUP_HRS` AS `SETUP_HRS`,`OPERATION`.`RUN` AS `RUN`,`OPERATION`.`RUN_TYPE` AS `RUN_TYPE`,`OPERATION`.`RUN_HRS` AS `RUN_HRS`,`OPERATION`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`OPERATION`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`OPERATION`.`CALC_START_QTY` AS `CALC_START_QTY`,`OPERATION`.`CALC_END_QTY` AS `CALC_END_QTY`,`OPERATION`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`OPERATION`.`DEVIATED_QTY` AS `DEVIATED_QTY`,`OPERATION`.`ACT_SETUP_HRS` AS `ACT_SETUP_HRS`,`OPERATION`.`ACT_RUN_HRS` AS `ACT_RUN_HRS`,`OPERATION`.`STATUS` AS `STATUS`,`OPERATION`.`SETUP_COMPLETED` AS `SETUP_COMPLETED`,`OPERATION`.`RUN_QTY_PER_CYCLE` AS `RUN_QTY_PER_CYCLE`,`OPERATION`.`USER_1` AS `USER_1`,`OPERATION`.`USER_2` AS `USER_2`,`OPERATION`.`USER_3` AS `USER_3`,`OPERATION`.`USER_4` AS `USER_4`,`OPERATION`.`USER_5` AS `USER_5`,`OPERATION`.`USER_6` AS `USER_6`,`OPERATION`.`USER_7` AS `USER_7`,`OPERATION`.`USER_8` AS `USER_8`,`OPERATION`.`USER_9` AS `USER_9`,`OPERATION`.`USER_10` AS `USER_10`,`OPERATION`.`CLOSE_DATE` AS `CLOSE_DATE`,`OPERATION`.`SERVICE_ID` AS `SERVICE_ID`,`OPERATION`.`BUR_PER_HR_RUN` AS `BUR_PER_HR_RUN`,`OPERATION`.`BUR_PERCENT_RUN` AS `BUR_PERCENT_RUN`,`OPERATION`.`BUR_PER_UNIT_RUN` AS `BUR_PER_UNIT_RUN`,`OPERATION`.`BUR_PER_OPERATION` AS `BUR_PER_OPERATION`,`OPERATION`.`QTY_PER` AS `QTY_PER`,`OPERATION`.`LONG_SPEC` AS `LONG_SPEC`,`OPERATION`.`CREATE_DATE` AS `CREATE_DATE`,`OPERATION`.`WOREF` AS `WOREF`,`OPERATION`.`COST_PER_HR` AS `COST_PER_HR`,`OPERATION`.`ACT_RUN_COST` AS `ACT_RUN_COST`,`OPERATION`.`ACT_SETUP_COST` AS `ACT_SETUP_COST`,`OPERATION`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`OPERATION`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`OPERATION`.`JOB_PLAN_SEQ` AS `JOB_PLAN_SEQ`,`OPERATION`.`LT_OPENJOB` AS `LT_OPENJOB`,`OPERATION`.`JOB_PLAN_HRS` AS `JOB_PLAN_HRS`,`OPERATION`.`HTYPE` AS `HTYPE`,`OPERATION`.`OP_DATA` AS `OP_DATA`,`OPERATION`.`RESOURCE_CLASS_ID` AS `RESOURCE_CLASS_ID`,`OPERATION`.`SPEC` AS `SPEC`,`OPERATION`.`MATERIAL_SPEC` AS `MATERIAL_SPEC`,`OPERATION`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`OPERATION`.`COST_UM` AS `COST_UM`,`OPERATION`.`COST_QTY` AS `COST_QTY`,`OPERATION`.`COST_MATL` AS `COST_MATL`,`OPERATION`.`COST_SUBCON` AS `COST_SUBCON`,`OPERATION`.`COST_TOTAL` AS `COST_TOTAL`,`OPERATION`.`NCR_ID` AS `NCR_ID`,`OPERATION`.`COST_TOOLING` AS `COST_TOOLING`,`OPERATION`.`COST_OTHERS` AS `COST_OTHERS`,`OPERATION`.`CLASS_DESCRIPTION` AS `CLASS_DESCRIPTION`,`OPERATION`.`CLASS_ID` AS `CLASS_ID`,`OPERATION`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`OPERATION`.`QTY_TYPE` AS `QTY_TYPE`,`OPERATION`.`PREV_RESOURCE_ID` AS `PREV_RESOURCE_ID`,`OPERATION`.`USER_ID` AS `USER_ID`,`OPERATION`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`OPERATION`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`OPERATION`.`GAUGE_RENT_DIAMETER` AS `GAUGE_RENT_DIAMETER`,`OPERATION`.`GAUGE_RENT_WEIGHT` AS `GAUGE_RENT_WEIGHT`,`OPERATION`.`GAUGE_RENT_THREAD` AS `GAUGE_RENT_THREAD`,`OPERATION`.`GAUGE_RENT_PINBOX` AS `GAUGE_RENT_PINBOX`,`OPERATION`.`LICENSOR_ID` AS `LICENSOR_ID`,`OPERATION`.`LICENSOR_JOB` AS `LICENSOR_JOB`,`OPERATION`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`OPERATION`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`OPERATION`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`OPERATION`.`COST_MATL_DESCRIPTION` AS `COST_MATL_DESCRIPTION`,`OPERATION`.`COST_SUBCON_DESCRIPTION` AS `COST_SUBCON_DESCRIPTION`,`OPERATION`.`COST_TOOLING_DESCRIPTION` AS `COST_TOOLING_DESCRIPTION`,`OPERATION`.`COST_OTHERS_DESCRIPTION` AS `COST_OTHERS_DESCRIPTION`,`OPERATION`.`SITE_ID` AS `SITE_ID` from `OPERATION` where concat(`OPERATION`.`WORKORDER_BASE_ID`,'/',`OPERATION`.`WORKORDER_SUB_ID`,'/',`OPERATION`.`SEQUENCE_NO`) in (select concat(`OPERATION`.`WORKORDER_BASE_ID`,'/',`OPERATION`.`WORKORDER_SUB_ID`,'/',max(`OPERATION`.`SEQUENCE_NO`)) from `OPERATION` where (`OPERATION`.`SEQUENCE_NO` <> 0) group by `OPERATION`.`WORKORDER_BASE_ID`,`OPERATION`.`WORKORDER_SUB_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OPN_INFO`
--

/*!50001 DROP TABLE IF EXISTS `OPN_INFO`*/;
/*!50001 DROP VIEW IF EXISTS `OPN_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `OPN_INFO` AS select (case when (ifnull(`d4`.`SEQUENCE_NO`,'999') = '999') then 'Y' else 'N' end) AS `IS_FIRST_OP`,`d4`.`SEQUENCE_NO` AS `PREV_SEQUENCE_NO`,`d4`.`STATUS` AS `PREV_STATUS`,`d4`.`COMPLETED_QTY` AS `PREV_COMPLETED_QTY`,`d4`.`DEVIATED_QTY` AS `PREV_BAD_QTY`,`d3`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`d2`.`DESCRIPTION` AS `RES_DESC`,`d2`.`TYPE` AS `RES_TYPE`,`d1`.`ROWID` AS `ROWID`,`d1`.`WORKORDER_TYPE` AS `WORKORDER_TYPE`,`d1`.`WORKORDER_BASE_ID` AS `WORKORDER_BASE_ID`,`d1`.`WORKORDER_LOT_ID` AS `WORKORDER_LOT_ID`,`d1`.`WORKORDER_SPLIT_ID` AS `WORKORDER_SPLIT_ID`,`d1`.`WORKORDER_SUB_ID` AS `WORKORDER_SUB_ID`,`d1`.`SEQUENCE_NO` AS `SEQUENCE_NO`,`d1`.`RESOURCE_ID` AS `RESOURCE_ID`,`d1`.`SETUP_HRS` AS `SETUP_HRS`,`d1`.`RUN` AS `RUN`,`d1`.`RUN_TYPE` AS `RUN_TYPE`,`d1`.`RUN_HRS` AS `RUN_HRS`,`d1`.`SCHED_START_DATE` AS `SCHED_START_DATE`,`d1`.`SCHED_FINISH_DATE` AS `SCHED_FINISH_DATE`,`d1`.`CALC_START_QTY` AS `CALC_START_QTY`,`d1`.`CALC_END_QTY` AS `CALC_END_QTY`,`d1`.`COMPLETED_QTY` AS `COMPLETED_QTY`,`d1`.`DEVIATED_QTY` AS `DEVIATED_QTY`,`d1`.`ACT_SETUP_HRS` AS `ACT_SETUP_HRS`,`d1`.`ACT_RUN_HRS` AS `ACT_RUN_HRS`,`d1`.`STATUS` AS `STATUS`,`d1`.`SETUP_COMPLETED` AS `SETUP_COMPLETED`,`d1`.`RUN_QTY_PER_CYCLE` AS `RUN_QTY_PER_CYCLE`,`d1`.`USER_1` AS `USER_1`,`d1`.`USER_2` AS `USER_2`,`d1`.`USER_3` AS `USER_3`,`d1`.`USER_4` AS `USER_4`,`d1`.`USER_5` AS `USER_5`,`d1`.`USER_6` AS `USER_6`,`d1`.`USER_7` AS `USER_7`,`d1`.`USER_8` AS `USER_8`,`d1`.`USER_9` AS `USER_9`,`d1`.`USER_10` AS `USER_10`,`d1`.`CLOSE_DATE` AS `CLOSE_DATE`,`d1`.`SERVICE_ID` AS `SERVICE_ID`,`d1`.`BUR_PER_HR_RUN` AS `BUR_PER_HR_RUN`,`d1`.`BUR_PERCENT_RUN` AS `BUR_PERCENT_RUN`,`d1`.`BUR_PER_UNIT_RUN` AS `BUR_PER_UNIT_RUN`,`d1`.`BUR_PER_OPERATION` AS `BUR_PER_OPERATION`,`d1`.`QTY_PER` AS `QTY_PER`,`d1`.`LONG_SPEC` AS `LONG_SPEC`,`d1`.`CREATE_DATE` AS `CREATE_DATE`,`d1`.`WOREF` AS `WOREF`,`d1`.`COST_PER_HR` AS `COST_PER_HR`,`d1`.`ACT_RUN_COST` AS `ACT_RUN_COST`,`d1`.`ACT_SETUP_COST` AS `ACT_SETUP_COST`,`d1`.`ACT_LABOR_COST` AS `ACT_LABOR_COST`,`d1`.`ACT_BURDEN_COST` AS `ACT_BURDEN_COST`,`d1`.`JOB_PLAN_SEQ` AS `JOB_PLAN_SEQ`,`d1`.`LT_OPENJOB` AS `LT_OPENJOB`,`d1`.`JOB_PLAN_HRS` AS `JOB_PLAN_HRS`,`d1`.`HTYPE` AS `HTYPE`,`d1`.`OP_DATA` AS `OP_DATA`,`d1`.`RESOURCE_CLASS_ID` AS `RESOURCE_CLASS_ID`,`d1`.`SPEC` AS `SPEC`,`d1`.`MATERIAL_SPEC` AS `MATERIAL_SPEC`,`d1`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`d1`.`COST_UM` AS `COST_UM`,`d1`.`COST_QTY` AS `COST_QTY`,`d1`.`COST_MATL` AS `COST_MATL`,`d1`.`COST_SUBCON` AS `COST_SUBCON`,`d1`.`COST_TOTAL` AS `COST_TOTAL`,`d1`.`NCR_ID` AS `NCR_ID`,`d1`.`COST_TOOLING` AS `COST_TOOLING`,`d1`.`COST_OTHERS` AS `COST_OTHERS`,`d1`.`CLASS_DESCRIPTION` AS `CLASS_DESCRIPTION`,`d1`.`CLASS_ID` AS `CLASS_ID`,`d1`.`QC_PLAN_ID` AS `QC_PLAN_ID`,`d1`.`QTY_TYPE` AS `QTY_TYPE`,`d1`.`PREV_RESOURCE_ID` AS `PREV_RESOURCE_ID`,`d1`.`USER_ID` AS `USER_ID`,`d1`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`d1`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`d1`.`GAUGE_RENT_DIAMETER` AS `GAUGE_RENT_DIAMETER`,`d1`.`GAUGE_RENT_WEIGHT` AS `GAUGE_RENT_WEIGHT`,`d1`.`GAUGE_RENT_THREAD` AS `GAUGE_RENT_THREAD`,`d1`.`GAUGE_RENT_PINBOX` AS `GAUGE_RENT_PINBOX`,`d1`.`LICENSOR_ID` AS `LICENSOR_ID`,`d1`.`LICENSOR_JOB` AS `LICENSOR_JOB`,`d1`.`ACT_MATERIAL_COST` AS `ACT_MATERIAL_COST`,`d1`.`ACT_SUBCON_COST` AS `ACT_SUBCON_COST`,`d1`.`ACT_RENTAL_COST` AS `ACT_RENTAL_COST`,`d1`.`COST_MATL_DESCRIPTION` AS `COST_MATL_DESCRIPTION`,`d1`.`COST_SUBCON_DESCRIPTION` AS `COST_SUBCON_DESCRIPTION`,`d1`.`COST_TOOLING_DESCRIPTION` AS `COST_TOOLING_DESCRIPTION`,`d1`.`COST_OTHERS_DESCRIPTION` AS `COST_OTHERS_DESCRIPTION`,`d1`.`SITE_ID` AS `SITE_ID` from (((`OPERATION` `d1` left join `OPERATION` `d4` on(((`d1`.`WORKORDER_TYPE` = `d4`.`WORKORDER_TYPE`) and (`d1`.`WORKORDER_BASE_ID` = `d4`.`WORKORDER_BASE_ID`) and (`d1`.`WORKORDER_LOT_ID` = `d4`.`WORKORDER_LOT_ID`) and (`d1`.`WORKORDER_SPLIT_ID` = `d4`.`WORKORDER_SPLIT_ID`) and (`d1`.`WORKORDER_SUB_ID` = `d4`.`WORKORDER_SUB_ID`) and (`d1`.`SEQUENCE_NO` > `d4`.`SEQUENCE_NO`)))) join `SHOP_RESOURCE` `d2`) join `WORK_ORDER` `d3`) where ((`d1`.`RESOURCE_ID` = `d2`.`ID`) and (`d1`.`WORKORDER_TYPE` = 'W') and (`d1`.`WORKORDER_TYPE` = `d3`.`TYPE`) and (`d1`.`WORKORDER_BASE_ID` = `d3`.`BASE_ID`) and (`d1`.`WORKORDER_LOT_ID` = `d3`.`LOT_ID`) and (`d1`.`WORKORDER_SPLIT_ID` = `d3`.`SPLIT_ID`) and (`d1`.`WORKORDER_SUB_ID` = `d3`.`SUB_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OPN_PART`
--

/*!50001 DROP TABLE IF EXISTS `OPN_PART`*/;
/*!50001 DROP VIEW IF EXISTS `OPN_PART`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `OPN_PART` AS select `O`.`WOREF` AS `WOREF`,`O`.`PART_ID` AS `PART_ID`,`P`.`DESCRIPTION` AS `DESCRIPTION`,substring_index(`O`.`WOREF`,'^',1) AS `WO_JOB_ID`,substr(`O`.`WOREF`,(length(substring_index(`O`.`WOREF`,'^',2)) + 2),((length(`O`.`WOREF`) - length(substring_index(`O`.`WOREF`,'^',2))) + 1)) AS `SEQ_NO`,`O`.`REQUIRED_QTY` AS `REQUIRED_QTY`,`O`.`ISSUED_QTY` AS `ISSUED_QTY`,(`O`.`REQUIRED_QTY` - `O`.`ISSUED_QTY`) AS `QTY_DUE`,`OP`.`SCHED_START_DATE` AS `WANT_DATE`,`OP`.`STATUS` AS `OPN_STATUS` from ((`OPERATION_PART` `O` join `PART` `P`) join `OPERATION` `OP`) where ((`O`.`PART_ID` = `P`.`ID`) and (`O`.`WOREF` = `OP`.`WOREF`) and (`OP`.`STATUS` = 'R')) order by substring_index(`O`.`WOREF`,'^',1),substr(`O`.`WOREF`,(length(substring_index(`O`.`WOREF`,'^',2)) + 2),((length(`O`.`WOREF`) - length(substring_index(`O`.`WOREF`,'^',2))) + 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_BAL_DIM`
--

/*!50001 DROP TABLE IF EXISTS `PART_BAL_DIM`*/;
/*!50001 DROP VIEW IF EXISTS `PART_BAL_DIM`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_BAL_DIM` AS select `PART`.`ID` AS `PART_ID`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`ALIAS_DESC` AS `ALIAS_DESC`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`PART`.`USER_1` AS `USER_1`,`PART`.`USER_2` AS `USER_2`,`PART`.`USER_3` AS `USER_3`,`PART`.`USER_4` AS `USER_4`,`PART`.`USER_5` AS `USER_5`,`PART`.`USER_6` AS `USER_6`,`PART`.`USER_7` AS `USER_7`,`PART`.`USER_8` AS `USER_8`,`PART`.`USER_9` AS `USER_9`,`PART`.`USER_10` AS `USER_10`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,`PART`.`TRACEABLE` AS `TRACEABLE`,`PART`.`LOT_SIZE` AS `LOT_SIZE`,`PART`.`UNIT_MATERIAL_COST` AS `UNIT_MATERIAL_COST`,`PART`.`TRACE_USER_1_LBL` AS `TRACE_USER_1_LBL`,`PART`.`TRACE_USER_2_LBL` AS `TRACE_USER_2_LBL`,`PART`.`TRACE_USER_3_LBL` AS `TRACE_USER_3_LBL`,`PART`.`TRACE_USER_4_LBL` AS `TRACE_USER_4_LBL`,`PART`.`TRACE_USER_5_LBL` AS `TRACE_USER_5_LBL`,`PART`.`TRACE_USER_6_LBL` AS `TRACE_USER_6_LBL`,`PART`.`TRACE_USER_7_LBL` AS `TRACE_USER_7_LBL`,`PART`.`TRACE_USER_8_LBL` AS `TRACE_USER_8_LBL`,`PART`.`TRACE_USER_9_LBL` AS `TRACE_USER_9_LBL`,`PART`.`TRACE_USER_10_LBL` AS `TRACE_USER_10_LBL`,`PT`.`TRACE_ID` AS `TRACE_ID`,`PART`.`DIM_TRACKED` AS `DIM_TRACKED`,`PTD`.`LENGTH` AS `LENGTH`,`PTD`.`WIDTH` AS `WIDTH`,`PTD`.`HEIGHT` AS `HEIGHT`,`PART`.`DIM_UOM` AS `DIM_UOM`,sum((case `PT`.`TRANS_TYPE` when 'ADJ-IN' then `PTD`.`PC_QTY` when 'JOB-IN' then `PTD`.`PC_QTY` when 'FG-IN' then `PTD`.`PC_QTY` when 'SHP-IN' then `PTD`.`PC_QTY` when 'ADJ-OUT' then (`PTD`.`PC_QTY` * -(1)) when 'JOB-OUT' then (`PTD`.`PC_QTY` * -(1)) when 'FG-OUT' then (`PTD`.`PC_QTY` * -(1)) when 'SHP-OUT' then (`PTD`.`PC_QTY` * -(1)) else 0 end)) AS `BAL_QTY` from ((`PART` left join `PART_TRANS` `PT` on((`PART`.`ID` = `PT`.`PART_ID`))) left join `PART_TRANS_DIM` `PTD` on((`PTD`.`TRANSACTION_ID` = `PT`.`TRANSACTION_ID`))) where (`PART`.`DIM_TRACKED` = 'Y') group by `PART`.`ID`,`PART`.`DESCRIPTION`,`PART`.`ALIAS_DESC`,`PART`.`PRODUCT_CODE`,`PART`.`UOM_ID`,`PART`.`UDF_LAYOUT_ID`,`PART`.`USER_1`,`PART`.`USER_2`,`PART`.`USER_3`,`PART`.`USER_4`,`PART`.`USER_5`,`PART`.`USER_6`,`PART`.`USER_7`,`PART`.`USER_8`,`PART`.`USER_9`,`PART`.`USER_10`,`PART`.`PART_CLASS_ID`,`PART`.`TRACEABLE`,`PART`.`LOT_SIZE`,`PART`.`TRACE_USER_1_LBL`,`PART`.`TRACE_USER_2_LBL`,`PART`.`TRACE_USER_3_LBL`,`PART`.`TRACE_USER_4_LBL`,`PART`.`TRACE_USER_5_LBL`,`PART`.`TRACE_USER_6_LBL`,`PART`.`TRACE_USER_7_LBL`,`PART`.`TRACE_USER_8_LBL`,`PART`.`TRACE_USER_9_LBL`,`PART`.`TRACE_USER_10_LBL`,`PT`.`TRACE_ID`,`PART`.`DIM_TRACKED`,`PTD`.`LENGTH`,`PTD`.`WIDTH`,`PTD`.`HEIGHT`,`PART`.`DIM_UOM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_BAL_QTY`
--

/*!50001 DROP TABLE IF EXISTS `PART_BAL_QTY`*/;
/*!50001 DROP VIEW IF EXISTS `PART_BAL_QTY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_BAL_QTY` AS select `PART`.`ROWID` AS `ROWID`,`PART`.`ID` AS `ID`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`ALIAS_DESC` AS `ALIAS_DESC`,`PART`.`USER_1` AS `USER_1`,`PART`.`USER_2` AS `USER_2`,`PART`.`USER_3` AS `USER_3`,`PART`.`USER_4` AS `USER_4`,`PART`.`USER_5` AS `USER_5`,`PART`.`USER_6` AS `USER_6`,`PART`.`USER_7` AS `USER_7`,`PART`.`USER_8` AS `USER_8`,`PART`.`USER_9` AS `USER_9`,`PART`.`USER_10` AS `USER_10`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,`PART`.`TRACEABLE` AS `TRACEABLE`,`PART`.`LOT_SIZE` AS `LOT_SIZE`,`PART`.`TRACE_USER_1_LBL` AS `TRACE_USER_1_LBL`,`PART`.`TRACE_USER_2_LBL` AS `TRACE_USER_2_LBL`,`PART`.`TRACE_USER_3_LBL` AS `TRACE_USER_3_LBL`,`PART`.`TRACE_USER_4_LBL` AS `TRACE_USER_4_LBL`,`PART`.`TRACE_USER_5_LBL` AS `TRACE_USER_5_LBL`,`PART`.`TRACE_USER_6_LBL` AS `TRACE_USER_6_LBL`,`PART`.`TRACE_USER_7_LBL` AS `TRACE_USER_7_LBL`,`PART`.`TRACE_USER_8_LBL` AS `TRACE_USER_8_LBL`,`PART`.`TRACE_USER_9_LBL` AS `TRACE_USER_9_LBL`,`PART`.`TRACE_USER_10_LBL` AS `TRACE_USER_10_LBL`,`PART`.`UDF_LAYOUT_ID` AS `UDF_LAYOUT_ID`,`PART`.`BAL_QTY` AS `BAL_QTY`,`PART`.`PART_REV_NO` AS `PART_REV_NO`,`PART`.`ACTIVE` AS `ACTIVE`,`PART`.`UNIT_MATERIAL_COST` AS `UNIT_MATERIAL_COST`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE`,`PART`.`USER_ID` AS `USER_ID`,`PART`.`CREATE_DATE` AS `CREATE_DATE`,`PART`.`LAST_MODIFIED_USER_ID` AS `LAST_MODIFIED_USER_ID`,`PART`.`LAST_MODIFIED_DATE` AS `LAST_MODIFIED_DATE`,`PART`.`SITE_ID` AS `SITE_ID`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`DIM_TRACKED` AS `DIM_TRACKED`,`PART`.`LENGTH` AS `LENGTH`,`PART`.`WIDTH` AS `WIDTH`,`PART`.`HEIGHT` AS `HEIGHT`,`PART`.`DIM_UOM` AS `DIM_UOM` from `PART` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_DIM_WOREF_ISSUE`
--

/*!50001 DROP TABLE IF EXISTS `PART_DIM_WOREF_ISSUE`*/;
/*!50001 DROP VIEW IF EXISTS `PART_DIM_WOREF_ISSUE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_DIM_WOREF_ISSUE` AS select `PART_TRANS`.`PART_ID` AS `PART_ID`,`PART_TRANS`.`TRACE_ID` AS `TRACE_ID`,`PART_TRANS`.`WOREF` AS `WOREF`,`PART_TRANS_DIM`.`LENGTH` AS `LENGTH`,`PART_TRANS_DIM`.`WIDTH` AS `WIDTH`,`PART_TRANS_DIM`.`HEIGHT` AS `HEIGHT`,sum((case `PART_TRANS`.`TRANS_TYPE` when 'JOB-IN' then (`PART_TRANS_DIM`.`PC_QTY` * -(1)) when 'JOB-OUT' then `PART_TRANS_DIM`.`PC_QTY` end)) AS `BAL_QTY` from (`PART_TRANS` join `PART_TRANS_DIM`) where ((`PART_TRANS`.`WOREF` is not null) and (`PART_TRANS`.`TRANS_TYPE` like 'JOB%') and (`PART_TRANS`.`TRANSACTION_ID` = `PART_TRANS_DIM`.`TRANSACTION_ID`)) group by `PART_TRANS`.`PART_ID`,`PART_TRANS`.`TRACE_ID`,`PART_TRANS`.`WOREF`,`PART_TRANS_DIM`.`LENGTH`,`PART_TRANS_DIM`.`WIDTH`,`PART_TRANS_DIM`.`HEIGHT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_PLAN`
--

/*!50001 DROP TABLE IF EXISTS `PART_PLAN`*/;
/*!50001 DROP VIEW IF EXISTS `PART_PLAN`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_PLAN` AS select 1 AS `Ord`,'OnHand' AS `PLAN_TYPE`,'' AS `DOC_TYPE`,`PART`.`ID` AS `PART_ID`,'' AS `WANT_DATE`,ifnull(sum(`PART_TRACE_BAL`.`BAL_QTY`),0) AS `QTY`,'' AS `DD_REF`,'' AS `SS_REF`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE` from (`PART` left join `PART_TRACE_BAL` on((`PART`.`ID` = `PART_TRACE_BAL`.`PART_ID`))) group by `PART`.`ID` union select 2 AS `2`,'Supply' AS `Supply`,'Job' AS `Job`,`WORK_ORDER`.`PART_ID` AS `PART_ID`,`WORK_ORDER`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,(`WORK_ORDER`.`DESIRED_QTY` - ifnull(`WORK_ORDER`.`SHIPPED_QTY`,0)) AS `(WORK_ORDER.DESIRED_QTY - IFNULL(WORK_ORDER.SHIPPED_QTY,0))`,'' AS `Name_exp_7`,`WORK_ORDER`.`WOREF` AS `WOREF`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE` from (`WORK_ORDER` left join `PART` on((`WORK_ORDER`.`PART_ID` = `PART`.`ID`))) where ((`WORK_ORDER`.`STATUS` = 'R') and (`WORK_ORDER`.`SUB_ID` = 0) and (`WORK_ORDER`.`PART_ID` is not null) and ((`WORK_ORDER`.`DESIRED_QTY` - ifnull(`WORK_ORDER`.`SHIPPED_QTY`,0)) > 0)) union select 3 AS `3`,'Demand' AS `Demand`,'SO' AS `SO`,`SOL`.`PART_ID` AS `PART_ID`,`SOL`.`WANT_DATE` AS `WANT_DATE`,((`SOL`.`QTY` - `SOL`.`QTY_SHIP`) * -(1)) AS `(SOL.QTY - SOL.QTY_SHIP) * -1`,`SOL`.`SOREF` AS `SOREF`,'' AS `Name_exp_8`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE` from ((`SALES_ORDER_LINE` `SOL` left join `PART` on((`SOL`.`PART_ID` = `PART`.`ID`))) left join `SALES_ORDER` `SO` on((`SOL`.`SALES_ORDER_ID` = `SO`.`ID`))) where ((isnull(`SOL`.`LINE_STATUS`) or (`SOL`.`LINE_STATUS` = '')) and (`SO`.`STATUS` = 'R') and (`SOL`.`PART_ID` is not null) and ((`SOL`.`QTY` - `SOL`.`QTY_SHIP`) > 0)) union select 4 AS `4`,'Demand' AS `Demand`,'Opn' AS `Opn`,`PT`.`PART_ID` AS `PART_ID`,`WO`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,((`PT`.`REQUIRED_QTY` - ifnull(`PT`.`ISSUED_QTY`,0)) * -(1)) AS `(PT.REQUIRED_QTY - IFNULL(PT.ISSUED_QTY,0)) * -1`,`PT`.`WOREF` AS `WOREF`,'' AS `Name_exp_8`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE` from (((`OPERATION_PART` `PT` left join `OPERATION` `OP` on((`PT`.`WOREF` = `OP`.`WOREF`))) left join `WORK_ORDER` `WO` on(((`OP`.`WORKORDER_BASE_ID` = `WO`.`BASE_ID`) and (`OP`.`WORKORDER_SUB_ID` = `WO`.`SUB_ID`)))) left join `PART` on((`PT`.`PART_ID` = `PART`.`ID`))) where ((`OP`.`STATUS` = 'R') and (`WO`.`STATUS` = 'R') and ((`PT`.`REQUIRED_QTY` - ifnull(`PT`.`ISSUED_QTY`,0)) > 0)) union select 5 AS `5`,'Supply' AS `Supply`,'PO' AS `PO`,`POL`.`PART_ID` AS `PART_ID`,`POL`.`EST_RECEIPT_DATE` AS `EST_RECEIPT_DATE`,`POL`.`QTY` AS `QTY`,'' AS `Name_exp_7`,concat(`POL`.`PO_ID`,'^',`POL`.`LINE_NO`) AS `concat(PO_ID,'^',LINE_NO)`,`PART`.`DESCRIPTION` AS `DESCRIPTION`,`PART`.`UOM_ID` AS `UOM_ID`,`PART`.`PRODUCT_CODE` AS `PRODUCT_CODE` from (`PURCHASE_ORDER_LIST` `POL` left join `PART` on((`POL`.`PART_ID` = `PART`.`ID`))) where ((`POL`.`LINE_STATUS` = 'R') and (`POL`.`PO_TYPE` = 'G')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_TRACE_BAL`
--

/*!50001 DROP TABLE IF EXISTS `PART_TRACE_BAL`*/;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_BAL`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_TRACE_BAL` AS select `PART_TRANS`.`PART_ID` AS `PART_ID`,`PART_TRACE`.`TRACE_ID` AS `TRACE_ID`,`PART_TRACE`.`TRACE_DATE` AS `TRACE_DATE`,`PART_TRACE`.`UNIT_MATERIAL_COST` AS `TRACE_MATERIAL_COST`,`PART_TRACE`.`EXPIRY_DATE` AS `EXPIRY_DATE`,`PART_TRACE`.`TRACE_USER_1` AS `TRACE_USER_1`,`PART_TRACE`.`TRACE_USER_2` AS `TRACE_USER_2`,`PART_TRACE`.`TRACE_USER_3` AS `TRACE_USER_3`,`PART_TRACE`.`TRACE_USER_4` AS `TRACE_USER_4`,`PART_TRACE`.`TRACE_USER_5` AS `TRACE_USER_5`,`PART_TRACE`.`TRACE_USER_6` AS `TRACE_USER_6`,`PART_TRACE`.`TRACE_USER_7` AS `TRACE_USER_7`,`PART_TRACE`.`TRACE_USER_8` AS `TRACE_USER_8`,`PART_TRACE`.`TRACE_USER_9` AS `TRACE_USER_9`,`PART_TRACE`.`TRACE_USER_10` AS `TRACE_USER_10`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,`PART`.`LOT_SIZE` AS `LOT_SIZE`,sum((case `PART_TRANS`.`TRANS_TYPE` when 'ADJ-IN' then `PART_TRANS`.`QTY` when 'JOB-IN' then `PART_TRANS`.`QTY` when 'FG-IN' then `PART_TRANS`.`QTY` when 'SHP-IN' then `PART_TRANS`.`QTY` when 'ADJ-OUT' then (`PART_TRANS`.`QTY` * -(1)) when 'JOB-OUT' then (`PART_TRANS`.`QTY` * -(1)) when 'FG-OUT' then (`PART_TRANS`.`QTY` * -(1)) when 'SHP-OUT' then (`PART_TRANS`.`QTY` * -(1)) end)) AS `BAL_QTY` from ((`PART_TRANS` left join `PART_TRACE` on(((`PART_TRANS`.`PART_ID` = `PART_TRACE`.`PART_ID`) and (`PART_TRANS`.`TRACE_ID` = `PART_TRACE`.`TRACE_ID`)))) left join `PART` on((`PART`.`ID` = `PART_TRANS`.`PART_ID`))) group by `PART_TRANS`.`PART_ID`,`PART_TRACE`.`TRACE_ID`,`PART_TRACE`.`TRACE_DATE`,`PART_TRACE`.`TRACE_USER_1`,`PART_TRACE`.`TRACE_USER_2`,`PART_TRACE`.`TRACE_USER_3`,`PART_TRACE`.`TRACE_USER_4`,`PART_TRACE`.`TRACE_USER_5`,`PART_TRACE`.`TRACE_USER_6`,`PART_TRACE`.`TRACE_USER_7`,`PART_TRACE`.`TRACE_USER_8`,`PART_TRACE`.`TRACE_USER_9`,`PART_TRACE`.`TRACE_USER_10`,`PART`.`PART_CLASS_ID`,`PART`.`LOT_SIZE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_TRACE_SHIP_ISSUE`
--

/*!50001 DROP TABLE IF EXISTS `PART_TRACE_SHIP_ISSUE`*/;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_SHIP_ISSUE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_TRACE_SHIP_ISSUE` AS select `PART_TRANS`.`PART_ID` AS `PART_ID`,`PART_TRANS`.`TRACE_ID` AS `TRACE_ID`,`PART_TRANS`.`WOREF` AS `WOREF`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,sum((case `PART_TRANS`.`TRANS_TYPE` when 'SHP-IN' then (`PART_TRANS`.`QTY` * -(1)) when 'SHP-OUT' then `PART_TRANS`.`QTY` end)) AS `BAL_QTY` from (`PART_TRANS` join `PART`) where ((`PART`.`ID` = `PART_TRANS`.`PART_ID`) and (`PART_TRANS`.`TRANS_TYPE` like 'SHP%')) group by `PART_TRANS`.`PART_ID`,`PART_TRANS`.`TRACE_ID`,`PART_TRANS`.`WOREF`,`PART`.`PART_CLASS_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_TRACE_WOREF_ISSUE`
--

/*!50001 DROP TABLE IF EXISTS `PART_TRACE_WOREF_ISSUE`*/;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_WOREF_ISSUE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_TRACE_WOREF_ISSUE` AS select `PART_TRANS`.`PART_ID` AS `PART_ID`,`PART_TRANS`.`TRACE_ID` AS `TRACE_ID`,`PART_TRANS`.`WOREF` AS `WOREF`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,sum((case `PART_TRANS`.`TRANS_TYPE` when 'JOB-IN' then (`PART_TRANS`.`QTY` * -(1)) when 'JOB-OUT' then `PART_TRANS`.`QTY` end)) AS `BAL_QTY` from (`PART_TRANS` join `PART`) where ((`PART_TRANS`.`WOREF` is not null) and (`PART_TRANS`.`TRANS_TYPE` like 'JOB%') and (`PART`.`ID` = `PART_TRANS`.`PART_ID`)) group by `PART_TRANS`.`PART_ID`,`PART_TRANS`.`TRACE_ID`,`PART_TRANS`.`WOREF`,`PART`.`PART_CLASS_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_TRACE_WOREF_RECEIPT`
--

/*!50001 DROP TABLE IF EXISTS `PART_TRACE_WOREF_RECEIPT`*/;
/*!50001 DROP VIEW IF EXISTS `PART_TRACE_WOREF_RECEIPT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_TRACE_WOREF_RECEIPT` AS select `PART_TRANS`.`PART_ID` AS `PART_ID`,`PART_TRANS`.`TRACE_ID` AS `TRACE_ID`,`PART_TRANS`.`WOREF` AS `WOREF`,`PART`.`PART_CLASS_ID` AS `PART_CLASS_ID`,sum((case `PART_TRANS`.`TRANS_TYPE` when 'FG-IN' then `PART_TRANS`.`QTY` when 'FG-OUT' then (`PART_TRANS`.`QTY` * -(1)) end)) AS `BAL_QTY` from (`PART_TRANS` join `PART`) where ((`PART_TRANS`.`WOREF` is not null) and (`PART_TRANS`.`TRANS_TYPE` like 'FG%') and (`PART`.`ID` = `PART_TRANS`.`PART_ID`)) group by `PART_TRANS`.`PART_ID`,`PART_TRANS`.`TRACE_ID`,`PART_TRANS`.`WOREF`,`PART`.`PART_CLASS_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PART_TRANS_RUNNING_BAL`
--

/*!50001 DROP TABLE IF EXISTS `PART_TRANS_RUNNING_BAL`*/;
/*!50001 DROP VIEW IF EXISTS `PART_TRANS_RUNNING_BAL`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PART_TRANS_RUNNING_BAL` AS select `P`.`TRACEABLE` AS `TRACEABLE`,`A`.`PART_ID` AS `PART_ID`,`A`.`DOCUMENT_ID` AS `DOCUMENT_ID`,`A`.`TRACE_ID` AS `TRACE_ID`,`A`.`TRANSACTION_DATE` AS `TRANSACTION_DATE`,`A`.`TRANSACTION_ID` AS `TRANSACTION_ID`,`A`.`WOREF` AS `WOREF`,`A`.`TRANS_TYPE` AS `TRANS_TYPE`,`C`.`TRACE_USER_1` AS `TRACE_USER_1`,`C`.`TRACE_USER_2` AS `TRACE_USER_2`,`C`.`TRACE_USER_3` AS `TRACE_USER_3`,`C`.`TRACE_USER_4` AS `TRACE_USER_4`,`C`.`TRACE_USER_5` AS `TRACE_USER_5`,`C`.`TRACE_USER_6` AS `TRACE_USER_6`,`C`.`TRACE_USER_7` AS `TRACE_USER_7`,`C`.`TRACE_USER_8` AS `TRACE_USER_8`,`C`.`TRACE_USER_9` AS `TRACE_USER_9`,`C`.`TRACE_USER_10` AS `TRACE_USER_10`,`P`.`USER_1` AS `USER_1`,`P`.`USER_2` AS `USER_2`,`P`.`USER_3` AS `USER_3`,`P`.`USER_4` AS `USER_4`,`P`.`USER_5` AS `USER_5`,`P`.`USER_6` AS `USER_6`,`P`.`USER_7` AS `USER_7`,`P`.`USER_8` AS `USER_8`,`P`.`USER_9` AS `USER_9`,`P`.`USER_10` AS `USER_10`,`P`.`PART_CLASS_ID` AS `PART_CLASS_ID`,`A`.`UNIT_MATERIAL_COST` AS `TRANS_UNIT_MATERIAL_COST`,`C`.`UNIT_MATERIAL_COST` AS `TRACE_UNIT_MATERIAL_COST`,(case when (right(`A`.`TRANS_TYPE`,2) = 'IN') then `A`.`QTY` else (`A`.`QTY` * -(1)) end) AS `QTY` from ((`PART_TRANS` `A` left join `PART_TRACE` `C` on(((`A`.`PART_ID` = `C`.`PART_ID`) and (`A`.`TRACE_ID` = `C`.`TRACE_ID`)))) left join `PART` `P` on((`P`.`ID` = `A`.`PART_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PROD_MASTER_CUSTOMER_INFO`
--

/*!50001 DROP TABLE IF EXISTS `PROD_MASTER_CUSTOMER_INFO`*/;
/*!50001 DROP VIEW IF EXISTS `PROD_MASTER_CUSTOMER_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `PROD_MASTER_CUSTOMER_INFO` AS select distinct 'vwltsa^sa_jobman^prodMasterByCustAutoEmail' AS `prodMasterByCustAutoEmail`,concat('{"CONTACT_PERSON":"',ifnull(`D4`.`CONTACT_PERSON`,`D4`.`NAME`),'","CUSTOMER_ID":"',`D1`.`CUSTOMER_ID`,'","CUSTOMER_NAME":"',ifnull(`D4`.`NAME`,`D4`.`ID`),'","_repvars":{"CUSTOMER":"',`D1`.`CUSTOMER_ID`,'","ORDER_BY":"SALES_ORDER_ID"},"_recipients":["',(case when (`D4`.`SUBSCRIBE_EVENT` = 'N') then '' else ifnull(`D4`.`CONTACT_EMAIL`,'') end),'"]}') AS `JSON_DATA` from (`WORK_ORDER` `D1` left join `CUSTOMER` `D4` on((`D1`.`CUSTOMER_ID` = `D4`.`ID`))) where ((`D1`.`CUSTOMER_ID` is not null) and (`D1`.`STATUS` = 'R') and (`D1`.`WO_CLASS` not in ('DEFAULT','TEMPLATE'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SOL_SHIPPED_TRACE_QTY`
--

/*!50001 DROP TABLE IF EXISTS `SOL_SHIPPED_TRACE_QTY`*/;
/*!50001 DROP VIEW IF EXISTS `SOL_SHIPPED_TRACE_QTY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `SOL_SHIPPED_TRACE_QTY` AS select `S`.`SO_ID` AS `SO_ID`,`SL`.`SO_LINENO` AS `SO_LINENO`,`PT`.`PART_ID` AS `PART_ID`,`PT`.`TRACE_ID` AS `TRACE_ID`,sum((case `PT`.`TRANS_TYPE` when 'SHP-IN' then (`PT`.`QTY` * -(1)) when 'SHP-OUT' then `PT`.`QTY` end)) AS `SHIPPED_QTY` from ((`PART_TRANS` `PT` join `SHIPMENT_LINE` `SL`) join `SHIPMENT` `S`) where ((`PT`.`DOCUMENT_ID` = `SL`.`SHPREF`) and (`SL`.`SHIPMENT_ID` = `S`.`SHIPMENT_ID`)) group by `S`.`SO_ID`,`SL`.`SO_LINENO`,`PT`.`PART_ID`,`PT`.`TRACE_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SOREF`
--

/*!50001 DROP TABLE IF EXISTS `SOREF`*/;
/*!50001 DROP VIEW IF EXISTS `SOREF`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `SOREF` AS select concat(`SO`.`ID`,'^',`LN`.`LINE_NO`) AS `SOREF_VALUE`,concat(`SO`.`ID`,'.',`LN`.`LINE_NO`) AS `SOREF_TEXT`,`SO`.`ID` AS `ID`,`LN`.`LINE_NO` AS `LINE_NO`,`LN`.`PART_ID` AS `PART_ID`,`LN`.`QTY` AS `QTY`,`LN`.`WANT_DATE` AS `WANT_DATE`,`SO`.`CUST_ID` AS `CUST_ID`,`LN`.`CUST_PART_ID` AS `CUST_PART_ID`,`LN`.`UNIT_ESTIMATOR_COST` AS `UNIT_ESTIMATOR_COST`,`LN`.`WOREF` AS `WOREF` from (`SALES_ORDER_LINE` `LN` left join `SALES_ORDER` `SO` on((`LN`.`SALES_ORDER_ID` = `SO`.`ID`))) where ((`LN`.`SALES_ORDER_ID` is not null) and (`SO`.`ID` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `XXX_CPAR_WO`
--

/*!50001 DROP TABLE IF EXISTS `XXX_CPAR_WO`*/;
/*!50001 DROP VIEW IF EXISTS `XXX_CPAR_WO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `XXX_CPAR_WO` AS select 'CPAR' AS `TYPE`,year(`QC_CPAR`.`CREATE_DATE`) AS `YEARNO`,month(`QC_CPAR`.`CREATE_DATE`) AS `MTHNO`,date_format(`QC_CPAR`.`CREATE_DATE`,'%b') AS `MTH`,count(0) AS `CNT`,0 AS `WO_CNT` from `QC_CPAR` group by year(`QC_CPAR`.`CREATE_DATE`),month(`QC_CPAR`.`CREATE_DATE`),date_format(`QC_CPAR`.`CREATE_DATE`,'%b') union select 'WO' AS `WO`,year(`WORK_ORDER`.`CLOSE_DATE`) AS `YEAR(CLOSE_DATE)`,month(`WORK_ORDER`.`CLOSE_DATE`) AS `MONTH(CLOSE_DATE)`,date_format(`WORK_ORDER`.`CLOSE_DATE`,'%b') AS `MTH`,0 AS `0`,count(0) AS `WO_CNT` from `WORK_ORDER` where ((`WORK_ORDER`.`SUB_ID` = 0) and (`WORK_ORDER`.`WO_CLASS` <> 'TEMPLATE') and (`WORK_ORDER`.`STATUS` = 'C') and (`WORK_ORDER`.`CLOSE_DATE` is not null)) group by year(`WORK_ORDER`.`CLOSE_DATE`),month(`WORK_ORDER`.`CLOSE_DATE`),date_format(`WORK_ORDER`.`CLOSE_DATE`,'%b') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `XXX_JOBSCHED_1`
--

/*!50001 DROP TABLE IF EXISTS `XXX_JOBSCHED_1`*/;
/*!50001 DROP VIEW IF EXISTS `XXX_JOBSCHED_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `XXX_JOBSCHED_1` AS select `d1`.`ROWID` AS `rowid`,`d1`.`WOREF` AS `WOREF`,`d1`.`BASE_ID` AS `BASE_ID`,`d1`.`SUB_ID` AS `SUB_ID`,`d1`.`STATUS` AS `STATUS`,`d1`.`PART_ID` AS `PART_ID`,`d1`.`CUSTOMER_ID` AS `CUSTOMER_ID`,`d1`.`SALES_ORDER_ID` AS `SALES_ORDER_ID`,`d1`.`SALES_ORDER_LINE_NO` AS `SALES_ORDER_LINE_NO`,`d1`.`DESIRED_WANT_DATE` AS `DESIRED_WANT_DATE`,min(`d2`.`SEQUENCE_NO`) AS `MIN_SEQ`,max(`d2`.`SEQUENCE_NO`) AS `MAX_SEQ` from (`WORK_ORDER` `d1` left join `OPERATION` `d2` on(((`d1`.`BASE_ID` = `d2`.`WORKORDER_BASE_ID`) and (`d1`.`SUB_ID` = `d2`.`WORKORDER_SUB_ID`)))) group by `d1`.`ROWID`,`d1`.`WOREF`,`d1`.`BASE_ID`,`d1`.`SUB_ID`,`d1`.`STATUS`,`d1`.`PART_ID`,`d1`.`CUSTOMER_ID`,`d1`.`SALES_ORDER_ID`,`d1`.`SALES_ORDER_LINE_NO`,`d1`.`DESIRED_WANT_DATE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `XXX_WO_HRS_SUMMMARY`
--

/*!50001 DROP TABLE IF EXISTS `XXX_WO_HRS_SUMMMARY`*/;
/*!50001 DROP VIEW IF EXISTS `XXX_WO_HRS_SUMMMARY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `XXX_WO_HRS_SUMMMARY` AS select `OPERATION`.`WORKORDER_BASE_ID` AS `WORKORDER_BASE_ID`,sum((case when ((`OPERATION`.`ACT_RUN_HRS` = 0) or (`OPERATION`.`COMPLETED_QTY` = 0)) then (case `OPERATION`.`RUN` when 0 then 0 else (case `OPERATION`.`RUN_TYPE` when 'HRS/PC' then (`OPERATION`.`SETUP_HRS` + ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) * `OPERATION`.`RUN`)) when 'PCS/HR' then (`OPERATION`.`SETUP_HRS` + ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) / `OPERATION`.`RUN`)) when 'MIN/PC' then (`OPERATION`.`SETUP_HRS` + ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) * (`OPERATION`.`RUN` / 60))) when 'PCS/MIN' then (`OPERATION`.`SETUP_HRS` + ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) / (`OPERATION`.`RUN` * 60))) when 'HRS/JOB' then (`OPERATION`.`SETUP_HRS` + `OPERATION`.`RUN`) end) end) else (case `OPERATION`.`RUN` when 0 then 0 else (case `OPERATION`.`RUN_TYPE` when 'HRS/PC' then ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) * `OPERATION`.`RUN`) when 'PCS/HR' then ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) / `OPERATION`.`RUN`) when 'MIN/PC' then ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) * (`OPERATION`.`RUN` / 60)) when 'PCS/MIN' then ((`OPERATION`.`CALC_END_QTY` - `OPERATION`.`COMPLETED_QTY`) / (`OPERATION`.`RUN` * 60)) when 'HRS/JOB' then `OPERATION`.`RUN` end) end) end)) AS `BAL_HRS` from `OPERATION` where ((`OPERATION`.`STATUS` = 'R') and (`OPERATION`.`SEQUENCE_NO` <> 0)) group by `OPERATION`.`WORKORDER_BASE_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-23 13:13:23
