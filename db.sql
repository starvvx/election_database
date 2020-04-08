-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `party_name` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(100) DEFAULT NULL,
  `reg_no` int(3) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('Kongress','M',36,101,'pahul gandhi'),('aaj ki','M',39,102,'rudra kumar'),('Ekta','M',45,103,'rajan sri'),('sangharsh','M',50,104,'rehan ali'),('Yuva Josh','M',33,105,'ved chaturvedi'),('navsoch','M',46,106,'cb pant'),('Kongress','M',40,201,'pahul gandhi'),('sangharsh','M',54,202,'rehan ali'),('Yuva Josh','M',30,203,'vaibhav verma'),('aaj ki','M',43,204,'rudra kumar'),('Ekta','M',50,205,'rajan sri'),('lok kalyan','M',42,206,'aarsh verdhan'),('Kongress','M',44,301,'pahul gandhi'),('aaj ki','M',35,302,'aadhar tyagi'),('Yuva Josh','M',34,303,'vaibhav verma'),('sangharsh','M',58,304,'rehan ali'),('lok kalyan','M',46,305,'aarsh verdhan'),('navsoch','M',40,306,'bc pant'),('lok kalyan','M',46,401,'aarsh verdhan'),('sangharsh','M',44,402,'mayur jain'),('Yuva Josh','M',38,403,'vaibhav verma'),('aaj ki','M',39,404,'aadhar tyagi'),('kongress','M',39,405,'rahul balout'),('ekta','M',50,406,'ayush mailk'),('navsoch','M',41,407,'harshit yadav'),('kongress','M',43,501,'rahul balout'),('navsoch','M',45,502,'harshit yadav'),('Yuva Josh','M',42,503,'vaibhav verma'),('ekta','M',55,504,'ayush mailk'),('aaj ki','M',43,505,'aadhar tyagi'),('lok kalyan','M',50,506,'aarsh verdhan'),('navsoch','M',49,601,'harshit yadav'),('ekta','M',59,602,'ayush mailk'),('lok kalyan','M',54,603,'aarsh verdhan'),('sangharsh','M',52,604,'mayur jain'),('Yuva Josh','M',46,605,'vaibhav verma'),('aaj ki','M',47,606,'aadhar tyagi'),('kongress','M',47,607,'rahul balout');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elections`
--

DROP TABLE IF EXISTS `elections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elections` (
  `election_id` int(10) NOT NULL,
  `total_votes_casted` int(50) DEFAULT NULL,
  `no_of_candidates` int(20) DEFAULT NULL,
  `candidate_won` int(3) DEFAULT NULL,
  PRIMARY KEY (`election_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elections`
--

LOCK TABLES `elections` WRITE;
/*!40000 ALTER TABLE `elections` DISABLE KEYS */;
INSERT INTO `elections` VALUES (1,9,6,101),(3,7,6,302),(4,10,7,403),(5,7,6,506),(6,8,7,601);
/*!40000 ALTER TABLE `elections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspector`
--

DROP TABLE IF EXISTS `inspector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspector` (
  `election_id` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `inspector_id` int(10) NOT NULL,
  PRIMARY KEY (`inspector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspector`
--

LOCK TABLES `inspector` WRITE;
/*!40000 ALTER TABLE `inspector` DISABLE KEYS */;
INSERT INTO `inspector` VALUES (1,'Vg Kesari','M',111),(1,'piyush bihari','M',121),(2,'rajeev vp','M',211),(2,'sanjay rana','M',221),(3,'Vg Kesari','M',311),(3,'siddharth sharma','M',321),(4,'AK malik','f',411),(4,'shivani pandey','f',421),(5,'vishal p','M',511),(5,'shouryaa dalal','f',521),(6,'sucheta kumari','f',611),(6,'piyush bihari','m',621);
/*!40000 ALTER TABLE `inspector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `voter_id` int(30) NOT NULL,
  `election_id` int(10) NOT NULL,
  `casted_to` int(20) DEFAULT NULL,
  PRIMARY KEY (`voter_id`,`election_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (10,1,101),(10,2,203),(10,3,NULL),(10,4,406),(10,5,NULL),(10,6,602),(11,1,101),(11,2,203),(11,3,301),(11,4,405),(11,5,501),(11,6,607),(12,1,102),(12,2,201),(12,3,302),(12,4,401),(12,5,501),(12,6,NULL),(13,1,101),(13,2,NULL),(13,3,303),(13,4,403),(13,5,502),(13,6,605),(14,1,NULL),(14,2,201),(14,3,302),(14,4,402),(14,5,503),(14,6,NULL),(15,1,103),(15,2,204),(15,3,NULL),(15,4,403),(15,5,NULL),(15,6,601),(16,1,101),(16,2,205),(16,3,NULL),(16,4,404),(16,5,504),(16,6,603),(17,1,104),(17,2,203),(17,3,306),(17,4,405),(17,5,505),(17,6,606),(18,1,105),(18,2,202),(18,3,305),(18,4,403),(18,5,NULL),(18,6,604),(19,1,106),(19,2,203),(19,3,304),(19,4,406),(19,5,506),(19,6,607);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voter` (
  `gender` varchar(1) DEFAULT NULL,
  `voter_id` int(2) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `curdate` date DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES ('m',10,'deepanshu sejawar','1980-04-19','2019-04-19',NULL),('m',11,'nitin chawla','1978-11-10','2019-04-19',NULL),('m',12,'neeraj parihar','1979-12-09','2019-04-19',NULL),('m',13,'mukul tewathia','1979-01-25','2019-04-19',NULL),('m',14,'mridul gupta','1979-01-25','2019-04-19',NULL),('m',15,'ayush garg','1976-09-07','2019-04-19',NULL),('f',16,'savita rajput','1980-08-07','2019-04-19',NULL),('f',17,'nishtha thukral','1974-03-24','2019-04-19',NULL),('f',18,'suprita deswal','1979-06-24','2019-04-19',NULL),('f',19,'anjali singh','1980-02-22','2019-04-19',NULL);
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-20 21:00:25
