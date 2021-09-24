-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: EntregableIndividual
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'amarillo'),(2,'azul'),(6,'blanco'),(9,'celeste'),(7,'dorado'),(10,'marron'),(1,'rojo'),(5,'rosado'),(3,'verde'),(8,'violeta');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_modification` datetime NOT NULL,
  `description` text NOT NULL,
  `can_be_eliminated` tinyint(4) NOT NULL,
  `id_categories` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `id_categories` (`id_categories`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Titulo1','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoUNO',1,1),(2,'Titulo2','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoDOS',1,2),(3,'Titulo3','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoTRES',1,3),(4,'Titulo4','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoCUATRO',1,4),(5,'Titulo5','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoCINCO',1,5),(6,'Titulo6','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoSEIS',0,6),(7,'Titulo7','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoSIETE',0,7),(8,'Titulo8','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoOCHO',0,8),(9,'Titulo9','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoNUEVE',0,9),(10,'Titulo10','2021-01-01 00:00:00','2021-06-01 00:00:00','TextoDIEZ',0,10);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notes_managed` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `notes_managed` (`notes_managed`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`notes_managed`) REFERENCES `notes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pepito','a@b.com',1),(2,'Jorgito','b@c.com',2),(3,'Jaimito','c@d.com',3),(4,'Miguelito','e@f.com',4),(5,'Hernansito','g@h.com',5),(7,'Juansito','h@i.com',6),(8,'Matisito','j@k.com',7),(9,'Briansito','k@l.com',8),(10,'Maximito','l@m.com',9),(11,'Martinsito','m@n.com',10);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'EntregableIndividual'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24 18:36:56
