# ************************************************************
# Sequel Pro SQL dump
# Version 5438
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.15)
# Database: Lab-MYSQL
# Generation Time: 2019-06-18 19:44:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Car`;

CREATE TABLE `Car` (
  `Car_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VIN` varchar(17) COLLATE utf8mb4_general_ci NOT NULL,
  `Year` int(4) NOT NULL,
  `Make` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Model` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Color` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Car_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;

INSERT INTO `Car` (`Car_ID`, `VIN`, `Year`, `Make`, `Model`, `Color`)
VALUES
	(0,'3K096I98581DHSNUP',2019,'Volkswagen','Tiguan','Blue'),
	(1,'ZM8G7BEUQZ97IH46V',2019,'Peugeot','Rifter','Red'),
	(2,'RKXVNNIHLVVZOUB4M',2018,'Ford','Fusion','White'),
	(3,'HKNDGS7CU31E9Z7JW',2018,'Toyota','RAV4','Silver'),
	(4,'DAM41UDN3CHU2WVF6',2019,'Volvo','V60 Cross Country','Gray');

/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Customer`;

CREATE TABLE `Customer` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(10) NOT NULL,
  `Name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(320) COLLATE utf8mb4_general_ci NOT NULL,
  `Country` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `State_Province` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `ZIP_PostalCode` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Gender` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;

INSERT INTO `Customer` (`ID`, `Customer_ID`, `Name`, `Phone`, `Email`, `Country`, `State_Province`, `City`, `ZIP_PostalCode`, `Address`, `Gender`)
VALUES
	(0,10001,'Pablo Picasso','+34 636 17 63 82','ppicasso@gmail.com','Spain','Madrid','Madrid','28045','Paseo de la Chopera, 14','M'),
	(1,20001,'Abraham Lincoln','+1 305 907 7086','lincoln@us.gov','United States','Florida','Miami','33130','120 SW 8th St','M'),
	(2,30001,'Napoléon Bonaparte','+33 1 79 75 40 00','hello@napoleon.me','France','Paris','Île-de-France','75008','40 Rue du Colisée','M');

/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Invoice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Invoice`;

CREATE TABLE `Invoice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Invoice_Number` int(10) NOT NULL,
  `Date_of_Sale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Customer_ID` int(10) NOT NULL,
  `Employee_ID` int(10) NOT NULL,
  `Car_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;

INSERT INTO `Invoice` (`ID`, `Invoice_Number`, `Date_of_Sale`, `Customer_ID`, `Employee_ID`, `Car_ID`)
VALUES
	(0,852399038,'22-08-2018',1,3,0),
	(1,731166526,'31-12-2018',0,5,3),
	(2,271135104,'22-01-2019',3,7,2);

/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Salesperson
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Salesperson`;

CREATE TABLE `Salesperson` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `TotalSales` int(11) DEFAULT NULL,
  `Store` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Employee_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Salesperson` WRITE;
/*!40000 ALTER TABLE `Salesperson` DISABLE KEYS */;

INSERT INTO `Salesperson` (`ID`, `Name`, `TotalSales`, `Store`, `Employee_ID`)
VALUES
	(0,'Petey Cruiser',0,'Madrid',1),
	(1,'Anna Sthesia',0,'Barcelona',2),
	(2,'Paul Molive',0,'Berlin',3),
	(3,'Gail Forcewind',0,'Paris',4),
	(4,'Paige Turner',0,'Mimia',5),
	(5,'Bob Frapples',0,'Mexico City',6),
	(6,'Walter Melon',0,'Amsterdam',7),
	(7,'Shonda Leer',0,'São Paulo',8);

/*!40000 ALTER TABLE `Salesperson` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
