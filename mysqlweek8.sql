-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: healthcare_db
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1


DROP TABLE IF EXISTS `Appointments`;

CREATE TABLE `Appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `status` enum('Scheduled','Completed','Cancelled') DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `Appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`),
  CONSTRAINT `Appointments_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `Healthcare_Providers` (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




LOCK TABLES `Appointments` WRITE;

INSERT INTO `Appointments` VALUES (81,3,1,'2024-09-25 00:00:00','Scheduled'),(82,4,2,'2024-09-26 00:00:00','Scheduled'),(83,5,3,'2024-09-27 00:00:00','Scheduled'),(84,6,4,'2024-09-28 00:00:00','Scheduled'),(85,7,5,'2024-09-29 00:00:00','Completed'),(86,8,6,'2024-09-30 00:00:00','Scheduled'),(87,9,7,'2024-10-01 00:00:00','Cancelled'),(88,10,8,'2024-10-02 00:00:00','Scheduled'),(89,11,9,'2024-10-03 00:00:00','Scheduled'),(90,12,10,'2024-10-04 00:00:00','Completed'),(91,13,1,'2024-10-05 00:00:00','Scheduled'),(92,14,2,'2024-10-06 00:00:00','Scheduled'),(93,15,3,'2024-10-07 00:00:00','Scheduled'),(94,16,4,'2024-10-08 00:00:00','Scheduled'),(95,17,5,'2024-10-09 00:00:00','Completed'),(96,18,6,'2024-10-10 00:00:00','Scheduled'),(97,19,7,'2024-10-11 00:00:00','Cancelled'),(98,20,8,'2024-10-12 00:00:00','Scheduled'),(99,21,9,'2024-10-13 00:00:00','Scheduled');

UNLOCK TABLES;

--
-- Table structure for table `Healthcare_Providers`
--

DROP TABLE IF EXISTS `Healthcare_Providers`;

CREATE TABLE `Healthcare_Providers` (
  `provider_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('Hospital','Clinic','Pharmacy') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `Healthcare_Providers` WRITE;
/*!40000 ALTER TABLE `Healthcare_Providers` DISABLE KEYS */;
INSERT INTO `Healthcare_Providers` VALUES (1,'City Hospital','Hospital','789 Maple Ave, City','555-8765'),(2,'Health Clinic','Clinic','321 Oak St, City','555-4321'),(3,'Dr. Peter Mwangi','Clinic','123 Medical Plaza, Nairobi','0712-345678'),(4,'Dr. Alice Njeri','Clinic','456 Children\'s Clinic, Nairobi','0713-456789'),(5,'Dr. David Kamau','Hospital','789 Heart Center, Nairobi','0714-567890'),(6,'Nurse Mary Wambui','Clinic','101 Health Center, Nairobi','0715-678901'),(7,'Dr. Michael Onyango','Hospital','202 Surgical Hospital, Nairobi','0716-789012'),(8,'Dr. Grace Chebet','Clinic','303 Dental Clinic, Nairobi','0717-890123'),(9,'Dr. Josephat Waweru','Clinic','404 Women\'s Health Clinic, Nairobi','0718-901234'),(10,'Dr. Patricia Mumbi','Hospital','505 Bone & Joint Clinic, Nairobi','0719-012345'),(11,'Nurse Rachel Achieng','Clinic','606 Community Health Center, Nairobi','0720-123456'),(12,'Dr. Eric Nyongesa','Hospital','707 Mental Health Center, Nairobi','0721-234567');

UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;

CREATE TABLE `Patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Patients` WRITE;

INSERT INTO `Patients` VALUES (3,'John Mwangi',35,'Male','123 Kenyatta Avenue, Nairobi','0701-123456'),(4,'Mary Wambui',29,'Female','456 Moi Avenue, Nairobi','0702-234567'),(5,'David Kamau',40,'Male','789 Uhuru Street, Nairobi','0703-345678'),(6,'Alice Njeri',31,'Female','101 Magadi Road, Nairobi','0704-456789'),(7,'Peter Otieno',28,'Male','202 Jomo Kenyatta Road, Nairobi','0705-567890'),(8,'Jane Muthoni',33,'Female','303 Thika Road, Nairobi','0706-678901'),(9,'Michael Onyango',37,'Male','404 Lang’ata Road, Nairobi','0707-789012'),(10,'Rachel Achieng',26,'Female','505 Hurlingham, Nairobi','0708-890123'),(11,'Daniel Kiprono',45,'Male','606 Riverside Drive, Nairobi','0709-901234'),(12,'Grace Chebet',32,'Female','707 Parklands, Nairobi','0710-012345'),(13,'Josephat Waweru',38,'Male','808 Lavington, Nairobi','0711-123456'),(14,'Patricia Mumbi',30,'Female','909 Runda, Nairobi','0712-234567'),(15,'George Kiprotich',42,'Male','1010 Garden Estate, Nairobi','0713-345678'),(16,'Florence Jebet',27,'Female','1111 Kasarani, Nairobi','0714-456789'),(17,'James Mwaura',41,'Male','1212 Donholm, Nairobi','0715-567890'),(18,'Lucy Wangari',34,'Female','1313 Utawala, Nairobi','0716-678901'),(19,'Eric Nyongesa',39,'Male','1414 Ruai, Nairobi','0717-789012'),(20,'Monica Njoki',25,'Female','1515 Juja, Nairobi','0718-890123'),(21,'Pauline Wairimu',29,'Female','1616 Embakasi, Nairobi','0719-901234'),(22,'Samuel Ndegwa',36,'Male','1717 Kiambu Road, Nairobi','0720-012345'),(23,'Wangui Njeri',32,'Female','1818 Kawangware, Nairobi','0721-123456');

UNLOCK TABLES;


-- Dump completed on 2024-09-19 12:48:30
