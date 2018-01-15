CREATE DATABASE  IF NOT EXISTS `ssh_maven` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ssh_maven`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ssh_maven
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
-- Table structure for table `cst_customer`
--

DROP TABLE IF EXISTS `cst_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cst_customer` (
  `cust_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(32) NOT NULL COMMENT '客户名称(公司名称)',
  `cust_user_id` bigint(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` bigint(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(32) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(32) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`),
  KEY `FK_cst_customer_source` (`cust_source`),
  KEY `FK_cst_customer_industry` (`cust_industry`),
  KEY `FK_cst_customer_level` (`cust_level`),
  KEY `FK_cst_customer_user_id` (`cust_user_id`),
  KEY `FK_cst_customer_create_id` (`cust_create_id`),
  CONSTRAINT `FK_cst_customer_create_id` FOREIGN KEY (`cust_create_id`) REFERENCES `sys_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cst_customer_industry` FOREIGN KEY (`cust_industry`) REFERENCES `base_dict` (`dict_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cst_customer_level` FOREIGN KEY (`cust_level`) REFERENCES `base_dict` (`dict_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cst_customer_source` FOREIGN KEY (`cust_source`) REFERENCES `base_dict` (`dict_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cst_customer_user_id` FOREIGN KEY (`cust_user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cst_customer`
--

LOCK TABLES `cst_customer` WRITE;
/*!40000 ALTER TABLE `cst_customer` DISABLE KEYS */;
INSERT INTO `cst_customer` VALUES (1,'北京传智播客',NULL,NULL,'7',NULL,NULL,NULL,NULL,'1333333',NULL),(6,'北京黑马',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'郑州传智',NULL,NULL,'7','1','23','','','',NULL),(10,'西安黑马',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'哈尔宾黑马',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'长沙黑马',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'昆明黑马',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'杭州黑马s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'上海传智播客',NULL,NULL,'6','2','22','黎活明','','',NULL),(23,'山东黑马程序员',NULL,NULL,'7','2','22','王总','','',NULL),(24,'重庆传智播客',NULL,NULL,'7','1','23','张总','43332222','144443333',NULL),(28,'test',NULL,NULL,'6','1','22','','','','2016-03-08 17:22:23'),(29,'重庆黑马',NULL,NULL,'6','2','22','张总','','','2016-03-10 15:22:48');
/*!40000 ALTER TABLE `cst_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-15 14:57:25
