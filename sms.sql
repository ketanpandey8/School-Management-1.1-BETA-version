-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: sms
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Ketan','12345'),('Shiva','67890');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `Admission_no` int(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `English` int(3) DEFAULT NULL,
  `Physics` int(3) DEFAULT NULL,
  `Chemistry` int(3) DEFAULT NULL,
  `Maths` int(3) DEFAULT NULL,
  `PEd` int(3) DEFAULT NULL,
  `IP` int(3) DEFAULT NULL,
  PRIMARY KEY (`Admission_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,'Demo Student','12',67,78,67,67,56,89),(2,'Demo Student','11',78,5,67,8,67,6),(3,'Demo Student 3','11',56,65,66,6,66,6);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `Name` varchar(30) NOT NULL,
  `Admission_no` int(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Class` varchar(20) NOT NULL,
  `Section` varchar(1) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Admission_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Demo Student',1,'Male','12','A','2016-02-02','1999-02-02'),('Demo Student 2',2,'Female','11','A','2015-08-23','2000-06-12');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Class_Teacher` varchar(50) DEFAULT NULL,
  `Subject` varchar(70) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('1','Demo Teacher','12345','Male','MSc Physics','XII A','Physics','2000-01-23','1978-09-10'),('2','Demo Teacher 2','12345','Female','MSc Chemistry','XII B','Chemistry','2005-10-20','1989-03-24'),('23','djvsnibdf','[C@68630cce','Male','ihvgcfy','hugvycf','bhjugvyfc','1010-10-10','1010-10-10'),('3','Demo Teacher 3','12345','Male','12th Class','XI A','Councler','2000-01-01','1980-01-01'),('315','fsjvh','[C@577bf30','Male','cyxrtc','vgcvg','uyvvuv','1010-10-10','1010-10-10'),('32615','sdknbfj','[C@40caf84f','Male','kugfy','ougfyi','gulhy','1010-10-10','1010-10-10');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02 10:20:02
