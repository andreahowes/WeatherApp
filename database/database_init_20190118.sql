-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: WeatherAp20190128
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
-- Dumping data for table `AUTHORITY`
--

LOCK TABLES `AUTHORITY` WRITE;
/*!40000 ALTER TABLE `AUTHORITY` DISABLE KEYS */;
INSERT INTO `AUTHORITY` VALUES (3,'COMPANY_UPDATE'),(5,'DEPARTMENT_CREATE'),(8,'DEPARTMENT_DELETE'),(6,'DEPARTMENT_READ'),(7,'DEPARTMENT_UPDATE'),(9,'ROLE_WEATHER_READER'),(1,'WEATHER_CREATE'),(4,'WEATHER_DELETE'),(2,'WEATHER_READ');
/*!40000 ALTER TABLE `AUTHORITY` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_ACCESS_TOKEN`
--

LOCK TABLES `OAUTH_ACCESS_TOKEN` WRITE;
/*!40000 ALTER TABLE `OAUTH_ACCESS_TOKEN` DISABLE KEYS */;
INSERT INTO `OAUTH_ACCESS_TOKEN` VALUES ('ed11436838b20ae4b244cd00a5439c59',_binary '¬\í\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken²ž6$ú\Î\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6…Z\Ü\ç\Ð\0\0xpsr\0java.util.DatehjKYt\0\0xpw\0\0hš†%xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ßGc\ÐÉ·\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\á\ncT\Ô^\0L\0valueq\0~\0xpt\0$ec935df4-2bab-461a-b74d-6c0725be3110sq\0~\0	w\0\0i/°jxsr\0%java.util.Collections$UnmodifiableSet€’Ñ›€U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0€\Ë^÷\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\Øl\×Z•\Ý*\0\0xr\0java.util.HashSetºD…•–¸·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$ae5aa1bb-561e-43bb-b26f-0597b01bc633','d557e74143287f87984f133c7409755d','admin','spring-security-oauth2-read-write-client',_binary '¬\í\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication½@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableListü%1µ\ìŽ\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€\Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListx\Ò™\Ça\0I\0sizexp\0\0\0	w\0\0\0	sr\0=com.andreah.oauth2tutorial20190109.service.security.Authority‰=Ô¡pIp\\\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;‹\äÌ#\ß\0J\0valuexr\0java.lang.Number†¬•”\à‹\0\0xp\0\0\0\0\0\0\0t\0WEATHER_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0WEATHER_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0WEATHER_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0	t\0ROLE_WEATHER_READERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\00xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qi½\0L\0clientIdq\0~\0L\0requestParametersq\0~\0.L\0scopeq\0~\00xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapñ¥¨þtõB\0L\0mq\0~\0.xpsr\0java.util.HashMap\ÚÁ\Ã`\Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet€’Ñ›€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\Øl\×Z•\Ý*\0\0xr\0java.util.HashSetºD…•–¸·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0Aw\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0þ\0L\0roleq\0~\0xpt\0USERxsq\0~\06?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0Aw\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0Aw\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0þ\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xq\0~\0Psr\0java.util.LinkedHashMap4ÀN\\lÀû\0Z\0accessOrderxq\0~\06?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\08q\0~\09q\0~\0:q\0~\0;q\0~\0<q\0~\0=x\0psr\08com.andreah.oauth2tutorial20190109.service.security.User%6êŒ”i\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ \0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,ø\rX\ÕRò\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Wxp\0ÿÿÿÿ\0\0\0q\0~\0q\0~\0Tt\0Dcom.andreah.oauth2tutorial20190109.service.security.User.authoritiespsq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xsq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xq\0~\0t\0<$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035hat\0admin','c5c14fd7de4ecb697579dd2ad1626482');
/*!40000 ALTER TABLE `OAUTH_ACCESS_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_APPROVALS`
--

LOCK TABLES `OAUTH_APPROVALS` WRITE;
/*!40000 ALTER TABLE `OAUTH_APPROVALS` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAUTH_APPROVALS` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_CLIENT_DETAILS`
--

LOCK TABLES `OAUTH_CLIENT_DETAILS` WRITE;
/*!40000 ALTER TABLE `OAUTH_CLIENT_DETAILS` DISABLE KEYS */;
INSERT INTO `OAUTH_CLIENT_DETAILS` VALUES ('spring-security-oauth2-read-client','resource-server-rest-api','$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km','read','password,authorization_code,refresh_token,implicit',NULL,'USER',10800,2592000,NULL,NULL),('spring-security-oauth2-read-write-client','resource-server-rest-api','$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W','read,write','password,authorization_code,refresh_token,implicit',NULL,'USER',10800,2592000,NULL,NULL);
/*!40000 ALTER TABLE `OAUTH_CLIENT_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_CLIENT_TOKEN`
--

LOCK TABLES `OAUTH_CLIENT_TOKEN` WRITE;
/*!40000 ALTER TABLE `OAUTH_CLIENT_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAUTH_CLIENT_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_CODE`
--

LOCK TABLES `OAUTH_CODE` WRITE;
/*!40000 ALTER TABLE `OAUTH_CODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAUTH_CODE` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `OAUTH_REFRESH_TOKEN`
--

LOCK TABLES `OAUTH_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `OAUTH_REFRESH_TOKEN` DISABLE KEYS */;
INSERT INTO `OAUTH_REFRESH_TOKEN` VALUES ('c5c14fd7de4ecb697579dd2ad1626482',_binary '¬\í\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ßGc\ÐÉ·\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\á\ncT\Ô^\0L\0valuet\0Ljava/lang/String;xpt\0$ec935df4-2bab-461a-b74d-6c0725be3110sr\0java.util.DatehjKYt\0\0xpw\0\0i/°jx',_binary '¬\í\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication½@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableListü%1µ\ìŽ\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€\Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListx\Ò™\Ça\0I\0sizexp\0\0\0	w\0\0\0	sr\0=com.andreah.oauth2tutorial20190109.service.security.Authority‰=Ô¡pIp\\\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;‹\äÌ#\ß\0J\0valuexr\0java.lang.Number†¬•”\à‹\0\0xp\0\0\0\0\0\0\0t\0WEATHER_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0WEATHER_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0WEATHER_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0	t\0ROLE_COMPANY_READERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\00xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qi½\0L\0clientIdq\0~\0L\0requestParametersq\0~\0.L\0scopeq\0~\00xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapñ¥¨þtõB\0L\0mq\0~\0.xpsr\0java.util.HashMap\ÚÁ\Ã`\Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet€’Ñ›€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\Øl\×Z•\Ý*\0\0xr\0java.util.HashSetºD…•–¸·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0Aw\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0þ\0L\0roleq\0~\0xpt\0USERxsq\0~\06?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0Aw\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0Aw\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0þ\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xq\0~\0Psr\0java.util.LinkedHashMap4ÀN\\lÀû\0Z\0accessOrderxq\0~\06?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\08q\0~\09q\0~\0:q\0~\0;q\0~\0<q\0~\0=x\0psr\08com.andreah.oauth2tutorial20190109.service.security.User%6êŒ”i\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ \0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,ø\rX\ÕRò\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Wxp\0ÿÿÿÿ\0\0\0q\0~\0q\0~\0Tt\0Dcom.andreah.oauth2tutorial20190109.service.security.User.authoritiespsq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xsq\0~\0\0\0\0	w\0\0\0	q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'q\0~\0*xq\0~\0t\0<$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035hat\0admin');
/*!40000 ALTER TABLE `OAUTH_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_`
--

DROP TABLE IF EXISTS `USER_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `USER_` (
  `ID` bigint(20) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `ACCOUNT_EXPIRED` tinyint(1) DEFAULT NULL,
  `ACCOUNT_LOCKED` tinyint(1) DEFAULT NULL,
  `CREDENTIALS_EXPIRED` tinyint(1) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_USER_NAME` (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_`
--

LOCK TABLES `USER_` WRITE;
/*!40000 ALTER TABLE `USER_` DISABLE KEYS */;
INSERT INTO `USER_` VALUES (1,'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha','admin',0,0,0,1),(2,'$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe','reader',0,0,0,1),(3,'$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG','modifier',0,0,0,1),(4,'$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea','reader2',0,0,0,1);
/*!40000 ALTER TABLE `USER_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS_AUTHORITIES`
--

DROP TABLE IF EXISTS `USERS_AUTHORITIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `USERS_AUTHORITIES` (
  `USER_ID` bigint(20) NOT NULL,
  `AUTHORITY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`AUTHORITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_AUTHORITIES`
--

LOCK TABLES `USERS_AUTHORITIES` WRITE;
/*!40000 ALTER TABLE `USERS_AUTHORITIES` DISABLE KEYS */;
INSERT INTO `USERS_AUTHORITIES` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(2,2),(2,6),(3,3),(3,7),(4,9);
/*!40000 ALTER TABLE `USERS_AUTHORITIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEATHER`
--

DROP TABLE IF EXISTS `WEATHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `WEATHER` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(45) NOT NULL,
  `RAINING` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CITY_UNIQUE` (`CITY`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEATHER`
--

LOCK TABLES `WEATHER` WRITE;
/*!40000 ALTER TABLE `WEATHER` DISABLE KEYS */;
INSERT INTO `WEATHER` VALUES (1,'Union',0),(2,'Paris',1),(3,'Florence',1);
/*!40000 ALTER TABLE `WEATHER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

