-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bd_gabriel_20250802
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `telefono_cel` varchar(20) DEFAULT NULL,
  `telefono_hab` varchar(20) DEFAULT NULL,
  `telefono_ofi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'ANA MARIA','hernandez','AH@gmail.com','+581532546247','+583284234','+583443098249'),(2,'YOLANDA','TORTOZA','YT@GMAIL.COM','+58 414 7654321','+58 212 3215476','+58 212 1234567'),(3,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 414 9874567','+58 212 4436543','+58 212 3364321'),(4,'SUSANA','PEREZ','SP@GMAIL.COM','+58 414 7234567','+58 212 7876543','+58 212 8654321');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'ana','Vazquez'),(2,'jose','tripa'),(3,'rosaric','hernandez'),(4,'nicole','martinez');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes_materias`
--

DROP TABLE IF EXISTS `estudiantes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes_materias` (
  `estudiante_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  PRIMARY KEY (`estudiante_id`,`materia_id`),
  KEY `materia_id` (`materia_id`),
  CONSTRAINT `estudiantes_materias_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  CONSTRAINT `estudiantes_materias_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_materias`
--

LOCK TABLES `estudiantes_materias` WRITE;
/*!40000 ALTER TABLE `estudiantes_materias` DISABLE KEYS */;
INSERT INTO `estudiantes_materias` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(2,2),(2,4),(2,6),(3,1),(3,6),(4,1),(4,3),(4,5);
/*!40000 ALTER TABLE `estudiantes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Logica de programacion'),(2,'HTML5 nivel 1'),(3,'MYSQL'),(4,'postgresql'),(5,'javascript'),(6,'phyton');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `telefono_hab` varchar(20) DEFAULT NULL,
  `telefono_cel` varchar(20) DEFAULT NULL,
  `telefono_ofi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'V1234','ANA','VASQUEZ','AV@GMAIL.COM','+58 212 9876543','+58 414 1234567','+58 212 7654321'),(2,'V5678','YOLANDA','TORTOZA','YT@GMAIL.COM','+58 212 3215476','+58 414 7654321','+58 212 1234567'),(3,'V9012','NELLY','CONTRERAS','NC@GMAIL.COM','+58 212 4436543','+58 414 9874567','+58 212 3364321');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto2`
--

DROP TABLE IF EXISTS `producto2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `producto2_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto2`
--

LOCK TABLES `producto2` WRITE;
/*!40000 ALTER TABLE `producto2` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'LAVADORA',800.25,12),(2,1,'NEVERA',700.50,6),(3,1,'COCINA',300.75,8),(4,1,'AA',450.00,9),(5,1,'SECADORA',600.00,8),(6,2,'LAVADORA',800.25,12),(7,2,'CONGELADOR',300.50,3),(8,2,'COCINA',290.75,4),(9,2,'VENTILADOR',150.00,9),(10,2,'SECADORA',750.00,8),(11,3,'FREIDORA',280.25,8),(12,3,'PARRILLERA',250.50,6),(13,3,'LAVAPLATOS',350.75,8),(14,3,'MICRONDAS',250.00,12),(15,3,'NEVERA',450.00,9),(16,4,'LAVADORA',580.75,12),(17,4,'AA',500.50,3),(18,4,'SECADORA',650.75,4),(19,4,'MICRONDAS',350.00,6),(20,4,'NEVERA',350.75,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos1`
--

DROP TABLE IF EXISTS `productos1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos1_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos1`
--

LOCK TABLES `productos1` WRITE;
/*!40000 ALTER TABLE `productos1` DISABLE KEYS */;
INSERT INTO `productos1` VALUES (1,1,'LAVADORA',800.25,12),(2,1,'NEVERA',700.50,6),(3,1,'COCINA',300.75,8),(4,1,'AA',450.00,9),(5,1,'SECADORA',600.00,8),(11,3,'FREIDORA',280.25,8),(12,3,'PARRILLERA',250.50,6),(13,3,'LAVAPLATOS',350.75,8),(14,3,'MICRONDAS',250.00,12),(15,3,'NEVERA',450.00,9),(16,4,'LAVADORA',580.75,12),(17,4,'AA',500.50,3),(18,4,'SECADORA',650.75,4),(19,4,'MICRONDAS',350.00,6),(20,4,'NEVERA',350.75,4),(21,1,'LAVADORA',800.25,12),(22,1,'NEVERA',700.50,6),(23,1,'COCINA',300.75,8),(24,1,'AA',450.00,9),(25,1,'SECADORA',600.00,8),(31,3,'FREIDORA',280.25,8),(32,3,'PARRILLERA',250.50,6),(33,3,'LAVAPLATOS',350.75,8),(34,3,'MICRONDAS',250.00,12),(35,3,'NEVERA',450.00,9),(36,4,'LAVADORA',580.75,12),(37,4,'AA',500.50,3),(38,4,'SECADORA',650.75,4),(39,4,'MICRONDAS',350.00,6),(40,4,'NEVERA',350.75,4);
/*!40000 ALTER TABLE `productos1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos2`
--

DROP TABLE IF EXISTS `productos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos2_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos2`
--

LOCK TABLES `productos2` WRITE;
/*!40000 ALTER TABLE `productos2` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'GENERALELECTRIC','AV. BARALT','+582121234567','info@ge.com'),(2,'WHIRPOOL','AV. SAN MATRIN','+584149876543','info@whirpool.com'),(3,'LG','AV. ROMULO GALLEGOS','+582126543212','info@lg.com'),(4,'MABE','AV. FRANCISCO DE MIRANDA','+582127654321','info@mabe.com'),(5,'SONY','AV. VICTORIA','+58 212 12341327','info@sony.com'),(6,'PHILIPHS','AV. URDANETA','+58 414 9867543','info@philiphs.com'),(7,'ZENITH','AV. NVA. GRANADA','+58 212 6783212','info@zenith.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores1`
--

DROP TABLE IF EXISTS `proveedores1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores1`
--

LOCK TABLES `proveedores1` WRITE;
/*!40000 ALTER TABLE `proveedores1` DISABLE KEYS */;
INSERT INTO `proveedores1` VALUES (1,'GENERALELECTRIC','AV. BARALT','+582121234567','info@ge.com'),(3,'LG','AV. ROMULO GALLEGOS','+582126543212','info@lg.com'),(4,'MABE','AV. FRANCISCO DE MIRANDA','+582127654321','info@mabe.com');
/*!40000 ALTER TABLE `proveedores1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores2`
--

DROP TABLE IF EXISTS `proveedores2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores2`
--

LOCK TABLES `proveedores2` WRITE;
/*!40000 ALTER TABLE `proveedores2` DISABLE KEYS */;
INSERT INTO `proveedores2` VALUES (1,'GENERAL ELECTRIC','AV. BARALT','+58 212 1234567','info@ge.com'),(2,'WHIRPOOL','AV. SAN MARTIN','+58 414 9876543','info@whirpool.com'),(3,'LG','AV. ROMULO GALLEGOS','+58 212 6543212','info@lg.com'),(4,'MABE','AV. FRANCISCO DE MIRANDA','+58 212 7654321','info@mabe.com'),(5,'SONY','AV. VICTORIA','+58 212 4234567','info@sony.com'),(6,'PHILIPS','AV. URDANETA','+58 414 5876543','info@philips.com'),(7,'ZENITH','AV. NVA. GRANADA','+58 212 7543212','info@zenith.com');
/*!40000 ALTER TABLE `proveedores2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vista_estudiantes_materias`
--

DROP TABLE IF EXISTS `vista_estudiantes_materias`;
/*!50001 DROP VIEW IF EXISTS `vista_estudiantes_materias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_estudiantes_materias` AS SELECT
 1 AS `nombre`,
  1 AS `apellido`,
  1 AS `asignatura` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_prov_prod`
--

DROP TABLE IF EXISTS `vista_prov_prod`;
/*!50001 DROP VIEW IF EXISTS `vista_prov_prod`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_prov_prod` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_prov_prod_full_join`
--

DROP TABLE IF EXISTS `vista_prov_prod_full_join`;
/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_full_join`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_prov_prod_full_join` AS SELECT
 1 AS `proveedor`,
  1 AS `correo`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_prov_prod_inner_join`
--

DROP TABLE IF EXISTS `vista_prov_prod_inner_join`;
/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_inner_join`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_prov_prod_inner_join` AS SELECT
 1 AS `proveedor`,
  1 AS `correo`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_prov_prod_left_join`
--

DROP TABLE IF EXISTS `vista_prov_prod_left_join`;
/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_left_join`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_prov_prod_left_join` AS SELECT
 1 AS `proveedor`,
  1 AS `correo`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_prov_prod_right_join`
--

DROP TABLE IF EXISTS `vista_prov_prod_right_join`;
/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_right_join`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_prov_prod_right_join` AS SELECT
 1 AS `proveedor`,
  1 AS `correo`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_resumen_productos`
--

DROP TABLE IF EXISTS `vista_resumen_productos`;
/*!50001 DROP VIEW IF EXISTS `vista_resumen_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_resumen_productos` AS SELECT
 1 AS `producto`,
  1 AS `precio_minimo`,
  1 AS `precio_maximo`,
  1 AS `precio_promedio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_resumen_proveedores`
--

DROP TABLE IF EXISTS `vista_resumen_proveedores`;
/*!50001 DROP VIEW IF EXISTS `vista_resumen_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_resumen_proveedores` AS SELECT
 1 AS `proveedor`,
  1 AS `precio_minimo`,
  1 AS `precio_maximo`,
  1 AS `precio_promedio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_estudiantes_materias`
--

/*!50001 DROP VIEW IF EXISTS `vista_estudiantes_materias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estudiantes_materias` AS select `estudiantes`.`nombre` AS `nombre`,`estudiantes`.`apellido` AS `apellido`,`materias`.`nombre` AS `asignatura` from ((`estudiantes` join `materias`) join `estudiantes_materias`) where `estudiantes_materias`.`estudiante_id` = `estudiantes`.`id` and `estudiantes_materias`.`materia_id` = `materias`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prov_prod`
--

/*!50001 DROP VIEW IF EXISTS `vista_prov_prod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prov_prod` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`proveedores` `a` join `productos` `b`) where `b`.`proveedor_id` = `a`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prov_prod_full_join`
--

/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_full_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prov_prod_full_join` AS select `a`.`nombre` AS `proveedor`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`proveedores` `a` left join `productos` `b` on(`b`.`proveedor_id` = `a`.`id`)) union select `a`.`nombre` AS `proveedor`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`productos2` `b` left join `proveedores2` `a` on(`b`.`proveedor_id` = `a`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prov_prod_inner_join`
--

/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_inner_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prov_prod_inner_join` AS select `a`.`nombre` AS `proveedor`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`proveedores` `a` join `productos` `b` on(`b`.`proveedor_id` = `a`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prov_prod_left_join`
--

/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_left_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prov_prod_left_join` AS select `a`.`nombre` AS `proveedor`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`proveedores` `a` left join `productos` `b` on(`b`.`proveedor_id` = `a`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prov_prod_right_join`
--

/*!50001 DROP VIEW IF EXISTS `vista_prov_prod_right_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prov_prod_right_join` AS select `a`.`nombre` AS `proveedor`,`a`.`correo` AS `correo`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`existencia` AS `existencia` from (`productos2` `b` left join `proveedores2` `a` on(`b`.`proveedor_id` = `a`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_resumen_productos`
--

/*!50001 DROP VIEW IF EXISTS `vista_resumen_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_resumen_productos` AS select distinct `vista_prov_prod`.`producto` AS `producto`,min(`vista_prov_prod`.`precio`) AS `precio_minimo`,max(`vista_prov_prod`.`precio`) AS `precio_maximo`,round(avg(`vista_prov_prod`.`precio`),2) AS `precio_promedio`,sum(`vista_prov_prod`.`existencia`) AS `existencia` from `vista_prov_prod` group by `vista_prov_prod`.`producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_resumen_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `vista_resumen_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_resumen_proveedores` AS select distinct `vista_prov_prod`.`proveedor` AS `proveedor`,min(`vista_prov_prod`.`precio`) AS `precio_minimo`,max(`vista_prov_prod`.`precio`) AS `precio_maximo`,round(avg(`vista_prov_prod`.`precio`),2) AS `precio_promedio`,sum(`vista_prov_prod`.`existencia`) AS `existencia` from `vista_prov_prod` group by `vista_prov_prod`.`proveedor` */;
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

-- Dump completed on 2025-08-23 15:53:55
