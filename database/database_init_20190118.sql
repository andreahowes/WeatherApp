-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: OAUTH20190109
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTHORITY`
--

DROP TABLE IF EXISTS `AUTHORITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AUTHORITY` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AUTHORITY_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_ACCESS_TOKEN`
--

DROP TABLE IF EXISTS `OAUTH_ACCESS_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_ACCESS_TOKEN` (
  `TOKEN_ID` varchar(255) DEFAULT NULL,
  `TOKEN` blob,
  `AUTHENTICATION_ID` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTHENTICATION` blob,
  `REFRESH_TOKEN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AUTHENTICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_APPROVALS`
--

DROP TABLE IF EXISTS `OAUTH_APPROVALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_APPROVALS` (
  `USERID` varchar(255) DEFAULT NULL,
  `CLIENTID` varchar(255) DEFAULT NULL,
  `SCOPE` varchar(255) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXPIRESAT` timestamp NULL DEFAULT NULL,
  `LASTMODIFIEDAT` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_CLIENT_DETAILS`
--

DROP TABLE IF EXISTS `OAUTH_CLIENT_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_CLIENT_DETAILS` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `RESOURCE_IDS` varchar(255) DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) DEFAULT NULL,
  `SCOPE` varchar(255) DEFAULT NULL,
  `AUTHORIZED_GRANT_TYPES` varchar(255) DEFAULT NULL,
  `WEB_SERVER_REDIRECT_URI` varchar(255) DEFAULT NULL,
  `AUTHORITIES` varchar(255) DEFAULT NULL,
  `ACCESS_TOKEN_VALIDITY` int(11) DEFAULT NULL,
  `REFRESH_TOKEN_VALIDITY` int(11) DEFAULT NULL,
  `ADDITIONAL_INFORMATION` varchar(4096) DEFAULT NULL,
  `AUTOAPPROVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_CLIENT_TOKEN`
--

DROP TABLE IF EXISTS `OAUTH_CLIENT_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_CLIENT_TOKEN` (
  `TOKEN_ID` varchar(255) DEFAULT NULL,
  `TOKEN` smallint(6) DEFAULT NULL,
  `AUTHENTICATION_ID` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AUTHENTICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_CODE`
--

DROP TABLE IF EXISTS `OAUTH_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_CODE` (
  `CODE` varchar(255) DEFAULT NULL,
  `AUTHENTICATION` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAUTH_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `OAUTH_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OAUTH_REFRESH_TOKEN` (
  `TOKEN_ID` varchar(255) DEFAULT NULL,
  `TOKEN` blob,
  `AUTHENTICATION` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USER_`
--

DROP TABLE IF EXISTS `USER_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `USER_` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNT_EXPIRED` tinyint(1) DEFAULT NULL,
  `ACCOUNT_LOCKED` tinyint(1) DEFAULT NULL,
  `CREDENTIALS_EXPIRED` tinyint(1) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_USER_NAME` (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USERS_AUTHORITIES`
--

DROP TABLE IF EXISTS `USERS_AUTHORITIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `USERS_AUTHORITIES` (
  `USER_ID` bigint(20) NOT NULL,
  `AUTHORITY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`AUTHORITY_ID`),
  KEY `USERS_AUTHORITIES_AUTHORITY` (`AUTHORITY_ID`),
  CONSTRAINT `USERS_AUTHORITIES_AUTHORITY` FOREIGN KEY (`AUTHORITY_ID`) REFERENCES `authority` (`id`),
  CONSTRAINT `USERS_AUTHORITIES_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
