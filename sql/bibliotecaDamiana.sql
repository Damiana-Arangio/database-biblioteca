-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: bibliotecadamianastefania
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `appartenenza`
--

DROP TABLE IF EXISTS `appartenenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartenenza` (
  `NomeDiGenere` varchar(20) NOT NULL,
  `CodiceISBNLibro` varchar(13) NOT NULL,
  PRIMARY KEY (`NomeDiGenere`,`CodiceISBNLibro`),
  KEY `CodiceISBNLibro` (`CodiceISBNLibro`),
  CONSTRAINT `appartenenza_ibfk_1` FOREIGN KEY (`NomeDiGenere`) REFERENCES `genere` (`NomeGenere`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appartenenza_ibfk_2` FOREIGN KEY (`CodiceISBNLibro`) REFERENCES `libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartenenza`
--

LOCK TABLES `appartenenza` WRITE;
/*!40000 ALTER TABLE `appartenenza` DISABLE KEYS */;
INSERT INTO `appartenenza` VALUES ('Filosofia','9788800747752'),('Fantascienza','9788804668237'),('Medicina','9788804671954'),('Giallo','9788804716372'),('Arte','9788807884092'),('Pedagogia','9788807886515'),('Informatica','9788808055750'),('Ingegneria civile','9788808059918'),('Elettrotecnica','9788808178886'),('Medicina','9788815067098'),('Lingue','9788815067180'),('Storia','9788815121264'),('Lingue','9788815239334'),('Storia','9788815244123'),('Ingegneria civile','9788820346430'),('Medicina','9788821429996'),('Economia','9788823834262'),('Medicina','9788829920860'),('Medicina','9788829923175'),('Medicina','9788829928437'),('Lingue','9788833923390'),('Diritto','9788834828762'),('Diritto','9788834879474'),('Pedagogia','9788835023289'),('Informatica','9788838663772'),('Economia','9788838666377'),('Ingegneria civile','9788838672958'),('Economia','9788838675508'),('Ingegneria civile','9788838748455'),('Rosa','9788838910173'),('Sociologia','9788842079491'),('Pedagogia','9788842094777'),('Archeologia','9788842095880'),('Storia','9788843029886'),('Geografia','9788843042463'),('Medicina','9788843060368'),('Diritto','9788843084784'),('Architettura','9788845306631'),('Sociologia','9788848200465'),('Economia','9788854859319'),('Diritto','9788859814863'),('Architettura','9788860084613'),('Lettere','9788861847040'),('Fisica','9788864510316'),('Pedagogia','9788867601592'),('Matematica','9788871926049'),('Matematica','9788871927695'),('Sociologia','9788874667543'),('Economia','9788875433079'),('Medicina','9788879593854'),('Medicina','9788879594837'),('Pedagogia','9788884530738'),('Sociologia','9788886412629'),('Ingegneria civile','9788886977128'),('Lingue','9788889670132'),('Economia','9788891414540'),('Architettura','9788891612861'),('Medicina','9788891710796'),('Diritto','9788891778604'),('Informatica','9788891908254'),('Diritto','9788892103023'),('Diritto','9788892136694'),('Architettura','9788897356974');
/*!40000 ALTER TABLE `appartenenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autore`
--

DROP TABLE IF EXISTS `autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autore` (
  `CodiceAutore` smallint NOT NULL,
  `NomeAutore` varchar(20) NOT NULL,
  `CognomeAutore` varchar(20) NOT NULL,
  `LuogoDiNascita` varchar(20) DEFAULT NULL,
  `AnnoDiNascita` year DEFAULT NULL,
  `SessoAutore` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CodiceAutore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autore`
--

LOCK TABLES `autore` WRITE;
/*!40000 ALTER TABLE `autore` DISABLE KEYS */;
INSERT INTO `autore` VALUES (1,'Marco','Boella','Italia',1970,'M'),(2,'Hal Ronald','Varian','Stati Uniti',1947,'M'),(3,'Gian Franco','Campobasso','Italia',1942,'M'),(4,'Renato','Barboni','Italia',1940,'M'),(5,'Renzo','Perfetti','Italia',1958,'M'),(6,'William','Stallings','Stati Uniti',1945,'M'),(7,'Andrew Stuart','Tanenbaum','Stati Uniti',1944,'M'),(8,'Giovanni','Marro','Italia',1958,'M'),(9,'Giacomo','Corna Pellegrini','Italia',1931,'M'),(10,'Giulio','Guidorizzi','Italia',1948,'M'),(11,'George','Orwell','Regno Unito',1903,'M'),(12,'Andrea','Camilleri','Italia',1925,'M'),(13,'Giulia','Belgioioso','Italia',1947,'F'),(14,'Mario','De Micheli','Italia',1914,'M'),(15,'Ray','Jackendoff','Stati Uniti',1945,'M'),(16,'Mario','Liverani','Italia',1939,'M'),(17,'Agnese','Manca','Italia',1945,'F'),(18,'Mitchell','Hall','Stati Uniti',1955,'M'),(19,'Giorgio','Del Zanna','Italia',1971,'M'),(20,'Enrica','Collotti Pischel','Italia',1930,'F'),(21,'Maria Valeria','Catani','Italia',1965,'F'),(22,'Alberto','Cei','Italia',1955,'M'),(23,'Kenneth','Saladin','Stati Uniti',1949,'M'),(24,'Angelo','Maietta','Italia',1973,'M'),(25,'Daniel','Kahneman','Israele',1934,'M'),(26,'Neil','Carlson','Stati Uniti',1942,'M'),(27,'Pierpaolo','Donati','Italia',1946,'M'),(28,'Sergio','Tramma','Italia',1948,'M'),(29,'Annamaria','Campanini','Italia',1950,'F'),(30,'Luigi','Prestinenza Puglisi','Italia',1956,'M'),(31,'Carlo','Gasparrini','Italia',1955,'M'),(32,'Eugenio','Arbizzani','Italia',1958,'M'),(33,'Andrea','Benedetto','Italia',1968,'M'),(34,'Massimo','Paradiso','Italia',1949,'M'),(35,'Salvatore','Curreri','Italia',1962,'M'),(36,'Franco Gaetano','Scoca','Italia',1958,'M'),(37,'Frederick','Schauer','Stati Uniti',1946,'M'),(38,'Paul','Newbold','Regno Unito',1945,'M'),(39,'Peter','Russell','Regno Unito',1921,'M'),(40,'Leslie','Gartner','Stati Uniti',1943,'M'),(41,'Jerome','Bruner','Stati Uniti',1915,'M'),(42,'Giovanni','Genovesi','Italia',1941,'M'),(43,'Giovanbattista','Amenta','Italia',1963,'M'),(44,'Alessandro','Bertirotti','Italia',1964,'M'),(45,'Giuseppe','De Arcangelis','Italia',1962,'M'),(46,'Simon','Benninga','Olanda',1947,'M'),(47,'Guy','Deutscher','Israele',1969,'M'),(48,'Francesco','Rovetto','Italia',1948,'M'),(49,'Patrizia','Patrizi','Italia',1957,'F'),(50,'Andrea','Lenzi','Italia',1953,'M'),(51,'Gianni','De Luca','Italia',1927,'M'),(52,'Carolyn','Dittmeier','Stati Uniti',1956,'F'),(53,'Vincenzo','Fasone','Italia',1981,'M'),(54,'Roberto','D?Apostoli','Italia',1939,'M'),(55,'Fabio','Bagarello','Italia',1964,'M'),(56,'Renato','Lancellotta','Italia',1949,'M'),(57,'Carlo','Viggiani','Italia',1936,'M'),(58,'Ugo','Tomasicchio','Italia',1983,'M'),(59,'Norman','Myers','Regno Unito',1934,'M'),(60,'Chiara','Giaccardi','Italia',1959,'F');
/*!40000 ALTER TABLE `autore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casaeditrice`
--

DROP TABLE IF EXISTS `casaeditrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casaeditrice` (
  `NomeCasaEditrice` varchar(30) NOT NULL,
  `Sede` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NomeCasaEditrice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casaeditrice`
--

LOCK TABLES `casaeditrice` WRITE;
/*!40000 ALTER TABLE `casaeditrice` DISABLE KEYS */;
INSERT INTO `casaeditrice` VALUES ('Aracne','Roma'),('Bollati boringhieri','Torino'),('Carocci','Roma'),('Edises','Napoli'),('Edizioni ambiente','Milano'),('Edizioni Simone','Napoli'),('Egea','Milano'),('Elsevier','Amsterdam'),('Etas','Milano'),('Feltrinelli','Milano'),('Firenze university press','Firenze'),('FrancoAngeli','Milano'),('Giappichelli','Torino'),('Herder','Friburgo'),('Hevelius','Benevento'),('Hoepli','Milano'),('Il Mulino','Bologna'),('La scuola','Brescia'),('Laterza','Bari'),('Libreria Editrice Cafoscarina','Venezia'),('Maggioli','Santarcangelo di Romagna'),('McGraw Hill','New York'),('Mondadori','Milano'),('Pearson','Londra'),('Pensa multimedia','Lecce'),('Piccin','Padova'),('Rizzoli','Segrate'),('Salerno','Roma'),('Scione Editore','Roma'),('Sellerio','Palermo'),('Sossella','Bologna'),('UTET','Torino'),('Zanichelli','Bologna');
/*!40000 ALTER TABLE `casaeditrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composizione`
--

DROP TABLE IF EXISTS `composizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composizione` (
  `CodiceValutazioneLettore` smallint NOT NULL,
  `CodiceDiLettore` smallint NOT NULL,
  `DataValutazione` date NOT NULL,
  PRIMARY KEY (`CodiceValutazioneLettore`,`CodiceDiLettore`),
  KEY `CodiceDiLettore` (`CodiceDiLettore`),
  CONSTRAINT `composizione_ibfk_1` FOREIGN KEY (`CodiceValutazioneLettore`) REFERENCES `valutazionebiblioteca` (`CodiceValutazione`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `composizione_ibfk_2` FOREIGN KEY (`CodiceDiLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composizione`
--

LOCK TABLES `composizione` WRITE;
/*!40000 ALTER TABLE `composizione` DISABLE KEYS */;
INSERT INTO `composizione` VALUES (201,105,'2024-04-07'),(202,107,'2024-02-18'),(203,109,'2024-01-27'),(204,113,'2024-05-28'),(205,120,'2024-05-06'),(206,126,'2024-03-22'),(207,134,'2024-02-03'),(208,139,'2024-06-22'),(209,142,'2024-06-23');
/*!40000 ALTER TABLE `composizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copia`
--

DROP TABLE IF EXISTS `copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copia` (
  `NumeroCopia` smallint NOT NULL,
  `CodiceISBN` varchar(13) NOT NULL,
  `NumeroDiScaffale` smallint NOT NULL,
  `Stato` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`NumeroCopia`,`CodiceISBN`,`NumeroDiScaffale`),
  KEY `CodiceISBN` (`CodiceISBN`),
  KEY `NumeroDiScaffale` (`NumeroDiScaffale`),
  CONSTRAINT `copia_ibfk_1` FOREIGN KEY (`CodiceISBN`) REFERENCES `libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `copia_ibfk_2` FOREIGN KEY (`NumeroDiScaffale`) REFERENCES `scaffale` (`NumeroScaffale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copia`
--

LOCK TABLES `copia` WRITE;
/*!40000 ALTER TABLE `copia` DISABLE KEYS */;
INSERT INTO `copia` VALUES (1,'9788800747752',2,'Disponibile'),(1,'9788804668237',1,'Disponibile'),(1,'9788804671954',3,'Non disponibile'),(1,'9788804716372',2,'Non disponibile'),(1,'9788807884092',2,'Disponibile'),(1,'9788807886515',4,'Non disponibile'),(1,'9788808055750',1,'Disponibile'),(1,'9788808059918',5,'Disponibile'),(1,'9788808178886',1,'Disponibile'),(1,'9788815067098',3,'Disponibile'),(1,'9788815067180',2,'Disponibile'),(1,'9788815121264',2,'Disponibile'),(1,'9788815239334',2,'Disponibile'),(1,'9788815244123',2,'Disponibile'),(1,'9788820346430',1,'Disponibile'),(1,'9788821429996',5,'Disponibile'),(1,'9788823834262',5,'Disponibile'),(1,'9788829920860',3,'Disponibile'),(1,'9788829923175',3,'Disponibile'),(1,'9788829928437',3,'Disponibile'),(1,'9788833923390',5,'Disponibile'),(1,'9788834828762',4,'Disponibile'),(1,'9788834879474',4,'Disponibile'),(1,'9788835023289',4,'Disponibile'),(1,'9788838663772',1,'Non disponibile'),(1,'9788838666377',5,'Non disponibile'),(1,'9788838672958',5,'Non disponibile'),(1,'9788838675508',5,'Non disponibile'),(1,'9788838748455',5,'Disponibile'),(1,'9788838910173',1,'Non disponibile'),(1,'9788842079491',3,'Non disponibile'),(1,'9788842094777',4,'Non disponibile'),(1,'9788842095880',2,'Non disponibile'),(1,'9788843029886',2,'Disponibile'),(1,'9788843042463',1,'Disponibile'),(1,'9788843060368',5,'Non disponibile'),(1,'9788843084784',4,'Disponibile'),(1,'9788845306631',3,'Disponibile'),(1,'9788848200465',3,'Non disponibile'),(1,'9788854859319',5,'Non disponibile'),(1,'9788859814863',1,'Non disponibile'),(1,'9788860084613',3,'Disponibile'),(1,'9788861847040',1,'Non disponibile'),(1,'9788864510316',1,'Disponibile'),(1,'9788867601592',4,'Disponibile'),(1,'9788871926049',4,'Non disponibile'),(1,'9788871927695',1,'Disponibile'),(1,'9788874667543',3,'Non disponibile'),(1,'9788875433079',1,'Non disponibile'),(1,'9788879593854',4,'Non disponibile'),(1,'9788879594837',4,'Disponibile'),(1,'9788884530738',4,'Non disponibile'),(1,'9788886412629',1,'Disponibile'),(1,'9788886977128',5,'Non disponibile'),(1,'9788889670132',2,'Non disponibile'),(1,'9788891414540',5,'Non disponibile'),(1,'9788891612861',3,'Non disponibile'),(1,'9788891710796',5,'Disponibile'),(1,'9788891778604',4,'Non disponibile'),(1,'9788891908254',1,'Non disponibile'),(1,'9788892103023',3,'Non disponibile'),(1,'9788892136694',4,'Disponibile'),(1,'9788897356974',3,'Non disponibile'),(2,'9788800747752',7,'Disponibile'),(2,'9788804668237',6,'Disponibile'),(2,'9788804671954',8,'Non disponibile'),(2,'9788804716372',7,'Non disponibile'),(2,'9788807884092',7,'Disponibile'),(2,'9788807886515',9,'Disponibile'),(2,'9788808055750',6,'Non disponibile'),(2,'9788808059918',10,'Disponibile'),(2,'9788808178886',6,'Disponibile'),(2,'9788815067098',8,'Disponibile'),(2,'9788815067180',7,'Disponibile'),(2,'9788815121264',7,'Disponibile'),(2,'9788815239334',7,'Non disponibile'),(2,'9788815244123',7,'Disponibile'),(2,'9788820346430',6,'Disponibile'),(2,'9788821429996',10,'Non disponibile'),(2,'9788823834262',10,'Disponibile'),(2,'9788829920860',8,'Disponibile'),(2,'9788829923175',8,'Disponibile'),(2,'9788829928437',8,'Disponibile'),(2,'9788833923390',10,'Disponibile'),(2,'9788834828762',9,'Non disponibile'),(2,'9788834879474',9,'Disponibile'),(2,'9788835023289',9,'Disponibile'),(2,'9788838663772',6,'Disponibile'),(2,'9788838666377',10,'Non disponibile'),(2,'9788838672958',10,'Non disponibile'),(2,'9788838675508',10,'Disponibile'),(2,'9788838748455',10,'Non disponibile'),(2,'9788838910173',6,'Disponibile'),(2,'9788842079491',8,'Disponibile'),(2,'9788842094777',9,'Non disponibile'),(2,'9788842095880',7,'Non disponibile'),(2,'9788843029886',7,'Non disponibile'),(2,'9788843042463',6,'Disponibile'),(2,'9788843060368',10,'Disponibile'),(2,'9788843084784',9,'Disponibile'),(2,'9788845306631',8,'Disponibile'),(2,'9788848200465',8,'Non disponibile'),(2,'9788854859319',10,'Disponibile'),(2,'9788859814863',6,'Disponibile'),(2,'9788860084613',8,'Disponibile'),(2,'9788861847040',6,'Disponibile'),(2,'9788864510316',6,'Non disponibile'),(2,'9788867601592',9,'Non disponibile'),(2,'9788871926049',9,'Disponibile'),(2,'9788871927695',6,'Disponibile'),(2,'9788874667543',8,'Disponibile'),(2,'9788875433079',6,'Non disponibile'),(2,'9788879593854',9,'Disponibile'),(2,'9788879594837',9,'Disponibile'),(2,'9788884530738',9,'Disponibile'),(2,'9788886412629',6,'Disponibile'),(2,'9788886977128',10,'Disponibile'),(2,'9788889670132',7,'Disponibile'),(2,'9788891414540',10,'Disponibile'),(2,'9788891612861',8,'Disponibile'),(2,'9788891710796',10,'Non disponibile'),(2,'9788891778604',9,'Disponibile'),(2,'9788891908254',6,'Non disponibile'),(2,'9788892103023',8,'Non disponibile'),(2,'9788892136694',9,'Disponibile'),(2,'9788897356974',8,'Disponibile'),(3,'9788800747752',12,'Disponibile'),(3,'9788804668237',11,'Disponibile'),(3,'9788804671954',13,'Disponibile'),(3,'9788804716372',12,'Non disponibile'),(3,'9788807884092',12,'Non disponibile'),(3,'9788807886515',14,'Non disponibile'),(3,'9788808055750',11,'Disponibile'),(3,'9788808059918',15,'Non disponibile'),(3,'9788808178886',11,'Disponibile'),(3,'9788815067098',13,'Non disponibile'),(3,'9788815067180',12,'Disponibile'),(3,'9788815121264',12,'Disponibile'),(3,'9788815239334',12,'Disponibile'),(3,'9788815244123',12,'Non disponibile'),(3,'9788820346430',11,'Disponibile'),(3,'9788821429996',15,'Non disponibile'),(3,'9788823834262',15,'Disponibile'),(3,'9788829920860',13,'Non disponibile'),(3,'9788829923175',13,'Disponibile'),(3,'9788829928437',13,'Disponibile'),(3,'9788833923390',15,'Disponibile'),(3,'9788834828762',14,'Disponibile'),(3,'9788834879474',14,'Non disponibile'),(3,'9788835023289',14,'Disponibile'),(3,'9788838663772',11,'Non disponibile'),(3,'9788838666377',15,'Non disponibile'),(3,'9788838672958',15,'Disponibile'),(3,'9788838675508',15,'Disponibile'),(3,'9788838748455',15,'Non disponibile'),(3,'9788838910173',11,'Non disponibile'),(3,'9788842079491',13,'Non disponibile'),(3,'9788842094777',14,'Non disponibile'),(3,'9788842095880',12,'Non disponibile'),(3,'9788843029886',12,'Non disponibile'),(3,'9788843042463',11,'Non disponibile'),(3,'9788843060368',15,'Disponibile'),(3,'9788843084784',14,'Non disponibile'),(3,'9788845306631',13,'Non disponibile'),(3,'9788848200465',13,'Non disponibile'),(3,'9788854859319',15,'Non disponibile'),(3,'9788859814863',11,'Disponibile'),(3,'9788860084613',13,'Disponibile'),(3,'9788861847040',11,'Disponibile'),(3,'9788864510316',11,'Disponibile'),(3,'9788867601592',14,'Non disponibile'),(3,'9788871926049',14,'Disponibile'),(3,'9788871927695',11,'Non disponibile'),(3,'9788874667543',13,'Disponibile'),(3,'9788875433079',11,'Non disponibile'),(3,'9788879593854',14,'Non disponibile'),(3,'9788879594837',14,'Disponibile'),(3,'9788884530738',14,'Non disponibile'),(3,'9788886412629',11,'Disponibile'),(3,'9788886977128',15,'Disponibile'),(3,'9788889670132',12,'Disponibile'),(3,'9788891414540',15,'Disponibile'),(3,'9788891612861',13,'Disponibile'),(3,'9788891710796',15,'Non disponibile'),(3,'9788891778604',14,'Non disponibile'),(3,'9788891908254',11,'Disponibile'),(3,'9788892103023',13,'Non disponibile'),(3,'9788892136694',14,'Disponibile'),(3,'9788897356974',13,'Non disponibile');
/*!40000 ALTER TABLE `copia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `CodiceDocente` smallint NOT NULL,
  `CodiceDelLettore` smallint NOT NULL,
  `Tipologia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodiceDocente`,`CodiceDelLettore`),
  KEY `CodiceDelLettore` (`CodiceDelLettore`),
  CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`CodiceDelLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (260,108,'Ingegneria'),(261,114,'Architettura'),(262,115,'Medicina'),(263,119,'Scienze economiche'),(264,122,'Scienze giuridiche'),(265,128,'Studi umanistici'),(266,129,'Studi sociali'),(267,138,'Studi classici'),(268,146,'Studi linguistici'),(269,148,'Scienze della formazione');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dottorando`
--

DROP TABLE IF EXISTS `dottorando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dottorando` (
  `CodiceDottorando` smallint NOT NULL,
  `CodiceDelLettore` smallint NOT NULL,
  `CorsoDottorando` varchar(30) NOT NULL,
  `AnnoIscrizioneDottorando` year DEFAULT NULL,
  `AnnoLaurea` year DEFAULT NULL,
  `CodiceDelDocente` smallint DEFAULT NULL,
  PRIMARY KEY (`CodiceDottorando`,`CodiceDelLettore`),
  KEY `CodiceDelLettore` (`CodiceDelLettore`),
  KEY `CodiceDelDocente` (`CodiceDelDocente`),
  CONSTRAINT `dottorando_ibfk_1` FOREIGN KEY (`CodiceDelLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dottorando_ibfk_2` FOREIGN KEY (`CodiceDelDocente`) REFERENCES `docente` (`CodiceDocente`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `chk_Dottorando` CHECK ((`AnnoIscrizioneDottorando` < `AnnoLaurea`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dottorando`
--

LOCK TABLES `dottorando` WRITE;
/*!40000 ALTER TABLE `dottorando` DISABLE KEYS */;
INSERT INTO `dottorando` VALUES (270,102,'Scienze umanistiche',2015,2021,265),(271,103,'Psicologia clinica',2013,2019,262),(272,123,'Giurisprudenza',2014,2020,264),(273,135,'Economia e management',2016,2019,263),(274,141,'Ingegneria informatica',2017,2020,260);
/*!40000 ALTER TABLE `dottorando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genere`
--

DROP TABLE IF EXISTS `genere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genere` (
  `NomeGenere` varchar(20) NOT NULL,
  `DescrizioneGenere` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`NomeGenere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genere`
--

LOCK TABLES `genere` WRITE;
/*!40000 ALTER TABLE `genere` DISABLE KEYS */;
INSERT INTO `genere` VALUES ('Archeologia','Tratta argomenti riguardanti l?ambito dell?archeologia, come lo studio delle civiltà e culture umane del passato'),('Architettura','Tratta argomenti dell?ambito architetturale, come la progettazione e la creazione di un immobile o dell?ambiente costruito'),('Arte','Tratta argomenti di ambito artistico, come le varie epoche artistiche con i relativi autori'),('Biografia','Tratta di generi in cui il nucleo del romanzo è rappresentato dalla vita del protagonista'),('Diritto','Tratta argomenti legati all?ambito del diritto, come il diritto civile, penale e le proprie caratteristiche e procedure'),('Economia','Tratta argomenti di ambito economico, come la gestione delle risorse ed il loro utilizzo per il bene della collettività'),('Elettrotecnica','Tratta argomenti relativi all?ambito dell?elettrotecnica, come la produzione, trasmissione e distribuzione di energia elettrica'),('Fantascienza','Tratta vicende non esistenti nella realtà e non spiegabile razionalmente'),('Filosofia','Tratta argomenti di ambito filosofico, come le varie epoche filosofiche con i relativi autori'),('Fisica','Tratta argomenti di ambito scientifico e studia, in particolare, i fenomeni naturali'),('Geografia','Tratta argomenti relative all?ambito della geografia, come le caratteristiche della terra e dei suoi paesi'),('Giallo','Tratta vicende la cui trama viene creata dall?autore e ruota intorno a un mistero criminale'),('Informatica','Tratta argomenti di ambito informatico, come i linguaggi di programmazione, le caratteristiche hardware e software dei computer e le basi di dati'),('Ingegneria civile','Tratta argomenti dell?ambito relativo all?ingegneria civile, come geotecnica, idraulica, infrastrutture, trasporti e strutture'),('Lettere','Tratta argomenti di ambito letterario, come la letteratura classica, medievale, moderna e contemporanea'),('Lingue','Tratta argomenti di ambito linguistico, come la storia ed i vari tipi di linguaggi umani'),('Matematica','Tratta argomenti di ambito matematico, come lo studio di funzioni e le differenti tipologie di equazioni e disequazioni'),('Medicina','Tratta argomenti di ambito medico, come le branche della medicina, le patologie umane e le relative cure'),('Pedagogia','Tratta argomenti di ambito educativo, come l?educazione e la formazione dell?essere umano nel suo intero ciclo di vita'),('Rosa','Tratta vicende il cui elemento centrale della trama è una storia d amore'),('Sociologia','Tratta argomenti di ambito sociale, come lo studio dei fatti sociali considerati costanti nelle loro caratteristiche e nei loro processi'),('Storia','Tratta argomenti riguardanti l?ambito della storia, come i più importanti avvenimenti della storia dell?umanità');
/*!40000 ALTER TABLE `genere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lettore`
--

DROP TABLE IF EXISTS `lettore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lettore` (
  `CodiceLettore` smallint NOT NULL,
  `NomeLettore` varchar(20) NOT NULL,
  `CognomeLettore` varchar(20) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `SessoLettore` varchar(1) DEFAULT NULL,
  `Via` varchar(30) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `NumeroCivico` smallint DEFAULT NULL,
  PRIMARY KEY (`CodiceLettore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lettore`
--

LOCK TABLES `lettore` WRITE;
/*!40000 ALTER TABLE `lettore` DISABLE KEYS */;
INSERT INTO `lettore` VALUES (101,'Giorgia','Ferrari','giorgia.ferrari@unistudent.it','F','Alaimo','60013',14),(102,'Liberio','Rossi','liberio.rossi@unistudent.it','M','Bernardino Rota','12020',66),(103,'Cristian','Bianchi','cristian.bianchi@unistudent.it','M','Torricelli','38030',27),(104,'Alida','Padovano','alida.padovano@unistudent.it','F','Santa Teresa degli Scalzi','90030',10),(105,'Lucilla','Fanucci','lucilla.fanucci@unistudent.it','F','Bovio','41026',86),(106,'Edgardo','Verdi','edgardo.verdi@unistudent.it','M','Dante','94100',23),(107,'Teresa','Palermo','teresa.palermo@unistudent.it','F','Napoleone Colajanni','93100',12),(108,'Gioele','Verdi','gioele.verdi@unistudent.it','M','Roma','94100',44),(109,'Mario','Benvenuti','mario.benvenuti@unistudent.it','M','Acrone','15078',39),(110,'Edoardo','Capon','edoardo.capon@unistudent.it','M','Delle Mura Gianicolensi','81013',59),(111,'Giovanni','Pisano','giovanni.pisano@unistudent.it','M','Archimede','39040',2),(112,'Aristide','Genovesi','aristide.genovesi@unistudent.it','M','Gaetano Donizetti','40046',132),(113,'Fosca','Palermo','fosca.palermo@unistudent.it','F','Delle Viole','60010',105),(114,'Arcangela','Manfrin','arcangela.manfrin@unistudent.it','F','Francesco Del Giudice','50030',91),(115,'Cecilia','Bergamaschi','cecilia.bergamaschi@unistudent.it','F','Goffredo Mameli','2030',49),(116,'Giancarlo','Renzo','giancarlo.renzo@unistudent.it','M','Scala','64029',11),(117,'Ippolito','Boni','ippolito.boni@unistudent.it','M','Matteo Schilizzi','16154',124),(118,'Brunilde','Moretti','brunilde.moretti@unistudent.it','F','Nuova agnano','71025',53),(119,'Christian','Loggia','christian.loggia@unistudent.it','M','Varrone','95020',112),(120,'Simona','Bianchi','simona.bianchi@unistudent.it','F','Antonio Cecchi','97015',77),(121,'Paolo','Dante','paolo.dante@unistudent.it','M','Nicolai','13011',54),(122,'Cristina','Ferrari','cristina.ferrari@unistudent.it','F','Cardinale Riario Sforza','85020',39),(123,'Iva','Colombo','iva.colombo@unistudent.it','F','Silvio Spaventa','6040',64),(124,'Mario','Trentino','mario.trentino@unistudent.it','M','Pisanelli','89040',70),(125,'Marino','Napolitano','marino.napolitano@unistudent.it','M','Nicola Mignogna','85042',138),(126,'Maria Pia','Barese','mariapia.barese@unistudent.it','F','Adua','80144',123),(127,'Samuele','Lori','samuele.lori@unistudent.it','M','Firenze','10080',61),(128,'Dorotea','Lipani','dorotea.lipani@unistudent.it','F','Del Piave','15013',39),(129,'Lorena','Marco','lorena.marco@unistudent.it','F','Giuseppe Garibaldi','43028',119),(130,'Luigi','Fiorentini','luigi.fiorentini@unistudent.it','M','Guglielmo Pepe','85020',131),(131,'Paride','Nucci','paride.nucci@unistudent.it','M','Torricelli','36061',120),(132,'Roberta','Folliero','roberta.folliero@unistudent.it','F','Giulio Petroni','14034',48),(133,'Giorgia','Ferrari','giorgia.ferrari@unistudent.it','F','Porta nuova','42035',76),(134,'Pasquale','Neri','pasquale.neri@unistudent.it','M','Galvani','45012',143),(135,'Lionella','Verdi','lionella.verdi@unistudent.it','F','Vipacco','7040',93),(136,'Nunzia','Esposito','nunzia.esposito@unistudent.it','F','Maria Cristina di Savoia','81021',85),(137,'Cirillo','Piazza','cirillo.piazza@unistudent.it','M','Bernardino Rota','12050',145),(138,'Mario','Conti','mario.conti@unistudent.it','M','Torre di Mezzavia','66010',13),(139,'Matilde','Onio','matilde.onio@unistudent.it','F','Genova','43032',149),(140,'Agnese','Cremonesi','agnese.cremonesi@unistudent.it','F','Silvio Spaventa','6060',142),(141,'Dora','Verdi','dora.verdi@unistudent.it','F','Belviglieri','36070',24),(142,'Franco','Mitchell','franco.mitchell@unistudent.it','M','Alessandro Farnese','39050',98),(143,'Walter','Rizzo','walter.rizzo@unistudent.it','M','Libertà','93100',96),(144,'Luigi','Fiorentini','luigi.fiorentini@unistudent.it','M','Campi flegrei','43047',6),(145,'Mario','Piccio','mario.piccio@unistudent.it','M','Del Pontiere','59011',35),(146,'Benedetto','Lucchesi','benedetto.lucchesi@unistudent.it','M','Callicratide','10078',124),(147,'Iacopo','Verdi','iacopo.verdi@unistudent.it','M','Torino','11027',8),(148,'Ornella','George','ornella.george@unistudent.it','F','Antonio Provolo','29020',69),(149,'Ilaria','Trevisan','italia.trevisan@unistudent.it','F','Longhena','5010',22),(150,'Franca','Siciliano','franco.siciliano@unistudent.it','F','Tasso','6026',32);
/*!40000 ALTER TABLE `lettore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `ISBN` varchar(13) NOT NULL,
  `TitoloLibro` varchar(200) DEFAULT NULL,
  `NomeDellaCasaEditrice` varchar(30) NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `NomeDellaCasaEditrice` (`NomeDellaCasaEditrice`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`NomeDellaCasaEditrice`) REFERENCES `casaeditrice` (`NomeCasaEditrice`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES ('9788800747752','Storia della filosofia moderna','Mondadori'),('9788804668237','1984','Mondadori'),('9788804671954','Pensieri lenti e veloci','Mondadori'),('9788804716372','Km 123','Mondadori'),('9788807884092','Le avanguardie artistiche del Novecento','Feltrinelli'),('9788807886515','La cultura dell?educazione','Feltrinelli'),('9788808055750','Controlli Automatici','Zanichelli'),('9788808059918','Geotecnica','Zanichelli'),('9788808178886','Circuiti elettrici','Zanichelli'),('9788815067098','Psicologia dello sport','Il Mulino'),('9788815067180','Linguaggio e natura umana','Il Mulino'),('9788815121264','La guerra del Vietnam','Il Mulino'),('9788815239334','La comunicazione interculturale nell?era digitale','Il Mulino'),('9788815244123','La fine dell?impero ottomano','Il Mulino'),('9788820346430','Manuale di ingegneria portuale e costiera','Hoepli'),('9788821429996','Endocrinologia e attività motorie','Elsevier'),('9788823834262','La governance dei rischi. Un riferimento per gli organi e le funzioni di governo e controllo','Egea'),('9788829920860','Anatomia umana','Piccin'),('9788829923175','Fisiologia del comportamento','Piccin'),('9788829928437','Appunti di biochimica per le lauree triennali','Piccin'),('9788833923390','La lingua colora il mondo. Come le parole deformano la realtà','Bollati boringhieri'),('9788834828762','Corso di istituzioni di diritto privato','Giappichelli'),('9788834879474','Diritto amministrativo','Giappichelli'),('9788835023289','L?osservazione dei processi d?apprendimento','La scuola'),('9788838663772','Crittografia e sicurezza delle reti','McGraw Hill'),('9788838666377','Modelli finanziari. La finanza con Excel','McGraw Hill'),('9788838672958','Meccanica razionale per l?ingegneria','McGraw Hill'),('9788838675508','Economia internazionale','McGraw Hill'),('9788838748455','Prontuario di topografia professionale','Maggioli'),('9788838910173','La forma dell?acqua','Sellerio'),('9788842079491','Manuale di sociologia della famiglia','Laterza'),('9788842094777','Storia della scuola in Italia dal Settecento a oggi','Laterza'),('9788842095880','Antico oriente','Laterza'),('9788843029886','Storia dell?Asia orientale','Carocci'),('9788843042463','Geografia diversa e preziosa. Il pensiero geografico in altri saperi umani','Carocci'),('9788843060368','Psicologia della devianza e della criminalità. Teorie e modelli di intervento','Carocci'),('9788843084784','Il ragionamento giuridico. Una nuova introduzione','Carocci'),('9788845306631','L?attualità dell?urbanistica','Etas'),('9788848200465','L?educazione sociale','Laterza'),('9788854859319','Elementi di analisi dei costi','Aracne'),('9788859814863','Manuale di diritto commerciale','UTET'),('9788860084613','Strade, ferrovie, aeroporti','UTET'),('9788861847040','Letteratura greca: da Omero al secolo VI d.C.','Mondadori'),('9788864510316','Fondamenti di aerospaziale','Scione Editore'),('9788867601592','Docimologia e ricerca educativa','Pensa multimedia'),('9788871926049','Statistica','Pearson'),('9788871927695','Analisi matematica 1 e algebra lineare','Pearson'),('9788874667543','Gli ambiti di intervento del servizio sociale','Carocci'),('9788875433079','Microeconomia','Libreria Editrice Cafoscarina'),('9788879593854','Genetica','Edises'),('9788879594837','Istologia','Edises'),('9788884530738','L?uomo, il suono e la musica','Firenze university press'),('9788886412629','Esodo ambientale','Edizioni ambiente'),('9788886977128','Fondazioni','Hevelius'),('9788889670132','Grammatica teorico pratica di arabo letterario moderno','Herder'),('9788891414540','Manuale di contabilità di Stato e degli enti','Edizioni Simone'),('9788891612861','Tecnica e tecnologia dei sistemi edilizi','Maggioli'),('9788891710796','Psicologia clinica, psichiatria, psicofarmacologia. Uno spazio d?intergrazione','FrancoAngeli'),('9788891778604','Lezioni sui diritti fondamentali','FrancoAngeli'),('9788891908254','Reti di calcolatori','Pearson'),('9788892103023','Lineamenti di diritto dello sport','Giappichelli'),('9788892136694','Giustizia amministrativa','Giappichelli'),('9788897356974','La storia dell?architettura 1905-2018','Sossella');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestito`
--

DROP TABLE IF EXISTS `prestito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestito` (
  `NumeroDiCopia` smallint NOT NULL,
  `CodiceISBNLibro` varchar(13) NOT NULL,
  `NumeroDelloScaffale` smallint NOT NULL,
  `CodiceDiLettore` smallint NOT NULL,
  `DataInizioPrestito` date NOT NULL,
  PRIMARY KEY (`NumeroDiCopia`,`CodiceISBNLibro`,`NumeroDelloScaffale`,`CodiceDiLettore`),
  KEY `CodiceISBNLibro` (`CodiceISBNLibro`),
  KEY `NumeroDelloScaffale` (`NumeroDelloScaffale`),
  KEY `CodiceDiLettore` (`CodiceDiLettore`),
  CONSTRAINT `prestito_ibfk_1` FOREIGN KEY (`NumeroDiCopia`) REFERENCES `copia` (`NumeroCopia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestito_ibfk_2` FOREIGN KEY (`CodiceISBNLibro`) REFERENCES `libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestito_ibfk_3` FOREIGN KEY (`NumeroDelloScaffale`) REFERENCES `scaffale` (`NumeroScaffale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestito_ibfk_4` FOREIGN KEY (`CodiceDiLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestito`
--

LOCK TABLES `prestito` WRITE;
/*!40000 ALTER TABLE `prestito` DISABLE KEYS */;
INSERT INTO `prestito` VALUES (1,'9788804671954',3,101,'2024-06-23'),(1,'9788804716372',2,104,'2024-06-22'),(1,'9788807886515',4,131,'2024-06-22'),(1,'9788838663772',1,141,'2024-06-14'),(1,'9788838666377',5,133,'2024-06-22'),(1,'9788838672958',5,108,'2024-06-24'),(1,'9788838675508',5,133,'2024-06-22'),(1,'9788838910173',1,104,'2024-06-22'),(1,'9788842079491',3,129,'2024-06-14'),(1,'9788842094777',4,128,'2024-06-16'),(1,'9788842095880',2,114,'2024-06-17'),(1,'9788843060368',5,103,'2024-06-15'),(1,'9788848200465',3,129,'2024-06-14'),(1,'9788854859319',5,135,'2024-06-23'),(1,'9788859814863',1,118,'2024-06-23'),(1,'9788861847040',1,149,'2024-06-16'),(1,'9788871926049',4,107,'2024-06-21'),(1,'9788874667543',3,129,'2024-06-14'),(1,'9788875433079',1,119,'2024-06-14'),(1,'9788879593854',4,147,'2024-06-22'),(1,'9788884530738',4,128,'2024-06-16'),(1,'9788886977128',5,108,'2024-06-24'),(1,'9788889670132',2,143,'2024-06-21'),(1,'9788891414540',5,119,'2024-06-14'),(1,'9788891612861',3,114,'2024-06-17'),(1,'9788891778604',4,120,'2024-06-22'),(1,'9788891908254',1,141,'2024-06-14'),(1,'9788892103023',3,122,'2024-06-18'),(1,'9788897356974',3,140,'2024-06-23'),(2,'9788804671954',8,150,'2024-06-22'),(2,'9788804716372',7,109,'2024-06-21'),(2,'9788808055750',6,139,'2024-06-22'),(2,'9788815239334',7,143,'2024-06-21'),(2,'9788821429996',10,126,'2024-06-22'),(2,'9788834828762',9,142,'2024-06-23'),(2,'9788838666377',10,134,'2024-06-24'),(2,'9788838672958',10,137,'2024-06-24'),(2,'9788838748455',10,108,'2024-06-24'),(2,'9788842094777',9,129,'2024-06-14'),(2,'9788842095880',7,117,'2024-06-21'),(2,'9788843029886',7,136,'2024-06-15'),(2,'9788848200465',8,102,'2024-06-15'),(2,'9788864510316',6,107,'2024-06-21'),(2,'9788867601592',9,131,'2024-06-22'),(2,'9788875433079',6,135,'2024-06-23'),(2,'9788891710796',10,101,'2024-06-23'),(2,'9788891908254',6,139,'2024-06-22'),(2,'9788892103023',8,120,'2024-06-22'),(3,'9788804716372',12,149,'2024-06-16'),(3,'9788807884092',12,131,'2024-06-22'),(3,'9788807886515',14,128,'2024-06-16'),(3,'9788808059918',15,108,'2024-06-24'),(3,'9788815067098',13,105,'2024-06-22'),(3,'9788815244123',12,136,'2024-06-15'),(3,'9788821429996',15,125,'2024-06-21'),(3,'9788829920860',13,125,'2024-06-21'),(3,'9788834879474',14,118,'2024-06-23'),(3,'9788838663772',11,106,'2024-06-22'),(3,'9788838666377',15,135,'2024-06-23'),(3,'9788838748455',15,137,'2024-06-24'),(3,'9788838910173',11,138,'2024-06-14'),(3,'9788842079491',13,112,'2024-06-22'),(3,'9788842094777',14,102,'2024-06-15'),(3,'9788842095880',12,127,'2024-06-23'),(3,'9788843029886',12,138,'2024-06-14'),(3,'9788843042463',11,121,'2024-06-14'),(3,'9788843084784',14,123,'2024-06-16'),(3,'9788845306631',13,117,'2024-06-21'),(3,'9788848200465',13,112,'2024-06-22'),(3,'9788854859319',15,134,'2024-06-24'),(3,'9788867601592',14,102,'2024-06-15'),(3,'9788871927695',11,106,'2024-06-22'),(3,'9788875433079',11,134,'2024-06-24'),(3,'9788879593854',14,130,'2024-06-24'),(3,'9788884530738',14,102,'2024-06-15'),(3,'9788891710796',15,105,'2024-06-22'),(3,'9788891778604',14,127,'2024-06-23'),(3,'9788892103023',13,118,'2024-06-23'),(3,'9788897356974',13,127,'2024-06-23');
/*!40000 ALTER TABLE `prestito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restituzione`
--

DROP TABLE IF EXISTS `restituzione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restituzione` (
  `NumeroDiCopia` smallint NOT NULL,
  `CodiceISBNLibro` varchar(13) NOT NULL,
  `NumeroDelloScaffale` smallint NOT NULL,
  `CodiceDiLettore` smallint NOT NULL,
  `DataFinePrestito` date NOT NULL,
  PRIMARY KEY (`NumeroDiCopia`,`CodiceISBNLibro`,`NumeroDelloScaffale`,`CodiceDiLettore`),
  KEY `CodiceISBNLibro` (`CodiceISBNLibro`),
  KEY `NumeroDelloScaffale` (`NumeroDelloScaffale`),
  KEY `CodiceDiLettore` (`CodiceDiLettore`),
  CONSTRAINT `restituzione_ibfk_1` FOREIGN KEY (`NumeroDiCopia`) REFERENCES `copia` (`NumeroCopia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restituzione_ibfk_2` FOREIGN KEY (`CodiceISBNLibro`) REFERENCES `libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restituzione_ibfk_3` FOREIGN KEY (`NumeroDelloScaffale`) REFERENCES `scaffale` (`NumeroScaffale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restituzione_ibfk_4` FOREIGN KEY (`CodiceDiLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restituzione`
--

LOCK TABLES `restituzione` WRITE;
/*!40000 ALTER TABLE `restituzione` DISABLE KEYS */;
INSERT INTO `restituzione` VALUES (1,'9788800747752',2,149,'2024-04-06'),(1,'9788804668237',1,104,'2024-06-01'),(1,'9788807884092',2,136,'2024-03-02'),(1,'9788808055750',1,106,'2024-04-27'),(1,'9788808059918',5,137,'2024-05-12'),(1,'9788808178886',1,106,'2024-05-05'),(1,'9788815067098',3,150,'2024-05-27'),(1,'9788815067180',2,143,'2024-05-11'),(1,'9788815121264',2,136,'2024-04-22'),(1,'9788815239334',2,144,'2024-06-11'),(1,'9788815244123',2,136,'2024-05-18'),(1,'9788820346430',1,137,'2024-05-10'),(1,'9788821429996',5,125,'2024-01-29'),(1,'9788823834262',5,134,'2024-03-10'),(1,'9788829920860',3,124,'2024-05-04'),(1,'9788829923175',3,126,'2024-04-12'),(1,'9788829928437',3,130,'2024-02-16'),(1,'9788833923390',5,113,'2024-06-04'),(1,'9788834828762',4,122,'2024-03-16'),(1,'9788834879474',4,123,'2024-05-19'),(1,'9788835023289',4,131,'2024-05-21'),(1,'9788838748455',5,137,'2024-06-08'),(1,'9788843029886',2,138,'2024-03-24'),(1,'9788843042463',1,121,'2024-03-12'),(1,'9788843084784',4,118,'2024-04-15'),(1,'9788845306631',3,114,'2024-03-25'),(1,'9788860084613',3,117,'2024-05-10'),(1,'9788864510316',1,107,'2024-04-15'),(1,'9788867601592',4,131,'2024-04-28'),(1,'9788871927695',1,111,'2024-05-14'),(1,'9788879594837',4,126,'2024-03-29'),(1,'9788886412629',1,131,'2024-03-05'),(1,'9788891710796',5,105,'2024-04-14'),(1,'9788892136694',4,123,'2024-05-07'),(2,'9788800747752',7,104,'2024-02-15'),(2,'9788804668237',6,128,'2024-04-23'),(2,'9788807884092',7,129,'2024-06-03'),(2,'9788807886515',9,116,'2024-03-25'),(2,'9788808059918',10,108,'2024-06-09'),(2,'9788808178886',6,110,'2024-01-27'),(2,'9788815067098',8,101,'2024-05-27'),(2,'9788815067180',7,146,'2024-05-18'),(2,'9788815121264',7,136,'2024-03-24'),(2,'9788815244123',7,136,'2024-03-24'),(2,'9788820346430',6,137,'2024-04-14'),(2,'9788823834262',10,133,'2024-03-22'),(2,'9788829920860',8,124,'2024-01-26'),(2,'9788829923175',8,148,'2024-04-07'),(2,'9788829928437',8,115,'2024-02-25'),(2,'9788833923390',10,146,'2024-02-09'),(2,'9788834879474',9,132,'2024-03-10'),(2,'9788835023289',9,131,'2024-03-11'),(2,'9788838663772',6,108,'2024-04-28'),(2,'9788838675508',10,135,'2024-02-24'),(2,'9788838910173',6,149,'2024-02-25'),(2,'9788842079491',8,131,'2024-01-29'),(2,'9788843042463',6,112,'2024-05-19'),(2,'9788843060368',10,105,'2024-04-16'),(2,'9788843084784',9,120,'2024-05-13'),(2,'9788845306631',8,127,'2024-02-16'),(2,'9788854859319',10,137,'2024-06-04'),(2,'9788859814863',6,122,'2024-01-28'),(2,'9788860084613',8,114,'2024-05-21'),(2,'9788861847040',6,149,'2024-06-03'),(2,'9788871926049',9,111,'2024-05-19'),(2,'9788871927695',6,111,'2024-02-19'),(2,'9788874667543',8,131,'2024-01-29'),(2,'9788879593854',9,124,'2024-05-27'),(2,'9788879594837',9,115,'2024-06-04'),(2,'9788884530738',9,112,'2024-01-27'),(2,'9788886412629',6,144,'2024-05-20'),(2,'9788886977128',10,108,'2024-06-09'),(2,'9788889670132',7,145,'2024-06-11'),(2,'9788891414540',10,135,'2024-04-14'),(2,'9788891612861',8,114,'2024-04-20'),(2,'9788891778604',9,132,'2024-03-10'),(2,'9788892136694',9,122,'2024-04-28'),(2,'9788897356974',8,117,'2024-02-12'),(3,'9788800747752',12,149,'2024-03-24'),(3,'9788804668237',11,103,'2024-02-10'),(3,'9788804671954',13,103,'2024-04-21'),(3,'9788808055750',11,141,'2024-06-09'),(3,'9788808178886',11,141,'2024-04-07'),(3,'9788815067180',12,146,'2024-02-02'),(3,'9788815121264',12,148,'2024-01-29'),(3,'9788815239334',12,144,'2024-02-25'),(3,'9788820346430',11,137,'2024-02-05'),(3,'9788823834262',15,134,'2024-03-29'),(3,'9788829923175',13,105,'2024-05-04'),(3,'9788829928437',13,125,'2024-04-27'),(3,'9788833923390',15,144,'2024-04-20'),(3,'9788834828762',14,123,'2024-01-22'),(3,'9788835023289',14,112,'2024-06-04'),(3,'9788838672958',15,137,'2024-04-19'),(3,'9788838675508',15,135,'2024-06-09'),(3,'9788843060368',15,103,'2024-01-27'),(3,'9788859814863',11,149,'2024-01-29'),(3,'9788860084613',13,114,'2024-05-27'),(3,'9788861847040',11,104,'2024-05-12'),(3,'9788864510316',11,110,'2024-06-01'),(3,'9788871926049',14,107,'2024-02-25'),(3,'9788874667543',13,102,'2024-03-12'),(3,'9788879594837',14,125,'2024-03-15'),(3,'9788886412629',11,128,'2024-01-22'),(3,'9788886977128',15,108,'2024-05-07'),(3,'9788889670132',12,143,'2024-01-25'),(3,'9788891414540',15,134,'2024-02-10'),(3,'9788891612861',13,121,'2024-06-01'),(3,'9788891908254',11,141,'2024-01-15'),(3,'9788892136694',14,123,'2024-02-19');
/*!40000 ALTER TABLE `restituzione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ricercatore`
--

DROP TABLE IF EXISTS `ricercatore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ricercatore` (
  `CodiceRicercatore` smallint NOT NULL,
  `CodiceDelLettore` smallint NOT NULL,
  `Categoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodiceRicercatore`,`CodiceDelLettore`),
  KEY `CodiceDelLettore` (`CodiceDelLettore`),
  CONSTRAINT `ricercatore_ibfk_1` FOREIGN KEY (`CodiceDelLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ricercatore`
--

LOCK TABLES `ricercatore` WRITE;
/*!40000 ALTER TABLE `ricercatore` DISABLE KEYS */;
INSERT INTO `ricercatore` VALUES (250,110,'Scienze fisiche'),(251,111,'Scienze matematiche'),(252,116,'Scienze dell?informazione'),(253,121,'Scienze della terra'),(254,124,'Scienze biologiche'),(255,132,'Scienze politiche'),(256,136,'Scienze storiche'),(257,144,'Scienze linguistiche'),(258,145,'Scienze filologiche'),(259,149,'Scienze letterarie');
/*!40000 ALTER TABLE `ricercatore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scaffale`
--

DROP TABLE IF EXISTS `scaffale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scaffale` (
  `NumeroScaffale` smallint NOT NULL,
  `Piano` smallint NOT NULL,
  PRIMARY KEY (`NumeroScaffale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scaffale`
--

LOCK TABLES `scaffale` WRITE;
/*!40000 ALTER TABLE `scaffale` DISABLE KEYS */;
INSERT INTO `scaffale` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,2),(7,2),(8,2),(9,2),(10,2),(11,3),(12,3),(13,3),(14,3),(15,3);
/*!40000 ALTER TABLE `scaffale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scrittura`
--

DROP TABLE IF EXISTS `scrittura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scrittura` (
  `CodiceDiAutore` smallint NOT NULL,
  `CodiceISBNLibro` varchar(13) NOT NULL,
  PRIMARY KEY (`CodiceDiAutore`,`CodiceISBNLibro`),
  KEY `CodiceISBNLibro` (`CodiceISBNLibro`),
  CONSTRAINT `scrittura_ibfk_1` FOREIGN KEY (`CodiceDiAutore`) REFERENCES `autore` (`CodiceAutore`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scrittura_ibfk_2` FOREIGN KEY (`CodiceISBNLibro`) REFERENCES `libro` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrittura`
--

LOCK TABLES `scrittura` WRITE;
/*!40000 ALTER TABLE `scrittura` DISABLE KEYS */;
INSERT INTO `scrittura` VALUES (13,'9788800747752'),(11,'9788804668237'),(25,'9788804671954'),(12,'9788804716372'),(14,'9788807884092'),(41,'9788807886515'),(8,'9788808055750'),(56,'9788808059918'),(5,'9788808178886'),(22,'9788815067098'),(15,'9788815067180'),(18,'9788815121264'),(60,'9788815239334'),(19,'9788815244123'),(58,'9788820346430'),(50,'9788821429996'),(52,'9788823834262'),(23,'9788829920860'),(26,'9788829923175'),(21,'9788829928437'),(47,'9788833923390'),(34,'9788834828762'),(36,'9788834879474'),(43,'9788835023289'),(6,'9788838663772'),(46,'9788838666377'),(55,'9788838672958'),(45,'9788838675508'),(54,'9788838748455'),(12,'9788838910173'),(27,'9788842079491'),(42,'9788842094777'),(16,'9788842095880'),(20,'9788843029886'),(9,'9788843042463'),(49,'9788843060368'),(37,'9788843084784'),(31,'9788845306631'),(28,'9788848200465'),(53,'9788854859319'),(3,'9788859814863'),(33,'9788860084613'),(10,'9788861847040'),(4,'9788864510316'),(43,'9788867601592'),(38,'9788871926049'),(1,'9788871927695'),(29,'9788874667543'),(2,'9788875433079'),(39,'9788879593854'),(40,'9788879594837'),(44,'9788884530738'),(59,'9788886412629'),(57,'9788886977128'),(17,'9788889670132'),(51,'9788891414540'),(32,'9788891612861'),(48,'9788891710796'),(35,'9788891778604'),(7,'9788891908254'),(24,'9788892103023'),(36,'9788892136694'),(30,'9788897356974');
/*!40000 ALTER TABLE `scrittura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studente`
--

DROP TABLE IF EXISTS `studente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studente` (
  `CodiceStudente` smallint NOT NULL,
  `CodiceDelLettore` smallint NOT NULL,
  `AnnoIscrizioneStudente` year DEFAULT NULL,
  `CorsoStudente` varchar(50) NOT NULL,
  `MatricolaStudente` varchar(8) NOT NULL,
  PRIMARY KEY (`CodiceStudente`,`CodiceDelLettore`),
  KEY `CodiceDelLettore` (`CodiceDelLettore`),
  CONSTRAINT `studente_ibfk_1` FOREIGN KEY (`CodiceDelLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studente`
--

LOCK TABLES `studente` WRITE;
/*!40000 ALTER TABLE `studente` DISABLE KEYS */;
INSERT INTO `studente` VALUES (275,101,2019,'Psicologia','20191826'),(276,104,2017,'Lettere','20173144'),(277,105,2019,'Psicologia clinica','20191695'),(278,106,2015,'Ingegneria informatica','20151824'),(279,107,2018,'Ingegneria aerospaziale','20183149'),(280,109,2019,'Lettere','20195457'),(281,112,2017,'Scienze sociali','20177241'),(282,113,2019,'Lingue','20192314'),(283,117,2018,'Architettura','20184282'),(284,118,2019,'Giurisprudenza','20191415'),(285,120,2017,'Giurisprudenza','20179832'),(286,125,2016,'Medicina','20162657'),(287,126,2019,'Medicina','20191273'),(288,127,2015,'Architettura','20157648'),(289,130,2017,'Medicina','20176469'),(290,131,2016,'Scienze della formazione primaria','20164119'),(291,133,2019,'Economia e direzione delle imprese','20193201'),(292,134,2019,'Economia aziendale','20194213'),(293,137,2019,'Ingegneria civile','20190159'),(294,139,2018,'Ingegneria informatica','20182611'),(295,140,2016,'Architettura','20163418'),(296,142,2015,'Giurisprudenza','20156137'),(297,143,2019,'Lingue','20199791'),(298,147,2020,'Medicina','20201029'),(299,150,2019,'Psicologia','20198425');
/*!40000 ALTER TABLE `studente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valutazionebiblioteca`
--

DROP TABLE IF EXISTS `valutazionebiblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valutazionebiblioteca` (
  `CodiceValutazione` smallint NOT NULL,
  `Descrizione` varchar(100) NOT NULL,
  `CodiceDelLettore` smallint NOT NULL,
  PRIMARY KEY (`CodiceValutazione`),
  KEY `CodiceDelLettore` (`CodiceDelLettore`),
  CONSTRAINT `valutazionebiblioteca_ibfk_1` FOREIGN KEY (`CodiceDelLettore`) REFERENCES `lettore` (`CodiceLettore`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valutazionebiblioteca`
--

LOCK TABLES `valutazionebiblioteca` WRITE;
/*!40000 ALTER TABLE `valutazionebiblioteca` DISABLE KEYS */;
INSERT INTO `valutazionebiblioteca` VALUES (201,'Ambiente pulito e spazioso',105),(202,'Personale accogliente e gentile',107),(203,'Grande, spaziosa e fornita',109),(204,'Piccola, angusta e disordinata',113),(205,'Piuttosto ordinata e con grandi finestre',120),(206,'A misura d?utente ma con un patrimonio non molto ingente',126),(207,'Stupenda e come una seconda casa',134),(208,'Ottima sia per i libri sia per il sistema d?accesso',139),(209,'Catalogo fornito e consultabile online, orario di apertura ampio',142),(210,'Materiale bibliotecario consistente e personale disponibile e gentile',147);
/*!40000 ALTER TABLE `valutazionebiblioteca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-20 11:07:44
