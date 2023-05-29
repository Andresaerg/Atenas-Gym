-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andrés Rosales',26638537,'Solvente','2023-04-03','/Images/clients/1679441910917.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Chanchito Feliz',12345,'Solvente','2023-04-03','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Cliente de Prueba',123456,'En deuda','2023-04-10','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Otro de prueba más',123454,'Solvente','2023-04-25','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Uno de prueba en punto',123455,'Solvente','2023-04-12','/Images/App-Logo.png',NULL,NULL,NULL,NULL,NULL,NULL),(11,'PRUEBA',1234567,'Solvente','2023-05-15','/Images/App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(12,'Agregado de prueba 2',12345678,'Solvente','2023-05-16','/Images/App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(13,'Elsa Marina',9786750,'Solvente','2023-05-25','\\Images\\App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(14,'Esmeira del Carmen',4150201,'Solvente','2023-05-25','\\Images\\App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(15,'Gabriel Belloso',30605461,'Solvente','2023-05-25','\\Images\\App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(16,'Marcos Suárez',26201550,'Solvente','2023-05-25','\\Images\\App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(17,'Testeo in Haus',123456789,'Solvente','2023-05-27','\\Images\\App-Logo.png',0.00,0.00,0.00,0.00,0.00,0.00),(19,'Testeo 2',123456787,'Solvente','2023-05-27','\\Images\\clients\\Testeo 2_27052023-11153.jpg',0.00,0.00,0.00,0.00,0.00,0.00),(20,'Norandry Labarca',27303523,'Solvente','2023-05-27','\\Images\\clients\\Norandry Labarca_27052023-5945.jpg',0.00,0.00,0.00,0.00,0.00,0.00);
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
  `Precio` decimal(10,2) NOT NULL,
  `Referencia` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Plan` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_pagos_fecha_pago` (`Fecha_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'Andrés Rosales',26638537,'2023-04-03','2024-01-03','Efectivo',15.00,'','Anual'),(2,'Chanchito en deuda',12345,'2023-05-12','2023-06-12','Efectivo',15.00,'','Mensual'),(3,'Cliente de Prueba',123456,'2023-04-10','2023-05-10','Efectivo',15.00,'','Mensual'),(4,'Otro de prueba más',123454,'2023-04-25','2023-06-25','Efectivo',30.00,'','Mensual'),(5,'Uno de prueba en punto',123455,'2023-05-12','2023-06-12','Efectivo',15.00,'','Mensual'),(11,'PRUEBA',1234567,'2023-05-15','2023-06-15','Pago móvil',15.00,'','Mensual'),(12,'Agregado de prueba 2',12345678,'2023-05-16','2023-08-16','Zelle',40.00,'','Trimestre'),(13,'NO EXISTE',1111,'2022-05-03','2022-06-03','Transferencia',15.00,'NO EXISTE','Mensual'),(14,'Elsa Marina',9786750,'2023-05-25','2023-06-25','Pago móvil',15.00,'HAHSGY1Y2','Mensual'),(15,'Esmeira del Carmen',4150201,'2023-05-25','2023-06-01','Efectivo',5.00,'Sin ref','Semanal'),(16,'Gabriel Belloso',30605461,'2023-05-25','2023-08-25','Zelle',40.00,'JJAKKSLLI12D','Trimestre'),(17,'Marcos Suárez',26201550,'2023-05-25','2023-06-25','Efectivo',15.00,'Sin ref','Mensual'),(18,'Testeo in Haus',123456789,'2023-05-27','2023-06-27','Pago móvil',15.00,'HASSH1H929','Mensual'),(19,'Testeo 2',123456787,'2023-05-27','2023-08-27','Zelle',40.00,'KLASJLA13','Trimestre'),(20,'Norandry Labarca',27303523,'2023-05-27','2023-06-27','Efectivo',15.00,'efectivo','Mensual');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Daniel Abreu',26638537,'12345','Admin'),(2,'Andrés Rosales',9786750,'123','Guardia'),(6,'Norandry Labarca',27303523,'123','Guardia'),(7,'Elsa Rosales',4761212,'123','Guardia'),(8,'Andrés',4761213,'123','Guardia'),(9,'Nuevo Usuario',26638538,'1234','Guardia'),(10,'Dalí',12345,'123','Guardia'),(12,'Andres Rosales',1234,'1234','Guardia');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gym'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `update_clienPayment` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `update_clienPayment` ON SCHEDULE EVERY 30 MINUTE STARTS '2023-05-08 11:20:49' ON COMPLETION PRESERVE ENABLE DO UPDATE clientes
SET c.Estado = 'En deuda'
WHERE c.Cedula NOT IN (
    SELECT DISTINCT p.Cedula FROM pagos p
	WHERE CURDATE() BETWEEN p.Fecha_Pago AND p.Fecha_Vencimiento
    ) */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'gym'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `mes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `mes`(`_d` DATE, `_locale` VARCHAR(5)) RETURNS varchar(22) CHARSET utf8
    DETERMINISTIC
BEGIN
	SET @@lc_time_names = _locale;
    RETURN DATE_FORMAT(_d, '%M');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 13:14:58
