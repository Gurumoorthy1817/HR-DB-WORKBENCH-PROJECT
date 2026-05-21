-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: hr_project
-- ------------------------------------------------------
-- Server version	8.0.46

--
-- Table structure for table `attendance`
--
CREATE TABLE `attendance` (
  `AttendanceID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
INSERT INTO `attendance` VALUES (1,101,'2026-05-01','Present'),(2,102,'2026-05-01','Absent'),(3,103,'2026-05-01','Present'),(4,104,'2026-05-01','Present'),(5,105,'2026-05-01','Leave'),(6,106,'2026-05-01','Present'),(7,107,'2026-05-01','Present'),(8,108,'2026-05-01','Present'),(9,109,'2026-05-01','Absent'),(10,110,'2026-05-01','Present');
UNLOCK TABLES;

-- Dump completed on 2026-05-20 14:28:22
