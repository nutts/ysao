-- MySQL dump 10.13  Distrib 5.6.16, for Linux (x86_64)
--
-- Host: lucasinternal.mysql.rds.aliyuncs.com    Database: ysao
-- ------------------------------------------------------
-- Server version	5.5.18.1-Alibaba-rds-201406-log

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
-- Table structure for table `aunt`
--

DROP TABLE IF EXISTS `aunt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aunt` (
  `idaunt` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `birth_y` int(11) DEFAULT NULL,
  `jiguan` int(11) DEFAULT NULL,
  `cprice` int(20) DEFAULT NULL,
  `show_pic` varchar(45) DEFAULT NULL,
  `profile_pic` varchar(45) DEFAULT NULL,
  `pinfen` varchar(45) DEFAULT '-1',
  `reviews` int(11) DEFAULT '0' COMMENT 'the reviews by customers',
  `experience` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0 means is valid aunt',
  `contact1` varchar(45) DEFAULT NULL,
  `contact2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaunt`)
) ENGINE=InnoDB AUTO_INCREMENT=3046 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aunt`
--

LOCK TABLES `aunt` WRITE;
/*!40000 ALTER TABLE `aunt` DISABLE KEYS */;
INSERT INTO `aunt` VALUES (3041,'何绣芳',1979,2,15000,'','','4',2,50,'2014-05-26 05:35:14','2014-06-06 04:25:38',1,'13810198655',''),(3042,'张玉凡',1970,4,7000,'','','-1',0,30,'2014-07-06 12:26:34',NULL,0,'13717920243',''),(3043,'王姐',1971,4,5000,'','','-1',0,28,'2014-07-06 12:33:20',NULL,0,'18211182509',''),(3044,'王春鲜',1981,7,9000,'','','-1',0,3,'2014-07-06 12:33:20',NULL,0,'13253708732',''),(3045,'王桂英',1959,1,10000,'20003,20004','3045','-1',0,100,'2014-07-21 08:35:54',NULL,0,'15010383026','');
/*!40000 ALTER TABLE `aunt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aunt_extend`
--

DROP TABLE IF EXISTS `aunt_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aunt_extend` (
  `idaunt` int(11) NOT NULL,
  `self_intro` text,
  `skills` varchar(45) DEFAULT NULL,
  `prop1` varchar(45) DEFAULT NULL,
  `prop2` varchar(45) DEFAULT NULL,
  `prop3` varchar(45) DEFAULT NULL,
  `prop4` varchar(45) DEFAULT NULL,
  `prop5` varchar(45) DEFAULT NULL,
  `prop6` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aunt_extend`
--

LOCK TABLES `aunt_extend` WRITE;
/*!40000 ALTER TABLE `aunt_extend` DISABLE KEYS */;
INSERT INTO `aunt_extend` VALUES (3041,'这个是我的自我描述，我来自重庆，到北京坐月嫂已经有5年了，在这个期间，我做过很多家','1,4, 5','北京','高中','2012年','务农','已验证','已验证'),(3042,'我是河北衡水人，来京前是工厂职工，07年来到北京，10年开始就一直做育儿嫂、月嫂的工作。<p> 这两年一直从事的是育儿嫂的工作，为人实在，对待工作认真负责，口碑好。户主家里放心我带小孩散步，最近的一户已经有2年多了，都对我非常放心，小区里面别的妈妈们还以为我是小孩的亲戚。','0,2,3,4,6,7,8,9','北京','初中','2007','工厂职工','无','已验证'),(3043,'我是河北邯郸人，原来是国有煤矿的职工，来北京已经有3年了(2014), 在一家正规的月嫂工作接受培训，并取得了国家母婴护理资格证书。<p> ','0,1,2,3,4,5,6,7,8,9,10','北京','高中','2010','工厂职工','已验证','已验证'),(3044,'我是河南人，初中学历，别看我年纪轻，但是已经有4年的月嫂经验了，我的老师是北医三院的王姐，她在网络上比较有名，特别擅长乳房护理，我是她一手带出来的，平常的业务也主要是熟客介绍的。','0,1,2,3,4,5,6,7,8,9','北京','初中','2010','月嫂','已验证','已验证'),(3045,'我来自湖南怀化，从事月嫂已经有12年了(2014), 2007年来的北京，之前一直是在深圳做月嫂。雇主评价我都是非常有爱心，我也特别喜欢小孩，比较喜欢这个工作，原来在公司里面有一个外号：老顽童。\r\n<p>\r\n我的精力很好，不久前有一家小孩出生就必须做手术，我就呆在医院呆了3天3夜，基本上没有怎么合眼。我还带过早产儿，有一个小孩只有1斤3两六，还有一个2斤六两，都是比较虚弱的小孩，最后雇主对我的服务都是非常满意。\r\n<p>','0,1,2,3,4,5,6,7,8,9,10,11,12','北京','高中','2007','月嫂','已验证','已验证');
/*!40000 ALTER TABLE `aunt_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `idaunt` varchar(45) DEFAULT NULL,
  `auntname` varchar(45) DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` varchar(45) DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  `bookprice` varchar(45) DEFAULT NULL,
  `prepaid` int(11) DEFAULT '0',
  `status` smallint(6) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(300) DEFAULT NULL,
  `paid_by_aunt` int(11) DEFAULT '0',
  `username` varchar(45) DEFAULT NULL,
  `userphone` varchar(45) DEFAULT NULL,
  `useraddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (33,'55','3041','何绣芳','2014-07-24','2014-08-19',15000,'1500',0,6,'2014-07-18 07:06:41',NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_pictures`
--

DROP TABLE IF EXISTS `person_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_pictures` (
  `idperson_pictures` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  PRIMARY KEY (`idperson_pictures`)
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_pictures`
--

LOCK TABLES `person_pictures` WRITE;
/*!40000 ALTER TABLE `person_pictures` DISABLE KEYS */;
INSERT INTO `person_pictures` VALUES (2,2059755,0),(3,2059755,0),(100000,2059755,0);
/*!40000 ALTER TABLE `person_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auntid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `question` text,
  `type` int(11) DEFAULT NULL COMMENT '0 means user send message to aunt',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` int(11) DEFAULT '0',
  `service_start` date DEFAULT NULL,
  `auntname` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sendStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,2937,18,'dfadsfasdfasdfsadfadsfads',0,'2014-05-06 04:44:09',0,NULL,NULL,3400,NULL),(2,2937,18,'this is my feedback',1,'2014-05-06 04:50:29',1,'2014-05-01','阿姨1名字',3400,NULL),(3,2937,18,'this is my second ',1,'2014-05-06 13:20:09',1,'2014-05-01','阿姨2名字',3400,NULL),(4,2937,18,'this is my reply',1,'2014-05-06 14:40:27',1,NULL,NULL,3400,NULL),(5,2950,18,'你号',0,'2014-05-18 07:00:53',0,NULL,NULL,NULL,NULL),(6,2950,18,'你好，这个时间段可以不可以',0,'2014-05-18 07:07:22',0,NULL,NULL,NULL,NULL),(7,3041,53,'你好，请问你的电话号码是多少？',0,'2014-06-10 09:11:55',0,'2014-05-03',NULL,5400,NULL),(8,3041,54,'你好，请问这个时间段可以吗？',0,'2014-06-12 08:43:37',0,'2014-08-01',NULL,5400,NULL),(9,3041,53,'你好，请问什么时候面试方便',0,'2014-06-12 08:46:22',0,'2014-08-02',NULL,5400,NULL),(10,3041,53,'?????????????',0,'2014-06-12 08:47:31',0,'2014-08-02',NULL,5400,NULL),(11,3041,53,'你好，请问什么时候面试方便',0,'2014-06-12 08:48:29',0,'2014-08-02',NULL,5400,NULL),(12,3041,54,'dsfasdfadsfadsfa',0,'2014-06-12 08:49:58',0,'2014-08-02',NULL,5400,NULL),(13,3041,54,'dfadsfasfasfasd',0,'2014-06-12 08:50:59',0,'2014-06-14',NULL,5400,NULL),(14,3041,54,'dfadsfasfasfasd',0,'2014-06-12 08:51:52',0,'2014-06-14',NULL,5400,NULL),(15,3041,54,'fsadfasdfasdfa',0,'2014-06-12 08:55:58',0,'2014-06-14',NULL,5400,NULL),(16,3041,54,'dfasdfasdfasfads',0,'2014-06-12 08:58:29',0,'2014-06-14',NULL,5400,NULL),(17,3041,54,'dfasdfasdfasdfasdfasd',0,'2014-06-12 08:59:37',0,'2014-06-14',NULL,5400,NULL),(18,3041,54,'fadsfasdfasdfasdfasdfasdf',0,'2014-06-12 09:00:15',0,'2014-06-14',NULL,5400,NULL),(19,3041,53,'你好吗？',0,'2014-06-14 21:45:27',0,'2014-09-01',NULL,5400,NULL),(20,3041,54,'请问什么时候有时间面试！！',0,'2014-07-10 07:08:39',0,'2014-07-25',NULL,15000,NULL),(21,3041,54,'测试2',0,'2014-07-10 07:12:11',0,'2014-07-17',NULL,15000,NULL),(22,3041,54,'测试2222',0,'2014-07-10 07:19:33',0,'2014-07-24',NULL,15000,NULL),(23,3041,58,'nihao ',0,'2014-07-19 08:36:22',0,'2014-07-31',NULL,15000,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remember`
--

DROP TABLE IF EXISTS `remember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `uuid` varchar(45) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remember`
--

LOCK TABLES `remember` WRITE;
/*!40000 ALTER TABLE `remember` DISABLE KEYS */;
/*!40000 ALTER TABLE `remember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auntid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `comments` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rate1` float DEFAULT NULL,
  `rate2` float DEFAULT NULL,
  `rate3` float DEFAULT NULL,
  `rate4` float DEFAULT NULL,
  `rate5` float DEFAULT NULL,
  `website_feedback` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,2937,8,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,4,4,NULL),(2,2938,5,NULL,'justsoso','2014-04-28 16:00:00',5,5,5,1,2,NULL),(3,2937,8,NULL,'wonderful','2014-04-28 16:00:00',5,5,4,4,4,NULL),(4,2940,8,NULL,'verify good','2014-04-28 16:00:00',2,1,1,3,4,NULL),(5,2941,8,NULL,'great','2014-04-28 16:00:00',4,2,4,4,4,NULL),(6,2942,4,NULL,'wonderful','2014-04-28 16:00:00',5,5,2,3,4,NULL),(7,2943,3,NULL,'justsoso','2014-04-28 16:00:00',1,1,4,4,4,NULL),(8,2944,3,NULL,'great','2014-04-28 16:00:00',5,3,4,4,1,NULL),(9,2945,9,NULL,'justsoso','2014-04-28 16:00:00',4,4,1,3,3,NULL),(10,2946,4,NULL,'wonderful','2014-04-28 16:00:00',5,5,5,2,4,NULL),(11,2947,10,NULL,'justsoso','2014-04-28 16:00:00',5,1,4,4,4,NULL),(12,2948,10,NULL,'great','2014-04-28 16:00:00',5,2,1,2,1,NULL),(13,2949,8,NULL,'justsoso','2014-04-28 16:00:00',5,1,4,4,4,NULL),(14,2950,4,NULL,'justsoso','2014-04-28 16:00:00',5,5,5,5,1,NULL),(15,2951,10,NULL,'wonderful','2014-04-28 16:00:00',4,5,5,3,1,NULL),(16,2952,8,NULL,'great','2014-04-28 16:00:00',3,5,5,1,4,NULL),(17,2953,10,NULL,'great','2014-04-28 16:00:00',5,5,5,4,5,NULL),(18,2954,9,NULL,'justsoso','2014-04-28 16:00:00',5,5,5,3,5,NULL),(19,2955,2,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,4,3,NULL),(20,2956,7,NULL,'justsoso','2014-04-28 16:00:00',5,3,4,4,1,NULL),(21,2957,6,NULL,'wonderful','2014-04-28 16:00:00',4,5,4,4,4,NULL),(22,2958,1,NULL,'verify good','2014-04-28 16:00:00',3,5,3,1,4,NULL),(23,2959,4,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,4,1,NULL),(24,2960,7,NULL,'verify good','2014-04-28 16:00:00',5,2,4,1,1,NULL),(25,2961,6,NULL,'wonderful','2014-04-28 16:00:00',5,2,4,4,4,NULL),(26,2962,4,NULL,'great','2014-04-28 16:00:00',5,1,4,4,4,NULL),(27,2963,9,NULL,'verify good','2014-04-28 16:00:00',2,1,1,4,2,NULL),(28,2964,3,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,3,5,NULL),(29,2965,3,NULL,'verify good','2014-04-28 16:00:00',5,5,4,5,5,NULL),(30,2966,7,NULL,'justsoso','2014-04-28 16:00:00',3,5,5,2,1,NULL),(31,2967,4,NULL,'verify good','2014-04-28 16:00:00',5,5,2,1,3,NULL),(32,2968,1,NULL,'wonderful','2014-04-28 16:00:00',5,1,4,4,4,NULL),(33,2969,3,NULL,'wonderful','2014-04-28 16:00:00',2,5,2,5,4,NULL),(34,2970,4,NULL,'great','2014-04-28 16:00:00',5,5,2,3,4,NULL),(35,2971,4,NULL,'justsoso','2014-04-28 16:00:00',3,5,5,2,4,NULL),(36,2972,9,NULL,'wonderful','2014-04-28 16:00:00',5,2,4,5,2,NULL),(37,2973,2,NULL,'justsoso','2014-04-28 16:00:00',3,5,4,4,4,NULL),(38,2974,4,NULL,'great','2014-04-28 16:00:00',3,5,5,3,4,NULL),(39,2975,3,NULL,'justsoso','2014-04-28 16:00:00',1,5,5,2,4,NULL),(40,2976,9,NULL,'verify good','2014-04-28 16:00:00',5,5,3,2,4,NULL),(41,2977,8,NULL,'verify good','2014-04-28 16:00:00',5,5,4,4,5,NULL),(42,2978,6,NULL,'justsoso','2014-04-28 16:00:00',5,3,4,4,3,NULL),(43,2979,4,NULL,'verify good','2014-04-28 16:00:00',5,5,5,3,3,NULL),(44,2980,2,NULL,'justsoso','2014-04-28 16:00:00',5,5,2,5,4,NULL),(45,2981,7,NULL,'wonderful','2014-04-28 16:00:00',5,4,4,5,4,NULL),(46,2982,9,NULL,'wonderful','2014-04-28 16:00:00',1,5,5,4,4,NULL),(47,2983,10,NULL,'verify good','2014-04-28 16:00:00',5,3,5,3,4,NULL),(48,2984,2,NULL,'wonderful','2014-04-28 16:00:00',5,2,4,4,4,NULL),(49,2985,7,NULL,'great','2014-04-28 16:00:00',3,5,4,4,4,NULL),(50,2986,8,NULL,'great','2014-04-28 16:00:00',5,5,4,4,4,NULL),(51,2987,1,NULL,'wonderful','2014-04-28 16:00:00',5,5,4,4,4,NULL),(52,2988,6,NULL,'verify good','2014-04-28 16:00:00',2,3,4,4,4,NULL),(53,2989,1,NULL,'verify good','2014-04-28 16:00:00',5,2,4,4,3,NULL),(54,2990,7,NULL,'wonderful','2014-04-28 16:00:00',1,3,5,4,2,NULL),(55,2991,9,NULL,'verify good','2014-04-28 16:00:00',2,1,5,4,4,NULL),(56,2992,1,NULL,'justsoso','2014-04-28 16:00:00',5,5,5,1,4,NULL),(57,2993,3,NULL,'justsoso','2014-04-28 16:00:00',5,1,4,4,1,NULL),(58,2994,4,NULL,'great','2014-04-28 16:00:00',5,5,2,2,4,NULL),(59,2995,2,NULL,'verify good','2014-04-28 16:00:00',2,2,2,4,4,NULL),(60,2996,7,NULL,'great','2014-04-28 16:00:00',4,5,4,4,4,NULL),(61,2997,7,NULL,'great','2014-04-28 16:00:00',1,5,5,1,4,NULL),(62,2998,10,NULL,'verify good','2014-04-28 16:00:00',5,5,2,2,4,NULL),(63,2999,7,NULL,'wonderful','2014-04-28 16:00:00',5,2,5,5,4,NULL),(64,3000,3,NULL,'great','2014-04-28 16:00:00',5,5,4,4,4,NULL),(65,3001,9,NULL,'wonderful','2014-04-28 16:00:00',5,1,5,2,4,NULL),(66,3002,1,NULL,'great','2014-04-28 16:00:00',2,3,4,4,2,NULL),(67,3003,2,NULL,'verify good','2014-04-28 16:00:00',5,5,5,3,4,NULL),(68,3004,7,NULL,'verify good','2014-04-28 16:00:00',5,5,4,4,4,NULL),(69,3005,6,NULL,'wonderful','2014-04-28 16:00:00',5,5,5,3,4,NULL),(70,3006,4,NULL,'great','2014-04-28 16:00:00',1,4,1,4,4,NULL),(71,3007,5,NULL,'great','2014-04-28 16:00:00',1,5,5,1,4,NULL),(72,3008,9,NULL,'great','2014-04-28 16:00:00',5,5,3,5,4,NULL),(73,3009,1,NULL,'wonderful','2014-04-28 16:00:00',5,5,3,1,4,NULL),(74,3010,10,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,4,5,NULL),(75,3011,3,NULL,'great','2014-04-28 16:00:00',3,5,5,3,5,NULL),(76,3012,2,NULL,'verify good','2014-04-28 16:00:00',5,5,5,4,4,NULL),(77,3013,9,NULL,'verify good','2014-04-28 16:00:00',3,5,4,4,1,NULL),(78,3014,8,NULL,'great','2014-04-28 16:00:00',5,5,5,3,1,NULL),(79,3015,5,NULL,'verify good','2014-04-28 16:00:00',5,5,5,1,5,NULL),(80,3016,10,NULL,'verify good','2014-04-28 16:00:00',5,5,5,4,3,NULL),(81,3017,4,NULL,'great','2014-04-28 16:00:00',5,2,5,5,1,NULL),(82,3018,5,NULL,'justsoso','2014-04-28 16:00:00',5,3,2,4,4,NULL),(83,3019,8,NULL,'wonderful','2014-04-28 16:00:00',5,2,5,1,5,NULL),(84,3020,6,NULL,'wonderful','2014-04-28 16:00:00',1,2,4,4,4,NULL),(85,3021,6,NULL,'verify good','2014-04-28 16:00:00',5,5,5,3,2,NULL),(86,3022,10,NULL,'verify good','2014-04-28 16:00:00',4,5,4,3,1,NULL),(87,3023,4,NULL,'great','2014-04-28 16:00:00',5,1,5,2,4,NULL),(88,3024,8,NULL,'justsoso','2014-04-28 16:00:00',1,5,3,3,4,NULL),(89,3025,1,NULL,'verify good','2014-04-28 16:00:00',5,5,4,4,4,NULL),(90,3026,5,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,4,4,NULL),(91,3027,8,NULL,'wonderful','2014-04-28 16:00:00',5,5,4,4,4,NULL),(92,3028,5,NULL,'justsoso','2014-04-28 16:00:00',3,5,4,4,3,NULL),(93,3029,10,NULL,'great','2014-04-28 16:00:00',5,2,4,4,4,NULL),(94,3030,3,NULL,'wonderful','2014-04-28 16:00:00',5,1,5,1,5,NULL),(95,3031,5,NULL,'great','2014-04-28 16:00:00',5,4,4,4,4,NULL),(96,3032,9,NULL,'verify good','2014-04-28 16:00:00',5,5,5,5,4,NULL),(97,3033,4,NULL,'wonderful','2014-04-28 16:00:00',3,5,1,3,1,NULL),(98,3034,10,NULL,'wonderful','2014-04-28 16:00:00',1,5,4,4,3,NULL),(99,3035,7,NULL,'justsoso','2014-04-28 16:00:00',5,5,4,5,4,NULL),(100,3036,3,NULL,'justsoso','2014-04-28 16:00:00',5,5,5,1,1,NULL),(101,3013,18,11,'111','2014-05-18 04:29:56',5,5,5,5,5,'2222'),(102,2950,18,17,'æºå¥½','2014-05-18 06:57:46',5,5,5,5,5,'æºå¥½'),(103,2950,18,17,'å¾å¥½','2014-05-18 07:00:24',5,5,5,5,5,'å¾å¥½'),(104,3026,18,18,'å¾æ»¡æ','2014-05-18 07:06:04',5,5,5,5,5,'å¾å¥½'),(107,2950,18,19,'test5','2014-05-20 08:28:29',2,2,2,2,2,'test5'),(108,2950,18,19,'test5','2014-05-20 08:34:55',2,2,2,2,2,'test5'),(109,3041,56,19,'我特别感激我家月嫂，说她的几个特点吧。        第一，我家娃吃不上奶 她特别有耐心 一次一次的帮我哄好了让娃含上 娃吃不了半分钟就松口大哭 她继续哄 不哭了再来 每次喂奶都是这么过来的 而且每次娃基本都不能充分吃完 她经常帮我把奶揉出来 我家娃每次吃得少 夜里经常起来吃3次 我说的夜里是12点到6点这段时间 一吃就哭哭吃吃 吃吃哭哭的将近一小时 她一直陪着我 特别耐心 对我对孩子 没有一点不耐烦 反而安慰我 说宝宝还不太会吃 没学会含乳头 我们帮帮他 等他会了你就轻松了 你有奶也能吃上 不断地鼓励我安慰我 而且她发现了造成含不好乳头这个问题的原因---舌系带短！一周后剪了舌系带一下子就好了，用我的话说就是，这个世界轻松了，娃也开始咕嘟咕嘟的大口喝奶，我也不堵奶了。    <p>      第二，特别会安排自己干活的时间，我原来在孩版别的帖子里提到过，这个世界人就是分成会干活的和不会干活的两种，我家月嫂早上起来娃去我这边吃奶，她就开始先把早饭蒸上，粥和汤都是头天晚上做上的，然后开始擦全家的地，收拾家里，我喂完奶她已经擦完地收拾完了，她把孩子接过去，我开始吃饭，我吃完饭接过孩子，她吃饭，然后刷碗，打扫厨房，陪孩子玩一会儿，看闪卡，被动操，唱歌，背唐诗，然后我又喂奶了，她开始准备午饭（全家的啊），总之就是特别自觉，家里有活儿就随手收拾，比我们家所有人收拾功力都要高出很多，我说她有收拾癖，看不了一点脏乱。充分利用我喂奶的时间干家里各种活儿，完全不闲着，干活远超过月嫂本来的范围，一点不计较，干活不惜力。完全能够安排自己的时间，合理运用，这点我们家任何一个人都不如她会安排干活的时间。        第三，综合素质高，县重点高中毕业，因为家境原因没考大学，我就觉得她如果考大学了应该跟我们这些水木妈妈们是一样的。儿歌唐诗她会很多，唐诗会的是什么“黄四娘家花满蹊，千朵万朵压枝低。”这种水平的，不只是“鹅鹅鹅”那种，儿歌会唱好多，什么“国旗国旗真美丽”，还有“门前大桥下游过一群鸭”，“绵羊妈妈”这种水平的。抚触做的很认真，我买了一张抚触和被动操的光盘，她还主动跟着我一起又学习，我家的育儿书，她闲下来也老翻看，经常有我在喂奶她干完活再看育儿书这种时候，对我说的一些新观念，也很能接受，很注意学习新知识。   揉奶技术也好，稍微有点不通就马上给我揉奶，大半夜的起来揉奶，她眼袋很重，都是熬夜熬的。有很多细节她都很注意，必须我刚生前两天的喂奶姿势特别累，就是学习了书本上的侧躺位，但是不知道侧躺喂是应该把自己跟娃都组合垫起来的，要不腰巨累。她来了给我调整了以后，每次我喂奶她都帮我垫好，塞好，看娃开始顺利吃上了，就马上开始干活。我说怎么刚生前两天觉得喂一会儿就腰难受的不行 就差在这个地方了。   干活中间，娃有点哭，她就问我要不要哄一下，哄完了继续让娃吃，吃饱了拍咯。特别讲卫生，洗手洗的很勤，摸娃之前尤其注意，我们家里人有时候都没有她注意，她发现亲戚来看，没洗手就要抱娃都会帮我挡驾，主动说最好洗个手，孩子抵抗力低什么的，特有眼力见儿。        第四，实在，干活不惜力。从来不会出现家里人还没吃饭，她先吃这种情况，都是等着家里所有人都吃完饭了，确定娃也有人带了，她才吃饭，我们怎么说让她一起吃，她都坚决要最后一个吃饭，吃完只要有人带娃她就马上收拾。反正就是只要家里还有任何一个人再干活她就觉得不会闲着，如果跟家里人同时在干活，她总是在干最累的活。完全不需要人督促，非常自觉。  ','2014-05-31 14:04:35',5,5,5,5,5,'无'),(110,3041,54,24,'test2','2014-06-06 04:25:38',3,3,3,3,3,'test3');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ouser`@`%`*/ /*!50003 trigger ysao.new_comment_added 
after insert on ysao.reviews 

for each row
begin

update ysao.aunt set reviews = ( select count(*) from ysao.reviews where auntid = NEW.auntid) where idaunt = NEW.auntid;

update ysao.aunt set pinfen = (select avg(rate1) from ysao.reviews where auntid = NEW.auntid ) where idaunt = NEW.auntid;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule_201405`
--

DROP TABLE IF EXISTS `schedule_201405`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201405` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201405`
--

LOCK TABLES `schedule_201405` WRITE;
/*!40000 ALTER TABLE `schedule_201405` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_201405` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201406`
--

DROP TABLE IF EXISTS `schedule_201406`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201406` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201406`
--

LOCK TABLES `schedule_201406` WRITE;
/*!40000 ALTER TABLE `schedule_201406` DISABLE KEYS */;
INSERT INTO `schedule_201406` VALUES (140601,3042,'0',NULL),(140601,3043,'0',NULL),(140601,3044,'0',NULL),(140602,3042,'0',NULL),(140602,3043,'0',NULL),(140602,3044,'0',NULL),(140603,3042,'0',NULL),(140603,3043,'0',NULL),(140603,3044,'0',NULL),(140604,3042,'0',NULL),(140604,3043,'0',NULL),(140604,3044,'0',NULL),(140605,3042,'0',NULL),(140605,3043,'0',NULL),(140605,3044,'0',NULL),(140606,3042,'0',NULL),(140606,3043,'0',NULL),(140606,3044,'0',NULL),(140607,3042,'0',NULL),(140607,3043,'0',NULL),(140607,3044,'0',NULL),(140608,3042,'0',NULL),(140608,3043,'0',NULL),(140608,3044,'0',NULL),(140609,3042,'0',NULL),(140609,3043,'0',NULL),(140609,3044,'0',NULL),(140610,3042,'0',NULL),(140610,3043,'0',NULL),(140610,3044,'0',NULL),(140611,3042,'0',NULL),(140611,3043,'0',NULL),(140611,3044,'0',NULL),(140612,3042,'0',NULL),(140612,3043,'0',NULL),(140612,3044,'0',NULL),(140613,3042,'0',NULL),(140613,3043,'0',NULL),(140613,3044,'0',NULL),(140614,3042,'0',NULL),(140614,3043,'0',NULL),(140614,3044,'0',NULL),(140615,3042,'0',NULL),(140615,3043,'0',NULL),(140615,3044,'0',NULL),(140616,3042,'0',NULL),(140616,3043,'0',NULL),(140616,3044,'0',NULL),(140617,3042,'0',NULL),(140617,3043,'0',NULL),(140617,3044,'0',NULL),(140618,3042,'0',NULL),(140618,3043,'0',NULL),(140618,3044,'0',NULL),(140619,3042,'0',NULL),(140619,3043,'0',NULL),(140619,3044,'0',NULL),(140620,3042,'0',NULL),(140620,3043,'0',NULL),(140620,3044,'0',NULL),(140621,3042,'0',NULL),(140621,3043,'0',NULL),(140621,3044,'0',NULL),(140622,3042,'0',NULL),(140622,3043,'0',NULL),(140622,3044,'0',NULL),(140623,3042,'0',NULL),(140623,3043,'0',NULL),(140623,3044,'0',NULL),(140624,3042,'0',NULL),(140624,3043,'0',NULL),(140624,3044,'0',NULL),(140625,3042,'0',NULL),(140625,3043,'0',NULL),(140625,3044,'0',NULL),(140626,3042,'0',NULL),(140626,3043,'0',NULL),(140626,3044,'0',NULL),(140627,3042,'0',NULL),(140627,3043,'0',NULL),(140627,3044,'0',NULL),(140628,3042,'0',NULL),(140628,3043,'0',NULL),(140628,3044,'0',NULL),(140629,3042,'0',NULL),(140629,3043,'0',NULL),(140629,3044,'0',NULL),(140630,3042,'0',NULL),(140630,3043,'0',NULL),(140630,3044,'0',NULL);
/*!40000 ALTER TABLE `schedule_201406` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201407`
--

DROP TABLE IF EXISTS `schedule_201407`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201407` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201407`
--

LOCK TABLES `schedule_201407` WRITE;
/*!40000 ALTER TABLE `schedule_201407` DISABLE KEYS */;
INSERT INTO `schedule_201407` VALUES (140701,3041,'0',NULL),(140701,3042,'0',NULL),(140701,3043,'0',NULL),(140701,3044,'0',NULL),(140701,3045,'0',NULL),(140702,3041,'0',NULL),(140702,3042,'0',NULL),(140702,3043,'0',NULL),(140702,3044,'0',NULL),(140702,3045,'0',NULL),(140703,3041,'0',NULL),(140703,3042,'0',NULL),(140703,3043,'0',NULL),(140703,3044,'0',NULL),(140703,3045,'0',NULL),(140704,3041,'0',NULL),(140704,3042,'0',NULL),(140704,3043,'0',NULL),(140704,3044,'0',NULL),(140704,3045,'0',NULL),(140705,3041,'0',NULL),(140705,3042,'0',NULL),(140705,3043,'0',NULL),(140705,3044,'0',NULL),(140705,3045,'0',NULL),(140706,3041,'0',NULL),(140706,3042,'0',NULL),(140706,3043,'0',NULL),(140706,3044,'0',NULL),(140706,3045,'0',NULL),(140707,3041,'0',NULL),(140707,3042,'0',NULL),(140707,3043,'0',NULL),(140707,3044,'0',NULL),(140707,3045,'0',NULL),(140708,3041,'0',NULL),(140708,3042,'0',NULL),(140708,3043,'0',NULL),(140708,3044,'0',NULL),(140708,3045,'0',NULL),(140709,3041,'0',NULL),(140709,3042,'0',NULL),(140709,3043,'0',NULL),(140709,3044,'0',NULL),(140709,3045,'0',NULL),(140710,3041,'0',NULL),(140710,3042,'0',NULL),(140710,3043,'0',NULL),(140710,3044,'0',NULL),(140710,3045,'0',NULL),(140711,3041,'0',NULL),(140711,3042,'0',NULL),(140711,3043,'0',NULL),(140711,3044,'0',NULL),(140711,3045,'0',NULL),(140712,3041,'0',NULL),(140712,3042,'0',NULL),(140712,3043,'0',NULL),(140712,3044,'0',NULL),(140712,3045,'0',NULL),(140713,3041,'0',NULL),(140713,3042,'0',NULL),(140713,3043,'0',NULL),(140713,3044,'0',NULL),(140713,3045,'0',NULL),(140714,3041,'0',NULL),(140714,3042,'0',NULL),(140714,3043,'0',NULL),(140714,3044,'0',NULL),(140714,3045,'0',NULL),(140715,3041,'0',NULL),(140715,3042,'0',NULL),(140715,3043,'0',NULL),(140715,3044,'0',NULL),(140715,3045,'0',NULL),(140716,3041,'0',NULL),(140716,3042,'0',NULL),(140716,3043,'0',NULL),(140716,3044,'0',NULL),(140716,3045,'0',NULL),(140717,3041,'0',NULL),(140717,3042,'0',NULL),(140717,3043,'0',NULL),(140717,3044,'0',NULL),(140717,3045,'0',NULL),(140718,3041,'0',NULL),(140718,3042,'0',NULL),(140718,3043,'0',NULL),(140718,3044,'0',NULL),(140718,3045,'0',NULL),(140719,3041,'0',NULL),(140719,3042,'0',NULL),(140719,3043,'0',NULL),(140719,3044,'0',NULL),(140719,3045,'0',NULL),(140720,3041,'0',NULL),(140720,3042,'0',NULL),(140720,3043,'0',NULL),(140720,3044,'0',NULL),(140720,3045,'0',NULL),(140721,3041,'0',NULL),(140721,3042,'0',NULL),(140721,3043,'0',NULL),(140721,3044,'0',NULL),(140721,3045,'0',NULL),(140722,3041,'0',NULL),(140722,3042,'0',NULL),(140722,3043,'0',NULL),(140722,3044,'0',NULL),(140722,3045,'0',NULL),(140723,3041,'0',NULL),(140723,3042,'0',NULL),(140723,3043,'0',NULL),(140723,3044,'0',NULL),(140723,3045,'0',NULL),(140724,3041,'0',NULL),(140724,3042,'0',NULL),(140724,3043,'0',NULL),(140724,3044,'0',NULL),(140724,3045,'0',NULL),(140725,3041,'0',NULL),(140725,3042,'0',NULL),(140725,3043,'0',NULL),(140725,3044,'0',NULL),(140725,3045,'0',NULL),(140726,3041,'0',NULL),(140726,3042,'0',NULL),(140726,3043,'0',NULL),(140726,3044,'0',NULL),(140726,3045,'0',NULL),(140727,3041,'0',NULL),(140727,3042,'0',NULL),(140727,3043,'0',NULL),(140727,3044,'0',NULL),(140727,3045,'0',NULL),(140728,3041,'0',NULL),(140728,3042,'0',NULL),(140728,3043,'0',NULL),(140728,3044,'0',NULL),(140728,3045,'0',NULL),(140729,3041,'0',NULL),(140729,3042,'0',NULL),(140729,3043,'0',NULL),(140729,3044,'0',NULL),(140729,3045,'0',NULL),(140730,3041,'0',NULL),(140730,3042,'0',NULL),(140730,3043,'0',NULL),(140730,3044,'0',NULL),(140730,3045,'0',NULL),(140731,3041,'0',NULL),(140731,3042,'0',NULL),(140731,3043,'0',NULL),(140731,3044,'0',NULL),(140731,3045,'0',NULL);
/*!40000 ALTER TABLE `schedule_201407` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201408`
--

DROP TABLE IF EXISTS `schedule_201408`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201408` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201408`
--

LOCK TABLES `schedule_201408` WRITE;
/*!40000 ALTER TABLE `schedule_201408` DISABLE KEYS */;
INSERT INTO `schedule_201408` VALUES (140801,3041,'0',NULL),(140801,3042,'0',NULL),(140801,3043,'0',NULL),(140801,3044,'0',NULL),(140801,3045,'0',NULL),(140802,3041,'0',NULL),(140802,3042,'0',NULL),(140802,3043,'0',NULL),(140802,3044,'0',NULL),(140802,3045,'0',NULL),(140803,3041,'0',NULL),(140803,3042,'0',NULL),(140803,3043,'0',NULL),(140803,3044,'0',NULL),(140803,3045,'0',NULL),(140804,3041,'0',NULL),(140804,3042,'0',NULL),(140804,3043,'0',NULL),(140804,3044,'0',NULL),(140804,3045,'0',NULL),(140805,3041,'0',NULL),(140805,3042,'0',NULL),(140805,3043,'0',NULL),(140805,3044,'0',NULL),(140805,3045,'0',NULL),(140806,3041,'0',NULL),(140806,3042,'0',NULL),(140806,3043,'0',NULL),(140806,3044,'0',NULL),(140806,3045,'0',NULL),(140807,3041,'0',NULL),(140807,3042,'0',NULL),(140807,3043,'0',NULL),(140807,3044,'0',NULL),(140807,3045,'0',NULL),(140808,3041,'0',NULL),(140808,3042,'0',NULL),(140808,3043,'0',NULL),(140808,3044,'0',NULL),(140808,3045,'0',NULL),(140809,3041,'0',NULL),(140809,3042,'0',NULL),(140809,3043,'0',NULL),(140809,3044,'0',NULL),(140809,3045,'0',NULL),(140810,3041,'0',NULL),(140810,3042,'0',NULL),(140810,3043,'0',NULL),(140810,3044,'0',NULL),(140810,3045,'0',NULL),(140811,3041,'0',NULL),(140811,3042,'0',NULL),(140811,3043,'0',NULL),(140811,3044,'0',NULL),(140811,3045,'0',NULL),(140812,3041,'0',NULL),(140812,3042,'0',NULL),(140812,3043,'0',NULL),(140812,3044,'0',NULL),(140812,3045,'0',NULL),(140813,3041,'0',NULL),(140813,3042,'0',NULL),(140813,3043,'0',NULL),(140813,3044,'0',NULL),(140813,3045,'0',NULL),(140814,3041,'0',NULL),(140814,3042,'0',NULL),(140814,3043,'0',NULL),(140814,3044,'0',NULL),(140814,3045,'0',NULL),(140815,3041,'0',NULL),(140815,3042,'0',NULL),(140815,3043,'0',NULL),(140815,3044,'0',NULL),(140815,3045,'0',NULL),(140816,3041,'0',NULL),(140816,3042,'0',NULL),(140816,3043,'0',NULL),(140816,3044,'0',NULL),(140816,3045,'0',NULL),(140817,3041,'0',NULL),(140817,3042,'0',NULL),(140817,3043,'0',NULL),(140817,3044,'0',NULL),(140817,3045,'0',NULL),(140818,3041,'0',NULL),(140818,3042,'0',NULL),(140818,3043,'0',NULL),(140818,3044,'0',NULL),(140818,3045,'0',NULL),(140819,3041,'0',NULL),(140819,3042,'0',NULL),(140819,3043,'0',NULL),(140819,3044,'0',NULL),(140819,3045,'0',NULL),(140820,3041,'0',NULL),(140820,3042,'0',NULL),(140820,3043,'0',NULL),(140820,3044,'0',NULL),(140820,3045,'0',NULL),(140821,3041,'0',NULL),(140821,3042,'0',NULL),(140821,3043,'0',NULL),(140821,3044,'0',NULL),(140821,3045,'0',NULL),(140822,3041,'0',NULL),(140822,3042,'0',NULL),(140822,3043,'0',NULL),(140822,3044,'0',NULL),(140822,3045,'0',NULL),(140823,3041,'0',NULL),(140823,3042,'0',NULL),(140823,3043,'0',NULL),(140823,3044,'0',NULL),(140823,3045,'0',NULL),(140824,3041,'0',NULL),(140824,3042,'0',NULL),(140824,3043,'0',NULL),(140824,3044,'0',NULL),(140824,3045,'0',NULL),(140825,3041,'0',NULL),(140825,3042,'0',NULL),(140825,3043,'0',NULL),(140825,3044,'0',NULL),(140825,3045,'0',NULL),(140826,3041,'0',NULL),(140826,3042,'0',NULL),(140826,3043,'0',NULL),(140826,3044,'0',NULL),(140826,3045,'0',NULL),(140827,3041,'0',NULL),(140827,3042,'0',NULL),(140827,3043,'0',NULL),(140827,3044,'0',NULL),(140827,3045,'0',NULL),(140828,3041,'0',NULL),(140828,3042,'0',NULL),(140828,3043,'0',NULL),(140828,3044,'0',NULL),(140828,3045,'0',NULL),(140829,3041,'0',NULL),(140829,3042,'0',NULL),(140829,3043,'0',NULL),(140829,3044,'0',NULL),(140829,3045,'0',NULL),(140830,3041,'0',NULL),(140830,3042,'0',NULL),(140830,3043,'0',NULL),(140830,3044,'0',NULL),(140830,3045,'0',NULL),(140831,3041,'0',NULL),(140831,3042,'0',NULL),(140831,3043,'0',NULL),(140831,3044,'0',NULL),(140831,3045,'0',NULL);
/*!40000 ALTER TABLE `schedule_201408` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201409`
--

DROP TABLE IF EXISTS `schedule_201409`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201409` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201409`
--

LOCK TABLES `schedule_201409` WRITE;
/*!40000 ALTER TABLE `schedule_201409` DISABLE KEYS */;
INSERT INTO `schedule_201409` VALUES (140901,3041,'0',NULL),(140901,3042,'0',NULL),(140901,3043,'0',NULL),(140901,3044,'0',NULL),(140901,3045,'0',NULL),(140902,3041,'0',NULL),(140902,3042,'0',NULL),(140902,3043,'0',NULL),(140902,3044,'0',NULL),(140902,3045,'0',NULL),(140903,3041,'0',NULL),(140903,3042,'0',NULL),(140903,3043,'0',NULL),(140903,3044,'0',NULL),(140903,3045,'0',NULL),(140904,3041,'0',NULL),(140904,3042,'0',NULL),(140904,3043,'0',NULL),(140904,3044,'0',NULL),(140904,3045,'0',NULL),(140905,3041,'0',NULL),(140905,3042,'0',NULL),(140905,3043,'0',NULL),(140905,3044,'0',NULL),(140905,3045,'0',NULL),(140906,3041,'0',NULL),(140906,3042,'0',NULL),(140906,3043,'0',NULL),(140906,3044,'0',NULL),(140906,3045,'0',NULL),(140907,3041,'0',NULL),(140907,3042,'0',NULL),(140907,3043,'0',NULL),(140907,3044,'0',NULL),(140907,3045,'0',NULL),(140908,3041,'0',NULL),(140908,3042,'0',NULL),(140908,3043,'0',NULL),(140908,3044,'0',NULL),(140908,3045,'0',NULL),(140909,3041,'0',NULL),(140909,3042,'0',NULL),(140909,3043,'0',NULL),(140909,3044,'0',NULL),(140909,3045,'0',NULL),(140910,3041,'0',NULL),(140910,3042,'0',NULL),(140910,3043,'0',NULL),(140910,3044,'0',NULL),(140910,3045,'0',NULL),(140911,3041,'0',NULL),(140911,3042,'0',NULL),(140911,3043,'0',NULL),(140911,3044,'0',NULL),(140911,3045,'0',NULL),(140912,3041,'0',NULL),(140912,3042,'0',NULL),(140912,3043,'0',NULL),(140912,3044,'0',NULL),(140912,3045,'0',NULL),(140913,3041,'0',NULL),(140913,3042,'0',NULL),(140913,3043,'0',NULL),(140913,3044,'0',NULL),(140913,3045,'0',NULL),(140914,3041,'0',NULL),(140914,3042,'0',NULL),(140914,3043,'0',NULL),(140914,3044,'0',NULL),(140914,3045,'0',NULL),(140915,3041,'0',NULL),(140915,3042,'0',NULL),(140915,3043,'0',NULL),(140915,3044,'0',NULL),(140915,3045,'0',NULL),(140916,3041,'0',NULL),(140916,3042,'0',NULL),(140916,3043,'0',NULL),(140916,3044,'0',NULL),(140916,3045,'0',NULL),(140917,3041,'0',NULL),(140917,3042,'0',NULL),(140917,3043,'0',NULL),(140917,3044,'0',NULL),(140917,3045,'0',NULL),(140918,3041,'0',NULL),(140918,3042,'0',NULL),(140918,3043,'0',NULL),(140918,3044,'0',NULL),(140918,3045,'0',NULL),(140919,3041,'0',NULL),(140919,3042,'0',NULL),(140919,3043,'0',NULL),(140919,3044,'0',NULL),(140919,3045,'0',NULL),(140920,3041,'0',NULL),(140920,3042,'0',NULL),(140920,3043,'0',NULL),(140920,3044,'0',NULL),(140920,3045,'0',NULL),(140921,3041,'0',NULL),(140921,3042,'0',NULL),(140921,3043,'0',NULL),(140921,3044,'0',NULL),(140921,3045,'0',NULL),(140922,3041,'0',NULL),(140922,3042,'0',NULL),(140922,3043,'0',NULL),(140922,3044,'0',NULL),(140922,3045,'0',NULL),(140923,3041,'0',NULL),(140923,3042,'0',NULL),(140923,3043,'0',NULL),(140923,3044,'0',NULL),(140923,3045,'0',NULL),(140924,3041,'0',NULL),(140924,3042,'0',NULL),(140924,3043,'0',NULL),(140924,3044,'0',NULL),(140924,3045,'0',NULL),(140925,3041,'0',NULL),(140925,3042,'0',NULL),(140925,3043,'0',NULL),(140925,3044,'0',NULL),(140925,3045,'0',NULL),(140926,3041,'0',NULL),(140926,3042,'0',NULL),(140926,3043,'0',NULL),(140926,3044,'0',NULL),(140926,3045,'0',NULL),(140927,3041,'0',NULL),(140927,3042,'0',NULL),(140927,3043,'0',NULL),(140927,3044,'0',NULL),(140927,3045,'0',NULL),(140928,3041,'0',NULL),(140928,3042,'0',NULL),(140928,3043,'0',NULL),(140928,3044,'0',NULL),(140928,3045,'0',NULL),(140929,3041,'0',NULL),(140929,3042,'0',NULL),(140929,3043,'0',NULL),(140929,3044,'0',NULL),(140929,3045,'0',NULL),(140930,3041,'0',NULL),(140930,3042,'0',NULL),(140930,3043,'0',NULL),(140930,3044,'0',NULL),(140930,3045,'0',NULL);
/*!40000 ALTER TABLE `schedule_201409` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201410`
--

DROP TABLE IF EXISTS `schedule_201410`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201410` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201410`
--

LOCK TABLES `schedule_201410` WRITE;
/*!40000 ALTER TABLE `schedule_201410` DISABLE KEYS */;
INSERT INTO `schedule_201410` VALUES (141001,3041,'0',NULL),(141001,3042,'0',NULL),(141001,3043,'0',NULL),(141001,3044,'0',NULL),(141001,3045,'0',NULL),(141002,3041,'0',NULL),(141002,3042,'0',NULL),(141002,3043,'0',NULL),(141002,3044,'0',NULL),(141002,3045,'0',NULL),(141003,3041,'0',NULL),(141003,3042,'0',NULL),(141003,3043,'0',NULL),(141003,3044,'0',NULL),(141003,3045,'0',NULL),(141004,3041,'0',NULL),(141004,3042,'0',NULL),(141004,3043,'0',NULL),(141004,3044,'0',NULL),(141004,3045,'0',NULL),(141005,3041,'0',NULL),(141005,3042,'0',NULL),(141005,3043,'0',NULL),(141005,3044,'0',NULL),(141005,3045,'0',NULL),(141006,3041,'0',NULL),(141006,3042,'0',NULL),(141006,3043,'0',NULL),(141006,3044,'0',NULL),(141006,3045,'0',NULL),(141007,3041,'0',NULL),(141007,3042,'0',NULL),(141007,3043,'0',NULL),(141007,3044,'0',NULL),(141007,3045,'0',NULL),(141008,3041,'0',NULL),(141008,3042,'0',NULL),(141008,3043,'0',NULL),(141008,3044,'0',NULL),(141008,3045,'0',NULL),(141009,3041,'0',NULL),(141009,3042,'0',NULL),(141009,3043,'0',NULL),(141009,3044,'0',NULL),(141009,3045,'0',NULL),(141010,3041,'0',NULL),(141010,3042,'0',NULL),(141010,3043,'0',NULL),(141010,3044,'0',NULL),(141010,3045,'0',NULL),(141011,3041,'0',NULL),(141011,3042,'0',NULL),(141011,3043,'0',NULL),(141011,3044,'0',NULL),(141011,3045,'0',NULL),(141012,3041,'0',NULL),(141012,3042,'0',NULL),(141012,3043,'0',NULL),(141012,3044,'0',NULL),(141012,3045,'0',NULL),(141013,3041,'0',NULL),(141013,3042,'0',NULL),(141013,3043,'0',NULL),(141013,3044,'0',NULL),(141013,3045,'0',NULL),(141014,3041,'0',NULL),(141014,3042,'0',NULL),(141014,3043,'0',NULL),(141014,3044,'0',NULL),(141014,3045,'0',NULL),(141015,3041,'0',NULL),(141015,3042,'0',NULL),(141015,3043,'0',NULL),(141015,3044,'0',NULL),(141015,3045,'0',NULL),(141016,3041,'0',NULL),(141016,3042,'0',NULL),(141016,3043,'0',NULL),(141016,3044,'0',NULL),(141016,3045,'0',NULL),(141017,3041,'0',NULL),(141017,3042,'0',NULL),(141017,3043,'0',NULL),(141017,3044,'0',NULL),(141017,3045,'0',NULL),(141018,3041,'0',NULL),(141018,3042,'0',NULL),(141018,3043,'0',NULL),(141018,3044,'0',NULL),(141018,3045,'0',NULL),(141019,3041,'0',NULL),(141019,3042,'0',NULL),(141019,3043,'0',NULL),(141019,3044,'0',NULL),(141019,3045,'0',NULL),(141020,3041,'0',NULL),(141020,3042,'0',NULL),(141020,3043,'0',NULL),(141020,3044,'0',NULL),(141020,3045,'0',NULL),(141021,3041,'0',NULL),(141021,3042,'0',NULL),(141021,3043,'0',NULL),(141021,3044,'0',NULL),(141021,3045,'0',NULL),(141022,3041,'0',NULL),(141022,3042,'0',NULL),(141022,3043,'0',NULL),(141022,3044,'0',NULL),(141022,3045,'0',NULL),(141023,3041,'0',NULL),(141023,3042,'0',NULL),(141023,3043,'0',NULL),(141023,3044,'0',NULL),(141023,3045,'0',NULL),(141024,3041,'0',NULL),(141024,3042,'0',NULL),(141024,3043,'0',NULL),(141024,3044,'0',NULL),(141024,3045,'0',NULL),(141025,3041,'0',NULL),(141025,3042,'0',NULL),(141025,3043,'0',NULL),(141025,3044,'0',NULL),(141025,3045,'0',NULL),(141026,3041,'0',NULL),(141026,3042,'0',NULL),(141026,3043,'0',NULL),(141026,3044,'0',NULL),(141026,3045,'0',NULL),(141027,3041,'0',NULL),(141027,3042,'0',NULL),(141027,3043,'0',NULL),(141027,3044,'0',NULL),(141027,3045,'0',NULL),(141028,3041,'0',NULL),(141028,3042,'0',NULL),(141028,3043,'0',NULL),(141028,3044,'0',NULL),(141028,3045,'0',NULL),(141029,3041,'0',NULL),(141029,3042,'0',NULL),(141029,3043,'0',NULL),(141029,3044,'0',NULL),(141029,3045,'0',NULL),(141030,3041,'0',NULL),(141030,3042,'0',NULL),(141030,3043,'0',NULL),(141030,3044,'0',NULL),(141030,3045,'0',NULL),(141031,3041,'0',NULL),(141031,3042,'0',NULL),(141031,3043,'0',NULL),(141031,3044,'0',NULL),(141031,3045,'0',NULL);
/*!40000 ALTER TABLE `schedule_201410` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_201411`
--

DROP TABLE IF EXISTS `schedule_201411`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_201411` (
  `mday` int(11) NOT NULL,
  `idaunt` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mday`,`idaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_201411`
--

LOCK TABLES `schedule_201411` WRITE;
/*!40000 ALTER TABLE `schedule_201411` DISABLE KEYS */;
INSERT INTO `schedule_201411` VALUES (141101,3041,'0',NULL),(141101,3042,'0',NULL),(141101,3043,'0',NULL),(141101,3044,'0',NULL),(141101,3045,'0',NULL),(141102,3041,'0',NULL),(141102,3042,'0',NULL),(141102,3043,'0',NULL),(141102,3044,'0',NULL),(141102,3045,'0',NULL),(141103,3041,'0',NULL),(141103,3042,'0',NULL),(141103,3043,'0',NULL),(141103,3044,'0',NULL),(141103,3045,'0',NULL),(141104,3041,'0',NULL),(141104,3042,'0',NULL),(141104,3043,'0',NULL),(141104,3044,'0',NULL),(141104,3045,'0',NULL),(141105,3041,'0',NULL),(141105,3042,'0',NULL),(141105,3043,'0',NULL),(141105,3044,'0',NULL),(141105,3045,'0',NULL),(141106,3041,'0',NULL),(141106,3042,'0',NULL),(141106,3043,'0',NULL),(141106,3044,'0',NULL),(141106,3045,'0',NULL),(141107,3041,'0',NULL),(141107,3042,'0',NULL),(141107,3043,'0',NULL),(141107,3044,'0',NULL),(141107,3045,'0',NULL),(141108,3041,'0',NULL),(141108,3042,'0',NULL),(141108,3043,'0',NULL),(141108,3044,'0',NULL),(141108,3045,'0',NULL),(141109,3041,'0',NULL),(141109,3042,'0',NULL),(141109,3043,'0',NULL),(141109,3044,'0',NULL),(141109,3045,'0',NULL),(141110,3041,'0',NULL),(141110,3042,'0',NULL),(141110,3043,'0',NULL),(141110,3044,'0',NULL),(141110,3045,'0',NULL),(141111,3041,'0',NULL),(141111,3042,'0',NULL),(141111,3043,'0',NULL),(141111,3044,'0',NULL),(141111,3045,'0',NULL),(141112,3041,'0',NULL),(141112,3042,'0',NULL),(141112,3043,'0',NULL),(141112,3044,'0',NULL),(141112,3045,'0',NULL),(141113,3041,'0',NULL),(141113,3042,'0',NULL),(141113,3043,'0',NULL),(141113,3044,'0',NULL),(141113,3045,'0',NULL),(141114,3041,'0',NULL),(141114,3042,'0',NULL),(141114,3043,'0',NULL),(141114,3044,'0',NULL),(141114,3045,'0',NULL),(141115,3041,'0',NULL),(141115,3042,'0',NULL),(141115,3043,'0',NULL),(141115,3044,'0',NULL),(141115,3045,'0',NULL),(141116,3041,'0',NULL),(141116,3042,'0',NULL),(141116,3043,'0',NULL),(141116,3044,'0',NULL),(141116,3045,'0',NULL),(141117,3041,'0',NULL),(141117,3042,'0',NULL),(141117,3043,'0',NULL),(141117,3044,'0',NULL),(141117,3045,'0',NULL),(141118,3041,'0',NULL),(141118,3042,'0',NULL),(141118,3043,'0',NULL),(141118,3044,'0',NULL),(141118,3045,'0',NULL),(141119,3041,'0',NULL),(141119,3042,'0',NULL),(141119,3043,'0',NULL),(141119,3044,'0',NULL),(141119,3045,'0',NULL),(141120,3041,'0',NULL),(141120,3042,'0',NULL),(141120,3043,'0',NULL),(141120,3044,'0',NULL),(141120,3045,'0',NULL),(141121,3041,'0',NULL),(141121,3042,'0',NULL),(141121,3043,'0',NULL),(141121,3044,'0',NULL),(141121,3045,'0',NULL),(141122,3041,'0',NULL),(141122,3042,'0',NULL),(141122,3043,'0',NULL),(141122,3044,'0',NULL),(141122,3045,'0',NULL),(141123,3041,'0',NULL),(141123,3042,'0',NULL),(141123,3043,'0',NULL),(141123,3044,'0',NULL),(141123,3045,'0',NULL),(141124,3041,'0',NULL),(141124,3042,'0',NULL),(141124,3043,'0',NULL),(141124,3044,'0',NULL),(141124,3045,'0',NULL),(141125,3041,'0',NULL),(141125,3042,'0',NULL),(141125,3043,'0',NULL),(141125,3044,'0',NULL),(141125,3045,'0',NULL),(141126,3041,'0',NULL),(141126,3042,'0',NULL),(141126,3043,'0',NULL),(141126,3044,'0',NULL),(141126,3045,'0',NULL),(141127,3041,'0',NULL),(141127,3042,'0',NULL),(141127,3043,'0',NULL),(141127,3044,'0',NULL),(141127,3045,'0',NULL),(141128,3041,'0',NULL),(141128,3042,'0',NULL),(141128,3043,'0',NULL),(141128,3044,'0',NULL),(141128,3045,'0',NULL),(141129,3041,'0',NULL),(141129,3042,'0',NULL),(141129,3043,'0',NULL),(141129,3044,'0',NULL),(141129,3045,'0',NULL),(141130,3041,'0',NULL),(141130,3042,'0',NULL),(141130,3043,'0',NULL),(141130,3044,'0',NULL),(141130,3045,'0',NULL);
/*!40000 ALTER TABLE `schedule_201411` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `content` text,
  `status_code` int(11) DEFAULT '0',
  `status_message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (1,'18','13810198655','【26天月嫂】客户正在查看您的网页',1,' success'),(5,'22','13810198655','【26天月嫂】客户正在查看您的网页，希望预定时间段 2014-07-24至2014-08-19, 价格15000, 请及时回复问题 : 测试2222',1,'success'),(6,'0','13331158656','何姐您好，您的个人信息已经发布到我们网络平台，您可以访问http://www.26tian.cn/a/3041 来查看您的信息，雇主也可以给您评价。\r\n另外，我们平台对前50名月嫂提供0费用的优惠，您不需要支付任何的佣金，假如您的价格标注是6000元，那么您最后收到的就是6000元。\r\n祝您工作家庭愉快！【26天月嫂】\r\n',1,'success'),(7,'2','13810198655','【26天月嫂】用户的建议:ä½ å¥½ï¼è¯·é®ä½ è½æ¶å°æçæ¶æ¯ä¹ï¼。 请及时回复: 13810198655',0,NULL),(8,'2','13810198655','【26天月嫂】用户的建议:æµè¯。 请及时回复: 13666666666',0,NULL),(9,'2','13810198655','【26天月嫂】用户的建议:你好，测试。 请及时回复: 1111111111',0,NULL),(10,'2','13810198655','【26天月嫂】用户的建议:æµè¯ä¸­ææ¾ç¤º。 请及时回复: 1233333333',0,NULL),(11,'2','13810198655','【26天月嫂】用户的建议:中文测试，你好呀。 请及时回复: 333333333',0,NULL),(12,'23','13810198655','【26天月嫂】客户正在查看您的网页，希望预定时间段 2014-07-31至2014-08-26, 价格15000, 请及时回复问题 : nihao ',0,NULL);
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `need_reply` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestion`
--

LOCK TABLES `suggestion` WRITE;
/*!40000 ALTER TABLE `suggestion` DISABLE KEYS */;
INSERT INTO `suggestion` VALUES (1,0,'test21','1','test2','2014-05-21 22:20:15'),(2,0,'testttt','1','tettst','2014-05-21 22:21:44'),(3,0,'dfsfadsfdsfdsfdsaf','1','dsfdsafsadfsadfasd','2014-05-21 22:23:44'),(4,0,'fdsfdfds','0','dfdfds','2014-05-21 22:29:27'),(5,0,'输入中文字符！！！','1','12345677','2014-05-21 22:30:23'),(6,0,'你好','1','13810198655','2014-06-07 08:59:55'),(7,0,'','1','','2014-07-07 06:41:49'),(8,0,'这个反馈留言的页面好难看','1','13331158656','2014-07-11 05:47:38'),(9,0,'你好，测试......','1','13810198655','2014-07-17 06:46:18'),(10,0,'ssss','1','ssss','2014-07-17 06:49:12'),(11,0,'ceshi ','1','13810198655','2014-07-17 06:51:00'),(12,0,'ä½ å¥½ï¼è¯·é®ä½ è½æ¶å°æçæ¶æ¯ä¹ï¼','1','13810198655','2014-07-17 09:00:46'),(13,0,'æµè¯','1','13666666666','2014-07-17 09:03:12'),(14,0,'你好，测试','1','1111111111','2014-07-17 09:04:26'),(15,0,'æµè¯ä¸­ææ¾ç¤º','1','1233333333','2014-07-17 09:07:01'),(16,0,'中文测试，你好呀','1','333333333','2014-07-17 09:09:23');
/*!40000 ALTER TABLE `suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'it is display name, could has duplicates.',
  `profile_pic` varchar(200) DEFAULT '/images/user_pic-50x50.png',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `channel` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `social_url` varchar(200) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `social_uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','Colette Girard','pic1.jpg','2014-04-28 16:00:00','email',NULL,NULL,NULL,NULL),(2,'','Alexandre Bonnet','pic1.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(3,'','Roger Roux','pic3.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(4,'','Pascal David','pic1.jpg','2014-04-28 16:00:00','email',NULL,NULL,NULL,NULL),(5,'','Paul David','pic3.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(6,'','Corinne Martin','pic2.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(7,'','Monique Richard','pic2.jpg','2014-04-28 16:00:00','qq.com',NULL,NULL,NULL,NULL),(8,'','Renee Lambert','pic1.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(9,'','Robert Michel','pic2.jpg','2014-04-28 16:00:00','weibo.com',NULL,NULL,NULL,NULL),(10,'','Margeuerite Durand','pic3.jpg','2014-04-28 16:00:00','email',NULL,NULL,NULL,NULL),(54,'ssss@s.com','遂心如意','http://tp2.sinaimg.cn/1406610713/50/5651239023/1','2014-05-30 08:58:27','weibo.com','null','weibo.com/u/1406610713',NULL,1406610713),(55,'lisui@sina.com','Nutts','/images/user_pic-50x50.png','2014-05-31 14:53:02','email','coffee','',NULL,NULL),(56,'LISUI222@A.COM','NUTTS','/images/user_pic-50x50.png','2014-05-31 15:02:44','email','COFFEE','',NULL,NULL),(57,'zhenwang@adobe.com','zhenwang@adobe.com','/images/user_pic-50x50.png','2014-07-07 06:46:35','email','123456','',NULL,NULL),(58,'lisui0807@gmail.com','nutts','/images/user_pic-50x50.png','2014-07-19 08:23:19','email','coffee','',NULL,NULL),(59,'lissss@sina.com','sss','/images/user_pic-50x50.png','2014-07-29 11:27:01','email','coffee','',NULL,NULL),(61,'lllllll@sina.com','遂心如意','http://q.qlogo.cn/qqapp/101105770/933E258CA80BCD4FA73341A646C8B7C3/40','2014-07-30 06:23:17','qq','null','null',NULL,101105770),(62,'null','null','/images/user_pic-50x50.png','2014-08-10 02:22:45','email','null','null',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_aunt_all`
--

DROP TABLE IF EXISTS `vw_aunt_all`;
/*!50001 DROP VIEW IF EXISTS `vw_aunt_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_aunt_all` (
  `idaunt` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `old_y` tinyint NOT NULL,
  `jiguan` tinyint NOT NULL,
  `cprice` tinyint NOT NULL,
  `show_pic` tinyint NOT NULL,
  `profile_pic` tinyint NOT NULL,
  `pinfen` tinyint NOT NULL,
  `reviews` tinyint NOT NULL,
  `experience` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `prop1` tinyint NOT NULL,
  `prop2` tinyint NOT NULL,
  `prop3` tinyint NOT NULL,
  `prop4` tinyint NOT NULL,
  `prop5` tinyint NOT NULL,
  `prop6` tinyint NOT NULL,
  `self_intro` tinyint NOT NULL,
  `skills` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_schedule_201407`
--

DROP TABLE IF EXISTS `vw_schedule_201407`;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201407`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_schedule_201407` (
  `mday` tinyint NOT NULL,
  `idaunt` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_schedule_201408`
--

DROP TABLE IF EXISTS `vw_schedule_201408`;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201408`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_schedule_201408` (
  `mday` tinyint NOT NULL,
  `idaunt` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_schedule_201409`
--

DROP TABLE IF EXISTS `vw_schedule_201409`;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201409`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_schedule_201409` (
  `mday` tinyint NOT NULL,
  `idaunt` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_schedule_201410`
--

DROP TABLE IF EXISTS `vw_schedule_201410`;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201410`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_schedule_201410` (
  `mday` tinyint NOT NULL,
  `idaunt` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_aunt_all`
--

/*!50001 DROP TABLE IF EXISTS `vw_aunt_all`*/;
/*!50001 DROP VIEW IF EXISTS `vw_aunt_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ouser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_aunt_all` AS select `aunt`.`idaunt` AS `idaunt`,`aunt`.`name` AS `name`,(year(now()) - `aunt`.`birth_y`) AS `old_y`,`aunt`.`jiguan` AS `jiguan`,`aunt`.`cprice` AS `cprice`,`aunt`.`show_pic` AS `show_pic`,`aunt`.`profile_pic` AS `profile_pic`,`aunt`.`pinfen` AS `pinfen`,`aunt`.`reviews` AS `reviews`,`aunt`.`experience` AS `experience`,`aunt`.`created_at` AS `created_at`,`aunt`.`updated_at` AS `updated_at`,`aunt_extend`.`prop1` AS `prop1`,`aunt_extend`.`prop2` AS `prop2`,`aunt_extend`.`prop3` AS `prop3`,`aunt_extend`.`prop4` AS `prop4`,`aunt_extend`.`prop5` AS `prop5`,`aunt_extend`.`prop6` AS `prop6`,`aunt_extend`.`self_intro` AS `self_intro`,`aunt_extend`.`skills` AS `skills` from (`aunt` left join `aunt_extend` on((`aunt`.`idaunt` = `aunt_extend`.`idaunt`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_schedule_201407`
--

/*!50001 DROP TABLE IF EXISTS `vw_schedule_201407`*/;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201407`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ouser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_schedule_201407` AS select `schedule_201407`.`mday` AS `mday`,`schedule_201407`.`idaunt` AS `idaunt`,`schedule_201407`.`status` AS `status`,`schedule_201407`.`price` AS `price` from `schedule_201407` where (`schedule_201407`.`status` = 0) union all select `schedule_201408`.`mday` AS `mday`,`schedule_201408`.`idaunt` AS `idaunt`,`schedule_201408`.`status` AS `status`,`schedule_201408`.`price` AS `price` from `schedule_201408` where (`schedule_201408`.`status` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_schedule_201408`
--

/*!50001 DROP TABLE IF EXISTS `vw_schedule_201408`*/;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201408`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ouser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_schedule_201408` AS select `schedule_201408`.`mday` AS `mday`,`schedule_201408`.`idaunt` AS `idaunt`,`schedule_201408`.`status` AS `status`,`schedule_201408`.`price` AS `price` from `schedule_201408` where (`schedule_201408`.`status` = 0) union all select `schedule_201409`.`mday` AS `mday`,`schedule_201409`.`idaunt` AS `idaunt`,`schedule_201409`.`status` AS `status`,`schedule_201409`.`price` AS `price` from `schedule_201409` where (`schedule_201409`.`status` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_schedule_201409`
--

/*!50001 DROP TABLE IF EXISTS `vw_schedule_201409`*/;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201409`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ouser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_schedule_201409` AS select `schedule_201409`.`mday` AS `mday`,`schedule_201409`.`idaunt` AS `idaunt`,`schedule_201409`.`status` AS `status`,`schedule_201409`.`price` AS `price` from `schedule_201409` where (`schedule_201409`.`status` = 0) union all select `schedule_201410`.`mday` AS `mday`,`schedule_201410`.`idaunt` AS `idaunt`,`schedule_201410`.`status` AS `status`,`schedule_201410`.`price` AS `price` from `schedule_201410` where (`schedule_201410`.`status` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_schedule_201410`
--

/*!50001 DROP TABLE IF EXISTS `vw_schedule_201410`*/;
/*!50001 DROP VIEW IF EXISTS `vw_schedule_201410`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ouser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_schedule_201410` AS select `schedule_201410`.`mday` AS `mday`,`schedule_201410`.`idaunt` AS `idaunt`,`schedule_201410`.`status` AS `status`,`schedule_201410`.`price` AS `price` from `schedule_201410` where (`schedule_201410`.`status` = 0) union all select `schedule_201411`.`mday` AS `mday`,`schedule_201411`.`idaunt` AS `idaunt`,`schedule_201411`.`status` AS `status`,`schedule_201411`.`price` AS `price` from `schedule_201411` where (`schedule_201411`.`status` = 0) */;
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

-- Dump completed on 2014-11-06 12:19:26
