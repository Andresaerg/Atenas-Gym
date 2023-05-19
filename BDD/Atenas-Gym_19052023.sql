-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Cedula` int(30) NOT NULL,
  `Estado` enum('Solvente','En deuda') COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'En deuda',
  `Fecha_Ingreso` date NOT NULL,
  `Ruta_IMG` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Peso` decimal(10,2) DEFAULT NULL,
  `Estatura` decimal(10,2) DEFAULT NULL,
  `Brazos` decimal(10,2) DEFAULT NULL,
  `Cintura` decimal(10,2) DEFAULT NULL,
  `Cadera` decimal(10,2) DEFAULT NULL,
  `Muslos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andrés Rosales',26638537,'Solvente','2023-04-03','/Images/clients/1679441910917.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Chanchito Feliz',12345,'Solvente','2023-04-03','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Cliente de Prueba',123456,'En deuda','2023-04-10','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Otro de prueba más',123454,'Solvente','2023-04-25','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Uno de prueba en punto',123455,'Solvente','2023-04-12','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(11,'PRUEBA',1234567,'Solvente','2023-05-15','/Images/App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(12,'Agregado de prueba 2',12345678,'Solvente','2023-05-16','/Images/App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meses`
--

DROP TABLE IF EXISTS `meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Meses` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meses`
--

LOCK TABLES `meses` WRITE;
/*!40000 ALTER TABLE `meses` DISABLE KEYS */;
INSERT INTO `meses` VALUES (1,'Enero'),(2,'Febrero'),(3,'Marzo'),(4,'Abril'),(5,'Mayo'),(6,'Junio'),(7,'Julio'),(8,'Agosto'),(9,'Septiembre'),(10,'Octubre'),(11,'Noviembre'),(12,'Diciembre');
/*!40000 ALTER TABLE `meses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Cedula` int(30) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  `Fecha_Vencimiento` date NOT NULL,
  `Tipo_Pago` enum('Efectivo','Pago móvil','Transferencia','Zelle') COLLATE utf8_spanish2_ci NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Referencia` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Plan` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_pagos_fecha_pago` (`Fecha_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'Andrés Rosales',26638537,'2023-04-03','2024-01-03','Efectivo',0.00,'','Anual'),(2,'Chanchito en deuda',12345,'2023-05-12','2023-06-12','Efectivo',15.00,'','Mensual'),(3,'Cliente de Prueba',123456,'2023-04-10','2023-05-10','Efectivo',15.00,'','Mensual'),(4,'Otro de prueba más',123454,'2023-04-25','2023-06-25','Efectivo',30.00,'','Mensual'),(5,'Uno de prueba en punto',123455,'2023-05-12','2023-06-12','Efectivo',15.00,'','Mensual'),(11,'PRUEBA',1234567,'2023-05-15','2023-06-15','Pago móvil',15.00,'','Mensual'),(12,'Agregado de prueba 2',12345678,'2023-05-16','2023-08-16','Zelle',40.00,'','Trimestre'),(13,'NO EXISTE',1111,'2022-05-03','2022-06-03','Transferencia',15.00,'NO EXISTE','Mensual');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planes` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Plan` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `Precio` int(10) NOT NULL,
  `Tiempo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'Semanal',5,'1 WEEK'),(2,'Mensual',15,'1 MONTH'),(3,'Trimestre',40,'3 MONTH'),(4,'Semestre',70,'6 MONTH'),(5,'Anual',120,'1 YEAR');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (1,'Chanchito Forte');
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Cedula` int(30) NOT NULL,
  `Password` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Estado` enum('Guardia','Admin') COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'Guardia',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Daniel Abreu',26638537,'12345','Admin'),(2,'Andrés Rosales',9786750,'123','Guardia'),(6,'Norandry Labarca',27303523,'123','Guardia'),(7,'Elsa Rosales',4761212,'123','Guardia'),(8,'Andrés',4761213,'123','Guardia'),(9,'Nuevo Usuario',26638538,'1234','Guardia'),(10,'Dalí',12345,'123','Guardia');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 17:05:22
