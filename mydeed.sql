-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mydeed
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
-- Table structure for table `acoes`
--

DROP TABLE IF EXISTS `acoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acoes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) DEFAULT NULL,
  `empresa` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acoes`
--

LOCK TABLES `acoes` WRITE;
/*!40000 ALTER TABLE `acoes` DISABLE KEYS */;
INSERT INTO `acoes` VALUES (1,'teste de ação',1),(2,'teste de ação2',1),(3,'teste de ação3',1),(4,'teste de ação4',1),(5,'teste de ação5',2),(6,'teste de ação5',1);
/*!40000 ALTER TABLE `acoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acoes_servicos`
--

DROP TABLE IF EXISTS `acoes_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acoes_servicos` (
  `id_acao` int(10) NOT NULL,
  `id_servico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acoes_servicos`
--

LOCK TABLES `acoes_servicos` WRITE;
/*!40000 ALTER TABLE `acoes_servicos` DISABLE KEYS */;
INSERT INTO `acoes_servicos` VALUES (1,5),(2,5);
/*!40000 ALTER TABLE `acoes_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `observacao` varchar(300) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `empresa` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Janio',NULL,NULL,1),(2,'Frederico',NULL,NULL,1),(3,'rodonildo',NULL,NULL,1),(4,'jantão',NULL,NULL,1),(5,'Pantego',NULL,NULL,1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `identificador` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'Rise_Tec',NULL,NULL,NULL),(2,'Another',NULL,NULL,NULL);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagens` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) DEFAULT NULL,
  `autor` int(6) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `servico` int(10) NOT NULL,
  `data` datetime DEFAULT NULL,
  `empresa` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'primeira mensagem',14,'download',5,'2015-10-08 15:11:10',1),(2,'segunda mensagem',13,'download_2',5,'2015-10-08 19:15:27',1),(3,'terceira mensagem',13,'download_3',5,'2015-10-09 10:37:11',1),(5,'uma mensagem',13,'download_3',1,'2015-10-09 10:42:31',1);
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens_servicos`
--

DROP TABLE IF EXISTS `mensagens_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagens_servicos` (
  `id_mensagem` int(10) NOT NULL,
  `id_servico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens_servicos`
--

LOCK TABLES `mensagens_servicos` WRITE;
/*!40000 ALTER TABLE `mensagens_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagens_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dataChegada` datetime DEFAULT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `descricaoRapida` varchar(200) DEFAULT NULL,
  `observacoes` varchar(300) DEFAULT NULL,
  `autor` int(6) DEFAULT NULL,
  `cliente` int(6) DEFAULT NULL,
  `os` int(6) DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `dataPostagem` datetime DEFAULT NULL,
  `empresa` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_autor` (`autor`),
  KEY `fk_cliente` (`cliente`),
  CONSTRAINT `fk_autor` FOREIGN KEY (`autor`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'2015-10-09 14:15:10','1995-08-26 09:45:00','teste de datas',NULL,NULL,NULL,1,NULL,'2015-10-09 14:12:00',1),(2,'2015-10-09 14:16:51','2013-01-21 21:12:12',NULL,NULL,NULL,NULL,1,NULL,'2015-10-09 14:12:00',1),(3,'2015-10-09 14:16:54','2014-10-15 16:47:23',NULL,NULL,NULL,NULL,1,NULL,'2015-10-09 14:12:00',1),(4,'2015-10-09 14:16:56','2014-01-15 16:47:23',NULL,NULL,NULL,NULL,1,NULL,'2015-10-09 14:12:00',1),(5,'2015-08-08 13:45:32','2015-08-08 17:38:01','teste 1','obs',14,1,1,'equipamento 1','2015-08-08 17:46:23',1);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `empresa` int(10) NOT NULL,
  `hash` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (13,'Bruno','brunoricardoideal@gmail.com','654321',NULL,2,'hash@1234'),(14,'Rise','contato@risetecnologia.com','123456',NULL,1,'@123'),(15,'Usuario a mais','email@email.toco','123rewrk9',NULL,1,'12'),(17,'Usuario emp 2','dafinta@emp.com','*Dafintinha',NULL,2,NULL),(18,'Usuario emp 1','danton@emp.com','$Danton',NULL,1,NULL);
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

-- Dump completed on 2015-11-13 21:08:09
