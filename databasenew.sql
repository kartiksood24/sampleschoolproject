-- MySQL dump 10.13  Distrib 5.5.48, for Win32 (x86)
--
-- Host: localhost    Database: databasenew
-- ------------------------------------------------------
-- Server version	5.5.48

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
-- Table structure for table `board_master`
--

DROP TABLE IF EXISTS `board_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_master` (
  `board_id` int(11) NOT NULL,
  `board_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_master`
--

LOCK TABLES `board_master` WRITE;
/*!40000 ALTER TABLE `board_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_master`
--

DROP TABLE IF EXISTS `course_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_master` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) DEFAULT NULL,
  `course_duration` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_master`
--

LOCK TABLES `course_master` WRITE;
/*!40000 ALTER TABLE `course_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_detail`
--

DROP TABLE IF EXISTS `faculty_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_detail` (
  `faculty_id` int(11) DEFAULT NULL,
  `faculty_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_detail`
--

LOCK TABLES `faculty_detail` WRITE;
/*!40000 ALTER TABLE `faculty_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quota_master`
--

DROP TABLE IF EXISTS `quota_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quota_master` (
  `quota_id` int(11) NOT NULL,
  `quota_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`quota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quota_master`
--

LOCK TABLES `quota_master` WRITE;
/*!40000 ALTER TABLE `quota_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `quota_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_student`
--

DROP TABLE IF EXISTS `register_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_student` (
  `reg_no` int(11) NOT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `mother_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `regd_fee` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_student`
--

LOCK TABLES `register_student` WRITE;
/*!40000 ALTER TABLE `register_student` DISABLE KEYS */;
INSERT INTO `register_student` VALUES (1,'fsf','rewrwe','ewrewr',34,'male','45435435','435435435','rteretretret','rtetret','rteret','retretret','100',2015,NULL),(2,'sd','sf','gf',1,'male','121212','21212','1sas','as','asa','as','100',2014,NULL),(3,'c','c','c',1,'male','12','121','sds','sd','sds','ds','100',2015,NULL),(6,'sdf','dsfsd','fsdfs',3,'male','343434','3434343','dg4v4v4tv4 ','fgdd','dfg','dg','100',2018,NULL),(7,'kartik','sood','abv',66,'female','0999','786567','jkhgkhgkhg	','oooo','fzr','7','100',2016,NULL),(8,'dsfkhkjdf','sdjflkjsdl','fdjflkjlksfg',34,'male','35345353','3453453','fdhsfhsdkfksdkfh	dfhksjhfk				','dfgkfhdkjgh','gdfgdfg','mca','100',2014,NULL),(9,'jgjgjgjg','hgjgjhgjgjh','ghffjf',45,'male','575757757','657575757','hkjhjgjhgjghj','hjfhffh','ghjgjhgjh','hjgjhgjhgjh','100',2016,NULL),(10,'dshkj','fdgdfgdfg','gfdgfdg',34,'male','453535','546456456','fdslfkj	','klsdjglkj','fd,.gmdfmg','gfdgdfg','100',2016,NULL),(11,'desfsf','fdgfdg','fdgfd',34,'male','34535345','43535','gdfgfhgh','ghgfhghd','dfhdghgddgh','rsgdfgfdg','100',2015,NULL);
/*!40000 ALTER TABLE `register_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_category_master`
--

DROP TABLE IF EXISTS `sms_category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_category_master` (
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_category_master`
--

LOCK TABLES `sms_category_master` WRITE;
/*!40000 ALTER TABLE `sms_category_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality_master`
--

DROP TABLE IF EXISTS `speciality_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speciality_master` (
  `speciality_id` int(11) NOT NULL,
  `speciality_name` varchar(20) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`speciality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality_master`
--

LOCK TABLES `speciality_master` WRITE;
/*!40000 ALTER TABLE `speciality_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `speciality_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_admiss`
--

DROP TABLE IF EXISTS `student_admiss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_admiss` (
  `student_id` int(11) DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `fresher` varchar(10) DEFAULT NULL,
  `board_id` int(11) DEFAULT NULL,
  `categeory_id` int(11) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_admiss_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_personal_detail` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_admiss`
--

LOCK TABLES `student_admiss` WRITE;
/*!40000 ALTER TABLE `student_admiss` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_admiss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_educational_detail`
--

DROP TABLE IF EXISTS `student_educational_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_educational_detail` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `discpline` varchar(20) DEFAULT NULL,
  `board_of_study` varchar(20) DEFAULT NULL,
  `institute` varchar(20) DEFAULT NULL,
  `percentage` varchar(20) DEFAULT NULL,
  `year_of_completion` int(11) DEFAULT NULL,
  `achievments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_educational_detail_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_personal_detail` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_educational_detail`
--

LOCK TABLES `student_educational_detail` WRITE;
/*!40000 ALTER TABLE `student_educational_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_educational_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_personal_detail`
--

DROP TABLE IF EXISTS `student_personal_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_personal_detail` (
  `student_id` int(11) NOT NULL,
  `student_First_name` varchar(20) NOT NULL,
  `student_middle_name` varchar(20) DEFAULT NULL,
  `student_last_name` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` varchar(20) NOT NULL,
  `father_first_name` varchar(20) DEFAULT NULL,
  `father_middle_name` varchar(20) DEFAULT NULL,
  `father_last_name` varchar(20) DEFAULT NULL,
  `mother_first_name` varchar(20) DEFAULT NULL,
  `mother_last_name` varchar(20) DEFAULT NULL,
  `father_income` int(11) DEFAULT NULL,
  `caste` varchar(20) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `phone_number` int(15) DEFAULT NULL,
  `mobile_number` int(12) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `alternate_email_id` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `stu_adhaar_no` varchar(12) DEFAULT NULL,
  `mother_middle_name` varchar(20) DEFAULT NULL,
  `mother_adhaar_no` varchar(12) DEFAULT NULL,
  `father_adhaar_no` varchar(12) DEFAULT NULL,
  `religion` varchar(110) DEFAULT NULL,
  `stu_iden_mark` varchar(200) DEFAULT NULL,
  `stu_age` int(11) DEFAULT NULL,
  `father_mobile_no` varchar(12) DEFAULT NULL,
  `mother_mobile_no` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_personal_detail`
--

LOCK TABLES `student_personal_detail` WRITE;
/*!40000 ALTER TABLE `student_personal_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_personal_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobileno` varchar(12) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `qualifcation` varchar(20) DEFAULT NULL,
  `profile_photo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES ('aa','aa',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'school'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-28 18:33:32
