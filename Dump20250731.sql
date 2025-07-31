CREATE DATABASE  IF NOT EXISTS `db_farmrepo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_farmrepo`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_farmrepo
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `available` varchar(10) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,'Livestock','true'),(2,'Crop','true');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_sell_status`
--

DROP TABLE IF EXISTS `category_sell_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_sell_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `available` varchar(45) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_sell_status`
--

LOCK TABLES `category_sell_status` WRITE;
/*!40000 ALTER TABLE `category_sell_status` DISABLE KEYS */;
INSERT INTO `category_sell_status` VALUES (1,'Raising','true'),(2,'For Sale','true'),(3,'Partial Sold','true'),(4,'Sold','true');
/*!40000 ALTER TABLE `category_sell_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_supply`
--

DROP TABLE IF EXISTS `category_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_supply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `available` varchar(10) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_supply`
--

LOCK TABLES `category_supply` WRITE;
/*!40000 ALTER TABLE `category_supply` DISABLE KEYS */;
INSERT INTO `category_supply` VALUES (1,'Feed','true'),(2,'Fertilizer','true'),(3,'Medicine','true'),(4,'Soil','true');
/*!40000 ALTER TABLE `category_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_unit`
--

DROP TABLE IF EXISTS `category_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `available` varchar(10) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_unit`
--

LOCK TABLES `category_unit` WRITE;
/*!40000 ALTER TABLE `category_unit` DISABLE KEYS */;
INSERT INTO `category_unit` VALUES (1,'Kilogram','true'),(2,'Sack','true'),(3,'Piece','true'),(4,'Liter','true');
/*!40000 ALTER TABLE `category_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_supply`
--

DROP TABLE IF EXISTS `inventory_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_supply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(120) NOT NULL,
  `supply_category_id` int NOT NULL,
  `unit_category_id` int NOT NULL,
  `qty_on_hand` int NOT NULL,
  `reorder_level` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `item_name_UNIQUE` (`item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_supply`
--

LOCK TABLES `inventory_supply` WRITE;
/*!40000 ALTER TABLE `inventory_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_stock_in`
--

DROP TABLE IF EXISTS `record_stock_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_stock_in` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supply_id` int NOT NULL,
  `qty_received` int NOT NULL,
  `unit_cost` int NOT NULL,
  `total_cost` int NOT NULL,
  `supplier` varchar(120) DEFAULT NULL,
  `delivery_date` datetime NOT NULL,
  `remarks` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_stock_in`
--

LOCK TABLES `record_stock_in` WRITE;
/*!40000 ALTER TABLE `record_stock_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `record_stock_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records_batch`
--

DROP TABLE IF EXISTS `records_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records_batch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `name` varchar(120) NOT NULL,
  `unit_id` int NOT NULL,
  `quantity` int NOT NULL,
  `sellable_qty` int NOT NULL,
  `unit_price` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `sell_status_id` int NOT NULL,
  `supplier` varchar(120) DEFAULT NULL,
  `stock_date` datetime NOT NULL,
  `remarks` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records_batch`
--

LOCK TABLES `records_batch` WRITE;
/*!40000 ALTER TABLE `records_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `records_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records_sales`
--

DROP TABLE IF EXISTS `records_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records_sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `batch_id` int NOT NULL,
  `unit_sold` int NOT NULL,
  `unit_price` int NOT NULL,
  `total_price` int NOT NULL,
  `amount_paid` int NOT NULL,
  `buyer_name` varchar(120) NOT NULL,
  `sold_date` datetime NOT NULL,
  `remarks` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records_sales`
--

LOCK TABLES `records_sales` WRITE;
/*!40000 ALTER TABLE `records_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `records_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records_stock_out`
--

DROP TABLE IF EXISTS `records_stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records_stock_out` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supply_id` int NOT NULL,
  `qty_issued` int NOT NULL,
  `issued_date` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records_stock_out`
--

LOCK TABLES `records_stock_out` WRITE;
/*!40000 ALTER TABLE `records_stock_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `records_stock_out` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-31 19:14:21
