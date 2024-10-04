CREATE DATABASE  IF NOT EXISTS `db_java_web_fix1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_java_web_fix1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_java_web
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblaccount`
--

DROP TABLE IF EXISTS `tblaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblaccount` (
  `account_ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_ID` int DEFAULT NULL,
  PRIMARY KEY (`account_ID`),
  KEY `role_ID` (`role_ID`),
  CONSTRAINT `tblaccount_ibfk_1` FOREIGN KEY (`role_ID`) REFERENCES `tblrole` (`role_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccount`
--

LOCK TABLES `tblaccount` WRITE;
/*!40000 ALTER TABLE `tblaccount` DISABLE KEYS */;
INSERT INTO `tblaccount` VALUES (1,'thanh_hang','password123','thanh_hang@gmail.com',1),(2,'minhchau111','password456','minhchau111@gmail.com',2),(3,'hieunguyen123','password789','hieunguyen123@gmail.com',2),(4,'tuananh987','passwordabc','tuananh987@gmail.com',2),(5,'linhngoc456','passworddef','linhngoc456@gmail.com',2),(6,'trungvu1234','passwordghi','trungvu1234@gmail.com',2),(7,'thienhuong567','passwordjkl','thienhuong567@gmail.com',2),(8,'binhminh789','passwordmno','binhminh789@gmail.com',2),(9,'hoanglong999','passwordpqr','hoanglong999@gmail.com',2),(10,'duongphat1010','passwordstu','duongphat1010@gmail.com',2),(11,'vuthuytram','password123','vuthuytram@gmail.com',2),(12,'thanh_hoai111','password123','thanh_hoai111@gmail.com',3),(13,'minhtrang222','password456','minhtrang222@gmail.com',3),(14,'hieungoc333','password789','hieungoc333@gmail.com',3),(15,'tuanphuc444','passwordabc','tuanphuc444@gmail.com',3),(16,'linhnguyen555','passworddef','linhnguyen555@gmail.com',3),(17,'trungson666','passwordghi','trungson666@gmail.com',3),(18,'thanhphuong777','passwordjkl','thanhphuong777@gmail.com',3),(19,'binhanh888','passwordmno','binhanh888@gmail.com',3),(20,'hoangmai999','passwordpqr','hoangmai999@gmail.com',3),(21,'duongthuy1010','passwordstu','duongthuy1010@gmail.com',3),(22,'hoangai','123456','hoangai@gmail.com',3),(23,'phananh','123456','phananh@gmail.com',3),(24,'doananh','123456','doananh@gmail.com',3),(25,'haianh','123456','haianh@gmail.com',3),(26,'vietanh','123456','vietanh@gmail.com',3),(27,'congbinh','123456','congbinh@gmail.com',3),(28,'ducbinh','123456','ducbinh@gmail.com',3),(29,'dinhbinh','123456','dinhbinh@gmail.com',3),(30,'khaccanh','123456','khaccanh@gmail.com',3),(31,'kimchi','123456','kimchi@gmail.com',3);
/*!40000 ALTER TABLE `tblaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `admin_ID` int NOT NULL AUTO_INCREMENT,
  `admin_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_ID` int DEFAULT NULL,
  PRIMARY KEY (`admin_ID`),
  UNIQUE KEY `account_ID` (`account_ID`),
  CONSTRAINT `tbladmin_ibfk_1` FOREIGN KEY (`account_ID`) REFERENCES `tblaccount` (`account_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'Nguyễn Thanh Hằng',1);
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance`
--

DROP TABLE IF EXISTS `tblattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance` (
  `attendance_ID` int NOT NULL AUTO_INCREMENT,
  `class_ID` int DEFAULT NULL,
  `student_ID` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`attendance_ID`),
  KEY `class_ID` (`class_ID`),
  KEY `student_ID` (`student_ID`),
  CONSTRAINT `tblattendance_ibfk_1` FOREIGN KEY (`class_ID`) REFERENCES `tblclass` (`class_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblattendance_ibfk_2` FOREIGN KEY (`student_ID`) REFERENCES `tblstudent` (`student_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance`
--

LOCK TABLES `tblattendance` WRITE;
/*!40000 ALTER TABLE `tblattendance` DISABLE KEYS */;
INSERT INTO `tblattendance` VALUES (61,21,1,'2024-01-01','có mặt'),(62,21,2,'2024-01-01','vắng'),(63,21,3,'2024-01-01','có mặt'),(64,21,4,'2024-01-01','vắng'),(65,21,5,'2024-01-01','muộn'),(66,21,6,'2024-01-01','có mặt'),(67,21,7,'2024-01-01','vắng'),(68,21,8,'2024-01-01','có mặt'),(69,21,9,'2024-01-01','có mặt'),(70,21,10,'2024-01-01','muộn'),(71,21,1,'2024-01-02','có mặt'),(72,21,2,'2024-01-02','vắng'),(73,21,3,'2024-01-02','có mặt'),(74,21,4,'2024-01-02','vắng'),(75,21,5,'2024-01-02','muộn'),(76,21,6,'2024-01-02','có mặt'),(77,21,7,'2024-01-02','vắng'),(78,21,8,'2024-01-02','có mặt'),(79,21,9,'2024-01-02','có mặt'),(80,21,10,'2024-01-02','muộn'),(81,21,1,'2024-01-03','có mặt'),(82,21,2,'2024-01-03','vắng'),(83,21,3,'2024-01-03','có mặt'),(84,21,4,'2024-01-03','vắng'),(85,21,5,'2024-01-03','muộn'),(86,21,6,'2024-01-03','có mặt'),(87,21,7,'2024-01-03','vắng'),(88,21,8,'2024-01-03','có mặt'),(89,21,9,'2024-01-03','có mặt'),(90,21,10,'2024-01-03','muộn'),(91,21,1,'2024-01-04','có mặt'),(92,21,2,'2024-01-04','vắng'),(93,21,3,'2024-01-04','có mặt'),(94,21,4,'2024-01-04','vắng'),(95,21,5,'2024-01-04','muộn'),(96,21,6,'2024-01-04','có mặt'),(97,21,7,'2024-01-04','vắng'),(98,21,8,'2024-01-04','có mặt'),(99,21,9,'2024-01-04','có mặt'),(100,21,10,'2024-01-04','muộn'),(101,21,1,'2024-01-05','có mặt'),(102,21,2,'2024-01-05','vắng'),(103,21,3,'2024-01-05','có mặt'),(104,21,4,'2024-01-05','vắng'),(105,21,5,'2024-01-05','muộn'),(106,21,6,'2024-01-05','có mặt'),(107,21,7,'2024-01-05','vắng'),(108,21,8,'2024-01-05','có mặt'),(109,21,9,'2024-01-05','có mặt'),(110,21,10,'2024-01-05','muộn'),(111,21,1,'2024-01-06','có mặt'),(112,21,2,'2024-01-06','vắng'),(113,21,3,'2024-01-06','có mặt'),(114,21,4,'2024-01-06','vắng'),(115,21,5,'2024-01-06','muộn'),(116,21,6,'2024-01-06','có mặt'),(117,21,7,'2024-01-06','vắng'),(118,21,8,'2024-01-06','có mặt'),(119,21,9,'2024-01-06','có mặt'),(120,21,10,'2024-01-06','muộn'),(121,21,1,'2024-01-07','có mặt'),(122,21,2,'2024-01-07','vắng'),(123,21,3,'2024-01-07','có mặt'),(124,21,4,'2024-01-07','vắng'),(125,21,5,'2024-01-07','muộn'),(126,21,6,'2024-01-07','có mặt'),(127,21,7,'2024-01-07','vắng'),(128,21,8,'2024-01-07','có mặt'),(129,21,9,'2024-01-07','có mặt'),(130,21,10,'2024-01-07','muộn'),(131,21,1,'2024-01-08','có mặt'),(132,21,2,'2024-01-08','vắng'),(133,21,3,'2024-01-08','có mặt'),(134,21,4,'2024-01-08','vắng'),(135,21,5,'2024-01-08','muộn'),(136,21,6,'2024-01-08','có mặt'),(137,21,7,'2024-01-08','vắng'),(138,21,8,'2024-01-08','có mặt'),(139,21,9,'2024-01-08','có mặt'),(140,21,10,'2024-01-08','muộn'),(141,21,1,'2024-01-09','có mặt'),(142,21,2,'2024-01-09','vắng'),(143,21,3,'2024-01-09','có mặt'),(144,21,4,'2024-01-09','vắng'),(145,21,5,'2024-01-09','muộn'),(146,21,6,'2024-01-09','có mặt'),(147,21,7,'2024-01-09','vắng'),(148,21,8,'2024-01-09','có mặt'),(149,21,9,'2024-01-09','có mặt'),(150,21,10,'2024-01-09','muộn'),(151,21,1,'2024-01-15','có mặt'),(152,21,2,'2024-01-15','vắng'),(153,21,3,'2024-01-15','có mặt'),(154,21,4,'2024-01-15','vắng'),(155,21,5,'2024-01-15','muộn'),(156,21,6,'2024-01-15','có mặt'),(157,21,7,'2024-01-15','vắng'),(158,21,8,'2024-01-15','có mặt'),(159,21,9,'2024-01-15','có mặt'),(160,21,10,'2024-01-15','muộn'),(161,22,1,'2024-01-01','có mặt'),(162,22,2,'2024-01-01','vắng'),(163,22,3,'2024-01-01','có mặt'),(164,22,4,'2024-01-01','vắng'),(165,22,5,'2024-01-01','muộn'),(166,22,6,'2024-01-01','có mặt'),(167,22,7,'2024-01-01','vắng'),(168,22,8,'2024-01-01','có mặt'),(169,22,9,'2024-01-01','có mặt'),(170,22,10,'2024-01-01','muộn'),(171,22,1,'2024-01-02','có mặt'),(172,22,2,'2024-01-02','vắng'),(173,22,3,'2024-01-02','có mặt'),(174,22,4,'2024-01-02','vắng'),(175,22,5,'2024-01-02','muộn'),(176,22,6,'2024-01-02','có mặt'),(177,22,7,'2024-01-02','vắng'),(178,22,8,'2024-01-02','có mặt'),(179,22,9,'2024-01-02','có mặt'),(180,22,10,'2024-01-02','muộn'),(181,22,1,'2024-01-03','có mặt'),(182,22,2,'2024-01-03','vắng'),(183,22,3,'2024-01-03','có mặt'),(184,22,4,'2024-01-03','vắng'),(185,22,5,'2024-01-03','muộn'),(186,22,6,'2024-01-03','có mặt'),(187,22,7,'2024-01-03','vắng'),(188,22,8,'2024-01-03','có mặt'),(189,22,9,'2024-01-03','có mặt'),(190,22,10,'2024-01-03','muộn'),(191,22,1,'2024-01-04','có mặt'),(192,22,2,'2024-01-04','vắng'),(193,22,3,'2024-01-04','có mặt'),(194,22,4,'2024-01-04','vắng'),(195,22,5,'2024-01-04','muộn'),(196,22,6,'2024-01-04','có mặt'),(197,22,7,'2024-01-04','vắng'),(198,22,8,'2024-01-04','có mặt'),(199,22,9,'2024-01-04','có mặt'),(200,22,10,'2024-01-04','muộn'),(201,22,1,'2024-01-05','có mặt'),(202,22,2,'2024-01-05','vắng'),(203,22,3,'2024-01-05','có mặt'),(204,22,4,'2024-01-05','vắng'),(205,22,5,'2024-01-05','muộn'),(206,22,6,'2024-01-05','có mặt'),(207,22,7,'2024-01-05','vắng'),(208,22,8,'2024-01-05','có mặt'),(209,22,9,'2024-01-05','có mặt'),(210,22,10,'2024-01-05','muộn'),(211,22,1,'2024-01-06','có mặt'),(212,22,2,'2024-01-06','vắng'),(213,22,3,'2024-01-06','có mặt'),(214,22,4,'2024-01-06','vắng'),(215,22,5,'2024-01-06','muộn'),(216,22,6,'2024-01-06','có mặt'),(217,22,7,'2024-01-06','vắng'),(218,22,8,'2024-01-06','có mặt'),(219,22,9,'2024-01-06','có mặt'),(220,22,10,'2024-01-06','muộn'),(221,22,1,'2024-01-07','có mặt'),(222,22,2,'2024-01-07','vắng'),(223,22,3,'2024-01-07','có mặt'),(224,22,4,'2024-01-07','vắng'),(225,22,5,'2024-01-07','muộn'),(226,22,6,'2024-01-07','có mặt'),(227,22,7,'2024-01-07','vắng'),(228,22,8,'2024-01-07','có mặt'),(229,22,9,'2024-01-07','có mặt'),(230,22,10,'2024-01-07','muộn'),(231,22,1,'2024-01-08','có mặt'),(232,22,2,'2024-01-08','vắng'),(233,22,3,'2024-01-08','có mặt'),(234,22,4,'2024-01-08','vắng'),(235,22,5,'2024-01-08','muộn'),(236,22,6,'2024-01-08','có mặt'),(237,22,7,'2024-01-08','vắng'),(238,22,8,'2024-01-08','có mặt'),(239,22,9,'2024-01-08','có mặt'),(240,22,10,'2024-01-08','muộn'),(241,22,1,'2024-01-09','có mặt'),(242,22,2,'2024-01-09','vắng'),(243,22,3,'2024-01-09','có mặt'),(244,22,4,'2024-01-09','vắng'),(245,22,5,'2024-01-09','muộn'),(246,22,6,'2024-01-09','có mặt'),(247,22,7,'2024-01-09','vắng'),(248,22,8,'2024-01-09','có mặt'),(249,22,9,'2024-01-09','có mặt'),(250,22,10,'2024-01-09','muộn'),(251,22,1,'2024-01-15','có mặt'),(252,22,2,'2024-01-15','vắng'),(253,22,3,'2024-01-15','có mặt'),(254,22,4,'2024-01-15','vắng'),(255,22,5,'2024-01-15','muộn'),(256,22,6,'2024-01-15','có mặt'),(257,22,7,'2024-01-15','vắng'),(258,22,8,'2024-01-15','có mặt'),(259,22,9,'2024-01-15','có mặt'),(260,22,10,'2024-01-15','muộn');
/*!40000 ALTER TABLE `tblattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclass`
--

DROP TABLE IF EXISTS `tblclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclass` (
  `class_ID` int NOT NULL AUTO_INCREMENT,
  `class_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_ID` int DEFAULT NULL,
  `teacher_ID` int DEFAULT NULL,
  PRIMARY KEY (`class_ID`),
  UNIQUE KEY `class_Code` (`class_Code`),
  KEY `class_teacher` (`teacher_ID`),
  KEY `class_department` (`department_ID`),
  CONSTRAINT `class_department` FOREIGN KEY (`department_ID`) REFERENCES `tbldepartment` (`department_ID`) ON DELETE CASCADE,
  CONSTRAINT `class_teacher` FOREIGN KEY (`teacher_ID`) REFERENCES `tblteacher` (`teacher_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclass`
--

LOCK TABLES `tblclass` WRITE;
/*!40000 ALTER TABLE `tblclass` DISABLE KEYS */;
INSERT INTO `tblclass` VALUES (21,'CLS001','20232IT001',8,1),(22,'CLS002','20232IT002',8,2),(23,'CLS003','20232IT003',8,3),(24,'CLS004','20232IT004',8,4),(25,'CLS005','20232IT005',8,5),(26,'CLS006','20232IT006',8,6),(27,'CLS007','20232IT007',8,7),(28,'CLS008','20232IT008',8,8),(29,'CLS009','20232IT009',8,9),(30,'CLS010','20232IT010',8,10);
/*!40000 ALTER TABLE `tblclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcourse`
--

DROP TABLE IF EXISTS `tblcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcourse` (
  `course_ID` int NOT NULL AUTO_INCREMENT,
  `course_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_short_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL ,
  `course_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_lessons` int DEFAULT NULL,
  `course_credits` int DEFAULT NULL,
  `course_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_goal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_content` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_references` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_previous` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_parallel` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_Prerequisite` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_equivalent` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_term_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_ID` int DEFAULT NULL,
  `program_ID` int DEFAULT NULL,
  PRIMARY KEY (`course_ID`),
  UNIQUE KEY `course_Code` (`course_Code`),
  KEY `class_ID` (`class_ID`),
  KEY `program_ID` (`program_ID`),
  CONSTRAINT `tblcourse_ibfk_1` FOREIGN KEY (`class_ID`) REFERENCES `tblclass` (`class_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblcourse_ibfk_2` FOREIGN KEY (`program_ID`) REFERENCES `tblprogram` (`program_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcourse`
--

LOCK TABLES `tblcourse` WRITE;
/*!40000 ALTER TABLE `tblcourse` DISABLE KEYS */;
INSERT INTO `tblcourse` VALUES (31,'C001','Lập trình cơ bản',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'1',21,1),
								(32,'C002','Cấu trúc dữ liệu và giải thuật',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'2',22,1),
                                (33,'C003','Toán rời rạc',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'1',21,2),
                                (34,'C004','Trí tuệ nhân tạo',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'2',21,2),
                                (35,'C005','Phân tích và thiết kế hệ thống',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'1',21,3),
                                (36,'C006','Quản trị cơ sở dữ liệu',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'2',22,3),
                                (37,'C007','Thực tập cơ sở ngành',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'1',22,4),
                                (38,'C008','An toàn và bảo mật thông tin',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'2',22,4),
                                (39,'C009','Lập trình di động',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'1',21,5),
                                (40,'C010','Xử lý ảnh và video',null,null,45,3,'Bắt buộc',null,null,null,null,null,null,null,'2',21,5);
/*!40000 ALTER TABLE `tblcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcourse_registration`
--

DROP TABLE IF EXISTS `tblcourse_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcourse_registration` (
  `registration_ID` int NOT NULL AUTO_INCREMENT,
  `course_ID` int DEFAULT NULL,
  `student_ID` int DEFAULT NULL,
  `term_Number` int DEFAULT NULL,
  `registration_Date` date DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`registration_ID`),
  KEY `course_ID` (`course_ID`),
  KEY `student_ID` (`student_ID`),
  CONSTRAINT `tblcourse_registration_ibfk_1` FOREIGN KEY (`course_ID`) REFERENCES `tblcourse` (`course_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblcourse_registration_ibfk_2` FOREIGN KEY (`student_ID`) REFERENCES `tblstudent` (`student_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcourse_registration`
--

LOCK TABLES `tblcourse_registration` WRITE;
/*!40000 ALTER TABLE `tblcourse_registration` DISABLE KEYS */;
INSERT INTO `tblcourse_registration` VALUES (401,31,1,1,'2024-06-01','Đã đăng ký'),(402,32,1,1,'2024-06-02','Đã đăng ký'),(403,33,1,2,'2024-06-03','Đã đăng ký'),(404,34,1,2,'2024-06-04','Đã đăng ký'),(405,35,1,5,'2024-06-05','Đã đăng ký'),(406,36,1,6,'2024-06-06','Chưa đăng ký'),(407,37,1,7,'2024-06-07','Chưa đăng ký'),(408,38,1,8,'2024-06-08','Chưa đăng ký'),(409,39,1,3,'2024-06-09','Chưa đăng ký'),(410,40,1,3,'2024-06-10','Đã đăng ký'),(411,31,2,1,'2024-06-01','Đã đăng ký'),(412,32,2,1,'2024-06-02','Đã đăng ký'),(413,33,2,2,'2024-06-03','Đã đăng ký'),(414,34,2,2,'2024-06-04','Đã đăng ký'),(415,35,2,5,'2024-06-05','Đã đăng ký'),(416,36,2,6,'2024-06-06','Chưa đăng ký'),(417,37,2,7,'2024-06-07','Chưa đăng ký'),(418,38,2,8,'2024-06-08','Chưa đăng ký'),(419,39,2,3,'2024-06-09','Chưa đăng ký'),(420,40,2,3,'2024-06-10','Đã đăng ký'),(421,31,3,1,'2024-06-01','Đã đăng ký'),(422,32,3,1,'2024-06-03','Đã đăng ký'),(423,33,3,3,'2024-06-03','Đã đăng ký'),(424,34,3,3,'2024-06-04','Chưa đăng ký'),(425,35,3,5,'2024-06-05','Đã đăng ký'),(426,36,3,6,'2024-06-06','Chưa đăng ký'),(427,37,3,7,'2024-06-07','Chưa đăng ký'),(428,38,3,8,'2024-06-08','Chưa đăng ký'),(429,39,3,3,'2024-06-09','Chưa đăng ký'),(430,40,3,3,'2024-06-10','Đã đăng ký'),(431,31,4,1,'2024-06-01','Đã đăng ký'),(432,32,4,1,'2024-06-02','Đã đăng ký'),(433,33,4,2,'2024-06-03','Đã đăng ký'),(434,34,4,2,'2024-06-04','Đã đăng ký'),(435,35,4,5,'2024-06-05','Đã đăng ký'),(436,36,4,6,'2024-06-06','Đã đăng ký'),(437,37,4,7,'2024-06-07','Đã đăng ký'),(438,38,4,8,'2024-06-08','Đã đăng ký'),(439,39,4,3,'2024-06-09','Đã đăng ký'),(440,40,4,3,'2024-06-10','Đã đăng ký'),(441,31,5,1,'2024-06-01','Đã đăng ký'),(442,32,5,1,'2024-06-02','Đã đăng ký'),(443,33,5,2,'2024-06-03','Đã đăng ký'),(444,34,5,2,'2024-06-04','Đã đăng ký'),(445,35,5,5,'2024-06-05','Đã đăng ký'),(446,36,5,6,'2024-06-06','Đã đăng ký'),(447,37,5,7,'2024-06-07','Đã đăng ký'),(448,38,5,8,'2024-06-08','Đã đăng ký'),(449,39,5,3,'2024-06-09','Đã đăng ký'),(450,40,5,3,'2024-06-10','Đã đăng ký'),(451,31,6,1,'2024-06-01','Đã đăng ký'),(452,32,6,1,'2024-06-02','Đã đăng ký'),(453,33,6,2,'2024-06-03','Đã đăng ký'),(454,34,6,2,'2024-06-04','Đã đăng ký'),(455,35,6,5,'2024-06-05','Đã đăng ký'),(456,36,6,6,'2024-06-06','Đã đăng ký'),(457,37,6,7,'2024-06-07','Đã đăng ký'),(458,38,6,8,'2024-06-08','Đã đăng ký'),(459,39,6,3,'2024-06-09','Đã đăng ký'),(460,40,6,3,'2024-06-10','Đã đăng ký'),(461,31,7,1,'2024-06-01','Đã đăng ký'),(462,32,7,1,'2024-06-02','Đã đăng ký'),(463,33,7,2,'2024-06-03','Đã đăng ký'),(464,34,7,2,'2024-06-04','Đã đăng ký'),(465,35,7,5,'2024-06-05','Đã đăng ký'),(466,36,7,6,'2024-06-06','Đã đăng ký'),(467,37,7,7,'2024-06-07','Đã đăng ký'),(468,38,7,8,'2024-06-08','Đã đăng ký'),(469,39,7,3,'2024-06-09','Đã đăng ký'),(470,40,7,3,'2024-06-10','Đã đăng ký'),(471,31,8,1,'2024-06-01','Đã đăng ký'),(472,32,8,1,'2024-06-02','Đã đăng ký'),(473,33,8,2,'2024-06-03','Đã đăng ký'),(474,34,8,2,'2024-06-04','Đã đăng ký'),(475,35,8,5,'2024-06-05','Chưa đăng ký'),(476,36,8,6,'2024-06-06','Đã đăng ký'),(477,37,8,7,'2024-06-07','Đã đăng ký'),(478,38,8,8,'2024-06-08','Đã đăng ký'),(479,39,8,3,'2024-06-09','Đã đăng ký'),(480,40,8,3,'2024-06-10','Đã đăng ký'),(481,31,9,1,'2024-06-01','Đã đăng ký'),(482,32,9,1,'2024-06-02','Đã đăng ký'),(483,33,9,2,'2024-06-03','Đã đăng ký'),(484,34,9,2,'2024-06-04','Đã đăng ký'),(485,35,9,5,'2024-06-05','Đã đăng ký'),(486,36,9,6,'2024-06-06','Đã đăng ký'),(487,37,9,7,'2024-06-07','Đã đăng ký'),(488,38,9,8,'2024-06-08','Đã đăng ký'),(489,39,9,3,'2024-06-09','Đã đăng ký'),(490,40,9,3,'2024-06-10','Đã đăng ký'),(491,31,10,1,'2024-06-01','Đã đăng ký'),(492,32,10,1,'2024-06-02','Đã đăng ký'),(493,33,10,2,'2024-06-03','Đã đăng ký'),(494,34,10,2,'2024-06-04','Đã đăng ký'),(495,35,10,5,'2024-06-05','Đã đăng ký'),(496,36,10,6,'2024-06-06','Đã đăng ký'),(497,37,10,7,'2024-06-07','Đã đăng ký'),(498,38,10,8,'2024-06-08','Đã đăng ký'),(499,39,10,3,'2024-06-09','Đã đăng ký'),(500,40,10,3,'2024-06-10','Đã đăng ký'),(501,31,11,1,'2024-06-01','Đã đăng ký'),(502,32,11,1,'2024-06-02','Đã đăng ký'),(503,33,11,2,'2024-06-03','Đã đăng ký'),(504,34,11,2,'2024-06-04','Đã đăng ký'),(505,35,11,5,'2024-06-05','Đã đăng ký'),(506,36,11,6,'2024-06-06','Đã đăng ký'),(507,37,11,7,'2024-06-07','Đã đăng ký'),(508,38,11,8,'2024-06-08','Đã đăng ký'),(509,39,11,3,'2024-06-09','Đã đăng ký'),(510,40,11,3,'2024-06-10','Đã đăng ký'),(511,31,12,1,'2024-06-01','Đã đăng ký'),(512,32,12,1,'2024-06-02','Đã đăng ký'),(513,33,12,2,'2024-06-03','Đã đăng ký'),(514,34,12,2,'2024-06-04','Đã đăng ký'),(515,35,12,5,'2024-06-05','Đã đăng ký'),(516,36,12,6,'2024-06-06','Đã đăng ký'),(517,37,12,7,'2024-06-07','Đã đăng ký'),(518,38,12,8,'2024-06-08','Đã đăng ký'),(519,39,12,3,'2024-06-09','Đã đăng ký'),(520,40,12,3,'2024-06-10','Đã đăng ký'),(521,31,13,1,'2024-06-01','Đã đăng ký'),(522,32,13,1,'2024-06-02','Đã đăng ký'),(523,33,13,2,'2024-06-03','Đã đăng ký'),(524,34,13,2,'2024-06-04','Đã đăng ký'),(525,35,13,5,'2024-06-05','Đã đăng ký'),(526,36,13,6,'2024-06-06','Đã đăng ký'),(527,37,13,7,'2024-06-07','Đã đăng ký'),(528,38,13,8,'2024-06-08','Đã đăng ký'),(529,39,13,3,'2024-06-09','Đã đăng ký'),(530,40,13,3,'2024-06-10','Đã đăng ký'),(531,31,14,1,'2024-06-01','Đã đăng ký'),(532,32,14,1,'2024-06-02','Đã đăng ký'),(533,33,14,2,'2024-06-03','Đã đăng ký'),(534,34,14,2,'2024-06-04','Đã đăng ký'),(535,35,14,5,'2024-06-05','Đã đăng ký'),(536,36,14,6,'2024-06-06','Đã đăng ký'),(537,37,14,7,'2024-06-07','Đã đăng ký'),(538,38,14,8,'2024-06-08','Đã đăng ký'),(539,39,14,3,'2024-06-09','Đã đăng ký'),(540,40,14,3,'2024-06-10','Đã đăng ký'),(541,31,15,1,'2024-06-01','Đã đăng ký'),(542,32,15,1,'2024-06-02','Đã đăng ký'),(543,33,15,2,'2024-06-03','Đã đăng ký'),(544,34,15,2,'2024-06-04','Đã đăng ký'),(545,35,15,5,'2024-06-05','Đã đăng ký'),(546,36,15,6,'2024-06-06','Đã đăng ký'),(547,37,15,7,'2024-06-07','Đã đăng ký'),(548,38,15,8,'2024-06-08','Đã đăng ký'),(549,39,15,3,'2024-06-09','Đã đăng ký'),(550,40,15,3,'2024-06-10','Đã đăng ký'),(551,31,16,1,'2024-06-01','Đã đăng ký'),(552,32,16,1,'2024-06-02','Đã đăng ký'),(553,33,16,2,'2024-06-03','Đã đăng ký'),(554,34,16,2,'2024-06-04','Đã đăng ký'),(555,35,16,5,'2024-06-05','Đã đăng ký'),(556,36,16,6,'2024-06-06','Đã đăng ký'),(557,37,16,7,'2024-06-07','Đã đăng ký'),(558,38,16,8,'2024-06-08','Đã đăng ký'),(559,39,16,3,'2024-06-09','Đã đăng ký'),(560,40,16,3,'2024-06-10','Đã đăng ký'),(561,31,17,1,'2024-06-01','Đã đăng ký'),(562,32,17,1,'2024-06-02','Đã đăng ký'),(563,33,17,2,'2024-06-03','Đã đăng ký'),(564,34,17,2,'2024-06-04','Đã đăng ký'),(565,35,17,5,'2024-06-05','Đã đăng ký'),(566,36,17,6,'2024-06-06','Đã đăng ký'),(567,37,17,7,'2024-06-07','Đã đăng ký'),(568,38,17,8,'2024-06-08','Đã đăng ký'),(569,39,17,3,'2024-06-09','Đã đăng ký'),(570,40,17,3,'2024-06-10','Đã đăng ký'),(571,31,18,1,'2024-06-01','Đã đăng ký'),(572,32,18,1,'2024-06-02','Đã đăng ký'),(573,33,18,2,'2024-06-03','Đã đăng ký'),(574,34,18,2,'2024-06-04','Đã đăng ký'),(575,35,18,5,'2024-06-05','Đã đăng ký'),(576,36,18,6,'2024-06-06','Chưa đăng ký'),(577,37,18,7,'2024-06-07','Chưa đăng ký'),(578,38,18,8,'2024-06-08','Đã đăng ký'),(579,39,18,3,'2024-06-09','Đã đăng ký'),(580,40,18,3,'2024-06-10','Đã đăng ký'),(581,31,19,1,'2024-06-01','Đã đăng ký'),(582,32,19,1,'2024-06-02','Đã đăng ký'),(583,33,19,2,'2024-06-03','Đã đăng ký'),(584,34,19,2,'2024-06-04','Đã đăng ký'),(585,35,19,5,'2024-06-05','Đã đăng ký'),(586,36,19,6,'2024-06-06','Đã đăng ký'),(587,37,19,7,'2024-06-07','Chưa đăng ký'),(588,38,19,8,'2024-06-08','Đã đăng ký'),(589,39,19,3,'2024-06-09','Đã đăng ký'),(590,40,19,3,'2024-06-10','Đã đăng ký'),(591,31,20,1,'2024-06-01','Đã đăng ký'),(592,32,20,1,'2024-06-02','Đã đăng ký'),(593,33,20,2,'2024-06-03','Đã đăng ký'),(594,34,20,2,'2024-06-04','Đã đăng ký'),(595,35,20,5,'2024-06-05','Đã đăng ký'),(596,36,20,6,'2024-06-06','Chưa đăng ký'),(597,37,20,7,'2024-06-07','Đã đăng ký'),(598,38,20,8,'2024-06-08','Đã đăng ký'),(599,39,20,3,'2024-06-09','Đã đăng ký'),(600,40,20,3,'2024-06-10','Đã đăng ký');
/*!40000 ALTER TABLE `tblcourse_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldepartment`
--

DROP TABLE IF EXISTS `tbldepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldepartment` (
  `department_ID` int NOT NULL AUTO_INCREMENT,
  `department_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`department_ID`),
  UNIQUE KEY `department_Code` (`department_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepartment`
--

LOCK TABLES `tbldepartment` WRITE;
/*!40000 ALTER TABLE `tbldepartment` DISABLE KEYS */;
INSERT INTO `tbldepartment` VALUES (1,'DEP001','Khoa Công nghệ May'),(2,'DEP002','Khoa Du lịch lữ hành'),(3,'DEP003','Khoa Quản lý Công nghiệp'),(4,'DEP004','Khoa Công nghệ Hóa học và Thực phẩm'),(5,'DEP005','Khoa Kế toán'),(6,'DEP006','Khoa Quản trị kinh doanh'),(7,'DEP007','Khoa Công nghệ Môi trường'),(8,'DEP008','Khoa Công nghệ Thông tin'),(9,'DEP009','Khoa Kỹ thuật Cơ khí và Tự động hóa'),(10,'DEP010','Khoa Công nghệ Điện tử và Viễn thông');
/*!40000 ALTER TABLE `tbldepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblexam_schedule`
--

DROP TABLE IF EXISTS `tblexam_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblexam_schedule` (
  `exam_Schedule_ID` int NOT NULL AUTO_INCREMENT,
  `course_ID` int DEFAULT NULL,
  `term_Number` int DEFAULT NULL,
  `exam_Date` date DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`exam_Schedule_ID`),
  KEY `course_ID` (`course_ID`),
  CONSTRAINT `tblexam_schedule_ibfk_1` FOREIGN KEY (`course_ID`) REFERENCES `tblcourse` (`course_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexam_schedule`
--

LOCK TABLES `tblexam_schedule` WRITE;
/*!40000 ALTER TABLE `tblexam_schedule` DISABLE KEYS */;
INSERT INTO `tblexam_schedule` VALUES (41,31,1,'2024-07-01','2008-00-00','2010-00-00','Phòng A101'),(42,31,1,'2024-07-02','2009-00-00','2011-00-00','Phòng B102'),(43,31,1,'2024-07-03','2010-00-00','2012-00-00','Phòng C103'),(44,31,1,'2024-07-04','2011-00-00','2013-00-00','Phòng D104'),(45,31,1,'2024-07-05','2012-00-00','2014-00-00','Phòng E105'),(46,31,1,'2024-07-06','2013-00-00','2015-00-00','Phòng F106'),(47,31,1,'2024-07-07','2014-00-00','2016-00-00','Phòng G107'),(48,31,1,'2024-07-08','2015-00-00','2017-00-00','Phòng H108'),(49,31,1,'2024-07-09','2016-00-00','2018-00-00','Phòng I109'),(50,31,1,'2024-07-10','2017-00-00','2019-00-00','Phòng K110'),(51,32,2,'2024-07-01','2008-00-00','2010-00-00','Phòng A102'),(52,32,2,'2024-07-02','2009-00-00','2011-00-00','Phòng B103'),(53,32,2,'2024-07-03','2010-00-00','2012-00-00','Phòng C102'),(54,32,2,'2024-07-04','2011-00-00','2013-00-00','Phòng D102'),(55,32,2,'2024-07-05','2012-00-00','2014-00-00','Phòng E102'),(56,32,2,'2024-07-06','2013-00-00','2015-00-00','Phòng F102'),(57,32,2,'2024-07-07','2014-00-00','2016-00-00','Phòng G102'),(58,32,2,'2024-07-08','2015-00-00','2017-00-00','Phòng H102'),(59,32,2,'2024-07-09','2016-00-00','2018-00-00','Phòng I102'),(60,32,2,'2024-07-10','2017-00-00','2019-00-00','Phòng K112');
/*!40000 ALTER TABLE `tblexam_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgrade`
--

DROP TABLE IF EXISTS `tblgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgrade` (
  `grade_ID` int NOT NULL AUTO_INCREMENT,
  `class_ID` int DEFAULT NULL,
  `student_ID` int DEFAULT NULL,
  `course_ID` int DEFAULT NULL,
  `tx1` float DEFAULT NULL,
  `tx2` float DEFAULT NULL,
  `exam_Score` float DEFAULT NULL,
  `letter_Score` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`grade_ID`),
  KEY `class_ID` (`class_ID`),
  KEY `course_ID` (`course_ID`),
  KEY `student_ID` (`student_ID`),
  CONSTRAINT `tblgrade_ibfk_1` FOREIGN KEY (`class_ID`) REFERENCES `tblclass` (`class_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblgrade_ibfk_2` FOREIGN KEY (`course_ID`) REFERENCES `tblcourse` (`course_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblgrade_ibfk_3` FOREIGN KEY (`student_ID`) REFERENCES `tblstudent` (`student_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgrade`
--

LOCK TABLES `tblgrade` WRITE;
/*!40000 ALTER TABLE `tblgrade` DISABLE KEYS */;
INSERT INTO `tblgrade` VALUES (41,21,1,31,8.5,7.5,9,'A'),(42,21,2,31,7,8,8.5,'B+'),(43,21,3,31,8,9,8,'B'),(44,21,4,31,6.5,7.5,7,'C+'),(45,21,5,31,9,8.5,8.5,'B+'),(46,21,6,31,8.5,9,9,'A'),(47,21,7,31,7,6.5,8,'B'),(48,21,8,31,8,8,7.5,'B+'),(49,21,9,31,9,9,9,'A'),(50,21,10,31,7.5,8,8.5,'B+'),(51,21,1,32,8.5,7.5,9,'A'),(52,21,2,32,7,8,8.5,'B+'),(53,21,3,32,8,9,8,'B'),(54,21,4,32,6.5,7.5,7,'C+'),(55,21,5,32,9,8.5,8.5,'B+'),(56,21,6,32,8.5,9,9,'A'),(57,21,7,32,7,6.5,8,'B'),(58,21,8,32,8,8,7.5,'B+'),(59,21,9,32,9,9,9,'A'),(60,21,10,32,7.5,8,8.5,'B+'),(61,21,1,33,8.5,7.5,9,'A'),(62,21,2,33,7,8,8.5,'B+'),(63,21,3,33,8,9,8,'B'),(64,21,4,33,6.5,7.5,7,'C+'),(65,21,5,33,9,8.5,8.5,'B+'),(66,21,6,33,8.5,9,9,'A'),(67,21,7,33,7,6.5,8,'B'),(68,21,8,33,8,8,7.5,'B+'),(69,21,9,33,9,9,9,'A'),(70,21,10,33,7.5,8,8.5,'B+'),(71,22,1,31,8.5,7.5,9,'A'),(72,22,2,31,7,8,8.5,'B+'),(73,22,3,31,8,9,8,'B'),(74,22,4,31,6.5,7.5,7,'C+'),(75,22,5,31,9,8.5,8.5,'B+'),(76,22,6,31,8.5,9,9,'A'),(77,22,7,31,7,6.5,8,'B'),(78,22,8,31,8,8,7.5,'B+'),(79,22,9,31,9,9,9,'A'),(80,22,10,31,7.5,8,8.5,'B+'),(81,22,1,32,8.5,7.5,9,'A'),(82,22,2,32,7,8,8.5,'B+'),(83,22,3,32,8,9,8,'B'),(84,22,4,32,6.5,7.5,7,'C+'),(85,22,5,32,9,8.5,8.5,'B+'),(86,22,6,32,8.5,9,9,'A'),(87,22,7,32,7,6.5,8,'B'),(88,22,8,32,8,8,7.5,'B+'),(89,22,9,32,9,9,9,'A'),(90,22,10,32,7.5,8,8.5,'B+'),(91,22,1,33,8.5,7.5,9,'A'),(92,22,2,33,7,8,8.5,'B+'),(93,22,3,33,8,9,8,'B'),(94,22,4,33,6.5,7.5,7,'C+'),(95,22,5,33,9,8.5,8.5,'B+'),(96,22,6,33,8.5,9,9,'A'),(97,22,7,33,7,6.5,8,'B'),(98,22,8,33,8,8,7.5,'B+'),(99,22,9,33,9,9,9,'A'),(100,22,10,33,7.5,8,8.5,'B+');
/*!40000 ALTER TABLE `tblgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmajor`
--

DROP TABLE IF EXISTS `tblmajor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmajor` (
  `major_ID` int NOT NULL AUTO_INCREMENT,
  `major_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `major_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_ID` int DEFAULT NULL,
  PRIMARY KEY (`major_ID`),
  UNIQUE KEY `major_Code` (`major_Code`),
  KEY `department_ID` (`department_ID`),
  CONSTRAINT `tblmajor_ibfk_1` FOREIGN KEY (`department_ID`) REFERENCES `tbldepartment` (`department_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmajor`
--

LOCK TABLES `tblmajor` WRITE;
/*!40000 ALTER TABLE `tblmajor` DISABLE KEYS */;
INSERT INTO `tblmajor` VALUES (1,'M001','Khoa Học Máy Tính',8),(2,'M002','Kỹ Thuật Phần Mềm',8),(3,'HT008','Hệ thống thông tin',8),(4,'CN008','Công nghệ thông tin',8),(5,'TC002','Cơ khí',9),(6,'QL002','Quản Trị Kinh Doanh',6),(7,'KT005','Quản trị khách sạn',2),(8,'KT006','Kế Toán',5),(9,'KT007','Quản Trị Nhân Lực',6),(10,'AT002','An Toàn Thông Tin',8);
/*!40000 ALTER TABLE `tblmajor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprogram`
--

DROP TABLE IF EXISTS `tblprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblprogram` (
  `program_ID` int NOT NULL AUTO_INCREMENT,
  `program_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `program_Term_Number` int DEFAULT NULL,
  `major_ID` int DEFAULT NULL,
  PRIMARY KEY (`program_ID`),
  UNIQUE KEY `program_Code` (`program_Code`),
  KEY `major_ID` (`major_ID`),
  CONSTRAINT `tblprogram_ibfk_1` FOREIGN KEY (`major_ID`) REFERENCES `tblmajor` (`major_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprogram`
--

LOCK TABLES `tblprogram` WRITE;
/*!40000 ALTER TABLE `tblprogram` DISABLE KEYS */;
INSERT INTO `tblprogram` VALUES (1,'PROG001',1,8),(2,'PROG002',2,8),(3,'PROG003',3,8),(4,'PROG004',4,8),(5,'PROG005',5,8),(6,'PROG006',6,8),(7,'PROG007',7,8),(8,'PROG008',8,8);
/*!40000 ALTER TABLE `tblprogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole` (
  `role_ID` int NOT NULL AUTO_INCREMENT,
  `role_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'admin'),(2,'giảng viên'),(3,'sinh viên');
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent` (
  `student_ID` int NOT NULL AUTO_INCREMENT,
  `student_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_Home_Town` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_Dob` date DEFAULT NULL,
  `student_CCCD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_National` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_Religition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_Phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_ID` int DEFAULT NULL,
  `department_ID` int DEFAULT NULL,
  PRIMARY KEY (`student_ID`),
  UNIQUE KEY `student_Code` (`student_Code`),
  KEY `account_ID` (`account_ID`),
  KEY `department_ID` (`department_ID`),
  CONSTRAINT `tblstudent_ibfk_1` FOREIGN KEY (`account_ID`) REFERENCES `tblaccount` (`account_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblstudent_ibfk_2` FOREIGN KEY (`department_ID`) REFERENCES `tbldepartment` (`department_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent`
--

LOCK TABLES `tblstudent` WRITE;
/*!40000 ALTER TABLE `tblstudent` DISABLE KEYS */;
INSERT INTO `tblstudent` VALUES (1,'SV001','Nguyễn Thị Thanh Hoài','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',12,8),
								(2,'SV002','Trần Thị Minh Trang','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',13,8),
                                (3,'SV003','Phạm Văn Ngọc Hiếu','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',14,8),
                                (4,'SV004','Hoàng Tuấn Phúc','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',15,8),
                                (5,'SV005','Nguyễn Thị Linh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',16,8),
                                (6,'SV006','Đinh Trung Sơn','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',17,8),
                                (7,'SV007','Lý Văn Thanh Phương','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',18,8),
                                (8,'SV008','Trần Thị Bình Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',19,8),
                                (9,'SV009','Nguyễn Hoàng Mai','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',20,8),
                                (10,'SV010','Dương Thị Thúy','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',21,8),
                                (11,'SV011','Nguyễn Văn Hoàng Ái','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',22,8),
                                (12,'SV012','Trần Phan Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',23,8),
                                (13,'SV013','Phạm Doãn Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',24,8),
                                (14,'SV014','Hoàng Văn Hải Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',25,8),
                                (15,'SV015','Nguyễn Thị Việt Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',26,8),
                                (16,'SV016','Đinh Văn Công Bình','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',27,8),
                              (17,'SV017','Lý Đức Bình','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',28,8),
                                (18,'SV018','Trần Đình Bình','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',29,8),
                                (19,'SV019','Nguyễn Khắc Cảnh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',30,8),
                                (20,'SV020','Dương Kim Chi','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',31,8);
/*!40000 ALTER TABLE `tblstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblteacher`
--

DROP TABLE IF EXISTS `tblteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblteacher` (
  `teacher_ID` int NOT NULL AUTO_INCREMENT,
  `teacher_Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
	`teacher_Home_Town` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_Dob` date DEFAULT NULL,
  `teacher_CCCD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_National` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_Religition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_Phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_ID` int DEFAULT NULL,
  `department_ID` int DEFAULT NULL,
  PRIMARY KEY (`teacher_ID`),
  UNIQUE KEY `teacher_Code` (`teacher_Code`),
  KEY `account_ID` (`account_ID`),
  KEY `department_ID` (`department_ID`),
  CONSTRAINT `tblteacher_ibfk_1` FOREIGN KEY (`account_ID`) REFERENCES `tblaccount` (`account_ID`) ON DELETE CASCADE,
  CONSTRAINT `tblteacher_ibfk_2` FOREIGN KEY (`department_ID`) REFERENCES `tbldepartment` (`department_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblteacher`
--

LOCK TABLES `tblteacher` WRITE;
/*!40000 ALTER TABLE `tblteacher` DISABLE KEYS */;
INSERT INTO `tblteacher` VALUES (1,'TC001','Nguyễn Thị Minh Châu','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',2,8),
								(2,'TC002','Nguyễn Văn Hiếu','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',3,8),
                                (3,'TC003','Lê Văn Tuấn Anh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',4,8),
                                (4,'TC004','Phạm Thị Linh Ngọc','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',5,8),
                                (5,'TC005','Hoàng Văn Trung Vũ','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',6,8),
                                (6,'TC006','Vũ Thị Thiên Hương','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',7,8),
                                (7,'TC007','Đinh Văn Bình Minh','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',8,8),
                                (8,'TC008','Lý Văn Hoàng Long','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',9,8),
                                (9,'TC009','Trương Dương Phát','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',10,8),
                                (10,'TC010','Vũ Thùy Trâm','Hà Nội','2000-12-23','1111111111','Việt Nam','Không','0123456789',11,8);
/*!40000 ALTER TABLE `tblteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltimetable`
--

DROP TABLE IF EXISTS `tbltimetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltimetable` (
  `timetable_ID` int NOT NULL AUTO_INCREMENT,
  `course_ID` int DEFAULT NULL,
  `term_number` int DEFAULT NULL,
  `day` date DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`timetable_ID`),
  KEY `course_ID` (`course_ID`),
  CONSTRAINT `tbltimetable_ibfk_1` FOREIGN KEY (`course_ID`) REFERENCES `tblcourse` (`course_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltimetable`
--

LOCK TABLES `tbltimetable` WRITE;
/*!40000 ALTER TABLE `tbltimetable` DISABLE KEYS */;
INSERT INTO `tbltimetable` VALUES (31,31,1,'2024-06-10','2008-00-00','2010-00-00','Phòng A101'),(32,31,1,'2024-06-11','2009-00-00','2011-00-00','Phòng B102'),(33,31,2,'2024-06-12','2010-00-00','2012-00-00','Phòng C103'),(34,31,2,'2024-06-13','2011-00-00','2013-00-00','Phòng D104'),(35,31,5,'2024-06-14','2012-00-00','2014-00-00','Phòng E105'),(36,32,6,'2024-06-15','2013-00-00','2015-00-00','Phòng F106'),(37,32,7,'2024-06-16','2014-00-00','2016-00-00','Phòng G107'),(38,32,8,'2024-06-17','2015-00-00','2017-00-00','Phòng H108'),(39,32,3,'2024-06-18','2016-00-00','2018-00-00','Phòng I109'),(40,32,3,'2024-06-19','2017-00-00','2019-00-00','Phòng K110');
/*!40000 ALTER TABLE `tbltimetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 23:03:03
